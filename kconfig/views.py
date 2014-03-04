from django.shortcuts import render_to_response
from django.template import RequestContext
from django.http import HttpResponse, HttpResponseRedirect
from kconfig.models import systeminfo,machineinfo,selftestresults,hangupcauseresults
from django.conf import settings
import json
import csv
import datetime
import urllib
import urllib2
import operator

def home(request):
    return render_to_response('home.html')


def getclusterinfo(request):
    messages = "Search Any Cluster Configuration by Location"
    ip_dict = {}
    m_dict = {}
    if request.method == 'POST':
        loc = (request.REQUEST.get("location","")).lower()
        s = systeminfo.objects.filter(location=loc)
        if len(s) <= 0:
            messages = "Cluster with location %s does not Exists"%loc
        else:
            s = systeminfo.objects.get(location=loc)
            ip_dict['RELEASE_VERSION'] = s.release_version
            ip_dict['CLUSTER_IP'] = s.cluster_ip
            ip_dict['LOCATION'] = s.location
            ip_dict['DATABASE_HOST'] = s.db_ip
            ip_dict['AMQP_SERVER'] = s.rabbit_ip
            ip_dict['REDIS_IP'] = s.redis_ip
        m = machineinfo.objects.filter(location=loc)
        if len(m)>0:
            for m1 in m:
                m_dict[str(m1.machine_ip)] = [m1.redis,m1.database,m1.freeswitch,m1.incalld,m1.outcalld,m1.postprocessd,m1.preprocessd, m1.rabbitmq,m1.monit,m1.apache]
    return render_to_response('cluster.html',{'ip_dict': ip_dict,'m_dict':m_dict,'messages':messages},context_instance=RequestContext(request))

def genrateconfig(request):
    messages = "Configure The New Cluster"
    if request.method == 'POST':
        loc = (request.REQUEST.get("location","gurgaon")).lower()
        clusterip= request.REQUEST.get("clusterip","localhost")
        dbip= request.REQUEST.get("dbip","localhost")
        rdip= request.REQUEST.get("rdip","localhost")
        rbip= request.REQUEST.get("rbip","localhost")
        release= request.REQUEST.get("release","1.0.7c_e60084ae4f")
        s = systeminfo.objects.filter(location=loc)
        if len(s) > 0:
            s = systeminfo.objects.get(location=loc)
            s.cluster_ip = clusterip
            s.db_ip = dbip
            s.redis_ip = rdip
            s.rabbit_ip = rbip
            s.release_version = release
            s.save()
            messages = "Cluster %s Updated sucessfully"%loc
        else:
            s = systeminfo.objects.create(cluster_ip=clusterip,location=loc,db_ip=dbip,redis_ip=rdip,rabbit_ip=rbip,release_version=release)
            messages = "Cluster added sucessfully"
        return render_to_response('config.html',{'messages':messages},context_instance=RequestContext(request))
    else:
        return render_to_response('config.html',{'messages':messages},context_instance=RequestContext(request))

def addmachines(request):
    messages = "Add New Machine in The Cluster"
    if request.method == 'POST':
        loc = (request.REQUEST.get("location","gurgaon")).lower()
        machineip= request.REQUEST.get("machineip","localhost")
        pre= True if request.REQUEST.get("pre",False) == "on" else False 
        post= True if request.REQUEST.get("post",False) == "on" else False
        inc = True if request.REQUEST.get("inc",False)== "on" else False
        out = True if request.REQUEST.get("out",False)== "on" else False
        krp= True if (pre or post or out) else False 
        ikrp= True if inc else False
        database= True if request.REQUEST.get("database",False)== "on" else False
        freeswitch= True if request.REQUEST.get("freeswitch",False)== "on" else False
        redis= True if request.REQUEST.get("redis",False)== "on" else False
        monit= True if request.REQUEST.get("monit",False)== "on" else False
        rabbitmq= True if request.REQUEST.get("rabbitmq",False)== "on" else False
        apache= True if request.REQUEST.get("apache",False)== "on" else False
        s = systeminfo.objects.filter(location=loc)
        if len(s) == 0:
            messages = "Cluster with location %s does not Exists"%loc
        else:
            s = systeminfo.objects.get(location=loc)
            m = machineinfo.objects.filter(machine_ip=machineip)
            if len(m) > 0:
                m = machineinfo.objects.get(machine_ip=machineip)
                m.freeswitch = freeswitch
                m.preprocessd = pre
                m.postprocessd = post
                m.incalld = inc
                m.outcalld = out
                m.database = database
                m.redis = redis    
                m.krpycd = krp
                m.krpycd_incalld = ikrp
                m.monit = monit
                m.rabbitmq = rabbitmq
                m.apache = apache
                m.save()
                messages = "Cluster with location %s does not Exists"%loc
            else:
                m = machineinfo.objects.create(location=s,machine_ip=machineip,freeswitch=freeswitch,preprocessd=pre,postprocessd=post,incalld=inc,outcalld=out,database=database,redis=redis,krpycd=krp,krpycd_incalld=ikrp,monit=monit,rabbitmq=rabbitmq,apache=apache)
                messages = "Machine added sucessfully"
        return render_to_response('config.html',{'messages':messages},context_instance=RequestContext(request))
    else:
        return render_to_response('config.html',{'messages':messages},context_instance=RequestContext(request))

def services(request):
    messages = "Knowlus Services"        
    m_list = []
    s = systeminfo.objects.all()
    for s1 in s:
        m = machineinfo.objects.filter(location=s1)
        flag = True
        for m1 in m:
            if flag:
                m_list.append([str(m1.location),m1.machine_ip,m1.redis,m1.database,m1.freeswitch,m1.incalld,m1.outcalld,m1.postprocessd,m1.preprocessd, m1.rabbitmq,m1.monit,m1.apache])
                flag = False
            else:
                m_list.append(['',m1.machine_ip,m1.redis,m1.database,m1.freeswitch,m1.incalld,m1.outcalld,m1.postprocessd,m1.preprocessd, m1.rabbitmq,m1.monit,m1.apache])
    return render_to_response('services.html',{'m_list':m_list,'messages':messages},context_instance=RequestContext(request))

def download(request):
    messages = "Installation step for Knowlus Deb"
    return render_to_response('download.html',{'messages':messages})


def hangupcauseanalysis(request):
    data = request.REQUEST
    analysis_hour = data.get('analysis_hour')
    analysis_result = json.loads(eval(data.get('analysis_result')))
    
    for hangup_cause in analysis_result.keys():
        hangupcauseresultsentry = hangupcauseresults.objects.create(result_datetime=analysis_hour, hangup_cause=hangup_cause, call_count=analysis_result[hangup_cause])

    return HttpResponse("Maja aa gaya. Entry add kardi for time = " + str(analysis_hour))


def incrementcount(request):
    data = request.REQUEST
    result = data.get('result')
    final_result = json.loads(eval(result))

    for number in final_result.keys():
        if final_result[number]['result'] == 'PASS':
            bool_result = True
        else:
            bool_result = False

        now = datetime.datetime.now()
        instance = now.strftime("%Y-%m-%d %H:%M:%S")

        selftestresultsentry = selftestresults.objects.create(selftest_type=final_result[number]['selftest_type'], number_associated=number, result=bool_result, totalcalls=final_result[number]['totalcalls'], successcalls=final_result[number]['successcalls'], failcalls=final_result[number]['failcalls'], result_time=instance)

    return HttpResponse("Maja aa gaya. Result = " + str(final_result))

def hiturlandreturn(request):
    data = request.REQUEST
    url = data.get('url')
    fs_machine = data.get('fs_machine')
    top_causes = data.get('top_causes')
    newthrottlelimit = data.get('newthrottlelimit')
    return_url = "http://54.251.117.109:9999/machinehangupdetails?fs=" + str(fs_machine) + "&top_causes=" + top_causes

    ##now hit the url provided here
    try:
        d = dict()
        param = urllib.urlencode(d)
        resp = urllib2.urlopen(url, param)
        z = resp.read()
    except :
        z = "got error"
    ##

    return HttpResponseRedirect(return_url)
    return HttpResponse("Maja aa gaya. Result = " + str(url) + "&limit=" + newthrottlelimit + " return_url = " + str(return_url) + " url hit result =" + str(z))

def machinehangupdetails(request):
    data = request.REQUEST
    fs_machine = data.get('fs')
    top_causes = data.get('top_causes')
    top_causes = eval(top_causes)
    messages = "Hangup Cause Details for Machine: " + fs_machine

#    return HttpResponse("Maja aa gaya. Result = " + str(top_causes))
    url='http://54.254.103.197/okhla/api/voice/get_hangup_stats/?detailed=1&fs=' + fs_machine
    d = dict()
    param = urllib.urlencode(d)
    resp = urllib2.urlopen(url, param)
    z = resp.read()
    result = json.loads(z)
    result = result[fs_machine] 
    
    first_row = ['Pri\ Hangup Causes']
    first_row = first_row  + top_causes

    hangupdetails = [first_row]
    for pri in map(str, sorted(map(int, result.iterkeys()))):
        details = [pri]
        for cause in top_causes:
            if cause in result[pri]:
                details.append(result[pri][cause])
            else:
                details.append('0')
        hangupdetails.append(details)

    ##getting current throttle limit on machine
    url='http://54.254.103.197/okhla/api/voice/get_throttle_limit/?hostname=' + fs_machine
    d = dict()
    param = urllib.urlencode(d)
    resp = urllib2.urlopen(url, param)
    z = resp.read()
    if z[:2] == 'No' :
        currentthrottle = "NotAvailable"
    else:
        currentthrottle = z.split(" is ",1)[1]


    return render_to_response('machinehangupdetails.html',{'messages':messages, 'currentthrottlelimit':currentthrottle, 'top_causes':top_causes, 'fs_machine':fs_machine, 'hangupdetails':hangupdetails},context_instance=RequestContext(request))

def selftest(request):
    timenow = datetime.datetime.now()
    instance = timenow.strftime("%Y-%m-%d %H:%M:%S")
    messages = "                             Selftest Results and Uptime          " + str(instance)

    ##here  collecting hangup stats from knowlus api
    url=u'http://54.254.103.197/okhla/api/voice/get_hangup_stats/'
    d = dict()
    param = urllib.urlencode(d)
    resp = urllib2.urlopen(url, param)
    z = resp.read()
    result = json.loads(z)
    hangup_count = []
    total = {}
    for fs in result.keys():    
        data = result[fs]
        for hangup_cause in data.keys():
            if hangup_cause not in total:
                total[hangup_cause] = data[hangup_cause]
            else:
                total[hangup_cause] = total[hangup_cause] + data[hangup_cause]

    row1=['Datetime\ Hangup Causes']
    row2=['Total']
    count = 0
    top_causes = []
    
    for data in sorted(total, key=total.get, reverse=True):
        row1.append(data)
        row2.append(total[data])
        top_causes.append(data)
        count = count + 1
        if count == 25:
            break
                 
    hangup_count.append(row1)
    hangup_count.append(row2)

    for fs in sorted(result.iterkeys()):
        fs_detail = [fs]
        for cause in row1:
            if len(cause) < 10:
                if cause in result[fs]:
                    fs_detail.append(result[fs][cause])
                else:
                    fs_detail.append('0')

        hangup_count.append(fs_detail)

    ####
    ## adding detials of service status for display
    url=u'http://54.254.103.197/okhla/api/voice/getservicestatus/'
    d = dict()
    param = urllib.urlencode(d)
    resp = urllib2.urlopen(url, param)
    z = resp.read()
    result = json.loads(z)
    service_list = []
    for mac in result.keys():
        data = result[mac]
        if isinstance(data, dict):
            for service in data.keys():
                if service not in service_list:
                    service_list.append(service)
    service_list = sorted(service_list)
    
    service_detail = []
    service_detail.append(['Machines'] + service_list)
    for mac in sorted(result.iterkeys()):
        machine_detail = []
        machine_detail.append(mac)
        data = result[mac]
        if not isinstance(data, dict):
            ## here we got some error instead of response
            for service in service_list:
                machine_detail.append('Unknown')
            service_detail.append(machine_detail)
            continue

        for service in service_list:
            if service in data.keys():
                if data[service] == '1':
                    machine_detail.append('Running')
                elif data[service] == '0':
                    machine_detail.append('Stopped')
                else:
                    machine_detail.append(data[service])
            else:
                machine_detail.append('-')
        service_detail.append(machine_detail)

    
    ## service status end
    ####

    return render_to_response('selftest.html',{'messages':messages, 'hangup_count':hangup_count, 'top_causes':top_causes, 'service_detail':service_detail },context_instance=RequestContext(request))

def genratetxt(request):
    location = request.REQUEST.get("cluster_ip","10.60.20.36")
    s = systeminfo.objects.get(cluster_ip=location)
    response = HttpResponse(content_type='text/plain')
    response['Content-Disposition'] = 'attachment; filename="settings.py"'
    writer = csv.writer(response)
    writer.writerow(['DATABASE_HOST=%s'%s.db_ip])
    writer.writerow(['AMQP_SERVER=%s'%s.rabbit_ip])
    writer.writerow(['FREESWITCH_HOST=%s'%s.fs_ip])
    return render_to_response('fillform.html',{'ip_dict': ip_dict})

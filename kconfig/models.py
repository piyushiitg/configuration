from django.db import models
class systeminfo(models.Model):
    location = models.CharField(max_length=30, primary_key=True)
    cluster_ip = models.CharField(max_length=30)
    db_ip = models.CharField(max_length=30)
    rabbit_ip = models.CharField(max_length=30)
    redis_ip = models.CharField(max_length=30)
    release_version = models.CharField(max_length=30)
    
    def __unicode__(self):
        return "%s-%s " % (self.cluster_ip, self.location)

class machineinfo(models.Model):
    location = models.ForeignKey(systeminfo, related_name='system_ip')
    machine_ip = models.CharField(max_length=30)
    freeswitch = models.BooleanField(default=False)
    database = models.BooleanField(default=False)
    incalld = models.BooleanField(default=False)
    outcalld = models.BooleanField(default=False)
    preprocessd = models.BooleanField(default=False)
    postprocessd = models.BooleanField(default=False)
    krpycd = models.BooleanField(default=False)
    krpycd_incalld = models.BooleanField(default=False)
    monit = models.BooleanField(default=True)
    redis = models.BooleanField(default=False)
    rabbitmq = models.BooleanField(default=False)
    apache = models.BooleanField(default=False)
    def __unicode__(self):
        return "%s, %s " % (self.location,self.machine_ip)

class totalselftest(models.Model):
    selftest_type = models.CharField(max_length=30)
    totalcalls = models.CharField(max_length=30)
    successcalls = models.CharField(max_length=30)
    failcalls = models.CharField(max_length=30)

class selftestresults(models.Model):
    selftest_type = models.CharField(max_length=30)
    number_associated = models.CharField(max_length=30)
    result = models.BooleanField(default=False)
    totalcalls = models.IntegerField()
    successcalls = models.IntegerField()
    failcalls = models.IntegerField()
    result_time = models.DateTimeField(auto_now_add=True, blank=True)


class hangupcauseresults(models.Model):
    result_datetime = models.CharField(max_length=30)
    hangup_cause = models.IntegerField()
    call_count = models.IntegerField()


from django.conf.urls.defaults import patterns, include, url

# Uncomment the next two lines to enable the admin:
# from django.contrib import admin
# admin.autodiscover()

urlpatterns = patterns('',
    # Examples:
     url(r'^$', 'kconfig.views.home', name='home'),
     url(r'^getclusterinfo', 'kconfig.views.getclusterinfo'),
     url(r'^genrateconfig', 'kconfig.views.genrateconfig'),
     url(r'^addmachines', 'kconfig.views.addmachines'),
     url(r'^services', 'kconfig.views.services'),
     url(r'^genratetxt', 'kconfig.views.genratetxt'),
     url(r'^download', 'kconfig.views.download'),
     url(r'^selftest', 'kconfig.views.selftest'),
     url(r'^incrementcount', 'kconfig.views.incrementcount'),
     url(r'^manualtest', 'kconfig.views.manualtest'),
     url(r'^machinehangupdetails', 'kconfig.views.machinehangupdetails'),
     url(r'^hangupcauseanalysis', 'kconfig.views.hangupcauseanalysis'),
     url(r'^hiturlandreturn', 'kconfig.views.hiturlandreturn'),
    # url(r'^configuration/', include('configuration.foo.urls')),

    # Uncomment the admin/doc line below to enable admin documentation:
    # url(r'^admin/doc/', include('django.contrib.admindocs.urls')),

    # Uncomment the next line to enable the admin:
    # url(r'^admin/', include(admin.site.urls)),
)

from django.conf.urls import include, url


urlpatterns = [
    url(r'^1/', 'workers.views.welcome_workers'),
    url(r'^2/', 'workers.views.welcome_positions'),
    url(r'^choose/', 'workers.views.choose_a_table'),
    url(r'^', 'workers.views.choose_a_page'),
]
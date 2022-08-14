from django.urls import path

from . import views


urlpatterns = [

    path(
        '',
        views.DummyViewSet.as_view({'get': 'dummy_view'}),
        name='dummy-view'
    ),

]

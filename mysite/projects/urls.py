
from django.urls import path
from . import views

app_name= "project"

urlpatterns = [

    path('', views.index, name = 'home'),
    path('project/', views.project, name = 'proj'),
    path('task/', views.task, name = 'task'),
    path('project/<uuid:project_id>/', views.curentproject, name = 'curproj'),
    path('task/<int:task_id>/', views.curenttask, name='curtask')



]



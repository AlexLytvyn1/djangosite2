from django.http import Http404, HttpResponseRedirect
from django.shortcuts import render
from .models import Project, Task


def index(request):

    return render(request, 'projects/index.html')


def project(request):
    proj = Project.objects.all()
    return render(request, 'projects/projects.html', {'title': 'Все проекты', 'proj': proj})


def  task (request):

    task1 = Task.objects.all()
    return  render(request, 'projects/task.html', {'title': 'Все задачи', 'task': task1})


def curentproject(request,  project_id):

    curproj = Project.objects.get(pk = project_id)
    return render(request, 'projects/curproject.html', {'title': 'Ваши проекты','curproj': curproj})

def curenttask(request, task_id):

    curtask = Task.objects.get(id = task_id)
    return render(request, 'projects/curtask.html', {'title': 'Ваши задачи','curtask': curtask})


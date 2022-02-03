from django.http import HttpResponse
from django.shortcuts import render
from .models import Project, Task, NewComment

from .forms import ChangeTaskForm, AddComment
from django.shortcuts import get_object_or_404
from django.shortcuts import redirect
from django.contrib.auth.decorators import login_required




def index(request):
    return render(request, 'projects/index.html')

@login_required
def project(request):
    if request.user.groups.filter(name = 'perms_user').exists():
        proj = Project.objects.filter(project_members = request.user)
        return render(request, 'projects/projects.html', {'title': 'Ваши проекты', 'proj': proj})


@login_required
def task(request):
    if request.user.groups.filter(name = 'perms_user').exists():
        task = Task.objects.filter(task_executor= request.user)
        return  render(request, 'projects/task.html', {'title': 'Ваши задачи', 'task': task})
    else:
        return HttpResponse("Что-то пошло не так!")


@login_required
def curentproject( request,  project_id ):
    curproj = Project.objects.get(pk = project_id)
    return render(request, 'projects/curproject.html', {'title': 'Ваши проекты','curproj': curproj})


@login_required
def curenttask(request, task_id):
    curtask = get_object_or_404(Task, id = task_id)
    comment = NewComment.objects.filter(comment_task=curtask).order_by('-comment_date')[:5]
    if request.method == "POST":
        form = AddComment(request.POST)
        if form.is_valid():
            comm = form.save(commit=False)
            comm.comment_author = request.user
            comm.comment_task = curtask
            comm.save()
    else:
        form = AddComment()
    return render(request, 'projects/curtask.html', {'title': 'Ваши задачи','curtask': curtask, 'form':form, 'comment':comment})


@login_required
def changetask(request, task_id ):
    task = get_object_or_404(Task, id=task_id)
    if request.method == "POST":
        form = ChangeTaskForm(request.POST, instance=task)
        if form.is_valid():
            task = form.save(commit=False)
            task.save()
        return redirect("project:alltask")
    else:
        form = ChangeTaskForm(instance=task)
    return render(request, 'projects/changetask_form.html', {'title': 'Отредактируйте поля', 'form2': form})

















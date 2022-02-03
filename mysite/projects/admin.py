from django.contrib import admin

from .models import Project, Task, NewComment
from django.contrib.auth.admin import UserAdmin
from django.contrib.auth.models import User
from .models import UserProfile


# Register your models here.

@admin.register(Task)
class TaskAdmin(admin.ModelAdmin):
    list_display = ('task_theme', 'task_description','task_project','task_datestart','task_dateend', 'task_priority' )

class TaskInline(admin.TabularInline):
    model = Task
    extra = 0

@admin.register(Project)
class ProjectAdmin(admin.ModelAdmin):
    list_display = ('project_name', 'project_description')
    inlines = [TaskInline]

class UserInline(admin.StackedInline):
    model = UserProfile
    can_delete = False
    verbose_name_plural = 'Доп. информация'

class UserAdmin(UserAdmin):
    inlines = (UserInline, )

admin.site.unregister(User)
admin.site.register(User, UserAdmin)


class NewCommentAdmin(admin.ModelAdmin):
    list_display = ('comment_author', 'comment_description', 'comment_date', 'comment_task')

admin.site.register(NewComment, NewCommentAdmin)
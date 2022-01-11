from django.db import models
import uuid
from tinymce.models import HTMLField

# Create your models here.


class Project(models.Model):
    project_id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    project_name = models.CharField('имя проекта', max_length=200)
    project_description = HTMLField('описание проекта')

    def __str__(self):
        return self.project_name

    class Meta:
        verbose_name = 'Проект'
        verbose_name_plural = 'Проекты'
class Task(models.Model):
    task_id = models.IntegerField
    task_theme = models.CharField('тема задания', max_length=200)
    task_description = models.TextField('описание задания')
    task_datestart = models.DateTimeField('начало задания')
    task_dateend = models.DateTimeField('окончания задания')

    t_type = (
        ('feature', 'Фича'),
        ('bug', 'Баг'),
    )
    task_type = models.CharField('тип задания', max_length=30, choices=t_type)

    t_priority = (
        ('normal', 'Нормальный'),
        ('high', 'Высокий'),
        ('urgently', 'Срочный'),
    )
    task_priority = models.CharField('приоритет задания', max_length=30, choices=t_priority)
    task_spenttime = models.IntegerField('время на задание(в часах)')
    task_executor = models.ForeignKey('auth.User', verbose_name='исполнитель', on_delete=models.CASCADE, related_name='task_executor')
    task_author = models.ForeignKey('auth.User', verbose_name='автор', on_delete=models.CASCADE, related_name='task_author', editable=True )
    task_project = models.ForeignKey(Project, verbose_name='проект', on_delete=models.CASCADE, null=True)

    def __str__(self):
        return self.task_theme

    class Meta:
        verbose_name = 'Задача'
        verbose_name_plural = 'Задачи'

class LogTime(models.Model):
    log_spenttime = models.IntegerField('потраченое время (в часах)')
    comment = models.TextField('комментарий', max_length=100)
    task_name = models.OneToOneField(Task, on_delete=models.CASCADE, primary_key=True)

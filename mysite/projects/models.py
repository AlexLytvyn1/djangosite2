from django.db import models
import uuid
from tinymce.models import HTMLField
from django.contrib.auth.models import User


# Create your models here.


class UserProfile(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    avatar = models.ImageField(upload_to='images/users', verbose_name='Изображение')

    def __unicode__(self):
        return self.user

    class Meta:
        verbose_name = 'Профиль'
        verbose_name_plural = 'Профили'


class Project(models.Model):
    project_id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    project_name = models.CharField('имя проекта', max_length=200)
    project_description = HTMLField('описание проекта')
    project_members = models.ManyToManyField(User, related_name= 'members', blank =True, verbose_name='Участники')
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
        ('Фича', 'Фича'),
        ('Баг', 'Баг'),
    )
    task_type = models.CharField('тип задания', max_length=30, choices=t_type)

    t_priority = (
        ('Нормальный', 'Нормальный'),
        ('Высокий', 'Высокий'),
        ('Срочный', 'Срочный'),
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


class NewComment(models.Model):
    comment_id = models.IntegerField
    comment_author = models.ForeignKey('auth.User', verbose_name='автор', on_delete=models.CASCADE, related_name='comment_author' )
    comment_description = models.TextField('Текст комментария', max_length= 200)
    comment_date = models.DateTimeField('Дата комментария' , auto_now_add=True)
    comment_task = models.ForeignKey(Task, verbose_name='Имя задачи №', on_delete=models.CASCADE, null=True)

    def __str__(self):
        return self.comment_description

    class Meta:
        verbose_name = 'Комментарий'
        verbose_name_plural = 'Комментарии'

















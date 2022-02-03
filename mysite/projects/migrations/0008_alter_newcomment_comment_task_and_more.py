# Generated by Django 4.0 on 2022-02-03 14:29

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('projects', '0007_project_project_members_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='newcomment',
            name='comment_task',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='projects.task', verbose_name='Имя задачи №'),
        ),
        migrations.AlterField(
            model_name='project',
            name='project_members',
            field=models.ManyToManyField(blank=True, related_name='members', to=settings.AUTH_USER_MODEL, verbose_name='Участники'),
        ),
    ]

# Generated by Django 4.0 on 2022-01-31 17:18

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('projects', '0003_newcomment'),
    ]

    operations = [
        migrations.AlterField(
            model_name='newcomment',
            name='comment_date',
            field=models.DateTimeField(auto_now_add=True, verbose_name='дата комментария'),
        ),
    ]
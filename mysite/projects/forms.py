from django import forms
from .models import Task, NewComment

class ChangeTaskForm(forms.ModelForm):

    class Meta:
        model = Task
        exclude = ['task_author', 'task_project']

class AddComment(forms.ModelForm):

    class Meta:
        model = NewComment
        fields = ['comment_description']
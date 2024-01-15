# Generated by Django 5.0.1 on 2024-01-14 16:22

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):
    dependencies = [
        ("contest_platform", "0006_grade"),
    ]

    operations = [
        migrations.RemoveField(
            model_name="entry",
            name="address",
        ),
        migrations.AddField(
            model_name="entry",
            name="date_submitted",
            field=models.DateField(default=datetime.date.today),
        ),
        migrations.AddField(
            model_name="user",
            name="is_coordinating_unit",
            field=models.BooleanField(default=False),
        ),
    ]
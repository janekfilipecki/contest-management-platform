# Generated by Django 5.0 on 2023-12-05 17:14

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("contest_platform", "0001_initial"),
    ]

    operations = [
        migrations.AddField(
            model_name="contest",
            name="description",
            field=models.CharField(default="", max_length=1800),
        ),
    ]
from .models import Address, AssessmentCriterion, Contest, Entry
from .models import User
from rest_framework import serializers


class UserSerializer(serializers.ModelSerializer):

    class Meta:
        model = User
        fields = ["username", "email", "password"]
        extra_kwargs = {"password": {"write_only": True}}

    def create(self, validated_data):
        user = User(
            username=validated_data["username"], email=validated_data["email"])
        user.set_password(validated_data["password"])
        user.save()
        return user


class ContestSerializer(serializers.ModelSerializer):
    date_start = serializers.DateField(input_formats=['%Y-%m-%d'])
    date_end = serializers.DateField(input_formats=['%Y-%m-%d'])

    class Meta:
        model = Contest
        fields = ("id",
                  "title",
                  "description",
                  "date_start",
                  "date_end",
                  "individual",
                  "type",
                  "rules_pdf",
                  "poster_img")


class EntrySerializer(serializers.ModelSerializer):
    class Meta:
        model = Entry
        fields = ("id",
                  "contest",
                  "contestant_name",
                  "parent_name",
                  "contestant_surname",
                  "address",
                  "email",
                  "entry_title",
                  "entry_file")


class AddressSerializer(serializers.ModelSerializer):
    class Meta:
        model = Address
        fields = ("id",
                  "street",
                  "number",
                  "postal_code",
                  "city")


class AssessmentCriterionSerializer(serializers.ModelSerializer):
    class Meta:
        model = AssessmentCriterion
        fields = ("id",
                  "contest",
                  "description",
                  "max_rating")
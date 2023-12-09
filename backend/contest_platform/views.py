from rest_framework import viewsets
from .models import Contest


from .serializer import ContestSerializer


class ContestViewSet(viewsets.ModelViewSet):
    queryset = Contest.objects.all()
    serializer_class = ContestSerializer

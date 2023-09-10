from rest_framework import generics
from oauth2_provider.models import get_application_model
from auth.serializers import OAuth2ApplicationSerializer

Application = get_application_model()


class ApplicationRegistrationView(generics.CreateAPIView):
    queryset = Application.objects.all()
    serializer_class = OAuth2ApplicationSerializer

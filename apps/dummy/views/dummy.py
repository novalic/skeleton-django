from rest_framework.response import Response
from rest_framework.status import HTTP_200_OK
from rest_framework.viewsets import GenericViewSet


class DummyViewSet(GenericViewSet):

    def dummy_view(self, request, *args, **kwargs):
        return Response(status=HTTP_200_OK)

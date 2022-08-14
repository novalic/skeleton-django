from django.urls import reverse
from rest_framework.test import APITestCase


class DummyTest(APITestCase):

    endpoint = reverse('dummy-view')

    def test_dummy_view(self):
        response = self.client.get(
            self.endpoint
        )
        self.assertEqual(response.status_code, 200)

from django.test import TestCase

# Create your tests here.

class SampleTest(TestCase):

    def setUp(self):
        pass

    def test_functionality(self):
        self.assertEqual(1+1, 2)

import pytest
import requests

URI = "http://localhost:80"

def test_get_hostname():
    res = requests.get(URI)
    assert res.status_code == 200

def test_rng():
    res = requests.get(URI+"/32")
    assert res.status_code == 200
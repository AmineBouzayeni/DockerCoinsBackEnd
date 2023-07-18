import pytest
import requests

def test_get_hostname():
    res = requests.get(__URI__)
    assert res.status_code == 200

def test_rng():
    res = requests.get(__URI__+"/32")
    assert res.status_code == 200
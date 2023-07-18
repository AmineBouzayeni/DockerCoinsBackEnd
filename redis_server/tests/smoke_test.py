import pytest
import requests
from redis import Redis

def test_insert_object_and_read_it():
    redis_server = Redis(host=__URI__, port=30003)
    redis_server.set('foo', 'bar')
    assert redis_server.get('foo') == b'bar'
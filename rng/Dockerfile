FROM python:3.10.12

COPY requirement.txt ./
RUN pip install --no-cache-dir -r requirement.txt

COPY rng.py ./

CMD ["python", "rng.py"]
FROM python:3.10.12

COPY requirement.txt ./
RUN pip install --no-cache-dir -r requirement.txt

COPY worker.py ./

CMD ["python", "worker.py"]
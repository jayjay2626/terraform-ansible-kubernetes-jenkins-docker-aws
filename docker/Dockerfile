FROM python:3
RUN pip install --upgrade pip
WORKDIR /docker
COPY requirements.txt .
RUN pip3 install -r requirements.txt
COPY . .
CMD ["python3", "web.py"]
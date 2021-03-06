FROM python:3.7-alpine
ENV PYTHONUNBUFFERED 1
RUN mkdir /app
WORKDIR /app
COPY requirements.txt /app/
RUN python -m venv venv
RUN source /venv/Scripts/activate.bat
RUN pip install -r requirements.txt
COPY . /app/
ENTRYPOINT ["python3"]
CMD ["manage.py", "runserver", "0.0.0.0:8000"]
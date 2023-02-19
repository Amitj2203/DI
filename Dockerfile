FROM python:3.10.0-alpine
WORKDIR /proj
RUN pip install Flask
RUN pip install Flask-RESTful
COPY . .
ENTRYPOINT python main.py

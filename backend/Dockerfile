FROM python:3.11

WORKDIR /app/backend

COPY Pipfile Pipfile.lock /app/backend

RUN pip install -U pipenv 

RUN pipenv install --system

COPY . /app/backend/

CMD ["pipenv", "run", ""python", "manage.py", "runserver"]


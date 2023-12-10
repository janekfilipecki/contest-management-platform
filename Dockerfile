FROM python:3.12

WORKDIR /app

COPY Pipfile Pipfile.lock /app/

RUN pip install pipenv \
    && pipenv install --deploy --ignore-pipfile

COPY ./backend /app

CMD ["pipenv", "install", "&&", "pipenv", "shell", "&&", "python3", "manage.py", "migrate", "&&", "python", "manage.py", "runserver"]


FROM python:3.12

RUN pip install uv

WORKDIR /project

COPY pyproject.toml uv.lock ./
RUN uv sync

COPY conf/ ./conf/
COPY manage.py .


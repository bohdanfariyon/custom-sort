# Dockerfile

FROM python:3.9-slim


WORKDIR /app


COPY setup.py ./
COPY README.md ./
COPY custom_sort/ ./custom_sort/


RUN pip install .

ENTRYPOINT ["csort"]


CMD ["--help"]
FROM python:3.10-alpine

# ENV PYTHONUNBUFFERED=1

COPY . /stocks_products

RUN  pip install -r /stocks_products/requirements.txt

# RUN python3 /crud-drf/manage.py collectstatisc

EXPOSE 8000

CMD ["python3", "/stocks_products/manage.py", "runserver"]

# CMD gunicorn stocks_products/stocks_products.wsgi -b 0.0.0.0:8000

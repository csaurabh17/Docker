FROM python:3
LABEL maintainer https://github.com/csaurabh17/
WORKDIR /app
COPY ./app .
RUN pip install -r requirements.txt
ENV FLASK_ENV=development
EXPOSE 5000
CMD ["python", "color_boxes.py"]

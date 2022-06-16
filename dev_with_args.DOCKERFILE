ARG tag=3.8
ARG base=python

FROM $base:$tag

ARG base
ARG tag
LABEL base_image=$base:$tag
ENV BASE_IMAGE=$base:$tag
RUN echo > $base:$tag > /tmp/base_img

LABEL maintainer https://github.com/csaurabh17/
WORKDIR /app
COPY ./app .
RUN pip install -r requirements.txt
ENV FLASK_ENV=development
EXPOSE 5000
CMD ["python", "color_boxes.py"]


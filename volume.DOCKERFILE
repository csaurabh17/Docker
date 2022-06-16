ARG tag=3.8
ARG base=python

FROM $base:$tag

ARG base
ARG tag
LABEL base_image=$base:$tag
ENV BASE_IMAGE=$base:$tag
RUN echo > $base:$tag > /tmp/base_img

#experimenting with VOLUME
RUN mkdir /data
RUN echo test_before_volume > /data/before.txt
VOLUME /data
RUN echo test_after_volume > /data/after.txt

LABEL maintainer https://github.com/csaurabh17/
WORKDIR /app
COPY ./app .
RUN pip install -r requirements.txt
ENV FLASK_ENV=development
EXPOSE 5000
CMD ["python", "color_boxes.py"]


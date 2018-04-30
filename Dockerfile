FROM python

RUN echo "nameserver 8.8.8.8" | tee /etc/resolv.conf > /dev/null

RUN pip install --upgrade pip
RUN pip install Flask
WORKDIR /opt/jplsightm/simple_image_annotator
COPY ./ .
RUN mkdir /images/
ENTRYPOINT [ "python", "app.py", "images" ]
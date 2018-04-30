FROM python

RUN echo "nameserver 8.8.8.8" | tee /etc/resolv.conf > /dev/null

RUN pip install --upgrade pip
RUN pip install Flask
WORKDIR /opt/jplsightm/simple_image_annotator
COPY ./ .
RUN mkdir /images/
RUN cp actionshot.png /images/.
RUN ls /images
ENTRYPOINT [ "python", "app.py", "/images" ]
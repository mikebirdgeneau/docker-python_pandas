FROM python:3-alpine

RUN apk --update --upgrade add linux-headers bash gcc \
    musl-dev libjpeg-turbo-dev libpng libpq \
    postgresql-dev uwsgi uwsgi-python3 git \
    zlib-dev libmagic g++ libgfortran

RUN apk add --update --upgrade \
    cairo cairo-dev pango \
    gdk-pixbuf gdk-pixbuf-dev py3-cffi py3-pillow \ 
    pango-dev py-lxml \
    py-setuptools libffi libffi-dev cython
    
RUN pip install pandas

RUN apk --no-cache add msttcorefonts-installer fontconfig && \
    update-ms-fonts && \
    fc-cache -f

CMD ["python3"]

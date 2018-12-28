FROM python:3-alpine
RUN apk --update add --no-cache g++
RUN pip install pandas


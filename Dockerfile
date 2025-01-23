FROM nginx AS builder

WORKDIR /app

RUN apt update 

RUN apt install mkdocs -y && \
    apt install mkdocs-bootstrap -y  

COPY . .

RUN mkdocs build

FROM nginx:alpine

COPY --from=builder /app/site /usr/share/nginx/html

#FROM python:3.9-slim

#Copy requirements first to leverage caching
#COPY requirements.txt .

#Install dependencies
#RUN pip install --upgrade pip && \
 #   pip install --no-cache-dir -r requirements.txt

#Copy the rest of the application
#COPY . .

#Specify the default command (optional, depending on your app)
#CMD ["mkdocs", "serve", "-a", "0.0.0.0:8000"]


#FROM python:3.9-slim

#COPY requirements.txt .

#RUN pip install --upgrade --no-cache-dir -r requirements.txt

#COPY . .

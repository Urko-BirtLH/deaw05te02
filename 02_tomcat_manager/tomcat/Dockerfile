FROM ubuntu:18.04

RUN apt update
RUN apt install -y default-jre
RUN apt install -y openjdk-11-jdk

## Descargar tomcat 8
RUN apt-get install -y wget
RUN cd /tmp && wget http://archive.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz

## Descomprimir tomcat
RUN tar -zxvf /tmp/apache-tomcat-8.5.41.tar.gz -C /usr/local

## Renombrar la carpeta descomprimida a "tomcat"
RUN cd /usr/local && mv apache-tomcat-8.5.41 tomcat

## Eliminar instaladores descargados
# RUN cd /tmp && rm 

COPY ./files/tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
COPY ./files/context.xml /usr/local/tomcat/webapps/manager/META-INF/context.xml

## Exponer puerto
EXPOSE 8080

## Iniciar tomcat
CMD sh /usr/local/tomcat/bin/catalina.sh start && tail -f /usr/local/tomcat/logs/catalina.out
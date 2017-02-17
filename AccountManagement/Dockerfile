FROM tomcat:8.5.5-jre8

MAINTAINER Mobysoft

RUN rm -r /usr/local/tomcat/webapps/ROOT
COPY AccountManagement.war /usr/local/tomcat/webapps/ROOT.war

RUN echo 'spring.profiles.active=local,alpha' >> /usr/local/tomcat/conf/catalina.properties
RUN echo 'accountManagement.service.location=http:///192.168.33.150:9997' >> /usr/local/tomcat/conf/catalina.properties
RUN echo 'auth.server.location=http://192.168.33.150:9999' >> /usr/local/tomcat/conf/catalina.properties

RUN echo 'auth.token.cache.endpoint=192.168.33.150' >> /usr/local/tomcat/conf/catalina.properties
RUN echo 'auth.token.cache.port=6379' >> /usr/local/tomcat/conf/catalina.properties

RUN echo 'notificationsLoader_queueUrl=http://192.168.33.150:9090' >> /usr/local/tomcat/conf/catalina.properties

RUN echo 'aws.accessKey=NONE'>> /usr/local/tomcat/conf/catalina.properties
RUN echo 'aws.secretKey=NONE' >> /usr/local/tomcat/conf/catalina.properties

ENV JPDA_ADDRESS=0.0.0.0:8000

EXPOSE 8000

CMD [ "catalina.sh", "jpda", "run" ]
FROM tomcat:8.5.5-jre8

MAINTAINER Mobysoft

RUN rm -r /usr/local/tomcat/webapps/ROOT
COPY AccountManagement.war /usr/local/tomcat/webapps/ROOT.war

RUN echo 'spring.profiles.active=local' >> /usr/local/tomcat/conf/catalina.properties
RUN echo 'accountManagement.service.location=http:///192.168.33.150:9997' >> /usr/local/tomcat/conf/catalina.properties
RUN echo 'auth.server.location=http://192.168.33.150:9999' >> /usr/local/tomcat/conf/catalina.properties

EXPOSE 8000

CMD [ "catalina.sh", "jpda", "run" ]
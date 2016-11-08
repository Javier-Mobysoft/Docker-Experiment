FROM tomcat:8.5.5-jre8

MAINTAINER Mobysoft

RUN rm -r /usr/local/tomcat/webapps/ROOT
COPY SecurityAdminService.war /usr/local/tomcat/webapps/ROOT.war

RUN echo 'spring.profiles.active=local' >> /usr/local/tomcat/conf/catalina.properties
RUN echo 'spring.datasource.host=192.168.33.150' >> /usr/local/tomcat/conf/catalina.properties
RUN echo 'spring.datasource.port=3306' >> /usr/local/tomcat/conf/catalina.properties
RUN echo 'spring.datasource.username=authUser' >> /usr/local/tomcat/conf/catalina.properties
RUN echo 'spring.datasource.password=authUser' >> /usr/local/tomcat/conf/catalina.properties

RUN echo 'auth.server.location=http://192.168.33.150:9999' >> /usr/local/tomcat/conf/catalina.properties

EXPOSE 8000

CMD [ "catalina.sh", "jpda", "run" ]
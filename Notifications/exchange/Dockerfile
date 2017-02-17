FROM tomcat:8.5.5-jre8

MAINTAINER Mobysoft

RUN rm -r /usr/local/tomcat/webapps/ROOT

COPY Exchange.war /usr/local/tomcat/webapps/ROOT.war

RUN echo 'spring.profiles.active=local' >> /usr/local/tomcat/conf/catalina.properties
RUN echo 'spring.datasource.host=192.168.33.150' >> /usr/local/tomcat/conf/catalina.properties
RUN echo 'spring.datasource.port=3306' >> /usr/local/tomcat/conf/catalina.properties
RUN echo 'root.datasource.username=root' >> /usr/local/tomcat/conf/catalina.properties
RUN echo 'spring.datasource.username=root' >> /usr/local/tomcat/conf/catalina.properties
RUN echo 'root.datasource.password=password' >> /usr/local/tomcat/conf/catalina.properties
RUN echo 'spring.datasource.password=password' >> /usr/local/tomcat/conf/catalina.properties
RUN echo 'notifications.blockNewOrganisation=false' >> /usr/local/tomcat/conf/catalina.properties
RUN echo 'server.port=8080' >> /usr/local/tomcat/conf/catalina.properties

ENV JPDA_ADDRESS=0.0.0.0:8000

EXPOSE 8000

CMD [ "catalina.sh", "jpda", "run" ]
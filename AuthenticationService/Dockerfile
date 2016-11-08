FROM tomcat:8.5.5-jre8

MAINTAINER Mobysoft

RUN rm -r /usr/local/tomcat/webapps/ROOT
COPY AuthenticationService.war /usr/local/tomcat/webapps/ROOT.war

RUN echo 'spring.profiles.active=local,alpha,dbdeploy' >> /usr/local/tomcat/conf/catalina.properties
RUN echo 'spring.datasource.host=192.168.33.150' >> /usr/local/tomcat/conf/catalina.properties
RUN echo 'spring.datasource.port=3306' >> /usr/local/tomcat/conf/catalina.properties
RUN echo 'spring.datasource.username=authUser' >> /usr/local/tomcat/conf/catalina.properties
RUN echo 'spring.datasource.password=authUser' >> /usr/local/tomcat/conf/catalina.properties

RUN echo 'root.datasource.host=192.168.33.150' >> /usr/local/tomcat/conf/catalina.properties
RUN echo 'root.datasource.port=3306' >> /usr/local/tomcat/conf/catalina.properties
RUN echo 'root.datasource.username=root' >> /usr/local/tomcat/conf/catalina.properties
RUN echo 'root.datasource.password=password' >> /usr/local/tomcat/conf/catalina.properties

EXPOSE 8000

CMD [ "catalina.sh", "jpda", "run" ]
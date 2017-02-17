FROM tomcat:8.5.5-jre8

MAINTAINER Mobysoft

RUN rm -r /usr/local/tomcat/webapps/ROOT
COPY AuthenticationService.war /usr/local/tomcat/webapps/ROOT.war

RUN echo 'spring.profiles.active=aws,alpha,dbdeploy' >> /usr/local/tomcat/conf/catalina.properties
RUN echo 'spring.datasource.username=authUser' >> /usr/local/tomcat/conf/catalina.properties
RUN echo 'spring.datasource.password=authUser' >> /usr/local/tomcat/conf/catalina.properties
RUN echo 'spring.datasource.url=jdbc:mysql://192.168.33.150:3306/auth' >> /usr/local/tomcat/conf/catalina.properties

RUN echo 'root.datasource.username=root' >> /usr/local/tomcat/conf/catalina.properties
RUN echo 'root.datasource.password=password' >> /usr/local/tomcat/conf/catalina.properties
RUN echo 'root.datasource.url=jdbc:mysql://192.168.33.150:3306' >> /usr/local/tomcat/conf/catalina.properties
RUN echo 'spring.datasource.driverClassName=com.mysql.jdbc.Driver' >> /usr/local/tomcat/conf/catalina.properties

RUN echo 'auth.token.cache.endpoint=192.168.33.150' >> /usr/local/tomcat/conf/catalina.properties
RUN echo 'auth.token.cache.port=6379' >> /usr/local/tomcat/conf/catalina.properties

RUN echo 'aws.accessKey=NONE'>> /usr/local/tomcat/conf/catalina.properties
RUN echo 'aws.secretKey=NONE' >> /usr/local/tomcat/conf/catalina.properties

ENV JPDA_ADDRESS=0.0.0.0:8000

EXPOSE 8000

CMD [ "catalina.sh", "jpda", "run" ]
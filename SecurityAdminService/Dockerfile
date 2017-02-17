FROM tomcat:8.5.5-jre8

MAINTAINER Mobysoft

RUN rm -r /usr/local/tomcat/webapps/ROOT
COPY SecurityAdminService.war /usr/local/tomcat/webapps/ROOT.war

RUN echo 'spring.profiles.active=aws,alpha' >> /usr/local/tomcat/conf/catalina.properties

RUN echo 'spring.datasource.username=authUser' >> /usr/local/tomcat/conf/catalina.properties
RUN echo 'spring.datasource.password=authUser' >> /usr/local/tomcat/conf/catalina.properties
RUN echo 'spring.datasource.url=jdbc:mysql://192.168.33.150:3306/auth' >> /usr/local/tomcat/conf/catalina.properties

RUN echo 'auth.server.location=http://192.168.33.150:9999' >> /usr/local/tomcat/conf/catalina.properties

RUN echo 'audit.event.topic.arn=arn:aws:sns:eu-docker-1:975432845495:audit-event-docker-mobysoft' >> /usr/local/tomcat/conf/catalina.properties
RUN echo 'audit.role.arn=arn:aws:iam::975432845495:role/service/audit/client/audit-data-docker-AuditClientRole-1I6151SSRHIFE' >> /usr/local/tomcat/conf/catalina.properties

RUN echo 'auth.token.cache.endpoint=192.168.33.150' >> /usr/local/tomcat/conf/catalina.properties
RUN echo 'auth.token.cache.port=6379' >> /usr/local/tomcat/conf/catalina.properties

RUN echo 'aws.accessKey=NONE'>> /usr/local/tomcat/conf/catalina.properties
RUN echo 'aws.secretKey=NONE' >> /usr/local/tomcat/conf/catalina.properties

ENV JPDA_ADDRESS=0.0.0.0:8000

EXPOSE 8000

CMD [ "catalina.sh", "jpda", "run" ]
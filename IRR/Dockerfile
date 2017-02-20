FROM tomcat:8.5.5-jre8

MAINTAINER Mobysoft

RUN rm -r /usr/local/tomcat/webapps/ROOT

COPY IRR.war /usr/local/tomcat/webapps/ROOT.war

RUN echo 'spring.profiles.active=local' >> /usr/local/tomcat/conf/catalina.properties
RUN echo 'spring.datasource.host=192.168.33.150' >> /usr/local/tomcat/conf/catalina.properties
RUN echo 'spring.datasource.port=3306' >> /usr/local/tomcat/conf/catalina.properties
RUN echo 'spring.datasource.username=root' >> /usr/local/tomcat/conf/catalina.properties
RUN echo 'spring.datasource.password=password' >> /usr/local/tomcat/conf/catalina.properties
RUN echo 'notificationsLoader_queueUrl=notifications-loader' >> /usr/local/tomcat/conf/catalina.properties
RUN echo 'sqs.local.consumer.notifications-loader=http://192.168.33.150:8091/worker' >> /usr/local/tomcat/conf/catalina.properties
RUN echo 'notificationsRepository_uri=http://192.168.33.150:8090' >> /usr/local/tomcat/conf/catalina.properties

ENV JPDA_ADDRESS=0.0.0.0:8000

EXPOSE 8000

CMD [ "catalina.sh", "jpda", "run" ]
FROM tomcat:8
# Take the war and copy to webapps of tomcat
#COPY target/newapp.war /usr/local/tomcat/webapps/
RUN rm -rf /usr/local/tomcat/webapps
RUN mv /usr/local/tomcat/webapps.dist/* /usr/local/tomcat/webapps
COPY target/newapp.war /usr/local/tomcat/webapps/
ENTRYPOINT ["catalina.sh","run"]



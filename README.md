# PayTM

Initialize Jenkins with below command (make sure you update you Home location for local mount where ever you clone repo)

docker run -d --name myjenkins -p 8181:8080 -p 50000:50000 -v C:/Users/anujaga/Assignment/Jenkins:/var/jenkins_home jenkins/jenkins:latest

Things to now after running above coomand.
1. Jenkins can be accessed on local with http://localhost:8181
2. create you own git hub repo cred
3. Update git hub repo in Jenkinsfile
4. you will be getting pre-defined pipeline to initail entire stack of application (Airport and Countries)
5. Once pipeline is executed you can browse on http://localhost:30080/countries or http://localhost:30080/airports


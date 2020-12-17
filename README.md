# PayTM


To setup this on local will need below 

1.Jenkins. (docker pluing also needed)
2 Docker for windows with kubernetes enabled.
3. Use Jenkinsfile to configure build pipeline for docker images. (output can be seen in Jenkin_Build_Out.md file)

Clone Git Repo

git clone https://github.com/anuj1790/PayTM.git

cd Assignment;

To initialze application over kubenetes run below command.

To configure Ingress Resources:-
kubectl apply -f KubeYaml/ns-sa.yml;
kubectl apply -f KubeYaml/ingress-secrets.yml;
kubectl apply -f KubeYaml/ingress-role.yml;
kubectl apply -f KubeYaml/ingress-config.yml;
kubectl apply -f KubeYaml/ingress-class.yml;
kubectl apply -f KubeYaml/ingress-resource.yml;
kubectl apply -f KubeYaml/nginx-ingress.yml;
kubectl apply -f KubeYaml/node-port.yml; 

To configure Airpot Application(Update Image name in Airport.yml):-
kubectl apply -f KubeYaml/Airport.yml;
Kubectl apply -f KubeYaml/Airport_Service.yml;

To configure Countries Application:-
kubectl apply -f KubeYaml/Countries.yml;
kubectl apply -f KubeYaml/Countries_Service.yml

once all kubeneters resources are configured you can access application over 
http://localhost:30080/countries or http://localhost:30080/airports


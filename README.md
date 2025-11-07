This branch focuses on the ARGO CD implentation. 

Prereq tool:

Helm
kubectl

Steps to install Argocd inside the existing k8s cluster:
1. Create argocd namespace
   
   kubectl create namespace argocd

2. Install Argo CD components:

   kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml

3. Check the pods, it should install all the necessary resources like below

   ![alt text](image.png)


Access the Web UI

1. Check the services, here I have edited the agrocd-server service file to use NodePort

   ![alt text](image-1.png)

2. Access the server

   ![alt text](image-2.png)

3. User name is admin, password is located in the secret, below is the example


   $kubectl get secrets -n argocd (get the secret resource)

   $kubectl get secret argocd-initial-admin-secret  -n argocd -o yaml (find the password)
   ![alt text](image-3.png)

   $ echo "REttSHRxN1ZEMktpNVNucg==" | base64 -d (run this command to get the decoded pass)
   DKmHtq7VD2Ki5Snr

4. Login


Create and run the application in argocd


1. Create namespace where you want to deploy the application 
   ![alt text](image-5.png)

   otherwise the deployment will fail unless it is a default namespace
   ![alt text](image-4.png)

2. Create application and specify the namespace(if used).


3. This will deploy all the resource automatically, and you can also visualise it
   
   Application dashboard
   ![alt text](image-7.png)

   Tree structure
   ![alt text](image-6.png)


   Network structure
   ![alt text](image-8.png)

4. Lets check the resources in terminal


   All this resources are deploy by argo CD
   ![alt text](image-9.png)



Cleanup

you can just delete the application, it will delete all the resources it created

![alt text](image-14.png)
![alt text](image-15.png)

Error detection use case:

One of the service was not able to deploy as the NodePort port was already used, to fix this
![alt text](image-13.png)
![alt text](image-10.png)


1. Commeted the nodeport, so that it will create random NodePort to prevent this error
   ![alt text](image-11.png)


2. Result
   ![alt text](image-12.png)
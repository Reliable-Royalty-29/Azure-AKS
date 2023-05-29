# Azure-AKS

** Create AKS cluster using Terraform. **

**Pre-requisites:**
Terraform is installed on your machine.
Account setup in Azure.
Kubectl is installed on your machine
Azure cli is installed
Login to Azure using credentials
Make sure you are login to Azure portal first.

**az login**

Choose your Microsoft credentials. 

Let's create following tf files using Visual studio Code:

1. Variables.tf - where we will define the variables used in main.tf
2. terraform.tfvars - Declare the values for the variables
3. providers.tf - declare the providers with version
4. main.tf - main configuration file with all the resources which will be created
5. output.tf - Export some data to output file

**what is kubectl?**
kubectl is a powerful tool that enables users to manage and interact with Kubernetes clusters, making it a fundamental component for working with Kubernetes.
It is part of the Kubernetes project and is the primary tool used by administrators, developers, and operators to manage and operate Kubernetes clusters.


**Run terraform commands**

1. **terraform init**

                ![image](https://github.com/Reliable-Royalty-29/Azure-AKS/assets/84588268/7a382c1a-b24a-415e-ac50-c1408681a778)



2. ** terraform plan**
              ![image](https://github.com/Reliable-Royalty-29/Azure-AKS/assets/84588268/efdf35da-4b01-4a00-ba6b-c3ea643e1568)
              

3. ** terraform apply **
                 ![image](https://github.com/Reliable-Royalty-29/Azure-AKS/assets/84588268/7a9a10db-76cf-4a10-a503-72302351c0da)
                 

4. **terraform destroy** (Perform cleanup by deleting the AKS cluster)
                  
**Run kubernetes commands**

1. **az aks get-credentials --resource-group aks-rg --name shiva**

The command az aks get-credentials --resource-group aks-rg --name shiva retrieves the credentials for the AKS cluster named "shiva" deployed in the Azure resource group "aks-rg". Once executed, this command updates the local kubeconfig file, typically located at ~/.kube/config, with the necessary information to authenticate and access the AKS cluster.

After running this command, you can use kubectl commands to interact with the AKS cluster using the context defined in the kubeconfig file.

Here's an explanation of the command and its parameters:

az: The Azure command-line interface (CLI) command prefix.
aks: The Azure CLI command group for managing AKS.
get-credentials: The sub-command to retrieve the cluster credentials.
--resource-group <resource-group>: Specifies the name of the Azure resource group where the AKS cluster is deployed.
--name <cluster-name>: Specifies the name of the AKS cluster for which you want to retrieve the credentials.
  
  
  
  
2. **kubectl create -f https://raw.githubusercontent.com/shubhanginidey/kubernetes/main/new.yaml**
  
The command kubectl create -f is used to create Kubernetes resources defined in a YAML file. In your example, the command is creating resources specified in the YAML file hosted at the URL https://raw.githubusercontent.com/shubhanginidey/kubernetes/main/new.yaml.

Here's an explanation of the command and its parameters:

kubectl: The command-line tool for interacting with Kubernetes clusters.
create: The action to create Kubernetes resources.
-f <file> or --filename=<file>: Specifies the file or URL containing the YAML manifest to create the resources. In your case, the URL https://raw.githubusercontent.com/shubhanginidey/kubernetes/main/new.yaml points to the YAML file.
  
  
  
  
3. **kubectl get service azure-vote-front –watch**
  
The command `kubectl get service azure-vote-front --watch` is used to retrieve information about the Kubernetes Service named "azure-vote-front" and continuously watch for updates.

Here's an explanation of the command:

- `kubectl`: The command-line tool used for interacting with Kubernetes clusters.
- `get service`: The sub-command to retrieve information about services in a Kubernetes cluster.
- `azure-vote-front`: The name of the Kubernetes Service you want to retrieve information about. In this case, it is "azure-vote-front".
- `--watch`: The flag to enable continuous watching for updates. With this flag, the command will not terminate and will keep printing updates whenever there are changes to the service.

When you run this command, it will query the Kubernetes cluster and display information about the "azure-vote-front" service, including its name, type, cluster IP, external IP (if applicable), ports, and more. The output will be continuously updated as changes occur to the service, allowing you to monitor its status in real-time.

This command is commonly used when you want to monitor the state and availability of a service in Kubernetes, especially during deployments or troubleshooting scenarios.
  
  
  
** Thank You:)**

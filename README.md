# terraform-ansible-kubernetes-jenkins-docker-aws

## DevOps CI/CD Pipeline 

### Pre-requisites
###### Computer: 	Physical or a Virtual Machines (VM): creates a virtualized environment—called, simply enough, a virtual machine—that behaves like a separate computer system, complete with virtual hardware devices.
###### AWS EC2:  	Amazon Elastic Compute Cloud (Amazon EC2) provides scalable computing  capacity in the Amazon Web Services (AWS) Cloud. You can use Amazon EC2  to launch as many or as few virtual servers as you need, configure security and  networking, and manage storage.
###### Git: 		Free and open source distributed Version Control System (VCS)
###### Github: 	Code hosting platform for version control and collaboration (repositories) 
###### Jenkins: 	Free and open source automation server that helps automate the parts of software  development related to building, testing, deploying, and facilitating continuous integration and continuous delivery.
###### Docker: 	Software platform for building applications based on containers – small and  lightweight execution environments that make shared use of the operating system  kernel but otherwise run in isolation from one another.
###### Dockerhub: 		hosted repository service provided by Docker for finding and sharing container images with your team
###### Kubernetes: 	also known as K8s, is an open-source system for automating deployment, scaling, and management of containerized applications.
###### Minikube:  	runs a single-node Kubernetes cluster on your personal computer so that you can try out Kubernetes.
###### Ansible: 	Open-source automation tool, or platform, used for IT tasks such as configuration management, application deployment, intraservice orchestration, and 	provisioning.
###### (IAM) User:	 is an entity that you create in AWS to represent the person or application that uses it to interact with AWS. A user in AWS consists of a name and credentials. An IAM user with administrator permissions is not the same thing as the AWS account root user.

### Requirements:
###### Computer with minimum of 2 cpu and 8Gb RAM
###### (Optional) AWS Account for free EC2 tier
###### (Optional) Ubuntu 20.04 LTS

### What we are trying to accomplish:
###### A Continuous Integration and Continuous Deployment Pipeline with Jenkins, Terraform, Ansible, Kubernetes, AWS, Docker, and of course, github to host our repositories to allow jenkins with a webhook to always check when there is a new push/commit to the repo. And then, built the application and package everything and deploy the application

 

#Introduction
The objective is to try out various storage options in k8s cluster to service a common storage location for pods to read/write data

##FileStore
* is managed solution
* minimum size limitation of 1TB
* Pricing for ssd-backed storage becomes expensive real quick (google pricing shows price per GiB)
* nfs server needs to have a static IP


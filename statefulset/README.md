#Intro:
the attempt is to setup nfs server as a stateful set, however it appears it is not possible

##Idea:
Create a statefulset using a nfs container image to have 2 replicas running simulatenously to have a common storage backend.  
The test was to see if the PV can be exported as a single location in two pods to provide redudancy

### Issues
1. Currently inorder to use statefulset, the requirement is to run nfs shared storage which needs to be standalone. Therefore redudancy of nfs-server itself is not possible
2. NFS pod needs to run in privliged mode, which is not a good idea.
3. other option is to use runas but still it is a potential issue for security
4. Nfs service needs to run for the PV which can use a clusterIP or kubedns dns, however the fqdn needs to be obtained from the cluster, by default the domain name is set to *.default.svc.cluster.local

####conclusion:
nfs service as a statefulset doesnt work

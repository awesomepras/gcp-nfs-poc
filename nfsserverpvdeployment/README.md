## Intro
create a nfs server deployment using a pvc
this wil create a dynamic volume with specified size with RWO access mode
Deploy nfs service to expose the ports to the nfs server
Next create a pv, pvc for the application pod to consume. This PV will need to use nfs plugin and have mount options to use the nfs service in the cluster
Deploy app using the pvc for the volumemount

#### result
```bash
 mounting nfs-service.default.svc.cluster.local:/exports on /mnt failed: Permission denied
 ```

# Setup NFS solution in GCP
[Create Persistent Volume with RWX access in GCP ](https://awesomepras.wordpress.com/2021/04/16/creating-persistent-volumes-withrwx-access-mode/)

There are many posts that explains how to setup Persistent Volumes in GKE. The aim of this article is to show how to setup ReadWriteMany Accessmode so multiple pods can read/write data into the PersistentVolume. Until Kubernetes v 1.17 the only option was to use NFS but it is an overhead and expensive. This article also touches on how to use CSI driver which is the future of storage Plugins in K8s. Read more in the [blog](https://awesomepras.wordpress.com/2021/04/16/creating-persistent-volumes-withrwx-access-mode/)

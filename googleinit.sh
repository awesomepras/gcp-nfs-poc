gcloud auth login --no-launch-browser
#obtain the url and paste the api code
#initialize the kubeconfig for ur project

read -p " ok to continue"
gcloud init --console-only --skip-diagnostics --account
read -p " ok to continue"
#reinitialize change account and project
gcloud services enable container.googleapis.com
#create a cluster
gcloud container clusters create cluster-1 --release-channel regular --zone us-central1-c --addons=GcePersistentDiskCsiDriver --num-nodes=3 --disk-size=10G --network=default --cluster-version=1.18.16-gke.2100


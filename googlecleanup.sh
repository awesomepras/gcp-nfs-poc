#!/bin/zsh
gcloud container clusters delete cluster-1

gcloud config unset project --project=
#revoke the account

gcloud auth revoke `gcloud auth list --filter=status:ACTIVE --format="value(account)"`

#!/usr/bin/bash

oc new-project storage-classes --display-name='Storage Classes'
oc new-app docker.io/nhripps/sleeper:v1.0 --name=fast-app -n storage-classes
oc create -f fast-nfs-pvc.yaml -n storage-classes
oc create -f slow-nfs-pvc.yaml -n storage-classes

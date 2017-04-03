#!/bin/bash
/usr/bin/oc get pod -n networkb $(oc get pod -n networkb | awk '/oc-1/ {print $1}') -o template --template '{{.status.podIP}}{{"\n"}}'

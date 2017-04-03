#!/bin/bash

# create NetworkA, NetworkB projects
/usr/bin/oc new-project networka
/usr/bin/oc new-project networkb

# deploy the DC definition into the projects
/usr/bin/oc create -f client-dc.yaml -n networka
/usr/bin/oc create -f client-dc.yaml -n networkb

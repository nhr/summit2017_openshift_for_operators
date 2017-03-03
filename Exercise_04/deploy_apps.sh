#!/usr/bin/bash

oc new-app docker.io/openshift/hello-openshift:v1.4.1 -n paymentapp-dev
oc new-app docker.io/openshift/hello-openshift:v1.4.1 -n paymentapp-test
oc new-app docker.io/openshift/hello-openshift:v1.4.1 -n portalapp-dev
oc new-app docker.io/openshift/hello-openshift:v1.4.1 -n portalapp-test

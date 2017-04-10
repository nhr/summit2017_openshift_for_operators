#!/usr/bin/bash

oc create -f resource-quotas-non-prod.yaml -n portalapp-dev
oc create -f resource-quotas-non-prod.yaml -n portalapp-test
oc create -f resource-quotas-non-prod.yaml -n paymentapp-dev
oc create -f resource-quotas-non-prod.yaml -n paymentapp-test

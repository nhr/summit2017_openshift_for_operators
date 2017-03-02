#!/usr/bin/bash

oc create -f resource-quotas-non-prod.json -n portalapp-dev
oc create -f resource-quotas-non-prod.json -n portalapp-test
oc create -f resource-quotas-non-prod.json -n paymentapp-dev
oc create -f resource-quotas-non-prod.json -n paymentapp-test

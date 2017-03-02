#!/usr/bin/bash

echo "Mapping group 'paymentapp' to the paymentapp dev & test projects."
oadm policy add-role-to-group admin paymentapp -n paymentapp-dev
oadm policy add-role-to-group admin paymentapp -n paymentapp-test

echo "Mapping group 'portalapp' to the portalapp dev & test projects."
oadm policy add-role-to-group admin portalapp -n portalapp-dev
oadm policy add-role-to-group admin portalapp -n portalapp-test

echo "Mapping group 'ocp-production' to the portalapp-prod & paymentapp-prod projects."
oadm policy add-role-to-group admin ose-production -n portalapp-prod
oadm policy add-role-to-group admin ose-production -n paymentapp-prod

#!/usr/bin/bash

echo "Granting group 'paymentapp' admin rights in the paymentapp dev & test projects."
oadm policy add-role-to-group admin paymentapp -n paymentapp-dev
oadm policy add-role-to-group admin paymentapp -n paymentapp-test

echo "Granting group 'portalapp' admin rights in the portalapp dev & test projects."
oadm policy add-role-to-group admin portalapp -n portalapp-dev
oadm policy add-role-to-group admin portalapp -n portalapp-test

echo "Granting group 'ocp-production' admin rights in the portalapp-prod & paymentapp-prod projects."
oadm policy add-role-to-group admin ose-production -n portalapp-prod
oadm policy add-role-to-group admin ose-production -n paymentapp-prod

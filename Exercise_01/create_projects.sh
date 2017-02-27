#!/usr/bin/bash

export APPNAME=portalapp
export APPTEXT="Portal App"
oadm new-project ${APPNAME}-dev --display-name="${APPTEXT} Development"
oadm new-project ${APPNAME}-test --display-name="${APPTEXT} Testing"
oadm new-project ${APPNAME}-prod --display-name="${APPTEXT} Production"

export APPNAME=paymentapp
export APPTEXT="Payment App"
oadm new-project ${APPNAME}-dev --display-name="${APPTEXT} Development"
oadm new-project ${APPNAME}-test --display-name="${APPTEXT} Testing"
oadm new-project ${APPNAME}-prod --display-name="${APPTEXT} Production"

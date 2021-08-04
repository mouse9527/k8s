#!/usr/bin/env bash
NAMESPACE=$1
SERVICE=$2
COMMAND=$3
PID=`kubectl get pods -n $NAMESPACE -l app=$SERVICE | grep $SERVICE | awk '{print $1}'`
kubectl exec -it $PID -n $NAMESPACE -- $COMMAND

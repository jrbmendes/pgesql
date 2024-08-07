oc delete deployment --all
oc delete build --all
oc delete bc --all
oc delete is pgesql-dev
oc delete pod --all
oc delete svc --all


oc get all
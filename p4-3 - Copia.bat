oc new-build https://github.com/jrbmendes/pgesql.git#main --name=pgesql-dev --strategy=docker  --allow-missing-imagestream-tags

oc start-build pgesql-dev --follow

oc rollout restart deployment/pgesql-dev



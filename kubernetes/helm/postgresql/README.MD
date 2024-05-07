helm install postgres  bitnami/postgresql -f values.yml --version 15.2.5 -n dev --create-namespace
helm upgrade postgres bitnami/postgresql -f values.yml -n dev 
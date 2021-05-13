# db-web-client 
* web-client-secret
  - SQLPAD_ADMIN 
  - SQLPAD_ADMIN_PASSWORD
```shell
kubectl create secret generic -n db web-client-secret --from-literal=SQLPAD_ADMIN= --from-literal=SQLPAD_ADMIN_PASSWORD=
```

# mysql 
* mysql-secret 
  - password
```shell
kubectl create secret generic -n db mysql-secret --from-literal=password=
```

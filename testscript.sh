#!/bin/bash

counter=0

my_array=(mongo mongo-service secret-service aes-encyption-service session-token-service account-service dashboard-service email-service authentification-service role-service group-service) 

until [ $counter -gt 11 ]
do
  echo ${my_array[$counter]}
  name=${my_array[$counter]}
  sed "s/mongo-service/$name/g" mongo-service.yaml > $counter$name.yaml
  ((counter++))
done

echo ALL done


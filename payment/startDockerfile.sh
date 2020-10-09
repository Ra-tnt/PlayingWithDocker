#!/bin/bash

docker build --tag raghadq/payment .

docker login -p  -u 

docker push raghadq/payment



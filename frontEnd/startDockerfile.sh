#!/bin/bash

docker build --tag raghadq/frontend .

docker login -p  -u 

docker push raghadq/frontend



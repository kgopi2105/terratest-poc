docker build . -t kgopi1/terratest 

docker run --rm -it -v $PWD/../goworkspace:/go/src \
--name terratest kgopi1/terratest



source ./sh/env.sh;
rm -rf package && mkdir package;
rm lambda.zip;
docker start bundler || docker run -dt --name bundler -v $LOCAL_PATH:/bind-mount amazonlinux;
docker exec -i bundler bash < sh/build.sh;
docker stop bundler;

# prepare environment
yum update -y;
yum install -y zip;
amazon-linux-extras install -y python3.8;
python3.8 -m pip install -U pip;

# install python dependencies
# Ex: pip3 install pytrends --target ./bind-mount/package --upgrade;

# zip
cd bind-mount/package && zip -r ../lambda.zip . && cd ..;
zip -g lambda.zip lambda_function.py;

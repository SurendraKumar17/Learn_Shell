script_location=$(pwd)

cp $script_location/Files/mongodb.repo /etc/yum.repos.d/mongo.repo

yum install mongodb-org -y

systemctl restart mongod
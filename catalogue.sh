script_location=$(pwd)

curl -sL https://rpm.nodesource.com/setup_lts.x | bash
yum install nodejs -y
useradd roboshop
mkdir /app
curl -L -o /tmp/catalogue.zip https://roboshop-artifacts.s3.amazonaws.com/catalogue.zip
rm -rf /app/*
cd /app
unzip /tmp/catalogue.zip
cd /app
npm install

cp $script_location/Files/catalogue.service /etc/systemd/system/catalogue.service
systemctl daemon-reload

cp $script_location/Files/mongodb.repo /etc/yum.repos.d/mongo.repo
yum install mongodb-org-shell -y
Artifactory:
yum -y update; 
yum install java-1.8.0-openjdk -y; 
wget https://bintray.com/jfrog/artifactory-pro-rpms/rpm -O bintray-jfrog-artifactory-pro-rpms.repo; 
sudo mv bintray-jfrog-artifactory-pro-rpms.repo /etc/yum.repos.d/; 
yum install jfrog-artifactory-pro -y; 
systemctl start artifactory.service
systemctl status artifactory.service

service artifactory check



ZIP

mkdir -p /var/opt/jfrog/artifactory
cd /var/opt/jfrog/artifactory
wget https://jfrog.bintray.com/artifactory-pro/org/artifactory/pro/jfrog-artifactory-pro/6.9.6/jfrog-artifactory-pro-6.9.6.zip
unzip jfrog-artifactory-pro-6.9.6.zip
mv artifactory-pro-6.9.6/* .
rm -rf jfrog-artifactory-pro-6.9.6.zip
rm -rf artifactory-pro-6.9.6

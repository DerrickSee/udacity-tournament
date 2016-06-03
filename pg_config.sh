apt-get -qqy update
apt-get -qqy install postgresql python-psycopg2
apt-get -qqy install python-pip

su postgres -c 'createuser -dRS vagrant'
su vagrant -c 'createdb'
su vagrant -c 'psql -f /vagrant/tournament/tournament.sql'

vagrantTip="[35m[1mThe vagrant directory is located at /vagrant\nTo access files: cd /vagrant(B[m"
echo -e $vagrantTip > /etc/motd

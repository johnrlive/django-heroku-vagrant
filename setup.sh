udo apt-get update
# Install Curl and PostgreSQL
sudo apt-get install -y curl postgresql-common postgresql libpq-dev
sudo su postgres -c "createuser vagrant -s"
# Install python tools
sudo apt-get -y install python3-setuptools
sudo easy_install3 pip
sudo apt-get -y install python3-dev
sudo apt-get -y install python-django
#install Git
sudo apt-get -y install git
#Install all pip packages
sudo -H pip install Django==1.8.4
sudo -H pip install dj-database-url==0.3.0
sudo -H pip install dj-static==0.0.6
sudo -H pip install django-postgrespool==0.3.0 
sudo -H pip install gunicorn==19.3.0
sudo -H pip install SQLAlchemy==1.0.8
sudo -H pip install whitenoise==2.0.3
sudo -H pip install django-toolbelt==0.0.1
sudo -H pip install static3==0.6.0
sudo -H pip install newrelic==2.54.0.41
#install Heroku toolbelt. The ubuntu package doesn't work, so im running the Standalone version which requires aliases and manual update
wget -O- https://toolbelt.heroku.com/install.sh | sh
echo 'alias heroku=/usr/local/heroku/bin/heroku' >> ~/.bashrc
echo 'alias heroku=/usr/local/heroku/bin/heroku' >> ~/.profile
#Updated the heroku toolbelt to V4.
/usr/local/heroku/bin/heroku plugins:install
# Last row gives:
# $ ���    Missing argument: NAME
# $ !    error installing plugin
# It installs all required plugins except forego
# Running [$ heroku local] will install the last plugin

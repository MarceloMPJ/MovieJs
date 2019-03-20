rvm install ruby-2.5.1
sudo apt-get update
sudo apt-get install apt-transport-https
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update && sudo apt-get install yarn
gem update --system
gem install bundler:2.0.1
bundle install
yarn install
sudo service postgresql start
sudo -u postgres createdb movie_js
sudo -u postgres createdb movie_js_test

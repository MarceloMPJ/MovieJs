# MovieJs
A sample using Rails/Bootstrap/Vue.js

### Installation
Install yarn:
```sh
$ sudo apt-get update && sudo apt-get install yarn
```
Install Ruby 2.5.1
```sh
$ rbenv install 2.5.1
```
Inside the project's directory:
```sh
$ gem install bundler -v 1.6.0
$ bundle install
$ yarn install
```
Create the ```database.yml``` file based on ```database.yml.sample```.
Create the databases:
```sh
$ sudo -u postgres createdb movie_js
$ sudo -u postgres createdb movie_js_test
```
Create tables and populate the database:
```sh
rake db:schema:load
rake db:seed
```

### C9 installation
```sh
./c9.sh
createuser userc9 -dslP
```
Create the ```database.yml``` file based on ```database.yml.sample```.
Create tables and populate the database:
```sh
rake db:schema:load
rake db:seed
```
Run que server
```sh
rails s -b $IP -p $PORT
```

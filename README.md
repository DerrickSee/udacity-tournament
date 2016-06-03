Tournament Results (Udacity Project 3)
=============

## Getting Started
Download [Vagrant](https://www.vagrantup.com/downloads.html).

Set up vagrant environment.
```
vagrant up
```

During the vagrant setup, the database and tables are created automatically.
To do this manually, you will need to enter the vagrant machine, and run the file tournament.sql through psql.

```
vagrant ssh
cd /vagrant/tournament
psql -f tournament.sql
```

To run test code
```
python tournament_test.py
```

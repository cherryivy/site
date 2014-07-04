## README

### Contributing to Cherry Ivy
These directions are for users with commit permission on the Cherry Ivy organization.

To bring down a copy of the Cherry Ivy main site into a directory called cherry_ivy, use the following
```
git clone git@github.com:cherryivy/site.git cherry_ivy/
```

Even in development and testing, Cherry Ivy uses PostgreSQL. You will need PostgreSQL installed and running to work on the site. In order to protect credentials, we do not check database.yml into git, but you can get a starting (blank) copy by copying database.yml.sample.

If your system is configured properly, you should be able to start the site with the following commands:
```
bundle install
bundle exec rake db:create
bundle exec rake db:migrate
rails server
```

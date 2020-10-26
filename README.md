# LOOFAH DB INIT

Script to seed the loofah database.

You'll need to import the data from Confluence manually for now (don't want to make it accessible on public Github)

### To get started:

- clone this project into your loofah project root `git clone ...` (or run setupLoofah.sh in loofah-tooling)
- cd into this project `cd loofah-db-init`
- create a directory called /data in the root of this project `mkdir data`
- go to https://devservices.jira.com/wiki/spaces/LOOF/pages/2199748661/Sample+Data+-+Engineering+Skills, download the following files and copy them into the data directory:
    - skill.csv
    - category.csv
    - grade.csv
    - craft.csv
    
### To seed the db:

- go to loofah-tooling and run `./runLoofah.sh`

**NOTE:** When you are finished with your docker network, you need to remove all containers properly, otherwise you will get duplicate id errors next time
you try to seed the db -> `docker-compose -f docker-compose-loofah.yml down` OR `CTRL-C` then `docker rm $(docker ps -a -q)`
    
    
### Improvements:

Currently the csv files have to include a blank first column, otherwise values aren't imported properly - not sure why! 

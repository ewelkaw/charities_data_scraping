# charities_data_scraping
Training script to scrap data and save them in postgres.

0. Prepare venv for project and install requirements:
```bash
$ pip3 install -r requirements.txt
```

1. First of create database for data 
```bash
$ psql -c "CREATE DATABASE charity;"
```

2. Download csv files using python script:
```bash
$ python3 csv_files_downloading.py
```

3. Upload data to database using bash script:
```bash
$ ./loading_data_to_db.sh charity
```

4. Profit!


### IMPORTANT ASSUMPTIONS
1. Everything is in one table because my task was to scrap data not to plan the database structure, but definitely there is a place for relational database
2. Some constants are taken from website because mostly scraping is one time operation so it need to be done effectively (here we don't know anything about checking if there is new data incoming) 
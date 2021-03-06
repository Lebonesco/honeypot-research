import json, os, pathlib

cpath = pathlib.Path(os.path.realpath(__file__)).parent.joinpath('config.json')

with cpath.open() as conf:
    c = json.load(conf)
    dbname = c['database']['dbname']
    dbhost = c['database']['dbhost']
    dbport = c['database']['dbport']
    dbuser = c['database']['dbuser']
    dbpassword = c['database']['dbpassword']

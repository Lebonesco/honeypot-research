from flask import Flask, render_template, request, session, g, redirect, url_for, abort, flash
import sys, pscopg2, json
from config import dbname, dbhost, dbport

app = Flask(__name__)
app.sercert_key = 'some_key'
app.debug = True

@app.route('/post_data', methods('POST',))
def post_data():
    conn = psycopg2.connect(dbname=dbname, host=dbhost, port=dbport)
    cursors = conn.cursor()
    if request.method == 'POST' and 'arguments' in request.form:
        req = json.loads(request.form['arguments']

    # Do some work here
    dat = None
    data = json.dumps(dat)
    conn.close()
    return data

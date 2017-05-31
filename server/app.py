from flask import Flask, render_template, request, session, g, redirect, url_for, abort, flash
import sys, psycopg2, json
from config import dbname, dbhost, dbport, dbuser, dbpassword

app = Flask(__name__)
app.sercert_key = 'some_key'
app.debug = True

@app.route('/post_data', methods=('POST',))
def post_data():
    conn = psycopg2.connect(dbname=dbname, user=dbuser, password=dbpassword)
    cursor = conn.cursor()
    res = None
    if request.method == 'POST' and request.args.get('input', '') != None:
        #req = json.loads(request.form['arguments'])
        input_value = str(request.args.get('input', ''))
        query = "INSERT INTO data (value) VALUES (" + input_value + ");"
        cursor.execute(query)
        conn.commit()
        res = "OK"
    else:
        res = "Please add a parameter for input"

    data = json.dumps(res)
    conn.close()
    return data

if __name__ == '__main__':
    app.run(host='128.223.4.35', port=5555, debug=True)

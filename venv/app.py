import os
import psycopg2
from flask import Flask, render_template, request, url_for, redirect

app = Flask(__name__)

def get_db_connection():
    conn = psycopg2.connect(host='localhost',
        	database="tfa_gimnasio",
            # user=os.environ['DB_USERNAME'],
            user="postgres",
            # password=os.environ['DB_PASSWORD']
            password="1234")
    return conn

@app.route('/')
def index():
    conn = get_db_connection()
    cur = conn.cursor()
    cur.execute('SELECT * FROM Gimnasio;')
    vals = cur.fetchall()
    cur.close()
    conn.close()
    return render_template('index.html', vals=vals)

@app.route('/about/', methods=('GET', 'POST'))
def about():
    return render_template('about.html')
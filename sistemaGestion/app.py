from flask import Flask
#from flask import send_from_directory
from flask import render_template#, request, redirect, url_for, flash
#from flaskext.mysql import MySQL
#from datetime import datetime
#import os

app = Flask(__name__)

@app.route('/')
def index():
     return render_template('servicios/index.html')

if __name__=='__main__':
    app.run(debug=True)
from flask import Flask
#from flask import send_from_directory
from flask import render_template#, request, redirect, url_for, flash
from flaskext.mysql import MySQL
#from datetime import datetime
#import os

app = Flask(__name__)

mysql = MySQL()

app.config['MYSQL_DATABASE_HOST'] = 'localhost'
app.config['MYSQL_DATABASE_USER'] = 'root'
app.config['MYSQL_DATABASE_PASSWORD'] = ''
app.config['MYSQL_DATABASE_Db'] = 'jazz'
mysql.init_app(app)

@app.route('/')
def index():
     return render_template('servicios/index.html')


@app.route('/nails')
def services_nails():
     sql = "SELECT * FROM `jazz` . `servicios` WHERE spa = 'uñas';"
     #sql = "INSERT INTO `jazz`.`servicios`(`id`, `spa`, `nombre`, `proceso`, `duracion`, `precio`, `foto`) VALUES ('4001','cejas','Perfilado + tinte de cejas','60 minutos','1 a 2 meses','850','img/cejas-tinte.png')"
     conn = mysql.connect()
     cursor = conn.cursor()
     cursor.execute(sql)
     servicios_nails = cursor.fetchall()
     # print(empleados)
     conn.commit()
     return render_template('servicios/nails.html', servicios_nails=servicios_nails)

@app.route('/browsandlashes')
def services_browsandlashes():
     sql = "SELECT * FROM `jazz` . `servicios` WHERE spa = 'cejas' OR spa = 'pestañas';"
     #sql = "INSERT INTO `jazz`.`servicios`(`id`, `spa`, `nombre`, `proceso`, `duracion`, `precio`, `foto`) VALUES ('4001','cejas','Perfilado + tinte de cejas','60 minutos','1 a 2 meses','850','img/cejas-tinte.png')"
     conn = mysql.connect()
     cursor = conn.cursor()
     cursor.execute(sql)
     servicios_browsandlashes = cursor.fetchall()
     # print(empleados)
     conn.commit()
     return render_template('servicios/browsandlashes.html', servicios_browsandlashes=servicios_browsandlashes)

@app.route('/login')
def login():
     return render_template('servicios/login.html')

if __name__=='__main__':
    app.run(debug=True)
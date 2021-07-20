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
     #sql="INSERT INTO `sistema`.`empleados` (`nombre`, `correo`,`foto`) VALUES ('juan', 'juan@gmail.com','foto.jpg');"
     #sql = "SELECT * FROM `sistema` . `empleados`;"
     #sql = "INSERT INTO `jazz`.`servicios`(`id`, `spa`, `nombre`, `proceso`, `duracion`, `precio`, `foto`) VALUES ('4001','cejas','Perfilado + tinte de cejas','60 minutos','1 a 2 meses','850','img/cejas-tinte.png')"
     conn = mysql.connect()
     cursor = conn.cursor()
     #cursor.execute(sql)
     #empleados = cursor.fetchall()
     # print(empleados)
     conn.commit()
     return render_template('servicios/index.html')

@app.route('/login')
def login():
     return render_template('servicios/login.html')

if __name__=='__main__':
    app.run(debug=True)
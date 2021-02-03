from flask import Flask, render_template, request, redirect, url_for, flash
from flask_mysqldb import MySQL

# inicializar
app = Flask(__name__)


# conexion MySQL
app.config['MYSQL_HOST'] = 'localhost' 
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = ''
app.config['MYSQL_DB'] = 'persona'
mysql = MySQL(app)

app.secret_key = "mysecretkey"




@app.route('/')
def Index():
     cur = mysql.connection.cursor()
     cur.execute('SELECT * FROM info_persona')
     data = cur.fetchall()
     cur.close()
     return render_template('index.html', personas = data)



@app.route('/agregar_persona', methods=['POST'])
def add_persona():
    if request.method == 'POST':
        Nombre = request.form['Nombre']
        Apellido = request.form['Apellido']
        tipo_id = request.form['tipo_id']
        Documento = request.form['Documento']
        Correo = request.form['Correo']
        Celular = request.form['Celular']
        Fecha_nacimiento = request.form['Fecha_nacimiento']
        cur = mysql.connection.cursor()
        cur.execute("INSERT INTO info_persona (Nombre,Apellido,tipo_id,Documento,Correo,Celular,Fecha_nacimiento) VALUES (%s,%s,%s,%s,%s,%s,%s)", (Nombre,Apellido,tipo_id,Documento,Correo,Celular,Fecha_nacimiento))
        mysql.connection.commit()
        flash('Persona agregada con exito')
        return redirect(url_for('Index'))



if __name__  ==  '__main__':
 app.run(port = 3000, debug = True)
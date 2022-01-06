import os, sys
sys.path.append(os.path.join(os.path.dirname(__file__),'/src/'))

from project_name import create_app 
# Flask, redirect, url_for, request, render_template
# app = Flask(__name__)

# create_app().run()
# from app import views

# @app.route('/')
# # def hello_world():
#   # return 'Hello, Docker!'
# def index():
#   return render_template('')

# @app.route('/admin')
# def hello_admin():
#   return 'Hello, Admin!'

# @app.route('/hello/<name>')
# def hello_name(name):
#   return 'Hello, %s!' % name

# @app.route('/guest/<guest>')
# def hello_guest(guest):
#   return 'Hello %s as guest' % guest


# @app.route('/user/<name>')
# def hello_user(name):
#   if name == 'admin':
#     return redirect(url_for('hello_admin'))
#   else:
#     redirect(url_for('hello_guest', guest = name))

# @app.route('/login', methods=['POST', 'GET'])
# def login():
#   if request.method == 'POST':
#     user = request.form['name']
#     return redirect(url_for('hello_name', name = user))
#   else:
#     user = request.args.get('name')
#     return redirect(url_for('hello_name', name = user))
app = create_app()

# # a simple page that says hello
# @app.route('/hello')
# def hello():
#     return 'Hello, World!'


if __name__ == '__main__':
  app.run()

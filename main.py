from flask import Flask

app = Flask(__name__, static_folder='static', static_url_path='')


@app.route('/index')
def index():
    return app.send_static_file('index.html')


@app.route('/home')
def home():
    return app.send_static_file('home-page.html')

@app.route('/team-stats')
def team():
    return app.send_static_file('team-stats.html')

if __name__ == '__main__':
    app.run(threaded=True, port=5000)
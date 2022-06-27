from flask import Flask, request

app = Flask(__name__)


@app.route('/')
def index():
    ip_address = request.remote_addr
    headers = request.headers
    i = '<br/>'.join(['%s:: %s' % (key, value) for (key, value) in headers.items()])
    return "<b>IP kontenera:</b><br>" + ip_address + "<br><b>Request headers:</b><br>" + i


if __name__ == "__main__":
    app.run()

#!/usr/bin/python

from flask import Flask

app = Flask(__name__)
@app.route("/")
def hello_resin():
        """Respond to incoming calls with a simple text message."""
        return "Hello World!"

if __name__ == "__main__":
	print "Hello Resin"
        app.run( host='0.0.0.0', debug=True, port = 80)


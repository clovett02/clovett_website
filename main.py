from website import create_app
from flask import request, redirect

if __name__ == "__main__":
    app = create_app()

    app.run(host="0.0.0.0", port=5000)
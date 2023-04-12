from website import create_app
from flask import request, redirect

if __name__ == "__main__":
    app = create_app()

    @app.before_request
    def before_request():
        if not request.is_secure:
            url = request.url.replace('http://', 'https://', 1)
            code = 301
            return redirect(url, code=code)

    app.run(host="0.0.0.0", port=80)
from flask import Blueprint, render_template, request, redirect

views = Blueprint('views', __name__)

@views.before_request
def before_request():
    if request.is_secure:
        return

    url = request.url.replace("http://", "https://", 1)
    code = 301
    return redirect(url, code=code)

@views.route('/')
def Home():
    return render_template('Home.html', pagename="Chris Lovett")

@views.route('/resume')
def Resume():
    return render_template('Resume.html', pagename="Resume")

@views.route('/projects')
def Projects():
    """Can return html showing desription of projects with links to github
    and/or source code.
    """
    return render_template('Projects.html', pagename="Projects")

# @views.route('/headshot.png')
# def Headshot():
#     return render_template('/website/static/images/headshot.png')
from flask import Blueprint, render_template

views = Blueprint('views', __name__)

@views.route('/')
def Home():
    return render_template('Home.html')

@views.route('/resume')
def Resume():
    return render_template('Resume.html')

@views.route('/projects')
def Projects():
    """Can return html showing desription of projects with links to github
    and/or source code.
    """
    return render_template('Projects.html')

# @views.route('/headshot.png')
# def Headshot():
#     return render_template('/website/static/images/headshot.png')
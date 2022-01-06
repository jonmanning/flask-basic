from flask import (
    Blueprint, flash, g, redirect, render_template, request, url_for
)
from werkzeug.exceptions import abort

from project_name.auth import login_required
from project_name.db import get_db

bp = Blueprint('core', __name__)
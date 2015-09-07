FROM heroku/python

RUN pip install -U pip
RUN pip install --upgrade virtualenv
RUN virtualenv --no-site-packages /venv/
ADD requirements.txt /venv/
RUN /venv/bin/pip install -r /venv/requirements.txt

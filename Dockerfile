FROM python:3.7-alpine

# A bunch of `LABEL` fields for GitHub to index
LABEL "com.github.actions.name"="HELLOWORLD"
LABEL "com.github.actions.description"="Print Hello World string."
LABEL "com.github.actions.icon"="printer"
LABEL "com.github.actions.color"="purple"
LABEL "repository"="http://github.com/ajilraju/helloworld-actions"
LABEL "homepage"="http://github.com/ajilraju/helloworld-actions"
LABEL "maintainer"="Ajil Raju (https://github.com/ajilraju)"

# install helloworld module

RUN pip install --upgrade pip
RUN pip install helloworld-ajilraju

# run the script Ad hoc
CMD ["python", "-c", "from helloworld import helloworld; print(helloworld.sayhello())"

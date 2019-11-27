FROM python:3.7-alpine

# install helloworld module
RUN pip install --upgrade pip
RUN pip install helloworld-ajilraju

# run the script Ad hoc
CMD ["python", "-c", "from helloworld import helloworld; print(helloworld.sayhello())"]

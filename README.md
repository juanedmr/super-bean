# Elasic Bean Falsk application CD

Fork the repo in order for you to have the files.

* Create a python virtualenv and source it and run `make all`
```
python3 -m venv ~/.eb
source ~/.eb/bin/activate
make all
```

* Initialize new eb app and create the environmet
```
eb init -p python-3.8 super-bean --region us-west-1
eb create super-bean-env
```

* Set up AWS Code Build and AWS Code Pipeline to have the project with Continous Integration and Delivery


For reference:

[AWS Code Build](https://docs.aws.amazon.com/codebuild/latest/userguide/getting-started.html)

[AWS Code Pipeline](https://docs.aws.amazon.com/codepipeline/latest/userguide/getting-started-codepipeline.html)

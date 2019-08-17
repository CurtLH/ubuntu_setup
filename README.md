# git

```
$ sudo apt install git
```

# byobu

```
$ sudo apt install byobu
```

Follow [these directions](https://superuser.com/a/712613) to run `byobu` whenever you open a new terminal window.

# postges

Follow [these directions](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-postgresql-on-ubuntu-18-04).

# conda

```
$ wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
$ chmod +x Miniconda3-latest-Linux-x86_64.sh
$ ./Miniconda3-latest-Linux-x86_64.sh
```

# hub

```
$ conda install -c conda-forge hub
```

# liquidprompt

```
$ conda install -c conda-forge liqidprompt
```

# airflow

```
$ conda create --name airflow -c conda-forge airflow-with-postgres
$ conda activate airflow
```

Follow [these directions](https://vujade.co/install-apache-airflow-ubuntu-18-04/) to create a new user and database for airflow. In my situation, I named both the user and the database "airflow".

Make the following changes to `~/airflow/airflow.cfg`:

```
sql_alchemy_conn = postgresql+psycopg2://airflow@localhost:5432/airflow
broker_url = amqp://airflow@localhost:5672//
result_backend = amqp://airflow@localhost:5672//
```

Add the following line to your `.bashrc` file:

```
$ export AIRFLOW_HOME=~/airflow
```

Initalize the Airflow database for the first time

```
$ airflow initdb
```

Start the Airflow Scheduler and Web Server

```
$ airflow scheduler
$ airflow webserver
```


Challenges when setting up local enviornment ansible and docker.
The set up was done on Mac os.

The main issue was the version of python that was being run.

ansible returns with "Failed to import the required Python library (Docker SDK for Python: docker (Python >= 2.7) or docker-py (Python 2.6))

 I traced this error down to how ansible invokes python.

 by default it calls the python at /usr/bin/python and not the python that you believe by setting your path.

 It could be that when you run python or pip you could see all your dependencies are present as ( docker  , docker-compose etc)
 This all depends on how your path is set up so I inadvertently thought that I had the right dependencies in place for the the version of python being run. I am not a python expert so do bear that in mind :)

python -m pip list | grep docker
python -m pip list | grep requests

I have found that the better check is
/usr/bin/python -m pip list | grep requests
and also to install dependencies the better way is
/usr/bin/python -m pip install docker

Due to the various issues I had upgrade to python3 using brew on mac,
and hence I never validated if with the default install version of python if everthing would work.


I switched the python to use a version 3 of the python (Python 3.7.7)

python -v

Now for ansible to use this version of python for particular hosts say for example the contoller_node

[controller-only]
controller-node

[controller-only:vars]
ansible_python_interpreter=/usr/local/bin/python3

Now what ansible would be using is the python at /usr/local/bin/python3

Now to check if you have the dependencies present on the target machine.
In my case the host and target is the same as I am setting up services on the host machine as well (my dev enviornment)

run
/usr/local/bin/python3 -m pip list | grep docker
/usr/local/bin/python3 -m pip list | grep requests

if not install them by doing

/usr/local/bin/python3 -m pip install docker
/usr/local/bin/python3 -m pip install requests
/usr/local/bin/python3 -m pip install docker-compose

now when ansible runs what it does copy some python code to the target machine and execute them.
For running docker the key file that was having the issue was the one at
if you run ansible with the -vvv option you can see traces of the error.

ansible-playbook kafka-dev.yml -i inventory -vvv


/Users/XXXX/Library/Python/3.7/lib/python/site-packages/ansible

the package structure would be some thing similar to the above on your machine

Locate the file

/Users/eventsadmusr/Library/Python/3.7/lib/python/site-packages/ansible/modules/cloud/docker/docker_compose.py

This file delegates to

/Users/eventsadmusr/Library/Python/3.7/lib/python/site-packages/ansible/module_utils/docker/common.py

The easiest way I found to debug was to file write the errors by updating common.py above

f= open("/Users/XXXXXX/dockererror.txt","w+")

f.write("ImportError Line 62 : HAS_DOCKER_ERROR " + str(exc) +  "\r\n")
f.write("ImportError Line 63 : HAS_DOCKER_PY " + str(HAS_DOCKER_PY) +  "\r\n")

then using
f.close() at a suitable place
virtualenv venv
call venv/Scripts/activate
copy pip.conf pip.ini
copy pip.ini venv
pip install -e .[packaging]
python setup.py sdist bdist_wheel
twine upload -r pypi-digilab --repository-url http://repo02.tecniplastgroup.com:8081/repository/py-hosted/ dist/*
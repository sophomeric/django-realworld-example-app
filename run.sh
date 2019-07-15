#!/usr/bin/env bash

./manage.py migrate
if [[ $? -eq 0 ]]; then
    ./manage.py runserver 0.0.0.0:4000
fi

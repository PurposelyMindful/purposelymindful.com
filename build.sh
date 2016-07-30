#!/bin/bash --login

rvm use 2.3.0
bundle install
jekyll clean
jekyll build

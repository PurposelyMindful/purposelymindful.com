@echo off
CALL bundle install
CALL jekyll clean
CALL jekyll build
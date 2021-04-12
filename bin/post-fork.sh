#!/bin/bash
# Written By: Andrew Raymer
# Version: 1.0.0
# Created At: Feb 19th, 2018
# Last Updated At: Feb 19th, 2018

rvm install $(cat .ruby-version)
rvm $(cat .ruby-version) do rvm gemset create $(cat .ruby-gemset)
rvm gemset use $(cat .ruby-gemset)
bundle install
bin/setup

#!/bin/bash

bundle install
gem install mail
gem install dotenv

rm -rf .env
touch .env
echo MAIL_USERNAME=\"YOUR_MAIL_USERNAME\" >> .env
echo MAIL_PASSWORD=\"YOUR_MAIL_PASSWORD\" >> .env

# Project: Lucifer-Dex

Welcome to Lucifer-Dex. I am buidling a new portifiolo for Binance Smart Chain wallet.
Please kindly contribute what you think it'd be better.

## Install

### Clone the repository

shell
git clone git@github.com:Sodanheang/Lucifer-Dex.git
cd Lucifer-Dex

### Check your Ruby version

shell
ruby -v

The ouput should start with something like ruby 2.4.4

If not, install the right ruby version using [rvm](https://rvm.io/) (it could take a while):

shell
rvm install 2.4.4

### Install dependencies

Using [Bundler](https://github.com/bundler/bundler)

shell
bundle

### Initialize the database

shell
rails db:create db:migrate db:seed

## Serve

shell
rails s
The website will be up on [Localhost with Port 3000](http://localhost:3000)
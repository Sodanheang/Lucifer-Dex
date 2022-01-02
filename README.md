# Project: Lucifer-Dex

Welcome to Lucifer-Dex. I am buidling a new portifiolo for Binance Smart Chain wallet.
Please kindly contribute what you think it'd be better.

## Install

### Clone the repository

```
git clone git@github.com:Sodanheang/Lucifer-Dex.git
cd Lucifer-Dex
```

### Check your Ruby version

```
ruby -v
```

The ouput should start with something like ruby 2.4.4

If not, install the right ruby version using [rvm](https://rvm.io/) (it could take a while):

```
rvm install 2.4.4
```

### Install dependencies

Using [Bundler](https://github.com/bundler/bundler)

```
bundle
```

### Initialize the database

```
rails db:create db:migrate db:seed
```

## Serve

```
rails server
```
The website will be up on [Localhost with Port 3000](http://localhost:3000)
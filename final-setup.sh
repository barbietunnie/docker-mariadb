#!/bin/sh

# Database info.
DB_USER=${USERNAME:-'mysql'}
DB_PWD=${PASSWORD:-'mysql'}
DB_NAME=${DATABASE:-'*'}
DB_REMOTE=${REMOTE:-'%'}

# Create a database (if necessary)
#CREATE DATABASE "${DB_NAME}"


# Login as the root user
# mysql -u root

# Grant priviledges to the created user
mysql -e "GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USER'@'$DB_REMOTE' IDENTIFIED BY '$DB_PWD'"
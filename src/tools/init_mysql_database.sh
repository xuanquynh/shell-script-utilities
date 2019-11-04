#!/usr/bin/env sh

echo 'Initialize a new database'

echo 'What is the username'?
read USERNAME
echo 'What is the password'?
read PASSWORD
echo 'What is the database'?
read DATABASE

COMMAND="CREATE USER '$USERNAME'@'localhost' IDENTIFIED BY '$PASSWORD'; CREATE DATABASE \`$DATABASE\`; GRANT ALL PRIVILEGES ON \`$DATABASE\`.* TO '$USERNAME'@'localhost'"

sudo mysql -u root -p -e "$COMMAND"

EXIT_CODE=$?

if [ $EXIT_CODE != 0 ]; then
    echo 'Could not initialize a new database!'
    exit $EXIT_CODE
fi

echo 'Initialize a new database successfully'
echo "MYSQL USERNAME: $USERNAME"
echo "MYSQL PASSWORD: ***"
echo "MYSQL DATABASE: $DATABASE"

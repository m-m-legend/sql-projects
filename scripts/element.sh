#! /bin/bash
# Periodic Table Script to access the Database
PSQL="psql --username=freecodecamp --dbname=periodic_table -t --no-align -c"

# Sem argumento
if [[ -z $1 ]]
then
  echo "Please provide an element as an argument."
  exit
fi

# Buscar elemento
if [[ $1 =~ ^[0-9]+$ ]]
then
  QUERY_RESULT=$($PSQL "
    SELECT atomic_number, name, symbol, type, atomic_mass, melting_point_celsius, boiling_point_celsius
    FROM elements
    JOIN properties USING(atomic_number)
    JOIN types USING(type_id)
    WHERE atomic_number = $1
  ")
else
  QUERY_RESULT=$($PSQL "
    SELECT atomic_number, name, symbol, type, atomic_mass, melting_point_celsius, boiling_point_celsius
    FROM elements
    JOIN properties USING(atomic_number)
    JOIN types USING(type_id)
    WHERE LOWER(symbol) = LOWER('$1') OR LOWER(name) = LOWER('$1')
  ")
fi

# Não encontrado
if [[ -z $QUERY_RESULT ]]
then
  echo "I could not find that element in the database."
else
  IFS="|" read ATOMIC_NUMBER NAME SYMBOL TYPE MASS MELT BOIL <<< "$QUERY_RESULT"

  echo "The element with atomic number $ATOMIC_NUMBER is $NAME ($SYMBOL). It's a $TYPE, with a mass of $MASS amu. $NAME has a melting point of $MELT celsius and a boiling point of $BOIL celsius."
fi
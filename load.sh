#!/bin/bash

## Usage: ./load.sh PATH_TO_GRAKN KEYSPACE

# The following will make the script future proof
GRAKN="$HOME/$1"
LOAD="$GRAKN/./graql console  -f"
BATCH="$GRAKN/./graql console  -b"

KEYSPACE="-k $2"

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

RULES="$DIR/rules"
DATA="$DIR/data"

# Change this with the directory of the ontology you want to load
ONTOLOGY="$DIR/schema"


echo "Loading ontology and rules"
date; $LOAD "$ONTOLOGY/gdpr.gql" $KEYSPACE
date; $LOAD "$RULES/rules.gql" $KEYSPACE

echo "Loading some fake data"
date; $LOAD "$DATA/test.gql" $KEYSPACE

date
# GRAKN - GDPR

This project describes how to use GRAKN to track personal data:
* imported and export
* use of each personal item (email, name) across systems
* authorization
* actions on that data
* User dashboard to have an overview on the use of his data.

## Project structure
### /api
* Clone the [GDPR API repo](https://github.com/idealley/gdpr-grakn-api) in this folder (or anywhere else...)
Node.js api that is used as the central point and lingua franca for all systems to communicate with GRAKN.AI.
The API uses a mongo database to manage API users, but that could be anything.
### /dashboard
* Clone the [GDPR Dashboard repo](https://github.com/idealley/gdpr-dashboard) in this folder (or anywhere else...)
Vuejs Dashboard that is used to display users data. That is the visible part of GDPR for users
### /data
Test data to load in GRAKN.AI
### /rules
Rules to lo load in GARKN.AI
### /schema

# Todo
Add response from system after deletion 

# Schema
Grakn GDPR schema example.
TODO add content schema.


# Getting started
Call the loading script with the following params:
```js
    './load.sh <path> <keyspace>'
```

The path is the path to the `grakn` install directory if GRAKN is installed at the root:
```js
    './load.sh grakn grakn'
```

This script will load the ontology, the demo data and the rules.

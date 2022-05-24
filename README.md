# FUTUREPROOF LAP 2 - WEEK 1 - Day 3 - Exercise

## SQL - Create Traveller DB from scratch

Futureproof Bootcamp - exercise given on the 5th week of the Bootcamp, on the first day of the lessons about databases.

### Create a database to store data about travellers, destinations and trips:

- Travellers have many destinations through holidays
- Destinations have many travellers through holidays
- Trips have one traveller and one destination

### Craft queries to return:

- Number of trips for each traveller
- All destinations visited by a specified traveller

### Design some more queries!

## INSTALLATION

**Docker is required in order to run the following scripts.**

From the command line:

```
  ./scripts/create-container.sh
  ./scripts/attach-container.sh

```

From the postgreSQL command line:

```sql
  \i code/scripts/setup.sql
```

## Examples of QUERIES

Examples of queries to be performed on the tables can be found inside the file `queries.md`.

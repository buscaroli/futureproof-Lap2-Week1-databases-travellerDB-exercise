# Queries that can be run (examples)

## Query each table

```sql
  SELECT * FROM destinations;
```

```sql
  SELECT * FROM travellers;
```

```sql
  SELECT * FROM trips;
```

## Query the firstname of the travellers

```sql
  SELECT firstname FROM travellers;
```

## Query firstnames and holidays

```sql
  SELECT travellers.firstname, destinations.holiday
  FROM travellers
  INNER JOIN destinations
  ON destinations.trav_id=travellers.id;
```

## Query the number of holidays booked

```sql
  SELECT COUNT(*)
  FROM travellers
  INNER JOIN destinations
  ON destinations.trav_id=travellers.id;
```

## Query the number of holidays to each country

```sql
  SELECT destinations.holiday, COUNT(*)
  FROM destinations
  GROUP BY destinations.holiday;
```

## Query the number of holidays taken by each traveller (id only)

```sql
  SELECT destinations.trav_id, COUNT(*)
  FROM destinations
  GROUP BY destinations.trav_id;
```

## Query the number of holidays taken by each traveller (by name)

```sql
  SELECT travellers.firstname, COUNT(*)
  FROM travellers
  INNER JOIN destinations
  ON travellers.id=destinations.trav_id
  GROUP BY travellers.firstname;
```

## Query the number of holidays taken by each traveller (by name, with heading of holidays instead of count)

```sql
  SELECT travellers.firstname, COUNT(*) AS holidays
  FROM travellers
  INNER JOIN destinations
  ON travellers.id=destinations.trav_id
  GROUP BY travellers.firstname;
```

# Gin 'n Tonic

A boilerplate project with Go, Gin and PostgresDB

## Dependencies
- **Go** as the programming language of choice
- **Gin** as the web framework
- **Logrus** for logging

## Postgres
Setup Postgres dependency locally:  
```bash
docker run -d \
  -e 'POSTGRES_DB=<db>' \
  -e 'POSTGRES_USER=<user>' \
  -e 'POSTGRES_PASSWORD=<pass>' \
  -p 5432:5432 \
  --name postgres \
  postgres
```

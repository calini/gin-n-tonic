# Gin 'n Tonic
[![FOSSA Status](https://app.fossa.io/api/projects/git%2Bgithub.com%2Fcalini%2Fgin-n-tonic.svg?type=shield)](https://app.fossa.io/projects/git%2Bgithub.com%2Fcalini%2Fgin-n-tonic?ref=badge_shield)


A boilerplate project with Go, Gin and PostgresDB

## TODO
- [ ] Proper health endpoints
- [ ] Postgres DB Connection
- [ ] Demo controller

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


## License
[![FOSSA Status](https://app.fossa.io/api/projects/git%2Bgithub.com%2Fcalini%2Fgin-n-tonic.svg?type=large)](https://app.fossa.io/projects/git%2Bgithub.com%2Fcalini%2Fgin-n-tonic?ref=badge_large)
# terraform-example-rds
Minimum example of Amazon RDS.

⚠️ Under constructions

## Aurora
### Standard usage
![Aurora standard](./doc/architecture-aurora-standard.drawio.svg)

- Single region
- Some read replicas (up to 15)

### Global database
![Aurora global database](./doc/architecture-aurora-global-database.drawio.svg)

- Multi region
- Global read replicas (up to 5)


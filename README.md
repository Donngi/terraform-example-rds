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

## RDS other than Aurora
### Multi AZ + Read replicas
![RDS Multi AZ + Read replicas](./doc/architecture-rds-multi-za-read-replica.drawio.svg)

### Cross region replication
![Cross region replication](./doc/architecture-rds-cross-region-replication.drawio.svg)

### Multi-AZ DB Cluster
![Multi-AZ DB Cluster](./doc/architecture-rds-multi-az-db-cluster.drawio.svg)

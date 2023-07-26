# SQL Server Learnings
I followed this [guide](https://collabnix.com/how-to-run-microsoft-sql-in-minutes-using-docker-desktop/) to set up the MS-SQL DB.

## Key commands
| desired action | command |
| ---- | ---- |
| open docker shell | `docker exec -it sql1 "bash"` |
| connect cmdsql to docker container | `sqlcmd -S localhost,1433 -U sa -P Mssqlserver1!` |

## Database connection values
| key | value | 
| ---- | ---- |
| Server type | Database Engine |
| Server name | docker.for.mac.host.internal,1433 |
| Authentication | SQL Server Authentication |
| Login | sa |
| Password | Mssqlserver1! |
export const config = {
  "dev": {
    "username": "udagramdbdev",
    "password": "udagramdbdev",
    "database": "udagramdbdev",
    "host": "udagramkemstydbdev.cnna1eeyuhad.us-east-2.rds.amazonaws.com",
    "dialect": "postgres",    
    "url": "http://localhost:8100"
  },
  "prod": {
    "username": "",
    "password": "",
    "database": "udagram_prod",
    "host": "",
    "dialect": "postgres"
  },
  "jwt": {
    "secret": process.env.JWT_SECRET
  }

}

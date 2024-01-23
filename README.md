# Backend repository for Tabi-memo

## Local development

### Requirements

- Node.js LTS ver 20.8.0
- Docker

### Setup

```bash
$ pnpm install

$ supabase start
or
$ pnpm supabase start
Started supabase local development setup.

         API URL: http://127.0.0.1:54321
     GraphQL URL: http://127.0.0.1:54321/graphql/v1
          DB URL: postgresql://postgres:postgres@127.0.0.1:54322/postgres
      Studio URL: http://127.0.0.1:54323
    Inbucket URL: http://127.0.0.1:54324
      JWT secret: super-secret-jwt-token-with-at-least-32-characters-long
        anon key: xxx
service_role key: xxxx
```

### Development

To make seed data

```bash
pnpm seed
```

### Stop all supabase related Docker containers

```bash
$ supabase stop
or
$ pnpm supabase stop
Postgres database saved to volume: supabase_db_backend
Postgres config saved to volume: supabase_config_backend
Storage directory saved to volume: supabase_storage_backend
Functions cache saved to volume: supabase_edge_runtime_backend
Inbucket emails saved to volume: supabase_inbucket_backend
Stopped supabase local development setup.
```

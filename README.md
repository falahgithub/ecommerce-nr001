# ecommerce-nr001
# Data Ownership Map (NR-001)

| Schema | Service | Database User | Tables | Allowed Writers |
|--------|---------|---------------|--------|-----------------|
| orders | order-service | svc_orders | purchases | order-service ONLY |
| inventory | inventory-service | svc_inventory | products | inventory-service ONLY |

## Forbidden Actions
- order-service MUST NOT write to inventory schema
- inventory-service MUST NOT write to orders schema
- Any service writing to another's schema = NR-001 VIOLATION
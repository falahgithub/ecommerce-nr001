-- Owner: order-service
-- Schema: orders
-- Rule: NR-001 - Only order-service writes here

ALTER TABLE orders.purchases ADD COLUMN status TEXT DEFAULT 'pending';
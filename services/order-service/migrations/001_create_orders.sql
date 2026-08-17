-- Owner: order-service
-- Schema: orders
-- Rule: NR-001 - Only order-service writes here

CREATE TABLE orders.purchases (
    id SERIAL PRIMARY KEY,
    customer_email TEXT NOT NULL,
    total_cents INTEGER NOT NULL,
    created_at TIMESTAMP DEFAULT NOW()
);

-- ONLY svc_orders can write to this table
GRANT SELECT, INSERT, UPDATE, DELETE ON orders.purchases TO svc_orders;

-- svc_inventory CANNOT even see this table (by default they can't)
-- But let's be explicit:
REVOKE ALL ON orders.purchases FROM svc_inventory;
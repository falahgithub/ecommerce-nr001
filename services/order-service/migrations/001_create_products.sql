-- Owner: inventory-service
-- Schema: inventory
-- Rule: NR-001 - Only inventory-service writes here

CREATE TABLE inventory.products (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    stock_count INTEGER NOT NULL DEFAULT 0,
    price_cents INTEGER NOT NULL
);

-- ONLY svc_inventory can write to this table
GRANT USAGE ON SEQUENCE inventory.products_id_seq TO svc_inventory;

GRANT SELECT, INSERT, UPDATE, DELETE ON inventory.products TO svc_inventory;

-- Explicitly block order-service
REVOKE ALL ON inventory.products FROM svc_orders;
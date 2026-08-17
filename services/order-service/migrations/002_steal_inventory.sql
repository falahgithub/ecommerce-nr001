-- ❌ THIS IS A VIOLATION
-- order-service trying to write to inventory schema!

INSERT INTO inventory.products (name, stock_count, price_cents)
VALUES ('Hacked Product', 999, 1);
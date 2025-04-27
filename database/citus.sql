-- Add 3 sharding workers
SELECT * FROM citus_add_node('citus-worker1', 5432);
SELECT * FROM citus_add_node('citus-worker2', 5432);
SELECT * FROM citus_add_node('citus-worker3', 5432);

-- Add 2 replication/reference-only workers
SELECT * FROM citus_add_node('citus-replica1', 5432);
SELECT * FROM citus_add_node('citus-replica2', 5432);

-- Distribute data
SELECT create_distributed_table('ACCOUNT', 'account_id');
SELECT create_distributed_table('PRODUCT', 'creator_id');
SELECT create_distributed_table('PRODUCT_TRANSFER', 'buyer_id');
SELECT create_distributed_table('MONEY_TRANSACTION', 'account_id');


SELECT create_reference_table('ACCOUNT');

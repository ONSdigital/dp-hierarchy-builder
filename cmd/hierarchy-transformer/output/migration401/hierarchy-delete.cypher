// Deleting nodes from full hierarchy
MATCH (n:`_generic_hierarchy_node_migration-country`)
DETACH DELETE n;

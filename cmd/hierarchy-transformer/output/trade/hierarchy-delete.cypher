// Deleting nodes from full hierarchy
MATCH (n:`_generic_hierarchy_node_trade-commodity`)
DETACH DELETE n;

// Deleting nodes from full hierarchy
MATCH (n:`_generic_hierarchy_node_`)
DETACH DELETE n;

// Deleting nodes from full hierarchy
MATCH (n:`_generic_hierarchy_node_mid-year-pop-geography`)
DETACH DELETE n;

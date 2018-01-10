// Deleting nodes from full hierarchy
MATCH (n:`_generic_hierarchy_node_Geography`)
DETACH DELETE n;

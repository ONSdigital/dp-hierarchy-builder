// Deleting nodes from full hierarchy
MATCH (n:`_generic_hierarchy_node_offence`)
DETACH DELETE n;

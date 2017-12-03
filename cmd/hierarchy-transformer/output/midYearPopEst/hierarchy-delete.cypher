// Deleting nodes from full hierarchy
MATCH (n:`_generic_hierarchy_node_midyearpop`)
DETACH DELETE n;

// Deleting nodes from full hierarchy
MATCH (n:`_generic_hierarchy_node_crime-offence`)
DETACH DELETE n;

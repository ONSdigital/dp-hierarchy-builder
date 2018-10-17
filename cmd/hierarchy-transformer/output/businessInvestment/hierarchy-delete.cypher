// Deleting nodes from full hierarchy
MATCH (n:`_generic_hierarchy_node_business-investment-activity`)
DETACH DELETE n;

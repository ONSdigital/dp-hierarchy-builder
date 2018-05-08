// Deleting nodes from full hierarchy
MATCH (n:`_generic_hierarchy_node_business-investment-instrument-asset`)
DETACH DELETE n;

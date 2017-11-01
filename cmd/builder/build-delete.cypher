// Deleting nodes from instance hierarchy
MATCH (n:`_hierarchy_node_12345_aggregate`)
DETACH DELETE n;

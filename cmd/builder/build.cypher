CREATE CONSTRAINT ON (n:`_hierarchy_node_12345_Aggregate`) ASSERT n.code IS UNIQUE;

// Cloning nodes from the generic hierarchy
MATCH (n:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078`)
WITH n MERGE (:`_hierarchy_node_12345_Aggregate` { code:n.code,label:n.label });

// Cloning relationships from the generic hierarchy
MATCH (genericNode:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078`)
        -[r:hasParent]->
      (genericParent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078`)
WITH genericNode, genericParent
MATCH (node:`_hierarchy_node_12345_Aggregate` { code:genericNode.code }),
      (parent:`_hierarchy_node_12345_Aggregate` { code:genericParent.code })
MERGE (node)-[r:hasParent]->(parent);

// Setting hasData property on the instance hierarcy
MATCH (n:`_hierarchy_node_12345_Aggregate`)
with n SET n.hasData = true;

// Setting number of children on the instance hierarcy
MATCH (n:`_hierarchy_node_12345_Aggregate`)
with n SET n.numberOfChildren = size((n)<-[:hasParent]-(:`_hierarchy_node_12345_Aggregate`));
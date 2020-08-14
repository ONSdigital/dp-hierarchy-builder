CREATE CONSTRAINT ON (n:`_generic_hierarchy_node_city-regions`) ASSERT n.code IS UNIQUE;
CREATE (node:`_generic_hierarchy_node_city-regions` { code:"E47000001",label:"Greater Manchester" });
CREATE (node:`_generic_hierarchy_node_city-regions` { code:"E47000002",label:"Sheffield City Region" });
CREATE (node:`_generic_hierarchy_node_city-regions` { code:"E47000003",label:"West Yorkshire" });
CREATE (node:`_generic_hierarchy_node_city-regions` { code:"E47000004",label:"Liverpool City Region" });
CREATE (node:`_generic_hierarchy_node_city-regions` { code:"E47000006",label:"Tees Valley" });
CREATE (node:`_generic_hierarchy_node_city-regions` { code:"E47000007",label:"West Midlands" });
CREATE (node:`_generic_hierarchy_node_city-regions` { code:"E47000008",label:"Cambridgeshire and Peterborough" });
CREATE (node:`_generic_hierarchy_node_city-regions` { code:"E47000009",label:"West of England" });
CREATE (node:`_generic_hierarchy_node_city-regions` { code:"E47000010",label:"North East" });
CREATE (node:`_generic_hierarchy_node_city-regions` { code:"E47000011",label:"North of Tyne" });
CREATE (node:`_generic_hierarchy_node_city-regions` { code:"E61000001",label:"Greater London Authority" });
CREATE (node:`_generic_hierarchy_node_city-regions` { code:"N34000001",label:"Belfast City Region" });
CREATE (node:`_generic_hierarchy_node_city-regions` { code:"N34000002",label:"Derry-Londonderry City Region" });
CREATE (node:`_generic_hierarchy_node_city-regions` { code:"W42000001",label:"Cardiff Capital Region" });
CREATE (node:`_generic_hierarchy_node_city-regions` { code:"W42000002",label:"Growing Mid Wales" });
CREATE (node:`_generic_hierarchy_node_city-regions` { code:"W42000003",label:"North Wales Economic Ambition Board" });
CREATE (node:`_generic_hierarchy_node_city-regions` { code:"W42000004",label:"Swansea Bay City Region" });
CREATE (node:`_generic_hierarchy_node_city-regions` { code:"E92000001",label:"England" });
CREATE (node:`_generic_hierarchy_node_city-regions` { code:"W92000004",label:"Wales" });
CREATE (node:`_generic_hierarchy_node_city-regions` { code:"N92000002",label:"Northern Ireland" });
MATCH (parent:`_generic_hierarchy_node_city-regions`),(child:`_generic_hierarchy_node_city-regions`)
WHERE parent.code = "E92000001" AND child.code = "E47000001"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_city-regions`),(child:`_generic_hierarchy_node_city-regions`)
WHERE parent.code = "E92000001" AND child.code = "E47000002"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_city-regions`),(child:`_generic_hierarchy_node_city-regions`)
WHERE parent.code = "E92000001" AND child.code = "E47000003"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_city-regions`),(child:`_generic_hierarchy_node_city-regions`)
WHERE parent.code = "E92000001" AND child.code = "E47000004"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_city-regions`),(child:`_generic_hierarchy_node_city-regions`)
WHERE parent.code = "E92000001" AND child.code = "E47000006"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_city-regions`),(child:`_generic_hierarchy_node_city-regions`)
WHERE parent.code = "E92000001" AND child.code = "E47000007"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_city-regions`),(child:`_generic_hierarchy_node_city-regions`)
WHERE parent.code = "E92000001" AND child.code = "E47000008"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_city-regions`),(child:`_generic_hierarchy_node_city-regions`)
WHERE parent.code = "E92000001" AND child.code = "E47000009"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_city-regions`),(child:`_generic_hierarchy_node_city-regions`)
WHERE parent.code = "E92000001" AND child.code = "E47000010"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_city-regions`),(child:`_generic_hierarchy_node_city-regions`)
WHERE parent.code = "E92000001" AND child.code = "E47000011"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_city-regions`),(child:`_generic_hierarchy_node_city-regions`)
WHERE parent.code = "E92000001" AND child.code = "E61000001"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_city-regions`),(child:`_generic_hierarchy_node_city-regions`)
WHERE parent.code = "N92000002" AND child.code = "N34000001"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_city-regions`),(child:`_generic_hierarchy_node_city-regions`)
WHERE parent.code = "N92000002" AND child.code = "N34000002"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_city-regions`),(child:`_generic_hierarchy_node_city-regions`)
WHERE parent.code = "W92000004" AND child.code = "W42000001"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_city-regions`),(child:`_generic_hierarchy_node_city-regions`)
WHERE parent.code = "W92000004" AND child.code = "W42000002"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_city-regions`),(child:`_generic_hierarchy_node_city-regions`)
WHERE parent.code = "W92000004" AND child.code = "W42000003"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_city-regions`),(child:`_generic_hierarchy_node_city-regions`)
WHERE parent.code = "W92000004" AND child.code = "W42000004"
CREATE (child)-[:hasParent]->(parent);

CREATE CONSTRAINT ON (n:`_generic_hierarchy_node_enterprise-regions`) ASSERT n.code IS UNIQUE;
CREATE (node:`_generic_hierarchy_node_enterprise-regions` { code:"E37000001",label:"Black Country" });
CREATE (node:`_generic_hierarchy_node_enterprise-regions` { code:"E37000003",label:"Cheshire and Warrington" });
CREATE (node:`_generic_hierarchy_node_enterprise-regions` { code:"E37000005",label:"Cornwall and Isles of Scilly" });
CREATE (node:`_generic_hierarchy_node_enterprise-regions` { code:"E37000006",label:"Coventry and Warwickshire" });
CREATE (node:`_generic_hierarchy_node_enterprise-regions` { code:"E37000007",label:"Cumbria" });
CREATE (node:`_generic_hierarchy_node_enterprise-regions` { code:"E37000009",label:"Dorset" });
CREATE (node:`_generic_hierarchy_node_enterprise-regions` { code:"E37000011",label:"Gloucestershire" });
CREATE (node:`_generic_hierarchy_node_enterprise-regions` { code:"E37000012",label:"Greater Birmingham and Solihull" });
CREATE (node:`_generic_hierarchy_node_enterprise-regions` { code:"E37000014",label:"Greater Lincolnshire" });
CREATE (node:`_generic_hierarchy_node_enterprise-regions` { code:"E37000015",label:"Greater Manchester" });
CREATE (node:`_generic_hierarchy_node_enterprise-regions` { code:"E37000016",label:"Heart of the South West" });
CREATE (node:`_generic_hierarchy_node_enterprise-regions` { code:"E37000019",label:"Lancashire" });
CREATE (node:`_generic_hierarchy_node_enterprise-regions` { code:"E37000021",label:"Leicester and Leicestershire" });
CREATE (node:`_generic_hierarchy_node_enterprise-regions` { code:"E37000022",label:"Liverpool City Region" });
CREATE (node:`_generic_hierarchy_node_enterprise-regions` { code:"E37000025",label:"North East" });
CREATE (node:`_generic_hierarchy_node_enterprise-regions` { code:"E37000032",label:"Stoke-on-Trent and Staffordshire" });
CREATE (node:`_generic_hierarchy_node_enterprise-regions` { code:"E37000033",label:"Swindon and Wiltshire" });
CREATE (node:`_generic_hierarchy_node_enterprise-regions` { code:"E37000034",label:"Tees Valley" });
CREATE (node:`_generic_hierarchy_node_enterprise-regions` { code:"E37000035",label:"Thames Valley Berkshire" });
CREATE (node:`_generic_hierarchy_node_enterprise-regions` { code:"E37000036",label:"The Marches" });
CREATE (node:`_generic_hierarchy_node_enterprise-regions` { code:"E37000037",label:"West of England" });
CREATE (node:`_generic_hierarchy_node_enterprise-regions` { code:"E37000038",label:"Worcestershire" });
CREATE (node:`_generic_hierarchy_node_enterprise-regions` { code:"E37000043",label:"Buckinghamshire Thames Valley" });
CREATE (node:`_generic_hierarchy_node_enterprise-regions` { code:"E37000044",label:"Coast to Capital" });
CREATE (node:`_generic_hierarchy_node_enterprise-regions` { code:"E37000045",label:"Derby, Derbyshire, Nottingham and Nottinghamshire" });
CREATE (node:`_generic_hierarchy_node_enterprise-regions` { code:"E37000046",label:"Enterprise M3" });
CREATE (node:`_generic_hierarchy_node_enterprise-regions` { code:"E37000047",label:"Greater Cambridge and Greater Peterborough" });
CREATE (node:`_generic_hierarchy_node_enterprise-regions` { code:"E37000048",label:"Hertfordshire" });
CREATE (node:`_generic_hierarchy_node_enterprise-regions` { code:"E37000049",label:"Humber" });
CREATE (node:`_generic_hierarchy_node_enterprise-regions` { code:"E37000050",label:"Leeds City Region" });
CREATE (node:`_generic_hierarchy_node_enterprise-regions` { code:"E37000051",label:"London" });
CREATE (node:`_generic_hierarchy_node_enterprise-regions` { code:"E37000052",label:"New Anglia" });
CREATE (node:`_generic_hierarchy_node_enterprise-regions` { code:"E37000053",label:"Oxfordshire" });
CREATE (node:`_generic_hierarchy_node_enterprise-regions` { code:"E37000054",label:"Sheffield City Region" });
CREATE (node:`_generic_hierarchy_node_enterprise-regions` { code:"E37000055",label:"Solent" });
CREATE (node:`_generic_hierarchy_node_enterprise-regions` { code:"E37000056",label:"South East" });
CREATE (node:`_generic_hierarchy_node_enterprise-regions` { code:"E37000057",label:"South East Midlands" });
CREATE (node:`_generic_hierarchy_node_enterprise-regions` { code:"E37000058",label:"York, North Yorkshire and East Riding" });
CREATE (node:`_generic_hierarchy_node_enterprise-regions` { code:"W42000001",label:"Cardiff Capital Region" });
CREATE (node:`_generic_hierarchy_node_enterprise-regions` { code:"W42000002",label:"Growing Mid Wales" });
CREATE (node:`_generic_hierarchy_node_enterprise-regions` { code:"W42000003",label:"North Wales Economic Ambition Board" });
CREATE (node:`_generic_hierarchy_node_enterprise-regions` { code:"W42000004",label:"Swansea Bay City Region" });
CREATE (node:`_generic_hierarchy_node_enterprise-regions` { code:"S09000001",label:"Aberdeen City and Shire" });
CREATE (node:`_generic_hierarchy_node_enterprise-regions` { code:"S09000002",label:"East of Scotland" });
CREATE (node:`_generic_hierarchy_node_enterprise-regions` { code:"S09000003",label:"Highlands and Islands" });
CREATE (node:`_generic_hierarchy_node_enterprise-regions` { code:"S09000004",label:"South of Scotland" });
CREATE (node:`_generic_hierarchy_node_enterprise-regions` { code:"S09000005",label:"Tayside" });
CREATE (node:`_generic_hierarchy_node_enterprise-regions` { code:"S09000006",label:"West of Scotland" });
CREATE (node:`_generic_hierarchy_node_enterprise-regions` { code:"E92000001",label:"England" });
CREATE (node:`_generic_hierarchy_node_enterprise-regions` { code:"W92000004",label:"Wales" });
CREATE (node:`_generic_hierarchy_node_enterprise-regions` { code:"S92000003",label:"Scotland" });
MATCH (parent:`_generic_hierarchy_node_enterprise-regions`),(child:`_generic_hierarchy_node_enterprise-regions`)
WHERE parent.code = "E92000001" AND child.code = "E37000001"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_enterprise-regions`),(child:`_generic_hierarchy_node_enterprise-regions`)
WHERE parent.code = "E92000001" AND child.code = "E37000003"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_enterprise-regions`),(child:`_generic_hierarchy_node_enterprise-regions`)
WHERE parent.code = "E92000001" AND child.code = "E37000005"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_enterprise-regions`),(child:`_generic_hierarchy_node_enterprise-regions`)
WHERE parent.code = "E92000001" AND child.code = "E37000006"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_enterprise-regions`),(child:`_generic_hierarchy_node_enterprise-regions`)
WHERE parent.code = "E92000001" AND child.code = "E37000007"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_enterprise-regions`),(child:`_generic_hierarchy_node_enterprise-regions`)
WHERE parent.code = "E92000001" AND child.code = "E37000009"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_enterprise-regions`),(child:`_generic_hierarchy_node_enterprise-regions`)
WHERE parent.code = "E92000001" AND child.code = "E37000011"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_enterprise-regions`),(child:`_generic_hierarchy_node_enterprise-regions`)
WHERE parent.code = "E92000001" AND child.code = "E37000012"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_enterprise-regions`),(child:`_generic_hierarchy_node_enterprise-regions`)
WHERE parent.code = "E92000001" AND child.code = "E37000014"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_enterprise-regions`),(child:`_generic_hierarchy_node_enterprise-regions`)
WHERE parent.code = "E92000001" AND child.code = "E37000015"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_enterprise-regions`),(child:`_generic_hierarchy_node_enterprise-regions`)
WHERE parent.code = "E92000001" AND child.code = "E37000016"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_enterprise-regions`),(child:`_generic_hierarchy_node_enterprise-regions`)
WHERE parent.code = "E92000001" AND child.code = "E37000019"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_enterprise-regions`),(child:`_generic_hierarchy_node_enterprise-regions`)
WHERE parent.code = "E92000001" AND child.code = "E37000021"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_enterprise-regions`),(child:`_generic_hierarchy_node_enterprise-regions`)
WHERE parent.code = "E92000001" AND child.code = "E37000022"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_enterprise-regions`),(child:`_generic_hierarchy_node_enterprise-regions`)
WHERE parent.code = "E92000001" AND child.code = "E37000025"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_enterprise-regions`),(child:`_generic_hierarchy_node_enterprise-regions`)
WHERE parent.code = "E92000001" AND child.code = "E37000032"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_enterprise-regions`),(child:`_generic_hierarchy_node_enterprise-regions`)
WHERE parent.code = "E92000001" AND child.code = "E37000033"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_enterprise-regions`),(child:`_generic_hierarchy_node_enterprise-regions`)
WHERE parent.code = "E92000001" AND child.code = "E37000034"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_enterprise-regions`),(child:`_generic_hierarchy_node_enterprise-regions`)
WHERE parent.code = "E92000001" AND child.code = "E37000035"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_enterprise-regions`),(child:`_generic_hierarchy_node_enterprise-regions`)
WHERE parent.code = "E92000001" AND child.code = "E37000036"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_enterprise-regions`),(child:`_generic_hierarchy_node_enterprise-regions`)
WHERE parent.code = "E92000001" AND child.code = "E37000037"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_enterprise-regions`),(child:`_generic_hierarchy_node_enterprise-regions`)
WHERE parent.code = "E92000001" AND child.code = "E37000038"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_enterprise-regions`),(child:`_generic_hierarchy_node_enterprise-regions`)
WHERE parent.code = "E92000001" AND child.code = "E37000043"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_enterprise-regions`),(child:`_generic_hierarchy_node_enterprise-regions`)
WHERE parent.code = "E92000001" AND child.code = "E37000044"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_enterprise-regions`),(child:`_generic_hierarchy_node_enterprise-regions`)
WHERE parent.code = "E92000001" AND child.code = "E37000045"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_enterprise-regions`),(child:`_generic_hierarchy_node_enterprise-regions`)
WHERE parent.code = "E92000001" AND child.code = "E37000046"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_enterprise-regions`),(child:`_generic_hierarchy_node_enterprise-regions`)
WHERE parent.code = "E92000001" AND child.code = "E37000047"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_enterprise-regions`),(child:`_generic_hierarchy_node_enterprise-regions`)
WHERE parent.code = "E92000001" AND child.code = "E37000048"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_enterprise-regions`),(child:`_generic_hierarchy_node_enterprise-regions`)
WHERE parent.code = "E92000001" AND child.code = "E37000049"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_enterprise-regions`),(child:`_generic_hierarchy_node_enterprise-regions`)
WHERE parent.code = "E92000001" AND child.code = "E37000050"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_enterprise-regions`),(child:`_generic_hierarchy_node_enterprise-regions`)
WHERE parent.code = "E92000001" AND child.code = "E37000051"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_enterprise-regions`),(child:`_generic_hierarchy_node_enterprise-regions`)
WHERE parent.code = "E92000001" AND child.code = "E37000052"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_enterprise-regions`),(child:`_generic_hierarchy_node_enterprise-regions`)
WHERE parent.code = "E92000001" AND child.code = "E37000053"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_enterprise-regions`),(child:`_generic_hierarchy_node_enterprise-regions`)
WHERE parent.code = "E92000001" AND child.code = "E37000054"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_enterprise-regions`),(child:`_generic_hierarchy_node_enterprise-regions`)
WHERE parent.code = "E92000001" AND child.code = "E37000055"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_enterprise-regions`),(child:`_generic_hierarchy_node_enterprise-regions`)
WHERE parent.code = "E92000001" AND child.code = "E37000056"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_enterprise-regions`),(child:`_generic_hierarchy_node_enterprise-regions`)
WHERE parent.code = "E92000001" AND child.code = "E37000057"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_enterprise-regions`),(child:`_generic_hierarchy_node_enterprise-regions`)
WHERE parent.code = "E92000001" AND child.code = "E37000058"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_enterprise-regions`),(child:`_generic_hierarchy_node_enterprise-regions`)
WHERE parent.code = "W92000004" AND child.code = "W42000001"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_enterprise-regions`),(child:`_generic_hierarchy_node_enterprise-regions`)
WHERE parent.code = "W92000004" AND child.code = "W42000002"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_enterprise-regions`),(child:`_generic_hierarchy_node_enterprise-regions`)
WHERE parent.code = "W92000004" AND child.code = "W42000003"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_enterprise-regions`),(child:`_generic_hierarchy_node_enterprise-regions`)
WHERE parent.code = "W92000004" AND child.code = "W42000004"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_enterprise-regions`),(child:`_generic_hierarchy_node_enterprise-regions`)
WHERE parent.code = "S92000003" AND child.code = "S09000001"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_enterprise-regions`),(child:`_generic_hierarchy_node_enterprise-regions`)
WHERE parent.code = "S92000003" AND child.code = "S09000002"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_enterprise-regions`),(child:`_generic_hierarchy_node_enterprise-regions`)
WHERE parent.code = "S92000003" AND child.code = "S09000003"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_enterprise-regions`),(child:`_generic_hierarchy_node_enterprise-regions`)
WHERE parent.code = "S92000003" AND child.code = "S09000004"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_enterprise-regions`),(child:`_generic_hierarchy_node_enterprise-regions`)
WHERE parent.code = "S92000003" AND child.code = "S09000005"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_enterprise-regions`),(child:`_generic_hierarchy_node_enterprise-regions`)
WHERE parent.code = "S92000003" AND child.code = "S09000006"
CREATE (child)-[:hasParent]->(parent);

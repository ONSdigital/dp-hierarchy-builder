CREATE CONSTRAINT ON (n:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88`) ASSERT n.code IS UNIQUE;
CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'F',label:'CONSTRUCTION' });
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'F' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'43',label:'Specialised construction activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'43' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'43.9',label:'Other specialised construction activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'43.9' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'43.91',label:'Roofing activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'43.9' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'43.99',label:'Other specialised construction activities n.e.c.' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'43.99' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'43.99/1',label:'Scaffold erection' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'43.99' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'43.99/9',label:'Specialised construction activities (other than scaffold erection) n.e.c.' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'43' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'43.2',label:'Electrical, plumbing and other construction installation activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'43.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'43.22',label:'Plumbing, heat and air-conditioning installation' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'43.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'43.29',label:'Other construction installation' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'43.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'43.21',label:'Electrical installation' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'43' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'43.3',label:'Building completion and finishing' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'43.3' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'43.39',label:'Other building completion and finishing' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'43.3' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'43.31',label:'Plastering' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'43.3' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'43.34',label:'Painting and glazing' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'43.34' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'43.34/1',label:'Painting' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'43.34' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'43.34/2',label:'Glazing' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'43.3' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'43.32',label:'Joinery installation' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'43.3' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'43.33',label:'Floor and wall covering' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'43' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'43.1',label:'Demolition and site preparation' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'43.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'43.13',label:'Test drilling and boring' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'43.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'43.11',label:'Demolition' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'43.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'43.12',label:'Site preparation' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'F' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'41',label:'Construction of buildings' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'41' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'41.2',label:'Construction of residential and non-residential buildings' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'41.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'41.20',label:'Construction of residential and non-residential buildings' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'41.20' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'41.20/2',label:'Construction of domestic buildings' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'41.20' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'41.20/1',label:'Construction of commercial buildings' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'41' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'41.1',label:'Development of building projects' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'41.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'41.10',label:'Development of building projects' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'F' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'42',label:'Civil engineering' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'42' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'42.1',label:'Construction of roads and railways' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'42.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'42.13',label:'Construction of bridges and tunnels' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'42.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'42.12',label:'Construction of railways and underground railways' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'42.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'42.11',label:'Construction of roads and motorways' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'42' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'42.9',label:'Construction of other civil engineering projects' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'42.9' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'42.91',label:'Construction of water projects' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'42.9' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'42.99',label:'Construction of other civil engineering projects n.e.c.' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'42' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'42.2',label:'Construction of utility projects' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'42.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'42.22',label:'Construction of utility projects for electricity and telecommunications' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'42.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'42.21',label:'Construction of utility projects for fluids' })-[:hasParent]->(parent);
CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'O',label:'PUBLIC ADMINISTRATION AND DEFENCE; COMPULSORY SOCIAL SECURITY' });
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'O' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'84',label:'Public administration and defence; compulsory social security' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'84' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'84.3',label:'Compulsory social security activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'84.3' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'84.30',label:'Compulsory social security activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'84' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'84.2',label:'Provision of services to the community as a whole' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'84.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'84.25',label:'Fire service activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'84.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'84.23',label:'Justice and judicial activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'84.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'84.22',label:'Defence activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'84.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'84.21',label:'Foreign affairs' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'84.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'84.24',label:'Public order and safety activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'84' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'84.1',label:'Administration of the State and the economic and social policy of the community' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'84.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'84.11',label:'General public administration activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'84.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'84.13',label:'Regulation of and contribution to more efficient operation of businesses' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'84.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'84.12',label:'Regulation of the activities of providing health care, education, cultural services and other social services, excluding social security' })-[:hasParent]->(parent);
CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'A',label:'AGRICULTURE, FORESTRY AND FISHING' });
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'A' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'01',label:'Crop and animal production, hunting and related service activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'01' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'01.6',label:'Support activities to agriculture and post-harvest crop activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'01.6' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'01.61',label:'Support activities for crop production' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'01.6' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'01.62',label:'Support activities for animal production' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'01.62' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'01.62/9',label:'Support activities for animal production (other than farm animal boarding and care) n.e.c.' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'01.62' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'01.62/1',label:'Farm animal boarding and care' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'01.6' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'01.63',label:'Post-harvest crop activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'01.6' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'01.64',label:'Seed processing for propagation' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'01' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'01.2',label:'Growing of perennial crops' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'01.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'01.27',label:'Growing of beverage crops' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'01.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'01.21',label:'Growing of grapes' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'01.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'01.23',label:'Growing of citrus fruits' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'01.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'01.22',label:'Growing of tropical and subtropical fruits' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'01.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'01.28',label:'Growing of spices, aromatic, drug and pharmaceutical crops' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'01.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'01.29',label:'Growing of other perennial crops' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'01.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'01.25',label:'Growing of other tree and bush fruits and nuts' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'01.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'01.24',label:'Growing of pome fruits and stone fruits' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'01.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'01.26',label:'Growing of oleaginous fruits' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'01' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'01.4',label:'Animal production' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'01.4' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'01.45',label:'Raising of sheep and goats' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'01.4' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'01.42',label:'Raising of other cattle and buffaloes' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'01.4' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'01.43',label:'Raising of horses and other equines' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'01.4' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'01.41',label:'Raising of dairy cattle' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'01.4' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'01.49',label:'Raising of other animals' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'01.4' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'01.44',label:'Raising of camels and camelids' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'01.4' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'01.47',label:'Raising of poultry' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'01.4' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'01.46',label:'Raising of swine/pigs' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'01' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'01.5',label:'Mixed farming' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'01.5' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'01.50',label:'Mixed farming' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'01' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'01.1',label:'Growing of non-perennial crops' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'01.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'01.12',label:'Growing of rice' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'01.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'01.13',label:'Growing of vegetables and melons, roots and tubers' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'01.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'01.19',label:'Growing of other non-perennial crops' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'01.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'01.15',label:'Growing of tobacco' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'01.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'01.16',label:'Growing of fibre crops' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'01.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'01.11',label:'Growing of cereals (except rice), leguminous crops and oil seeds' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'01.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'01.14',label:'Growing of sugar cane' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'01' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'01.3',label:'Plant propagation' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'01.3' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'01.30',label:'Plant propagation' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'01' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'01.7',label:'Hunting, trapping and related service activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'01.7' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'01.70',label:'Hunting, trapping and related service activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'A' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'03',label:'Fishing and aquaculture' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'03' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'03.2',label:'Aquaculture' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'03.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'03.21',label:'Marine aquaculture' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'03.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'03.22',label:'Freshwater aquaculture' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'03' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'03.1',label:'Fishing' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'03.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'03.12',label:'Freshwater fishing' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'03.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'03.11',label:'Marine fishing' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'A' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'02',label:'Forestry and logging' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'02' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'02.3',label:'Gathering of wild growing non-wood products' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'02.3' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'02.30',label:'Gathering of wild growing non-wood products' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'02' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'02.1',label:'Silviculture and other forestry activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'02.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'02.10',label:'Silviculture and other forestry activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'02' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'02.4',label:'Support services to forestry' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'02.4' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'02.40',label:'Support services to forestry' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'02' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'02.2',label:'Logging' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'02.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'02.20',label:'Logging' })-[:hasParent]->(parent);
CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'I',label:'ACCOMMODATION AND FOOD SERVICE ACTIVITIES' });
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'I' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'55',label:'Accommodation' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'55' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'55.2',label:'Holiday and other short-stay accommodation' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'55.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'55.20',label:'Holiday and other short-stay accommodation' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'55.20' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'55.20/9',label:'Other holiday and other short-stay accommodation (not including holiday centres and villages or youth hostels) n.e.c.' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'55.20' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'55.20/1',label:'Holiday centres and villages' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'55.20' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'55.20/2',label:'Youth hostels' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'55' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'55.9',label:'Other accommodation' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'55.9' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'55.90',label:'Other accommodation' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'55' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'55.1',label:'Hotels and similar accommodation' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'55.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'55.10',label:'Hotels and similar accommodation' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'55' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'55.3',label:'Camping grounds, recreational vehicle parks and trailer parks' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'55.3' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'55.30',label:'Camping grounds, recreational vehicle parks and trailer parks' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'I' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'56',label:'Food and beverage service activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'56' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'56.2',label:'Event catering and other food service activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'56.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'56.21',label:'Event catering activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'56.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'56.29',label:'Other food service activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'56' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'56.1',label:'Restaurants and mobile food service activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'56.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'56.10',label:'Restaurants and mobile food service activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'56.10' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'56.10/3',label:'Take away food shops and mobile food stands' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'56.10' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'56.10/1',label:'Licensed restaurants' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'56.10' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'56.10/2',label:'Unlicensed restaurants and cafes' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'56' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'56.3',label:'Beverage serving activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'56.3' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'56.30',label:'Beverage serving activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'56.30' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'56.30/2',label:'Public houses and bars' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'56.30' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'56.30/1',label:'Licensed clubs' })-[:hasParent]->(parent);
CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'Q',label:'HUMAN HEALTH AND SOCIAL WORK ACTIVITIES' });
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'Q' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'88',label:'Social work activities without accommodation' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'88' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'88.1',label:'Social work activities without accommodation for the elderly and disabled' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'88.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'88.10',label:'Social work activities without accommodation for the elderly and disabled' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'88' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'88.9',label:'Other social work activities without accommodation' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'88.9' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'88.99',label:'Other social work activities without accommodation n.e.c.' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'88.9' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'88.91',label:'Child day-care activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'Q' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'87',label:'Residential care activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'87' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'87.9',label:'Other residential care activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'87.9' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'87.90',label:'Other residential care activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'87' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'87.2',label:'Residential care activities for learning disabilities, mental health and substance abuse' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'87.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'87.20',label:'Residential care activities for learning disabilities, mental health and substance abuse' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'87' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'87.3',label:'Residential care activities for the elderly and disabled' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'87.3' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'87.30',label:'Residential care activities for the elderly and disabled' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'87' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'87.1',label:'Residential nursing care activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'87.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'87.10',label:'Residential nursing care activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'Q' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'86',label:'Human health activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'86' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'86.2',label:'Medical and dental practice activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'86.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'86.22',label:'Specialist medical practice activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'86.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'86.23',label:'Dental practice activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'86.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'86.21',label:'General medical practice activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'86' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'86.9',label:'Other human health activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'86.9' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'86.90',label:'Other human health activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'86' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'86.1',label:'Hospital activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'86.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'86.10',label:'Hospital activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'86.10' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'86.10/2',label:'Medical nursing home activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'86.10' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'86.10/1',label:'Hospital activities' })-[:hasParent]->(parent);
CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'K',label:'FINANCIAL AND INSURANCE ACTIVITIES' });
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'K' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'65',label:'Insurance, reinsurance and pension funding, except compulsory social security' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'65' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'65.3',label:'Pension funding' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'65.3' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'65.30',label:'Pension funding' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'65' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'65.1',label:'Insurance' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'65.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'65.12',label:'Non-life insurance' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'65.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'65.11',label:'Life insurance' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'65' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'65.2',label:'Reinsurance' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'65.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'65.20',label:'Reinsurance' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'65.20' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'65.20/2',label:'Non-life reinsurance' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'65.20' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'65.20/1',label:'Life reinsurance' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'K' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'66',label:'Activities auxiliary to financial services and insurance activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'66' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'66.1',label:'Activities auxiliary to financial services, except insurance and pension funding' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'66.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'66.11',label:'Administration of financial markets' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'66.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'66.19',label:'Other activities auxiliary to financial services, except insurance and pension funding' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'66.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'66.12',label:'Security and commodity contracts brokerage' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'66' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'66.3',label:'Fund management activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'66.3' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'66.30',label:'Fund management activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'66' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'66.2',label:'Activities auxiliary to insurance and pension funding' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'66.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'66.22',label:'Activities of insurance agents and brokers' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'66.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'66.29',label:'Other activities auxiliary to insurance and pension funding' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'66.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'66.21',label:'Risk and damage evaluation' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'K' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'64',label:'Financial service activities, except insurance and pension funding' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'64' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'64.9',label:'Other financial service activities, except insurance and pension funding' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'64.9' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'64.92',label:'Other credit granting' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'64.92' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'64.92/2',label:'Activities of mortgage finance companies' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'64.92' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'64.92/1',label:'Credit granting by non-deposit taking finance houses and other specialist consumer credit grantors' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'64.92' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'64.92/9',label:'Other credit granting (not including credit granting by non-deposit taking finance houses and other specialist consumer credit grantors and activities of mortgage finance companies) n.e.c.' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'64.9' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'64.99',label:'Other financial service activities, except insurance and pension funding, n.e.c.' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'64.99' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'64.99/9',label:'Other financial service activities, except insurance and pension funding, (not including security dealing on own account and factoring) n.e.c.' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'64.99' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'64.99/2',label:'Factoring' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'64.99' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'64.99/1',label:'Security dealing on own account' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'64.9' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'64.91',label:'Financial leasing' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'64' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'64.3',label:'Trusts, funds and similar financial entities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'64.3' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'64.30',label:'Trusts, funds and similar financial entities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'64.30' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'64.30/4',label:'Activities of open-ended investment companies' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'64.30' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'64.30/5',label:'Activities of property unit trusts' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'64.30' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'64.30/6',label:'Activities of real estate investment trusts' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'64.30' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'64.30/2',label:'Activities of unit trusts' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'64.30' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'64.30/3',label:'Activities of venture and development capital companies' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'64.30' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'64.30/1',label:'Activities of investment trusts' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'64' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'64.1',label:'Monetary intermediation' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'64.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'64.19',label:'Other monetary intermediation' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'64.19' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'64.19/1',label:'Banks' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'64.19' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'64.19/2',label:'Building societies' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'64.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'64.11',label:'Central banking' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'64' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'64.2',label:'Activities of holding companies' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'64.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'64.20',label:'Activities of holding companies' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'64.20' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'64.20/2',label:'Activities of production holding companies' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'64.20' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'64.20/5',label:'Activities of financial services holding companies' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'64.20' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'64.20/9',label:'Activities of other holding companies (not including agricultural, production, construction, distribution and financial services holding companies) n.e.c.' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'64.20' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'64.20/3',label:'Activities of construction holding companies' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'64.20' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'64.20/4',label:'Activities of distribution holding companies' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'64.20' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'64.20/1',label:'Activities of agricultural holding companies' })-[:hasParent]->(parent);
CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'U',label:'ACTIVITIES OF EXTRATERRITORIAL ORGANISATIONS AND BODIES' });
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'U' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'99',label:'Activities of extraterritorial organisations and bodies' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'99' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'99.0',label:'Activities of extraterritorial organisations and bodies' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'99.0' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'99.00',label:'Activities of extraterritorial organisations and bodies' })-[:hasParent]->(parent);
CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'M',label:'PROFESSIONAL, SCIENTIFIC AND TECHNICAL ACTIVITIES' });
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'M' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'72',label:'Scientific research and development' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'72' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'72.1',label:'Research and experimental development on natural sciences and engineering' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'72.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'72.11',label:'Research and experimental development on biotechnology' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'72.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'72.19',label:'Other research and experimental development on natural sciences and engineering' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'72' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'72.2',label:'Research and experimental development on social sciences and humanities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'72.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'72.20',label:'Research and experimental development on social sciences and humanities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'M' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'71',label:'Architectural and engineering activities; technical testing and analysis' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'71' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'71.1',label:'Architectural and engineering activities and related technical consultancy' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'71.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'71.12',label:'Engineering activities and related technical consultancy' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'71.12' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'71.12/1',label:'Engineering design activities for industrial process and production' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'71.12' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'71.12/2',label:'Engineering related scientific and technical consulting activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'71.12' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'71.12/9',label:'Other engineering activities (not including engineering design for industrial process and production or engineering related scientific and technical consulting activities)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'71.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'71.11',label:'Architectural activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'71.11' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'71.11/1',label:'Architectural activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'71.11' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'71.11/2',label:'Urban planning and landscape architectural activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'71' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'71.2',label:'Technical testing and analysis' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'71.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'71.20',label:'Technical testing and analysis' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'M' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'69',label:'Legal and accounting activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'69' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'69.1',label:'Legal activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'69.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'69.10',label:'Legal activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'69.10' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'69.10/2',label:'Solicitors' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'69.10' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'69.10/1',label:'Barristers at law' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'69.10' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'69.10/9',label:'Activities of patent and copyright agents; other legal activities (other than those of barristers and solicitors) n.e.c.' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'69' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'69.2',label:'Accounting, bookkeeping and auditing activities; tax consultancy' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'69.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'69.20',label:'Accounting, bookkeeping and auditing activities; tax consultancy' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'69.20' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'69.20/1',label:'Accounting, and auditing activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'69.20' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'69.20/2',label:'Bookkeeping activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'69.20' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'69.20/3',label:'Tax consultancy' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'M' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'74',label:'Other professional, scientific and technical activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'74' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'74.2',label:'Photographic activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'74.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'74.20',label:'Photographic activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'74.20' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'74.20/1',label:'Portrait photographic activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'74.20' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'74.20/9',label:'Other photographic activities (not including portrait and other specialist photography and film processing) n.e.c.' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'74.20' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'74.20/2',label:'Other specialist photography (not including portrait photography)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'74.20' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'74.20/3',label:'Film processing' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'74' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'74.1',label:'Specialised design activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'74.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'74.10',label:'Specialised design activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'74' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'74.9',label:'Other professional, scientific and technical activities n.e.c.' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'74.9' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'74.90',label:'Other professional, scientific and technical activities n.e.c.' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'74.90' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'74.90/2',label:'Quantity surveying activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'74.90' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'74.90/1',label:'Environmental consulting activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'74.90' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'74.90/9',label:'Other professional, scientific and technical activities (not including environmental consultancy or quantity surveying) n.e.c.' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'74' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'74.3',label:'Translation and interpretation activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'74.3' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'74.30',label:'Translation and interpretation activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'M' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'70',label:'Activities of head offices; management consultancy activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'70' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'70.2',label:'Management consultancy activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'70.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'70.22',label:'Business and other management consultancy activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'70.22' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'70.22/9',label:'Management consultancy activities (other than financial management)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'70.22' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'70.22/1',label:'Financial management' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'70.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'70.21',label:'Public relations and communication activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'70' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'70.1',label:'Activities of head offices' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'70.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'70.10',label:'Activities of head offices' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'M' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'75',label:'Veterinary activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'75' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'75.0',label:'Veterinary activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'75.0' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'75.00',label:'Veterinary activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'M' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'73',label:'Advertising and market research' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'73' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'73.1',label:'Advertising' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'73.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'73.12',label:'Media representation' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'73.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'73.11',label:'Advertising agencies' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'73' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'73.2',label:'Market research and public opinion polling' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'73.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'73.20',label:'Market research and public opinion polling' })-[:hasParent]->(parent);
CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'T',label:'ACTIVITIES OF HOUSEHOLDS AS EMPLOYERS; UNDIFFERENTIATED GOODS-AND SERVICES-PRODUCING ACTIVITIES OF HOUSEHOLDS FOR OWN USE' });
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'T' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'97',label:'Activities of households as employers of domestic personnel' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'97' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'97.0',label:'Activities of households as employers of domestic personnel' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'97.0' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'97.00',label:'Activities of households as employers of domestic personnel' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'T' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'98',label:'Undifferentiated goods- and services-producing activities of private households for own use' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'98' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'98.1',label:'Undifferentiated goods-producing activities of private households for own use' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'98.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'98.10',label:'Undifferentiated goods-producing activities of private households for own use' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'98' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'98.2',label:'Undifferentiated service-producing activities of private households for own use' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'98.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'98.20',label:'Undifferentiated service-producing activities of private households for own use' })-[:hasParent]->(parent);
CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'R',label:'ARTS, ENTERTAINMENT AND RECREATION' });
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'R' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'90',label:'Creative, arts and entertainment activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'90' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'90.0',label:'Creative, arts and entertainment activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'90.0' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'90.02',label:'Support activities to performing arts' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'90.0' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'90.04',label:'Operation of arts facilities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'90.0' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'90.01',label:'Performing arts' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'90.0' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'90.03',label:'Artistic creation' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'R' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'93',label:'Sports activities and amusement and recreation activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'93' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'93.1',label:'Sports activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'93.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'93.19',label:'Other sports activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'93.19' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'93.19/1',label:'Activities of racehorse owners' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'93.19' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'93.19/9',label:'Other sports activities (not including activities of racehorse owners) n.e.c.' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'93.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'93.11',label:'Operation of sports facilities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'93.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'93.12',label:'Activities of sport clubs' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'93.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'93.13',label:'Fitness facilities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'93' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'93.2',label:'Amusement and recreation activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'93.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'93.29',label:'Other amusement and recreation activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'93.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'93.21',label:'Activities of amusement parks and theme parks' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'R' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'92',label:'Gambling and betting activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'92' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'92.0',label:'Gambling and betting activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'92.0' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'92.00',label:'Gambling and betting activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'R' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'91',label:'Libraries, archives, museums and other cultural activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'91' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'91.0',label:'Libraries, archives, museums and other cultural activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'91.0' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'91.03',label:'Operation of historical sites and buildings and similar visitor attractions' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'91.0' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'91.02',label:'Museum activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'91.0' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'91.01',label:'Library and archive activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'91.01' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'91.01/2',label:'Archive activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'91.01' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'91.01/1',label:'Library activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'91.0' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'91.04',label:'Botanical and zoological gardens and nature reserve activities' })-[:hasParent]->(parent);
CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'D',label:'ELECTRICITY, GAS, STEAM AND AIR CONDITIONING SUPPLY' });
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'D' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'35',label:'Electricity, gas, steam and air conditioning supply' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'35' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'35.2',label:'Manufacture of gas; distribution of gaseous fuels through mains' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'35.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'35.21',label:'Manufacture of gas' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'35.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'35.22',label:'Distribution of gaseous fuels through mains' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'35.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'35.23',label:'Trade of gas through mains' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'35' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'35.1',label:'Electric power generation, transmission and distribution' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'35.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'35.13',label:'Distribution of electricity' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'35.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'35.12',label:'Transmission of electricity' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'35.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'35.11',label:'Production of electricity' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'35.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'35.14',label:'Trade of electricity' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'35' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'35.3',label:'Steam and air conditioning supply' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'35.3' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'35.30',label:'Steam and air conditioning supply' })-[:hasParent]->(parent);
CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'E',label:'WATER SUPPLY; SEWERAGE, WASTE MANAGEMENT AND REMEDIATION ACTIVITIES' });
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'E' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'36',label:'Water collection, treatment and supply' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'36' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'36.0',label:'Water collection, treatment and supply' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'36.0' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'36.00',label:'Water collection, treatment and supply' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'E' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'38',label:'Waste collection, treatment and disposal activities; materials recovery' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'38' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'38.3',label:'Materials recovery' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'38.3' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'38.31',label:'Dismantling of wrecks' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'38.3' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'38.32',label:'Recovery of sorted materials' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'38' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'38.2',label:'Waste treatment and disposal' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'38.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'38.21',label:'Treatment and disposal of non-hazardous waste' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'38.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'38.22',label:'Treatment and disposal of hazardous waste' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'38' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'38.1',label:'Waste collection' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'38.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'38.11',label:'Collection of non-hazardous waste' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'38.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'38.12',label:'Collection of hazardous waste' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'E' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'39',label:'This division includes the provision of remediation services, i.e. the cleanup of contaminated buildings and sites, soil, surface or ground water.' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'39' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'39.0',label:'Remediation activities and other waste management services' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'39.0' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'39.00',label:'Remediation activities and other waste management services' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'E' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'37',label:'Sewerage' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'37' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'37.0',label:'Sewerage' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'37.0' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'37.00',label:'Sewerage' })-[:hasParent]->(parent);
CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'L',label:'REAL ESTATE ACTIVITIES' });
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'L' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'68',label:'Real estate activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'68' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'68.1',label:'Buying and selling of own real estate' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'68.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'68.10',label:'Buying and selling of own real estate' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'68' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'68.2',label:'Renting and operating of own or leased real estate' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'68.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'68.20',label:'Renting and operating of own or leased real estate' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'68.20' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'68.20/9',label:'Letting and operating of own or leased real estate (other than Housing Association real estate and conference and exhibition services) n.e.c.' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'68.20' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'68.20/2',label:'Letting and operating of conference and exhibition centres' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'68.20' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'68.20/1',label:'Renting and operating of Housing Association real estate' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'68' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'68.3',label:'Real estate activities on a fee or contract basis' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'68.3' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'68.32',label:'Management of real estate on a fee or contract basis' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'68.3' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'68.31',label:'Real estate agencies' })-[:hasParent]->(parent);
CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'S',label:'OTHER SERVICE ACTIVITIES' });
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'S' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'96',label:'Other personal service activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'96' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'96.0',label:'Other personal service activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'96.0' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'96.04',label:'Physical well-being activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'96.0' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'96.01',label:'Washing and (dry-)cleaning of textile and fur products' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'96.0' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'96.09',label:'Other personal service activities n.e.c.' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'96.0' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'96.03',label:'Funeral and related activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'96.0' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'96.02',label:'Hairdressing and other beauty treatment' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'S' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'94',label:'Activities of membership organisations' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'94' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'94.1',label:'Activities of business, employers and professional membership organisations' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'94.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'94.11',label:'Activities of business and employers membership organisations' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'94.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'94.12',label:'Activities of professional membership organisations' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'94' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'94.9',label:'Activities of other membership organisations' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'94.9' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'94.92',label:'Activities of political organisations' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'94.9' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'94.99',label:'Activities of other membership organisations n.e.c.' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'94.9' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'94.91',label:'Activities of religious organisations' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'94' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'94.2',label:'Activities of trade unions' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'94.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'94.20',label:'Activities of trade unions' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'S' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'95',label:'Repair of computers and personal and household goods' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'95' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'95.1',label:'Repair of computers and communication equipment' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'95.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'95.12',label:'Repair of communication equipment' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'95.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'95.11',label:'Repair of computers and peripheral equipment' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'95' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'95.2',label:'Repair of personal and household goods' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'95.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'95.22',label:'Repair of household appliances and home and garden equipment' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'95.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'95.23',label:'Repair of footwear and leather goods' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'95.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'95.24',label:'Repair of furniture and home furnishings' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'95.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'95.29',label:'Repair of other personal and household goods' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'95.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'95.25',label:'Repair of watches, clocks and jewellery' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'95.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'95.21',label:'Repair of consumer electronics' })-[:hasParent]->(parent);
CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'P',label:'EDUCATION' });
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'P' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'85',label:'Education' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'85' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'85.1',label:'Pre-primary education' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'85.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'85.10',label:'Pre-primary education' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'85' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'85.6',label:'Educational support activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'85.6' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'85.60',label:'Educational support activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'85' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'85.3',label:'Secondary education' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'85.3' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'85.32',label:'Technical and vocational secondary education' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'85.3' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'85.31',label:'General secondary education' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'85' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'85.2',label:'Primary education' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'85.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'85.20',label:'Primary education' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'85' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'85.4',label:'Higher education' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'85.4' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'85.42',label:'Tertiary education' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'85.42' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'85.42/2',label:'Post-graduate level higher education' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'85.42' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'85.42/1',label:'First-degree level higher education' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'85.4' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'85.41',label:'Post-secondary non-tertiary education' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'85' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'85.5',label:'Other education' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'85.5' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'85.51',label:'Sports and recreation education' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'85.5' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'85.52',label:'Cultural education' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'85.5' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'85.53',label:'Driving school activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'85.5' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'85.59',label:'Other education n.e.c.' })-[:hasParent]->(parent);
CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'J',label:'INFORMATION AND COMMUNICATION' });
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'J' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'63',label:'Information service activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'63' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'63.9',label:'Other information service activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'63.9' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'63.99',label:'Other information service activities n.e.c.' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'63.9' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'63.91',label:'News agency activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'63' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'63.1',label:'Data processing, hosting and related activities; web portals' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'63.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'63.11',label:'Data processing, hosting and related activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'63.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'63.12',label:'Web portals' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'J' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'61',label:'Telecommunications' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'61' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'61.9',label:'Other telecommunications activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'61.9' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'61.90',label:'Other telecommunications activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'61' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'61.1',label:'Wired telecommunications activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'61.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'61.10',label:'Wired telecommunications activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'61' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'61.3',label:'Satellite telecommunications activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'61.3' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'61.30',label:'Satellite telecommunications activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'61' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'61.2',label:'Wireless telecommunications activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'61.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'61.20',label:'Wireless telecommunications activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'J' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'62',label:'Computer programming, consultancy and related activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'62' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'62.0',label:'Computer programming, consultancy and related activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'62.0' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'62.02',label:'Computer consultancy activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'62.0' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'62.09',label:'Other information technology and computer service activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'62.0' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'62.03',label:'Computer facilities management activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'62.0' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'62.01',label:'Computer programming activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'62.01' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'62.01/1',label:'Ready-made interactive leisure and entertainment software development' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'62.01' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'62.01/2',label:'Business and domestic software development' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'J' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'59',label:'Motion picture, video and television programme production, sound recording and music publishing activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'59' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'59.1',label:'Motion picture, video and television programme activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'59.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'59.12',label:'Motion picture, video and television programme post-production activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'59.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'59.13',label:'Motion picture, video and television programme distribution activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'59.13' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'59.13/1',label:'Motion picture distribution activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'59.13' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'59.13/3',label:'Television programme distribution activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'59.13' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'59.13/2',label:'Video distribution activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'59.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'59.14',label:'Motion picture projection activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'59.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'59.11',label:'Motion picture, video and television programme production activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'59.11' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'59.11/1',label:'Motion picture production activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'59.11' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'59.11/3',label:'Television programme production activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'59.11' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'59.11/2',label:'Video production activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'59' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'59.2',label:'Sound recording and music publishing activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'59.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'59.20',label:'Sound recording and music publishing activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'J' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'60',label:'Programming and broadcasting activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'60' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'60.2',label:'Television programming and broadcasting activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'60.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'60.20',label:'Television programming and broadcasting activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'60' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'60.1',label:'Radio broadcasting' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'60.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'60.10',label:'Radio broadcasting' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'J' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'58',label:'Publishing activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'58' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'58.2',label:'Software publishing' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'58.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'58.29',label:'Other software publishing' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'58.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'58.21',label:'Publishing of computer games' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'58' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'58.1',label:'Publishing of books, periodicals and other publishing activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'58.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'58.13',label:'Publishing of newspapers' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'58.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'58.19',label:'Other publishing activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'58.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'58.11',label:'Book publishing' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'58.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'58.12',label:'Publishing of directories and mailing lists' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'58.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'58.14',label:'Publishing of journals and periodicals' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'58.14' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'58.14/2',label:'Publishing of consumer, business and professional journals and periodicals' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'58.14' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'58.14/1',label:'Publishing of learned journals' })-[:hasParent]->(parent);
CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'N',label:'ADMINISTRATIVE AND SUPPORT SERVICE ACTIVITIES' });
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'N' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'82',label:'Office administrative, office support and other business support activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'82' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'82.1',label:'Office administrative and support activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'82.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'82.11',label:'Combined office administrative service activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'82.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'82.19',label:'Photocopying, document preparation and other specialised office support activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'82' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'82.3',label:'Organisation of conventions and trade shows' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'82.3' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'82.30',label:'Organisation of conventions and trade shows' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'82.30' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'82.30/2',label:'Activities of conference organizers' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'82.30' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'82.30/1',label:'Activities of exhibition and fair organizers' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'82' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'82.2',label:'Activities of call centres' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'82.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'82.20',label:'Activities of call centres' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'82' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'82.9',label:'Business support service activities n.e.c.' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'82.9' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'82.91',label:'Activities of collection agencies and credit bureaus' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'82.91' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'82.91/1',label:'Activities of collection agencies' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'82.91' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'82.91/2',label:'Activities of credit bureaus' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'82.9' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'82.99',label:'Other business support service activities n.e.c.' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'82.9' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'82.92',label:'Packaging activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'N' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'77',label:'Rental and leasing activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'77' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'77.1',label:'Renting and leasing of motor vehicles' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'77.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'77.12',label:'Renting and leasing of trucks' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'77.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'77.11',label:'Renting and leasing of cars and light motor vehicles' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'77' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'77.3',label:'Renting and leasing of other machinery, equipment and tangible goods' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'77.3' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'77.33',label:'Renting and leasing of office machinery and equipment (including computers)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'77.3' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'77.35',label:'Renting and leasing of air transport equipment' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'77.35' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'77.35/2',label:'Renting and leasing of freight air transport equipment' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'77.35' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'77.35/1',label:'Renting and leasing of passenger air transport equipment' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'77.3' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'77.32',label:'Renting and leasing of construction and civil engineering machinery and equipment' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'77.3' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'77.39',label:'Renting and leasing of other machinery, equipment and tangible goods n.e.c.' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'77.3' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'77.34',label:'Renting and leasing of water transport equipment' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'77.34' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'77.34/2',label:'Renting and leasing of freight water transport equipment' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'77.34' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'77.34/1',label:'Renting and leasing of passenger water transport equipment' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'77.3' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'77.31',label:'Renting and leasing of agricultural machinery and equipment' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'77' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'77.4',label:'Leasing of intellectual property and similar products, except copyrighted works' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'77.4' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'77.40',label:'Leasing of intellectual property and similar products, except copyrighted works' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'77' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'77.2',label:'Renting and leasing of personal and household goods' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'77.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'77.21',label:'Renting and leasing of recreational and sports goods' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'77.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'77.22',label:'Renting of video tapes and disks' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'77.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'77.29',label:'Renting and leasing of other personal and household goods' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'77.29' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'77.29/9',label:'Renting and leasing of other personal and household goods (other than media entertainment equipment)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'77.29' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'77.29/1',label:'Renting and leasing of media entertainment equipment' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'N' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'79',label:'Travel agency, tour operator and other reservation service and related activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'79' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'79.1',label:'Travel agency and tour operator activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'79.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'79.11',label:'Travel agency activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'79.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'79.12',label:'Tour operator activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'79' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'79.9',label:'Other reservation service and related activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'79.9' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'79.90',label:'Other reservation service and related activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'79.90' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'79.90/1',label:'Activities of tourist guides' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'79.90' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'79.90/9',label:'Other reservation service and related activities (not including activities of tourist guides)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'N' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'81',label:'Services to buildings and landscape activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'81' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'81.2',label:'Cleaning activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'81.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'81.22',label:'Other building and industrial cleaning activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'81.22' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'81.22/1',label:'Window cleaning services' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'81.22' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'81.22/2',label:'Specialised cleaning services' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'81.22' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'81.22/9',label:'Building and industrial cleaning activities (other than window cleaning, specialised cleaning and furnace and chimney cleaning services) n.e.c.' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'81.22' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'81.22/3',label:'Furnace and chimney cleaning services' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'81.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'81.29',label:'Other cleaning activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'81.29' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'81.29/9',label:'Cleaning services (other than disinfecting and extermination services) n.e.c.' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'81.29' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'81.29/1',label:'Disinfecting and extermination services' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'81.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'81.21',label:'General cleaning of buildings' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'81' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'81.1',label:'Combined facilities support activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'81.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'81.10',label:'Combined facilities support activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'81' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'81.3',label:'Landscape service activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'81.3' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'81.30',label:'Landscape service activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'N' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'80',label:'Security and investigation activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'80' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'80.3',label:'Investigation activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'80.3' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'80.30',label:'Investigation activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'80' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'80.2',label:'Security systems service activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'80.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'80.20',label:'Security systems service activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'80' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'80.1',label:'Private security activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'80.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'80.10',label:'Private security activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'N' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'78',label:'Employment activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'78' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'78.2',label:'Temporary employment agency activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'78.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'78.20',label:'Temporary employment agency activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'78' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'78.1',label:'Activities of employment placement agencies' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'78.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'78.10',label:'Activities of employment placement agencies' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'78.10' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'78.10/9',label:'Activities of employment placement agencies (other than motion picture, television and other theatrical casting) n.e.c.' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'78.10' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'78.10/1',label:'Motion picture, television and other theatrical casting' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'78' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'78.3',label:'Other human resources provision' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'78.3' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'78.30',label:'Other human resources provision' })-[:hasParent]->(parent);
CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'B',label:'MINING AND QUARRYING' });
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'B' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'09',label:'Mining support service activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'09' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'09.9',label:'Support activities for other mining and quarrying' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'09.9' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'09.90',label:'Support activities for other mining and quarrying' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'09' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'09.1',label:'Support activities for petroleum and natural gas extraction' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'09.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'09.10',label:'Support activities for petroleum and natural gas extraction' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'B' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'05',label:'Mining of coal and lignite' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'05' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'05.1',label:'Mining of hard coal' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'05.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'05.10',label:'Mining of hard coal' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'05.10' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'05.10/2',label:'Mining of hard coal from open cast coal working (surface mining)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'05.10' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'05.10/1',label:'Mining of hard coal from deep coal mines (underground mining)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'05' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'05.2',label:'Mining of lignite' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'05.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'05.20',label:'Mining of lignite' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'B' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'08',label:'Other mining and quarrying' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'08' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'08.9',label:'Mining and quarrying n.e.c.' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'08.9' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'08.91',label:'Mining of chemical and fertiliser minerals' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'08.9' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'08.93',label:'Extraction of salt' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'08.9' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'08.99',label:'Other mining and quarrying n.e.c.' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'08.9' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'08.92',label:'Extraction of peat' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'08' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'08.1',label:'Quarrying of stone, sand and clay' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'08.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'08.12',label:'Operation of gravel and sand pits; mining of clays and kaolin' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'08.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'08.11',label:'Quarrying of ornamental and building stone, limestone, gypsum, chalk and slate' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'B' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'06',label:'Extraction of crude petroleum and natural gas' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'06' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'06.2',label:'Extraction of natural gas' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'06.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'06.20',label:'Extraction of natural gas' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'06' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'06.1',label:'Extraction of crude petroleum' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'06.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'06.10',label:'Extraction of crude petroleum' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'B' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'07',label:'Mining of metal ores' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'07' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'07.2',label:'Mining of non-ferrous metal ores' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'07.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'07.21',label:'Mining of uranium and thorium ores' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'07.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'07.29',label:'Mining of other non-ferrous metal ores' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'07' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'07.1',label:'Mining of iron ores' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'07.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'07.10',label:'Mining of iron ores' })-[:hasParent]->(parent);
CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'H',label:'TRANSPORTATION AND STORAGE' });
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'H' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'49',label:'Land transport and transport via pipelines' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'49' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'49.5',label:'Transport via pipeline' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'49.5' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'49.50',label:'Transport via pipeline' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'49' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'49.4',label:'Freight transport by road and removal services' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'49.4' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'49.41',label:'Freight transport by road' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'49.4' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'49.42',label:'Removal services' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'49' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'49.3',label:'Other passenger land transport' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'49.3' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'49.31',label:'Urban and suburban passenger land transport' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'49.31' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'49.31/1',label:'Urban, suburban or metropolitan area passenger railway transportation by underground, metro and similar systems' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'49.31' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'49.31/9',label:'Urban, suburban or metropolitan area passenger land transport other than railway transportation by underground, metro and similar systems' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'49.3' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'49.32',label:'Taxi operation' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'49.3' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'49.39',label:'Other passenger land transport n.e.c.' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'49' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'49.1',label:'Passenger rail transport, interurban' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'49.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'49.10',label:'Passenger rail transport, interurban' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'49' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'49.2',label:'Freight rail transport' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'49.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'49.20',label:'Freight rail transport' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'H' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'53',label:'Postal and courier activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'53' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'53.2',label:'Other postal and courier activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'53.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'53.20',label:'Other postal and courier activities' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'53.20' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'53.20/1',label:'Licensed Carriers' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'53.20' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'53.20/2',label:'Unlicensed Carriers' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'53' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'53.1',label:'Postal activities under universal service obligation' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'53.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'53.10',label:'Postal activities under universal service obligation' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'H' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'51',label:'Air transport' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'51' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'51.1',label:'Passenger air transport' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'51.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'51.10',label:'Passenger air transport' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'51.10' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'51.10/1',label:'Scheduled passenger air transport' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'51.10' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'51.10/2',label:'Non-scheduled passenger air transport' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'51' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'51.2',label:'Freight air transport and space transport' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'51.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'51.22',label:'Space transport' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'51.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'51.21',label:'Freight air transport' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'H' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'50',label:'Water transport' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'50' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'50.4',label:'Inland freight water transport' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'50.4' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'50.40',label:'Inland freight water transport' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'50' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'50.1',label:'Sea and coastal passenger water transport' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'50.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'50.10',label:'Sea and coastal passenger water transport' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'50' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'50.3',label:'Inland passenger water transport' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'50.3' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'50.30',label:'Inland passenger water transport' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'50' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'50.2',label:'Sea and coastal freight water transport' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'50.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'50.20',label:'Sea and coastal freight water transport' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'H' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'52',label:'Warehousing and support activities for transportation' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'52' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'52.1',label:'Warehousing and storage' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'52.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'52.10',label:'Warehousing and storage' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'52.10' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'52.10/3',label:'Operation of warehousing and storage facilities for land transport activities of division 49' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'52.10' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'52.10/2',label:'Operation of warehousing and storage facilities for air transport activities of division 51' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'52.10' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'52.10/1',label:'Operation of warehousing and storage facilities for water transport activities of division 50' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'52' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'52.2',label:'Support activities for transportation' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'52.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'52.23',label:'Service activities incidental to air transportation' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'52.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'52.21',label:'Service activities incidental to land transportation' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'52.21' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'52.21/3',label:'Operation of bus and coach passenger facilities at bus and coach stations' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'52.21' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'52.21/9',label:'Other service activities incidental to land transportation, n.e.c. (not including operation of rail freight terminals, passenger facilities at railway stations or passenger facilities at bus and coach stations)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'52.21' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'52.21/1',label:'Operation of rail freight terminals' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'52.21' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'52.21/2',label:'Operation of rail passenger facilities at railway stations' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'52.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'52.24',label:'Cargo handling' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'52.24' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'52.24/1',label:'Cargo handling for water transport activities of division 50' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'52.24' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'52.24/3',label:'Cargo handling for land transport activities of division 49' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'52.24' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'52.24/2',label:'Cargo handling for air transport activities of division 51' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'52.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'52.22',label:'Service activities incidental to water transportation' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'52.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'52.29',label:'Other transportation support activities' })-[:hasParent]->(parent);
CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'C',label:'MANUFACTURING' });
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'C' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'20',label:'Manufacture of chemicals and chemical products' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'20' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'20.3',label:'Manufacture of paints, varnishes and similar coatings, printing ink and mastics' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'20.3' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'20.30',label:'Manufacture of paints, varnishes and similar coatings, printing ink and mastics' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'20.30' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'20.30/2',label:'Manufacture of printing ink' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'20.30' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'20.30/1',label:'Manufacture of paints, varnishes and similar coatings, mastics and sealants' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'20' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'20.5',label:'Manufacture of other chemical products' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'20.5' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'20.51',label:'Manufacture of explosives' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'20.5' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'20.59',label:'Manufacture of other chemical products n.e.c.' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'20.5' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'20.53',label:'Manufacture of essential oils' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'20.5' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'20.52',label:'Manufacture of glues' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'20' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'20.6',label:'Manufacture of man-made fibres' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'20.6' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'20.60',label:'Manufacture of man-made fibres' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'20' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'20.2',label:'Manufacture of pesticides and other agrochemical products' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'20.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'20.20',label:'Manufacture of pesticides and other agrochemical products' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'20' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'20.4',label:'Manufacture of soap and detergents, cleaning and polishing preparations, perfumes and toilet preparations' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'20.4' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'20.42',label:'Manufacture of perfumes and toilet preparations' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'20.4' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'20.41',label:'Manufacture of soap and detergents, cleaning and polishing preparations' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'20.41' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'20.41/2',label:'Manufacture of cleaning and polishing preparations' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'20.41' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'20.41/1',label:'Manufacture of soap and detergents' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'20' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'20.1',label:'Manufacture of basic chemicals, fertilisers and nitrogen compounds, plastics and synthetic rubber in primary forms' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'20.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'20.15',label:'Manufacture of fertilisers and nitrogen compounds' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'20.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'20.11',label:'Manufacture of industrial gases' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'20.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'20.12',label:'Manufacture of dyes and pigments' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'20.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'20.17',label:'Manufacture of synthetic rubber in primary forms' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'20.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'20.13',label:'Manufacture of other inorganic basic chemicals' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'20.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'20.16',label:'Manufacture of plastics in primary forms' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'20.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'20.14',label:'Manufacture of other organic basic chemicals' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'C' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'33',label:'Repair and installation of machinery and equipment' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'33' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'33.2',label:'Installation of industrial machinery and equipment' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'33.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'33.20',label:'Installation of industrial machinery and equipment' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'33' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'33.1',label:'Repair of fabricated metal products, machinery and equipment' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'33.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'33.14',label:'Repair of electrical equipment' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'33.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'33.12',label:'Repair of machinery' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'33.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'33.15',label:'Repair and maintenance of ships and boats' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'33.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'33.19',label:'Repair of other equipment' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'33.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'33.16',label:'Repair and maintenance of aircraft and spacecraft' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'33.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'33.13',label:'Repair of electronic and optical equipment' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'33.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'33.17',label:'Repair and maintenance of other transport equipment' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'33.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'33.11',label:'Repair of fabricated metal products' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'C' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'10',label:'Manufacture of food products' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'10' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'10.2',label:'Processing and preserving of fish, crustaceans and molluscs' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'10.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'10.20',label:'Processing and preserving of fish, crustaceans and molluscs' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'10' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'10.9',label:'Manufacture of prepared animal feeds' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'10.9' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'10.92',label:'Manufacture of prepared pet foods' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'10.9' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'10.91',label:'Manufacture of prepared feeds for farm animals' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'10' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'10.5',label:'Manufacture of dairy products' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'10.5' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'10.51',label:'Operation of dairies and cheese making' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'10.51' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'10.51/2',label:'Butter and cheese production' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'10.51' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'10.51/9',label:'Manufacture of milk products (other than liquid milk and cream, butter, cheese) n.e.c.' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'10.51' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'10.51/1',label:'Liquid milk and cream production' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'10.5' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'10.52',label:'Manufacture of ice cream' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'10' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'10.8',label:'Manufacture of other food products' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'10.8' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'10.85',label:'Manufacture of prepared meals and dishes' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'10.8' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'10.82',label:'Manufacture of cocoa, chocolate and sugar confectionery' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'10.82' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'10.82/2',label:'Manufacture of sugar confectionery' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'10.82' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'10.82/1',label:'Manufacture of cocoa, and chocolate confectionery' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'10.8' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'10.86',label:'Manufacture of homogenised food preparations and dietetic food' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'10.8' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'10.89',label:'Manufacture of other food products n.e.c.' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'10.8' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'10.81',label:'Manufacture of sugar' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'10.8' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'10.83',label:'Processing of tea and coffee' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'10.83' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'10.83/2',label:'Production of coffee and coffee substitutes' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'10.83' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'10.83/1',label:'Tea processing' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'10.8' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'10.84',label:'Manufacture of condiments and seasonings' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'10' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'10.1',label:'Processing and preserving of meat and production of meat products' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'10.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'10.11',label:'Processing and preserving of meat' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'10.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'10.13',label:'Production of meat and poultry meat products' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'10.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'10.12',label:'Processing and preserving of poultry meat' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'10' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'10.6',label:'Manufacture of grain mill products, starches and starch products' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'10.6' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'10.62',label:'Manufacture of starches and starch products' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'10.6' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'10.61',label:'Manufacture of grain mill products' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'10.61' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'10.61/1',label:'Grain milling' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'10.61' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'10.61/2',label:'Manufacture of breakfast cereals and cereals-based foods' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'10' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'10.4',label:'Manufacture of vegetable and animal oils and fats' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'10.4' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'10.42',label:'Manufacture of margarine and similar edible fats' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'10.4' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'10.41',label:'Manufacture of oils and fats' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'10' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'10.3',label:'Processing and preserving of fruit and vegetables' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'10.3' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'10.32',label:'Manufacture of fruit and vegetable juice' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'10.3' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'10.31',label:'Processing and preserving of potatoes' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'10.3' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'10.39',label:'Other processing and preserving of fruit and vegetables' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'10' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'10.7',label:'Manufacture of bakery and farinaceous products' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'10.7' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'10.72',label:'Manufacture of rusks and biscuits; manufacture of preserved pastry goods and cakes' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'10.7' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'10.71',label:'Manufacture of bread; manufacture of fresh pastry goods and cakes' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'10.7' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'10.73',label:'Manufacture of macaroni, noodles, couscous and similar farinaceous products' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'C' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'31',label:'Manufacture of furniture' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'31' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'31.0',label:'Manufacture of furniture' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'31.0' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'31.09',label:'Manufacture of other furniture' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'31.0' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'31.03',label:'Manufacture of mattresses' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'31.0' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'31.01',label:'Manufacture of office and shop furniture' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'31.0' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'31.02',label:'Manufacture of kitchen furniture' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'C' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'32',label:'Other manufacturing' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'32' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'32.4',label:'Manufacture of games and toys' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'32.4' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'32.40',label:'Manufacture of games and toys' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'32.40' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'32.40/9',label:'Manufacture of games and toys (other than professional and arcade games and toys) n.e.c.' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'32.40' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'32.40/1',label:'Manufacture of professional and arcade games and toys' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'32' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'32.1',label:'Manufacture of jewellery, bijouterie and related articles' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'32.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'32.11',label:'Striking of coins' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'32.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'32.12',label:'Manufacture of jewellery and related articles' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'32.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'32.13',label:'Manufacture of imitation jewellery and related articles' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'32' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'32.9',label:'Other manufacturing n.e.c.' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'32.9' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'32.99',label:'Other manufacturing n.e.c.' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'32.9' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'32.91',label:'Manufacture of brooms and brushes' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'32' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'32.2',label:'Manufacture of musical instruments' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'32.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'32.20',label:'Manufacture of musical instruments' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'32' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'32.3',label:'Manufacture of sports goods' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'32.3' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'32.30',label:'Manufacture of sports goods' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'32' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'32.5',label:'Manufacture of medical and dental instruments and supplies' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'32.5' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'32.50',label:'Manufacture of medical and dental instruments and supplies' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'C' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'24',label:'Manufacture of basic metals' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'24' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'24.5',label:'Casting of metals' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'24.5' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'24.52',label:'Casting of steel' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'24.5' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'24.51',label:'Casting of iron' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'24.5' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'24.54',label:'Casting of other non-ferrous metals' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'24.5' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'24.53',label:'Casting of light metals' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'24' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'24.2',label:'Manufacture of tubes, pipes, hollow profiles and related fittings, of steel' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'24.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'24.20',label:'Manufacture of tubes, pipes, hollow profiles and related fittings, of steel' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'24' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'24.4',label:'Manufacture of basic precious and other non-ferrous metals' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'24.4' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'24.45',label:'Other non-ferrous metal production' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'24.4' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'24.46',label:'Processing of nuclear fuel' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'24.4' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'24.43',label:'Lead, zinc and tin production' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'24.4' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'24.41',label:'Precious metals production' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'24.4' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'24.44',label:'Copper production' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'24.4' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'24.42',label:'Aluminium production' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'24' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'24.3',label:'Manufacture of other products of first processing of steel' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'24.3' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'24.34',label:'Cold drawing of wire' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'24.3' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'24.33',label:'Cold forming or folding' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'24.3' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'24.32',label:'Cold rolling of narrow strip' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'24.3' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'24.31',label:'Cold drawing of bars' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'24' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'24.1',label:'Manufacture of basic iron and steel and of ferro-alloys' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'24.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'24.10',label:'Manufacture of basic iron and steel and of ferro-alloys' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'C' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'12',label:'Manufacture of tobacco products' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'12' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'12.0',label:'Manufacture of tobacco products' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'12.0' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'12.00',label:'Manufacture of tobacco products' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'C' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'16',label:'Manufacture of wood and of products of wood and cork, except furniture; manufacture of articles of straw and plaiting materials' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'16' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'16.2',label:'Manufacture of products of wood, cork, straw and plaiting materials' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'16.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'16.24',label:'Manufacture of wooden containers' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'16.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'16.23',label:'Manufacture of other builders\' carpentry and joinery' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'16.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'16.22',label:'Manufacture of assembled parquet floors' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'16.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'16.29',label:'Manufacture of other products of wood; manufacture of articles of cork, straw and plaiting materials' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'16.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'16.21',label:'Manufacture of veneer sheets and wood-based panels' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'16' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'16.1',label:'Sawmilling and planing of wood' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'16.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'16.10',label:'Sawmilling and planing of wood' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'C' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'29',label:'Manufacture of motor vehicles, trailers and semi-trailers' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'29' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'29.3',label:'Manufacture of parts and accessories for motor vehicles' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'29.3' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'29.31',label:'Manufacture of electrical and electronic equipment for motor vehicles' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'29.3' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'29.32',label:'Manufacture of other parts and accessories for motor vehicles' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'29' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'29.1',label:'Manufacture of motor vehicles' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'29.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'29.10',label:'Manufacture of motor vehicles' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'29' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'29.2',label:'Manufacture of bodies (coachwork) for motor vehicles; manufacture of trailers and semi-trailers' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'29.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'29.20',label:'Manufacture of bodies (coachwork) for motor vehicles; manufacture of trailers and semi-trailers' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'29.20' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'29.20/2',label:'Manufacture of trailers and semi-trailers' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'29.20' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'29.20/3',label:'Manufacture of caravans' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'29.20' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'29.20/1',label:'Manufacture of bodies (coachwork) for motor vehicles (except caravans)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'C' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'18',label:'Printing and reproduction of recorded media' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'18' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'18.2',label:'Reproduction of recorded media' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'18.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'18.20',label:'Reproduction of recorded media' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'18.20' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'18.20/3',label:'Reproduction of computer media' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'18.20' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'18.20/1',label:'Reproduction of sound recording' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'18.20' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'18.20/2',label:'Reproduction of video recording' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'18' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'18.1',label:'Printing and service activities related to printing' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'18.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'18.12',label:'Other printing' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'18.12' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'18.12/1',label:'Manufacture of printed labels' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'18.12' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'18.12/9',label:'Printing (other than printing of newspapers and printing on labels and tags) n.e.c.' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'18.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'18.13',label:'Pre-press and pre-media services' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'18.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'18.11',label:'Printing of newspapers' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'18.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'18.14',label:'Binding and related services' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'C' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'30',label:'Manufacture of other transport equipment' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'30' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'30.9',label:'Manufacture of transport equipment n.e.c.' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'30.9' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'30.91',label:'Manufacture of motorcycles' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'30.9' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'30.92',label:'Manufacture of bicycles and invalid carriages' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'30.9' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'30.99',label:'Manufacture of other transport equipment n.e.c.' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'30' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'30.3',label:'Manufacture of air and spacecraft and related machinery' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'30.3' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'30.30',label:'Manufacture of air and spacecraft and related machinery' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'30' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'30.1',label:'Building of ships and boats' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'30.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'30.12',label:'Building of pleasure and sporting boats' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'30.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'30.11',label:'Building of ships and floating structures' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'30' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'30.2',label:'Manufacture of railway locomotives and rolling stock' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'30.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'30.20',label:'Manufacture of railway locomotives and rolling stock' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'30' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'30.4',label:'Manufacture of military fighting vehicles' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'30.4' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'30.40',label:'Manufacture of military fighting vehicles' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'C' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'14',label:'Manufacture of wearing apparel' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'14' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'14.2',label:'Manufacture of articles of fur' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'14.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'14.20',label:'Manufacture of articles of fur' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'14' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'14.1',label:'Manufacture of wearing apparel, except fur apparel' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'14.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'14.19',label:'Manufacture of other wearing apparel and accessories' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'14.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'14.14',label:'Manufacture of underwear' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'14.14' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'14.14/2',label:'Manufacture of women\'s underwear' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'14.14' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'14.14/1',label:'Manufacture of men\'s underwear' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'14.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'14.12',label:'Manufacture of workwear' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'14.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'14.11',label:'Manufacture of leather clothes' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'14.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'14.13',label:'Manufacture of other outerwear' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'14.13' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'14.13/2',label:'Manufacture of women\'s outerwear, other than leather clothes and workwear' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'14.13' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'14.13/1',label:'Manufacture of men\'s outerwear, other than leather clothes and workwear' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'14' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'14.3',label:'Manufacture of knitted and crocheted apparel' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'14.3' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'14.31',label:'Manufacture of knitted and crocheted hosiery' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'14.3' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'14.39',label:'Manufacture of other knitted and crocheted apparel' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'C' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'17',label:'Manufacture of paper and paper products' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'17' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'17.2',label:'Manufacture of articles of paper and paperboard' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'17.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'17.29',label:'Manufacture of other articles of paper and paperboard' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'17.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'17.23',label:'Manufacture of paper stationery' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'17.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'17.24',label:'Manufacture of wallpaper' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'17.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'17.22',label:'Manufacture of household and sanitary goods and of toilet requisites' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'17.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'17.21',label:'Manufacture of corrugated paper and paperboard and of containers of paper and paperboard' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'17.21' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'17.21/9',label:'Manufacture of paper and paperboard containers other than sacks and bags' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'17.21' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'17.21/1',label:'Manufacture of corrugated paper and paperboard; manufacture of sacks and bags of paper' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'17' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'17.1',label:'Manufacture of pulp, paper and paperboard' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'17.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'17.11',label:'Manufacture of pulp' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'17.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'17.12',label:'Manufacture of paper and paperboard' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'C' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'19',label:'Manufacture of coke and refined petroleum products' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'19' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'19.2',label:'Manufacture of refined petroleum products' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'19.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'19.20',label:'Manufacture of refined petroleum products' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'19.20' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'19.20/9',label:'Other treatment of petroleum products (excluding mineral oil refining/petrochemicals manufacture)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'19.20' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'19.20/1',label:'Mineral oil refining' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'19' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'19.1',label:'Manufacture of coke oven products' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'19.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'19.10',label:'Manufacture of coke oven products' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'C' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'13',label:'Manufacture of textiles' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'13' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'13.1',label:'Preparation and spinning of textile fibres' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'13.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'13.10',label:'Preparation and spinning of textile fibres' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'13' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'13.2',label:'Weaving of textiles' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'13.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'13.20',label:'Weaving of textiles' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'13' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'13.9',label:'Manufacture of other textiles' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'13.9' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'13.96',label:'Manufacture of other technical and industrial textiles' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'13.9' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'13.93',label:'Manufacture of carpets and rugs' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'13.93' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'13.93/9',label:'Manufacture of carpets and rugs (other than woven or tufted) n.e.c.' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'13.93' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'13.93/1',label:'Manufacture of woven or tufted carpets and rugs' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'13.9' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'13.99',label:'Manufacture of other textiles n.e.c.' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'13.9' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'13.95',label:'Manufacture of non-wovens and articles made from non-wovens, except apparel' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'13.9' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'13.92',label:'Manufacture of made-up textile articles, except apparel' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'13.92' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'13.92/3',label:'Manufacture of household textiles (other than soft furnishings of 13.92/1)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'13.92' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'13.92/2',label:'Manufacture of canvas goods, sacks etc.' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'13.92' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'13.92/1',label:'Manufacture of soft furnishings' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'13.9' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'13.91',label:'Manufacture of knitted and crocheted fabrics' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'13.9' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'13.94',label:'Manufacture of cordage, rope, twine and netting' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'13' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'13.3',label:'Finishing of textiles' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'13.3' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'13.30',label:'Finishing of textiles' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'C' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'15',label:'Manufacture of leather and related products' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'15' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'15.2',label:'Manufacture of footwear' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'15.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'15.20',label:'Manufacture of footwear' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'15' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'15.1',label:'Tanning and dressing of leather; manufacture of luggage, handbags, saddlery and harness; dressing and dyeing of fur' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'15.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'15.12',label:'Manufacture of luggage, handbags and the like, saddlery and harness' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'15.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'15.11',label:'Tanning and dressing of leather; dressing and dyeing of fur' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'C' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'21',label:'Manufacture of basic pharmaceutical products and pharmaceutical preparations' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'21' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'21.2',label:'Manufacture of pharmaceutical preparations' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'21.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'21.20',label:'Manufacture of pharmaceutical preparations' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'21' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'21.1',label:'Manufacture of basic pharmaceutical products' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'21.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'21.10',label:'Manufacture of basic pharmaceutical products' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'C' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'11',label:'Manufacture of beverages' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'11' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'11.0',label:'Manufacture of beverages' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'11.0' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'11.04',label:'Manufacture of other non-distilled fermented beverages' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'11.0' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'11.06',label:'Manufacture of malt' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'11.0' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'11.03',label:'Manufacture of cider and other fruit wines' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'11.0' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'11.05',label:'Manufacture of beer' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'11.0' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'11.07',label:'Manufacture of soft drinks; production of mineral waters and other bottled waters' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'11.0' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'11.02',label:'Manufacture of wine from grape' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'11.0' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'11.01',label:'Distilling, rectifying and blending of spirits' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'C' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'25',label:'Manufacture of fabricated metal products, except machinery and equipment' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'25' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'25.2',label:'Manufacture of tanks, reservoirs and containers of metal' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'25.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'25.29',label:'Manufacture of other tanks, reservoirs and containers of metal' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'25.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'25.21',label:'Manufacture of central heating radiators and boilers' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'25' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'25.6',label:'Treatment and coating of metals; machining' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'25.6' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'25.61',label:'Treatment and coating of metals' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'25.6' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'25.62',label:'Machining' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'25' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'25.5',label:'Forging, pressing, stamping and roll-forming of metal; powder metallurgy' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'25.5' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'25.50',label:'Forging, pressing, stamping and roll-forming of metal; powder metallurgy' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'25' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'25.7',label:'Manufacture of cutlery, tools and general hardware' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'25.7' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'25.72',label:'Manufacture of locks and hinges' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'25.7' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'25.71',label:'Manufacture of cutlery' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'25.7' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'25.73',label:'Manufacture of tools' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'25' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'25.1',label:'Manufacture of structural metal products' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'25.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'25.12',label:'Manufacture of doors and windows of metal' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'25.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'25.11',label:'Manufacture of metal structures and parts of structures' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'25' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'25.9',label:'Manufacture of other fabricated metal products' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'25.9' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'25.91',label:'Manufacture of steel drums and similar containers' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'25.9' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'25.93',label:'Manufacture of wire products, chain and springs' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'25.9' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'25.99',label:'Manufacture of other fabricated metal products n.e.c.' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'25.9' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'25.92',label:'Manufacture of light metal packaging' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'25.9' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'25.94',label:'Manufacture of fasteners and screw machine products' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'25' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'25.4',label:'Manufacture of weapons and ammunition' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'25.4' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'25.40',label:'Manufacture of weapons and ammunition' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'25' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'25.3',label:'Manufacture of steam generators, except central heating hot water boilers' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'25.3' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'25.30',label:'Manufacture of steam generators, except central heating hot water boilers' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'C' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'22',label:'Manufacture of rubber and plastic products' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'22' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'22.2',label:'Manufacture of plastics products' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'22.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'22.22',label:'Manufacture of plastic packing goods' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'22.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'22.21',label:'Manufacture of plastic plates, sheets, tubes and profiles' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'22.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'22.23',label:'Manufacture of builders� ware of plastic' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'22.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'22.29',label:'Manufacture of other plastic products' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'22' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'22.1',label:'Manufacture of rubber products' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'22.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'22.11',label:'Manufacture of rubber tyres and tubes; retreading and rebuilding of rubber tyres' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'22.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'22.19',label:'Manufacture of other rubber products' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'C' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'26',label:'Manufacture of computer, electronic and optical products' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'26' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'26.6',label:'Manufacture of irradiation, electromedical and electrotherapeutic equipment' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'26.6' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'26.60',label:'Manufacture of irradiation, electromedical and electrotherapeutic equipment' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'26' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'26.3',label:'Manufacture of communication equipment' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'26.3' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'26.30',label:'Manufacture of communication equipment' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'26.30' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'26.30/9',label:'Manufacture of communication equipment (other than telegraph and telephone apparatus and equipment)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'26.30' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'26.30/1',label:'Manufacture of telegraph and telephone apparatus and equipment' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'26' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'26.5',label:'Manufacture of instruments and appliances for measuring, testing and navigation; watches and clocks' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'26.5' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'26.52',label:'Manufacture of watches and clocks' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'26.5' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'26.51',label:'Manufacture of instruments and appliances for measuring, testing and navigation' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'26.51' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'26.51/1',label:'Manufacture of electronic instruments and appliances for measuring, testing, and navigation, except industrial process control equipment' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'26.51' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'26.51/2',label:'Manufacture of electronic industrial process control equipment' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'26.51' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'26.51/4',label:'Manufacture of non-electronic industrial process control equipment' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'26.51' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'26.51/3',label:'Manufacture of non-electronic instruments and appliances for measuring, testing and navigation, except industrial process control equipment' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'26' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'26.2',label:'Manufacture of computers and peripheral equipment' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'26.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'26.20',label:'Manufacture of computers and peripheral equipment' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'26' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'26.7',label:'Manufacture of optical instruments and photographic equipment' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'26.7' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'26.70',label:'Manufacture of optical instruments and photographic equipment' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'26.70' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'26.70/1',label:'Manufacture of optical precision instruments' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'26.70' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'26.70/2',label:'Manufacture of photographic and cinematographic equipment' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'26' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'26.8',label:'Manufacture of magnetic and optical media' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'26.8' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'26.80',label:'Manufacture of magnetic and optical media' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'26' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'26.4',label:'Manufacture of consumer electronics' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'26.4' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'26.40',label:'Manufacture of consumer electronics' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'26' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'26.1',label:'Manufacture of electronic components and boards' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'26.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'26.11',label:'Manufacture of electronic components' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'26.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'26.12',label:'Manufacture of loaded electronic boards' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'C' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'28',label:'Manufacture of machinery and equipment n.e.c.' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'28' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'28.4',label:'Manufacture of metal forming machinery and machine tools' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'28.4' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'28.41',label:'Manufacture of metal forming machinery' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'28.4' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'28.49',label:'Manufacture of other machine tools' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'28' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'28.1',label:'Manufacture of general-purpose machinery' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'28.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'28.11',label:'Manufacture of engines and turbines, except aircraft, vehicle and cycle engines' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'28.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'28.13',label:'Manufacture of other pumps and compressors' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'28.13' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'28.13/1',label:'Manufacture of pumps' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'28.13' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'28.13/2',label:'Manufacture of compressors' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'28.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'28.15',label:'Manufacture of bearings, gears, gearing and driving elements' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'28.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'28.14',label:'Manufacture of other taps and valves' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'28.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'28.12',label:'Manufacture of fluid power equipment' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'28' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'28.2',label:'Manufacture of other general-purpose machinery' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'28.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'28.22',label:'Manufacture of lifting and handling equipment' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'28.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'28.21',label:'Manufacture of ovens, furnaces and furnace burners' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'28.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'28.29',label:'Manufacture of other general-purpose machinery n.e.c.' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'28.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'28.25',label:'Manufacture of non-domestic cooling and ventilation equipment' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'28.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'28.23',label:'Manufacture of office machinery and equipment (except computers and peripheral equipment)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'28.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'28.24',label:'Manufacture of power-driven hand tools' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'28' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'28.3',label:'Manufacture of agricultural and forestry machinery' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'28.3' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'28.30',label:'Manufacture of agricultural and forestry machinery' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'28.30' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'28.30/1',label:'Manufacture of agricultural tractors' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'28.30' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'28.30/2',label:'Manufacture of agricultural and forestry machinery (other than agricultural tractors)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'28' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'28.9',label:'Manufacture of other special-purpose machinery' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'28.9' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'28.92',label:'Manufacture of machinery for mining, quarrying and construction' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'28.92' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'28.92/2',label:'Manufacture of earthmoving equipment' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'28.92' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'28.92/3',label:'Manufacture of equipment for concrete crushing and screening roadworks' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'28.92' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'28.92/1',label:'Manufacture of machinery for mining' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'28.9' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'28.93',label:'Manufacture of machinery for food, beverage and tobacco processing' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'28.9' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'28.99',label:'Manufacture of other special-purpose machinery n.e.c.' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'28.9' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'28.91',label:'Manufacture of machinery for metallurgy' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'28.9' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'28.95',label:'Manufacture of machinery for paper and paperboard production' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'28.9' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'28.96',label:'Manufacture of plastics and rubber machinery' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'28.9' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'28.94',label:'Manufacture of machinery for textile, apparel and leather production' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'C' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'23',label:'Manufacture of other non-metallic mineral products' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'23' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'23.6',label:'Manufacture of articles of concrete, cement and plaster' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'23.6' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'23.64',label:'Manufacture of mortars' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'23.6' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'23.63',label:'Manufacture of ready-mixed concrete' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'23.6' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'23.62',label:'Manufacture of plaster products for construction purposes' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'23.6' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'23.61',label:'Manufacture of concrete products for construction purposes' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'23.6' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'23.69',label:'Manufacture of other articles of concrete, plaster and cement' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'23.6' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'23.65',label:'Manufacture of fibre cement' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'23' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'23.9',label:'Manufacture of abrasive products and non-metallic mineral products n.e.c.' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'23.9' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'23.99',label:'Manufacture of other non-metallic mineral products n.e.c.' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'23.9' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'23.91',label:'Production of abrasive products' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'23' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'23.4',label:'Manufacture of other porcelain and ceramic products' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'23.4' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'23.49',label:'Manufacture of other ceramic products' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'23.4' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'23.41',label:'Manufacture of ceramic household and ornamental articles' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'23.4' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'23.44',label:'Manufacture of other technical ceramic products' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'23.4' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'23.42',label:'Manufacture of ceramic sanitary fixtures' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'23.4' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'23.43',label:'Manufacture of ceramic insulators and insulating fittings' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'23' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'23.5',label:'Manufacture of cement, lime and plaster' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'23.5' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'23.51',label:'Manufacture of cement' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'23.5' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'23.52',label:'Manufacture of lime and plaster' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'23' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'23.1',label:'Manufacture of glass and glass products' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'23.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'23.13',label:'Manufacture of hollow glass' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'23.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'23.11',label:'Manufacture of flat glass' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'23.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'23.14',label:'Manufacture of glass fibres' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'23.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'23.12',label:'Shaping and processing of flat glass' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'23.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'23.19',label:'Manufacture and processing of other glass, including technical glassware' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'23' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'23.2',label:'Manufacture of refractory products' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'23.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'23.20',label:'Manufacture of refractory products' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'23' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'23.7',label:'Cutting, shaping and finishing of stone' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'23.7' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'23.70',label:'Cutting, shaping and finishing of stone' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'23' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'23.3',label:'Manufacture of clay building materials' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'23.3' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'23.31',label:'Manufacture of ceramic tiles and flags' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'23.3' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'23.32',label:'Manufacture of bricks, tiles and construction products, in baked clay' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'C' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'27',label:'Manufacture of electrical equipment' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'27' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'27.3',label:'Manufacture of wiring and wiring devices' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'27.3' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'27.31',label:'Manufacture of fibre optic cables' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'27.3' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'27.33',label:'Manufacture of wiring devices' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'27.3' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'27.32',label:'Manufacture of other electronic and electric wires and cables' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'27' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'27.1',label:'Manufacture of electric motors, generators, transformers and electricity distribution and control apparatus' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'27.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'27.11',label:'Manufacture of electric motors, generators and transformers' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'27.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'27.12',label:'Manufacture of electricity distribution and control apparatus' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'27' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'27.4',label:'Manufacture of electric lighting equipment' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'27.4' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'27.40',label:'Manufacture of electric lighting equipment' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'27' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'27.5',label:'Manufacture of domestic appliances' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'27.5' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'27.52',label:'Manufacture of non-electric domestic appliances' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'27.5' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'27.51',label:'Manufacture of electric domestic appliances' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'27' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'27.9',label:'Manufacture of other electrical equipment' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'27.9' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'27.90',label:'Manufacture of other electrical equipment' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'27' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'27.2',label:'Manufacture of batteries and accumulators' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'27.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'27.20',label:'Manufacture of batteries and accumulators' })-[:hasParent]->(parent);
CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'G',label:'WHOLESALE AND RETAIL TRADE; REPAIR OF MOTOR VEHICLES AND MOTORCYCLES' });
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'G' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47',label:'Retail trade, except of motor vehicles and motorcycles' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.5',label:'Retail sale of other household equipment in specialised stores' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.5' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.54',label:'Retail sale of electrical household appliances in specialised stores' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.5' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.52',label:'Retail sale of hardware, paints and glass in specialised stores' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.5' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.51',label:'Retail sale of textiles in specialised stores' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.5' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.53',label:'Retail sale of carpets, rugs, wall and floor coverings in specialised stores' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.5' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.59',label:'Retail sale of furniture, lighting equipment and other household articles in specialised stores' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.59' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.59/1',label:'Retail sale of musical instruments and scores in specialised stores' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.59' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.59/9',label:'Retail sale of furniture, lighting equipment and other household articles (other than musical instruments) n.e.c., in specialised stores' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.2',label:'Retail sale of food, beverages and tobacco in specialised stores' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.25',label:'Retail sale of beverages in specialised stores' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.22',label:'Retail sale of meat and meat products in specialised stores' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.29',label:'Other retail sale of food in specialised stores' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.24',label:'Retail sale of bread, cakes, flour confectionery and sugar confectionery in specialised stores' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.23',label:'Retail sale of fish, crustaceans and molluscs in specialised stores' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.21',label:'Retail sale of fruit and vegetables in specialised stores' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.26',label:'Retail sale of tobacco products in specialised stores' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.1',label:'Retail sale in non-specialised stores' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.19',label:'Other retail sale in non-specialised stores' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.11',label:'Retail sale in non-specialised stores with food, beverages or tobacco predominating' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.4',label:'Retail sale of information and communication equipment in specialised stores' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.4' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.41',label:'Retail sale of computers, peripheral units and software in specialised stores' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.4' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.43',label:'Retail sale of audio and video equipment in specialised stores' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.4' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.42',label:'Retail sale of telecommunications equipment in specialised stores' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.42' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.42/9',label:'Retail sale of telecommunications equipment (other than mobile telephones) n.e.c., in specialised stores' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.42' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.42/1',label:'Retail sale of mobile telephones in specialised stores' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.7',label:'Retail sale of other goods in specialised stores' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.7' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.79',label:'Retail sale of second-hand goods in stores' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.79' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.79/9',label:'Retail sale of second-hand goods (other than antiques and antique books) in stores' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.79' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.79/1',label:'Retail sale of antiques including antique books, in stores' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.7' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.77',label:'Retail sale of watches and jewellery in specialised stores' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.7' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.74',label:'Retail sale of medical and orthopaedic goods in specialised stores' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.74' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.74/1',label:'Retail sale of hearing aids in specialised stores' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.74' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.74/9',label:'Retail sale of medical and orthopaedic goods (other than hearing aids) n.e.c., in specialised stores' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.7' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.72',label:'Retail sale of footwear and leather goods in specialised stores' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.72' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.72/2',label:'Retail sale of leather goods in specialised stores' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.72' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.72/1',label:'Retail sale of footwear in specialised stores' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.7' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.75',label:'Retail sale of cosmetic and toilet articles in specialised stores' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.7' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.78',label:'Other retail sale of new goods in specialised stores' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.78' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.78/1',label:'Retail sale in commercial art galleries' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.78' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.78/2',label:'Retail sale by opticians' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.78' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.78/9',label:'Other retail sale of new goods in specialised stores (other than by opticians or commercial art galleries), n.e.c' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.7' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.71',label:'Retail sale of clothing in specialised stores' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.7' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.73',label:'Dispensing chemist in specialised stores' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.7' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.76',label:'Retail sale of flowers, plants, seeds, fertilisers, pet animals and pet food in specialised stores' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.6',label:'Retail sale of cultural and recreation goods in specialised stores' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.6' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.62',label:'Retail sale of newspapers and stationery in specialised stores' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.6' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.63',label:'Retail sale of music and video recordings in specialised stores' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.6' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.61',label:'Retail sale of books in specialised stores' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.6' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.65',label:'Retail sale of games and toys in specialised stores' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.6' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.64',label:'Retail sale of sporting equipment in specialised stores' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.8',label:'Retail sale via stalls and markets' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.8' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.82',label:'Retail sale via stalls and markets of textiles, clothing and footwear' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.8' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.89',label:'Retail sale via stalls and markets of other goods' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.8' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.81',label:'Retail sale via stalls and markets of food, beverages and tobacco products' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.9',label:'Retail trade not in stores, stalls or markets' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.9' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.91',label:'Retail sale via mail order houses or via Internet' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.9' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.99',label:'Other retail sale not in stores, stalls or markets' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.3',label:'Retail sale of automotive fuel in specialised stores' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.3' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'47.30',label:'Retail sale of automotive fuel in specialised stores' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'G' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46',label:'Wholesale trade, except of motor vehicles and motorcycles' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.1',label:'Wholesale on a fee or contract basis' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.12',label:'Agents involved in the sale of fuels, ores, metals and industrial chemicals' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.14',label:'Agents involved in the sale of machinery, industrial equipment, ships and aircraft' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.17',label:'Agents involved in the sale of food, beverages and tobacco' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.15',label:'Agents involved in the sale of furniture, household goods, hardware and ironmongery' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.18',label:'Agents specialised in the sale of other particular products' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.13',label:'Agents involved in the sale of timber and building materials' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.16',label:'Agents involved in the sale of textiles, clothing, fur, footwear and leather goods' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.11',label:'Agents involved in the sale of agricultural raw materials, live animals, textile raw materials and semi-finished goods' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.19',label:'Agents involved in the sale of a variety of goods' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.2',label:'Wholesale of agricultural raw materials and live animals' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.21',label:'Wholesale of grain, unmanufactured tobacco, seeds and animal feeds' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.22',label:'Wholesale of flowers and plants' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.23',label:'Wholesale of live animals' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.24',label:'Wholesale of hides, skins and leather' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.7',label:'Other specialised wholesale' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.7' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.76',label:'Wholesale of other intermediate products' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.7' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.77',label:'Wholesale of waste and scrap' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.7' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.74',label:'Wholesale of hardware, plumbing and heating equipment and supplies' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.7' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.73',label:'Wholesale of wood, construction materials and sanitary equipment' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.7' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.71',label:'Wholesale of solid, liquid and gaseous fuels and related products' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.71' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.71/1',label:'Wholesale of petroleum and petroleum products' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.71' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.71/9',label:'Wholesale of fuels and related products (other than petroleum and petroleum products)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.7' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.75',label:'Wholesale of chemical products' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.7' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.72',label:'Wholesale of metals and metal ores' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.3',label:'Wholesale of food, beverages and tobacco' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.3' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.32',label:'Wholesale of meat and meat products' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.3' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.35',label:'Wholesale of tobacco products' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.3' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.31',label:'Wholesale of fruit and vegetables' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.3' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.34',label:'Wholesale of beverages' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.34' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.34/2',label:'Wholesale of wine, beer, spirits and other alcoholic beverages' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.34' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.34/1',label:'Wholesale of fruit and vegetable juices, mineral waters and soft drinks' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.3' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.39',label:'Non-specialised wholesale of food, beverages and tobacco' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.3' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.36',label:'Wholesale of sugar and chocolate and sugar confectionery' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.3' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.33',label:'Wholesale of dairy products, eggs and edible oils and fats' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.3' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.38',label:'Wholesale of other food, including fish, crustaceans and molluscs' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.3' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.37',label:'Wholesale of coffee, tea, cocoa and spices' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.9',label:'Non-specialised wholesale trade' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.9' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.90',label:'Non-specialised wholesale trade' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.6',label:'Wholesale of other machinery, equipment and supplies' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.6' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.64',label:'Wholesale of machinery for the textile industry and of sewing and knitting machines' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.6' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.63',label:'Wholesale of mining, construction and civil engineering machinery' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.6' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.62',label:'Wholesale of machine tools' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.6' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.61',label:'Wholesale of agricultural machinery, equipment and supplies' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.6' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.66',label:'Wholesale of other office machinery and equipment' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.6' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.69',label:'Wholesale of other machinery and equipment' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.6' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.65',label:'Wholesale of office furniture' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.5',label:'Wholesale of information and communication equipment' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.5' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.51',label:'Wholesale of computers, computer peripheral equipment and software' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.5' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.52',label:'Wholesale of electronic and telecommunications equipment and parts' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.4',label:'Wholesale of household goods' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.4' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.43',label:'Wholesale of electrical household appliances' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.43' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.43/1',label:'Wholesale of gramophone records, audio tapes, compact discs and video tapes and of the equipment on which these are played' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.43' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.43/9',label:'Wholesale of radio and television goods and of electrical household appliances (other than of gramophone records, audio tapes, compact discs and video tapes and the equipment on which these are played) n.e.c.' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.4' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.41',label:'Wholesale of textiles' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.4' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.49',label:'Wholesale of other household goods' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.49' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.49/1',label:'Wholesale of musical instruments' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.49' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.49/9',label:'Wholesale of household goods (other than musical instruments) n.e.c.' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.4' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.47',label:'Wholesale of furniture, carpets and lighting equipment' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.4' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.45',label:'Wholesale of perfume and cosmetics' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.4' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.46',label:'Wholesale of pharmaceutical goods' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.4' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.42',label:'Wholesale of clothing and footwear' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.4' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.48',label:'Wholesale of watches and jewellery' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.4' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'46.44',label:'Wholesale of china and glassware and cleaning materials' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'G' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'45',label:'Wholesale and retail trade and repair of motor vehicles and motorcycles' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'45' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'45.1',label:'Sale of motor vehicles' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'45.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'45.11',label:'Sale of cars and light motor vehicles' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'45.11' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'45.11/1',label:'Sale of new cars and light motor vehicles' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'45.11' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'45.11/2',label:'Sale of used cars and light motor vehicles' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'45.1' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'45.19',label:'Sale of other motor vehicles' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'45' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'45.4',label:'Sale, maintenance and repair of motorcycles and related parts and accessories' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'45.4' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'45.40',label:'Sale, maintenance and repair of motorcycles and related parts and accessories' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'45' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'45.2',label:'Maintenance and repair of motor vehicles' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'45.2' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'45.20',label:'Maintenance and repair of motor vehicles' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'45' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'45.3',label:'Sale of motor vehicle parts and accessories' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'45.3' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'45.32',label:'Retail trade of motor vehicle parts and accessories' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'45.3' })
WITH parent CREATE (node:`_generic_hierarchy_node_f012ff16-4616-43c3-be3c-c29b27d4bb88` { code:'45.31',label:'Wholesale trade of motor vehicle parts and accessories' })-[:hasParent]->(parent);

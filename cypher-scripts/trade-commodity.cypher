CREATE CONSTRAINT ON (n:`_generic_hierarchy_node_trade-commodity`) ASSERT n.code IS UNIQUE;
CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'T',label:'Total' });
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'T' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'7',label:'Machinery & transport equipment' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'7' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'75C',label:'Office machinery (consumer)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'7' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'7MI',label:'Mechanical machinery (intermedia' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'7' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'76C',label:'Telecoms & sound equipment (cons' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'7' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'7MC',label:'Mechanical machinery (consumer)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'7' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'73K',label:'Metal working machinery (capital' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'7' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'71MI',label:'Mechanical power generators (int' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'7' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'72K',label:'Specialised machinery (capital)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'7' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'78K',label:'Road vehicles other than cars (c' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'7' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'7EC',label:'Electrical machinery (consumer)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'7' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'75K',label:'Office machinery (capital)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'7' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'78',label:'Road vehicles' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'7' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'7MK',label:'Mechanical machinery (capital)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'7' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'74C',label:'General industrial machinery (co' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'7' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'792-3',label:'Ships & aircraft' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'7' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'74K',label:'General industrial machinery (ca' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'7' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'791K',label:'Railway equipment (capital)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'7' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'7E',label:'Electrical machinery' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'7' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'7EI',label:'Electrical machinery (intermedia' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'7' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'73I',label:'Metal working machinery (interme' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'7' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'72I',label:'Specialised machinery (intermedi' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'7' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'78I',label:'Road vehicles other than cars (i' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'7' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'71EK',label:'Electric motors (capital)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'7' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'71MC',label:'Mechanical power generators (con' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'7' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'71MK',label:'Mechanical power generators (cap' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'7' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'77K',label:'Miscellaneous electrical goods (' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'7' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'77C',label:'Miscellaneous electrical goods (' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'7' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'79',label:'Other transport equipment' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'7' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'791I',label:'Road vehicles other than cars (i' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'7' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'75I',label:'Office machinery (intermediate)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'7' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'792',label:'Aircraft' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'7' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'74I',label:'General industrial machinery (in' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'7' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'7EK',label:'Electrical machinery (intermedia' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'7' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'793',label:'Ships' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'7' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'76I',label:'Telecoms & sound equipment (inte' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'7' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'78C',label:'Road vehicles other than cars (c' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'7' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'78M',label:'Cars' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'7' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'7M',label:'Mechanical machinery' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'7' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'77I',label:'Miscellaneous electrical goods (' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'7' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'72C',label:'Specialised machinery (consumer)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'7' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'71EI',label:'Electric motors (intermediate)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'7' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'76K',label:'Telecoms & sound equipment (capi' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'T' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'6',label:'Material manufactures' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'6' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'64',label:'Paper & paperboard' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'6' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'68',label:'Non-ferrous metals' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'6' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'62',label:'Rubber manufactures' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'6' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'61',label:'Leather manufactures' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'6' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'67',label:'Iron & steel' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'6' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'69',label:'Miscellaneous metal manufactures' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'6' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'63',label:'Wood & cork manufactures' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'6' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'65',label:'Textile fabrics' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'6' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'66',label:'Mineral manufactures' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'T' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'2',label:'Crude materials' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'2' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'24',label:'Wood & cork' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'2' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'25',label:'Pulp & waste paper' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'2' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'23',label:'Crude rubber' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'2' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'22',label:'Oil-seeds & oleaginous fruits' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'2' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'26',label:'Textile fibres' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'2' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'21',label:'Hides, skins & furskins' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'2' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'28',label:'Metal ores & scrap' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'2' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'27',label:'Crude minerals & fertilisers' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'2' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'29',label:'Other crude animal & vegetable m' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'T' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'9',label:'Unspecified goods' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'T' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'0',label:'Food & live animals' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'0' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'04',label:'Cereals' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'0' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'09',label:'Miscellaneous foods' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'0' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'02',label:'Dairy products & eggs' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'0' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'07',label:'Coffee, tea, cocoa etc' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'0' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'01',label:'Meat & meat preparations' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'0' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'06',label:'Sugar' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'0' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'00',label:'Live animals' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'0' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'03',label:'Fish & shellfish' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'0' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'05',label:'Vegetables & fruit' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'0' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'08',label:'Animal feeding stuffs' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'T' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'5',label:'Chemicals' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'5' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'55',label:'Toilet & cleansing preparations' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'5' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'54',label:'Medicinal & pharmaceutical produ' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'5' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'57',label:'Plastics in primary forms' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'5' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'52',label:'Inorganic chemicals' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'5' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'59',label:'Other chemicals' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'5' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'56',label:'Processed fertilisers' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'5' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'53',label:'Dyeing, tanning & colouring mate' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'5' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'51',label:'Organic chemicals' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'5' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'58',label:'Plastics in non-primary forms' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'T' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'3',label:'Fuels' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'3' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'35',label:'Electricity' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'3' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'33R',label:'Refined oil' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'3' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'32',label:'Coal, coke & briquettes' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'3' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'33O',label:'Crude oil' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'3' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'3OF',label:'Fuels other than oil' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'3' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'34',label:'Gas' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'3' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'33',label:'Oil' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'T' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'8',label:'Miscellaneous manufactures' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'8' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'81I',label:'Plumbing, heating & lighting fix' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'8' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'89I',label:'Other manufactures (intermediate' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'8' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'8OC',label:'Other miscellaneous manufactures' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'8' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'897C',label:'Jewellery' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'8' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'82I',label:'Furniture (intermediate)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'8' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'88C',label:'Photographic & optical goods & c' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'8' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'87I',label:'Scientific instruments (intermed' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'8' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'8OK',label:'Other miscellaneous manufactures' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'8' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'82C',label:'Furniture (consumer)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'8' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'89OC',label:'Other manufactures (consumer)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'8' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'84',label:'Clothing' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'8' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'85',label:'Footwear' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'8' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'87C',label:'Scientific instruments (consumer' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'8' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'81C',label:'Plumbing, heating & lighting fix' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'8' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'8OI',label:'Other miscellaneous manufactures' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'8' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'82K',label:'Furniture (capital)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'8' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'83',label:'Travel goods, handbags etc' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'8' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'896',label:'Works of art' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'8' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'89K',label:'Other manufactures (capital)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'8' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'8O',label:'Other manufactures' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'8' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'87K',label:'Scientific instruments (capital)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'8' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'81K',label:'Plumbing, heating & lighting fix' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'8' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'88K',label:'Photographic & optical goods & c' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'8' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'88I',label:'Photographic & optical goods & c' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'T' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'4',label:'Animal & vegetable oils & fats' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'4' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'43',label:'Processed oils & fatss' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'4' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'41',label:'Animal oils & fats' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'4' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'42',label:'Vegetable oils & fats' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'T' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'1',label:'Beverages & tobacco' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'1' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'12',label:'Tobacco' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'1' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'11',label:'Beverages' })-[:hasParent]->(parent);

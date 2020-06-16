CREATE CONSTRAINT ON (n:`_generic_hierarchy_node_trade-commodity`) ASSERT n.code IS UNIQUE;
CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'T',label:'T - Total' });
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'T' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'1',label:'1 - Beverages & tobacco' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'1' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'11',label:'11 - Beverages' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'1' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'12',label:'12 - Tobacco' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'T' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'7',label:'7 - Machinery & transport equipment' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'7' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'7M',label:'7M - Mechanical machinery' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'7' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'78C',label:'78C - Road vehicles other than cars (consumer)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'7' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'75K',label:'75K - Office machinery (capital)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'7' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'75I',label:'75I - Office machinery (intermediate)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'7' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'76C',label:'76C - Telecoms & sound equipment (consumer)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'7' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'71EI',label:'71EI - Electric motors (intermediate)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'7' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'7MK',label:'7MK - Mechanical machinery (capital)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'7' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'77K',label:'77K - Miscellaneous electrical goods (capital)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'7' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'7MC',label:'7MC - Mechanical machinery (consumer)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'7' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'72K',label:'72K - Specialised machinery (capital)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'7' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'71MI',label:'71MI - Mechanical power generators (intermediate)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'7' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'76K',label:'76K - Telecoms & sound equipment (capital)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'7' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'7EC',label:'7EC - Electrical machinery (consumer)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'7' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'793',label:'793 - Ships' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'7' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'72C',label:'72C - Specialised machinery (consumer)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'7' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'74I',label:'74I - General industrial machinery (intermediate)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'7' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'78I',label:'78I - Road vehicles other than cars (intermediate)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'7' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'71MC',label:'71MC - Mechanical power generators (consumer)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'7' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'78',label:'78 - Road vehicles' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'7' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'71MK',label:'71MK - Mechanical power generators (capital)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'7' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'74K',label:'74K - General industrial machinery (capital)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'7' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'77C',label:'77C - Miscellaneous electrical goods (consumer)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'7' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'73K',label:'73K - Metal working machinery (capital)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'7' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'7MI',label:'7MI - Mechanical machinery (intermediate)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'7' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'71EK',label:'71EK - Electric motors (capital)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'7' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'73I',label:'73I - Metal working machinery (intermediate)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'7' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'78K',label:'78K - Road vehicles other than cars (capital)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'7' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'792-3',label:'792-3 - Ships & aircraft' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'7' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'72I',label:'72I - Specialised machinery (intermediate)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'7' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'7E',label:'7E - Electrical machinery' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'7' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'791I',label:'791I - Road vehicles other than cars (intermediate)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'7' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'77I',label:'77I - Miscellaneous electrical goods (intermediate)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'7' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'7EI',label:'7EI - Electrical machinery (intermediate)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'7' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'76I',label:'76I - Telecoms & sound equipment (intermediate)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'7' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'79',label:'79 - Other transport equipment' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'7' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'7EK',label:'7EK - Electrical machinery (intermediate)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'7' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'791K',label:'791K - Railway equipment (capital)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'7' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'792',label:'792 - Aircraft' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'7' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'74C',label:'74C - General industrial machinery (consumer)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'7' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'75C',label:'75C - Office machinery (consumer)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'7' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'78M',label:'78M - Cars' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'T' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'5',label:'5 - Chemicals' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'5' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'58',label:'58 - Plastics in non-primary forms' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'5' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'56',label:'56 - Processed fertilisers' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'5' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'51',label:'51 - Organic chemicals' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'5' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'54',label:'54 - Medicinal & pharmaceutical products' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'5' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'59',label:'59 - Other chemicals' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'5' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'55',label:'55 - Toilet & cleansing preparations' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'5' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'52',label:'52 - Inorganic chemicals' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'5' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'53',label:'53 - Dyeing, tanning & colouring materials' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'5' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'57',label:'57 - Plastics in primary forms' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'T' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'4',label:'4 - Animal & vegetable oils & fats' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'4' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'42',label:'42 - Vegetable oils & fats' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'4' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'43',label:'43 - Processed oils & fats' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'4' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'41',label:'41 - Animal oils & fats' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'T' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'6',label:'6 - Material manufactures' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'6' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'61',label:'61 - Leather manufactures' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'6' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'64',label:'64 - Paper & paperboard' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'6' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'68',label:'68 - Non-ferrous metals' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'6' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'66',label:'66 - Mineral manufactures' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'6' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'67',label:'67 - Iron & steel' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'6' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'69',label:'69 - Miscellaneous metal manufactures' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'6' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'65',label:'65 - Textile fabrics' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'6' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'63',label:'63 - Wood & cork manufactures' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'6' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'62',label:'62 - Rubber manufactures' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'T' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'8',label:'8 - Miscellaneous manufactures' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'8' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'87I',label:'87I - Scientific instruments (intermediate)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'8' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'89I',label:'89I - Other manufactures (intermediate)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'8' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'89OC',label:'89OC - Other manufactures (consumer)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'8' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'8O',label:'8O - Other manufactures' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'8' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'82K',label:'82K - Furniture (capital)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'8' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'85',label:'85 - Footwear' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'8' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'896',label:'896 - Works of art' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'8' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'88C',label:'88C - Photographic & optical goods & clocks (consumer)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'8' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'81K',label:'81K - Plumbing, heating & lighting fixtures (capital)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'8' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'8OI',label:'8OI - Other miscellaneous manufactures (intermediate)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'8' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'84',label:'84 - Clothing' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'8' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'897C',label:'897C - Jewellery' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'8' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'81I',label:'81I - Plumbing, heating & lighting fixtures (intermediate)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'8' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'8OK',label:'8OK - Other miscellaneous manufactures (capital)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'8' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'88I',label:'88I - Photographic & optical goods & clocks (intermediate)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'8' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'89K',label:'89K - Other manufactures (capital)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'8' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'87K',label:'87K - Scientific instruments (capital)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'8' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'81C',label:'81C - Plumbing, heating & lighting fixtures (consumer)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'8' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'82I',label:'82I - Furniture (intermediate)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'8' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'8OC',label:'8OC - Other miscellaneous manufactures (consumer)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'8' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'83',label:'83 - Travel goods, handbags etc' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'8' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'88K',label:'88K - Photographic & optical goods & clocks (capital)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'8' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'87C',label:'87C - Scientific instruments (consumer)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'8' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'82C',label:'82C - Furniture (consumer)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'T' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'9',label:'9 - Unspecified goods' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'T' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'2',label:'2 - Crude materials' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'2' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'23',label:'23 - Crude rubber' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'2' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'26',label:'26 - Textile fibres' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'2' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'22',label:'22 - Oil-seeds & oleaginous fruits' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'2' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'24',label:'24 - Wood & cork' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'2' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'21',label:'21 - Hides, skins & furskins' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'2' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'28',label:'28 - Metal ores & scrap' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'2' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'25',label:'25 - Pulp & waste paper' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'2' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'27',label:'27 - Crude minerals & fertilisers' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'2' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'29',label:'29 - Other crude animal & vegetable materials' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'T' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'3',label:'3 - Fuels' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'3' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'35',label:'35 - Electricity' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'3' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'34',label:'34 - Gas' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'3' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'3OF',label:'3OF - Fuels other than oil' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'3' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'33',label:'33 - Oil' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'3' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'33R',label:'33R - Refined oil' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'3' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'32',label:'32 - Coal, coke & briquettes' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_trade-commodity` { code:'3' })
WITH parent CREATE (node:`_generic_hierarchy_node_trade-commodity` { code:'33O',label:'33O - Crude oil' })-[:hasParent]->(parent);

CREATE CONSTRAINT ON (n:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078`) ASSERT n.code IS UNIQUE;
CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1A0',label:'CPI (overall index)' });
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1A0' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1T60000',label:'06 Health' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1T60000' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G60200',label:'06.2 Out-patient services' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G60200' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1S60202',label:'06.2.2 Dental services' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G60200' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1S60201',label:'06.2.1/3 Medical services, paramedical services' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1T60000' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G60100',label:'06.1 Medical products, appliances and equipment' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G60100' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1S60102',label:'06.1.2/3 Other medical and therapeutic equipment' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G60100' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1S60101',label:'06.1.1 Pharmaceutical products' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1T60000' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G60300',label:'06.3 Hospital services' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G60300' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1S60300',label:'06.3.0 Hospital Services' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1A0' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1T10000',label:'01 Food and non-alcoholic beverages' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1T10000' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G10200',label:'01.2 Non-alcoholic beverages' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G10200' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1S10201',label:'01.2.1 Coffee, tea and cocoa' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G10200' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1S10202',label:'01.2.2 Mineral waters, soft drinks and juices' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1T10000' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G10100',label:'01.1 Food' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G10100' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1S10103',label:'01.1.3 Fish' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G10100' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1S10106',label:'01.1.6 Fruit' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G10100' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1S10108',label:'01.1.8 Sugar, jam, syrups, chocolate and confectionery' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G10100' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1S10107',label:'01.1.7 Vegetables including potatoes and tubers' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G10100' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1S10109',label:'01.1.9 Food products (nec)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G10100' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1S10101',label:'01.1.1 Bread and cereals' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G10100' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1S10104',label:'01.1.4 Milk, cheese and eggs' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G10100' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1S10105',label:'01.1.5 Oils and fats' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G10100' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1S10102',label:'01.1.2 Meat' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1A0' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1T70000',label:'07 Transport' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1T70000' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G70100',label:'07.1 Purchase of vehicles' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G70100' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1S70102',label:'07.1.2/3 Motorcycles and bicycles' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G70100' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1S70191',label:'07.1.1b Second Hand Cars' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G70100' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1S70181',label:'07.1.1 New Cars' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1T70000' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G70300',label:'07.3 Transport services' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G70300' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1S70304',label:'07.3.4 Passenger transport by sea and inland waterway' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G70300' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1S70302',label:'07.3.2 Passenger transport by road' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G70300' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1S70303',label:'07.3.3 Passenger transport by air' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G70300' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1S70301',label:'07.3.1 Passenger transport by railway' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1T70000' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G70200',label:'07.2 Operation of personal transport equipment' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G70200' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1S70203',label:'07.2.3 Maintenance and repairs' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G70200' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1S70202',label:'07.2.2 Fuels and lubricants' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G70200' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1S70201',label:'07.2.1 Spare parts and accessories' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G70200' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1S70204',label:'07.2.4 Other services' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1A0' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1T30000',label:'03 Clothing and footwear' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1T30000' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G30100',label:'03.1 Clothing' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G30100' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1S30103',label:'03.1.3 Other clothing and clothing accessories' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G30100' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1S30104',label:'03.1.4 Cleaning, repair and hire of clothing' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G30100' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1S30102',label:'03.1.2 Garments' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1T30000' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G30200',label:'03.2 Footwear including repairs' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G30200' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1S30200',label:'03.2.0 Footwear including repairs' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1A0' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1T20000',label:'02 Alcoholic beverages and tobacco' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1T20000' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G20200',label:'02.2 Tobacco' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G20200' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1S20200',label:'02.2.0 Tobacco' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1T20000' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G20100',label:'02.1 Alcoholic beverages' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G20100' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1S20103',label:'02.1.3 Beer' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G20100' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1S20102',label:'02.1.2 Wine' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G20100' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1S20101',label:'02.1.1 Spirits' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1A0' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1T90000',label:'09 Recreation and culture' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1T90000' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G90500',label:'09.5 Books, newspapers and stationery' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G90500' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1S90501',label:'09.5.1 Books' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G90500' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1S90502',label:'09.5.2 Newspapers and periodicals' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G90500' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1S90503',label:'09.5.3/4 Misc. printed matter, stationery, drawing materials' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1T90000' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G90400',label:'09.4 Recreational and cultural services' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G90400' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1S90401',label:'09.4.1 Recreational and sporting services' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G90400' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1S90402',label:'09.4.2 Cultural services' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1T90000' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G90300',label:'09.3 Other recreational items, gardens and pets' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G90300' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1S90304',label:'09.3.4/5 Pets, related products and services' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G90300' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1S90303',label:'09.3.3 Gardens, plants and flowers' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G90300' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1S90302',label:'09.3.2 Equipment for sport and open-air recreation' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G90300' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1S90301',label:'09.3.1 Games, toys and hobbies' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1T90000' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G90100',label:'09.1 Audio-visual equipment and related products' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G90100' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1S90105',label:'09.1.5 Repair of audio-visual equipment , related products' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G90100' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1S90103',label:'09.1.3 Data processing equipment' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G90100' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1S90104',label:'09.1.4 Recording media' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G90100' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1S90101',label:'09.1.1 Reception and reproduction of sound and pictures' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G90100' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1S90102',label:'09.1.2 Photographic, cinematographic and optical equipment' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1T90000' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G90600',label:'09.6 Package holidays' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G90600' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1S90600',label:'09.6.0 Package Holidays' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1A0' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1T80000',label:'08 Communication' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1T80000' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G80100',label:'08.1 Postal services' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G80100' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1S80100',label:'08.1.0 Postal Services' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1T80000' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G80200',label:'08.2/3 Telephone and telefax equip' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1A0' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1T40000',label:'04 Housing, water, electricity, gas and other fuels' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1T40000' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G40500',label:'04.5 Electricity , gas and other fuels' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G40500' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1S40503',label:'04.5.3 Liquid fuels' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G40500' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1S40504',label:'04.5.4 Solid fuels' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G40500' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1S40502',label:'04.5.2 Gas' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G40500' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1S40501',label:'04.5.1 Electricity' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1T40000' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G40400',label:'04.4 Water supply and misc. services for the dwelling' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G40400' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1S40403',label:'04.4.3 Sewerage collection' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G40400' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1S40401',label:'04.4.1 Water supply' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1T40000' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G40100',label:'04.1 Actual rentals for housing' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G40100' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1S40100',label:'04.1.0 Actual rentals for housing' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1T40000' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G40300',label:'04.3 Regular maintenance and repair of the dwelling' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G40300' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1S40302',label:'04.3.2 Services for maintenance and repair' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G40300' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1S40301',label:'04.3.1 Materials for maintenance and repair' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1A0' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1T110000',label:'11 Restaurants and hotels' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1T110000' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G110200',label:'11.2 Accommodation services' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G110200' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1S110200',label:'11.2.0 Accommodation Services' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1T110000' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G110100',label:'11.1 Catering services' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G110100' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1S110101',label:'11.1.1 Restaurants, cafes' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G110100' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1S110102',label:'11.1.2 Canteens' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1A0' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1T120000',label:'12 Miscellaneous goods and services' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1T120000' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G120300',label:'12.3 Personal effects (nec)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G120300' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1S120301',label:'12.3.1 Jewellery, clocks and watches' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G120300' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1S120302',label:'12.3.2 Other personal effects' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1T120000' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G120500',label:'12.5 Insurance' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G120500' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1S120503',label:'12.5.3 Health insurance' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G120500' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1S120504',label:'12.5.4 Transport insurance' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G120500' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1S120502',label:'12.5.2 House contents insurance' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1T120000' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G120600',label:'12.6 Financial services (nec)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G120600' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1S120602',label:'12.6.2 Other financial services (nec)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1T120000' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G120700',label:'12.7 Other services (nec)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G120700' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1S120700',label:'12.7.0 Other Services Not Elsewhere covered' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1T120000' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G120100',label:'12.1 Personal care' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G120100' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1S120102',label:'12.1.2/3 Appliances and products for personal care' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G120100' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1S120101',label:'12.1.1 Hairdressing and personal grooming establishments' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1T120000' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G120400',label:'12.4 Social protection' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G120400' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1S120400',label:'12.4.0 Social Protection' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1A0' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1T50000',label:'05 Furniture, household equipment and maintenance' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1T50000' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G50500',label:'05.5 Tools and equipment for house and garden' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G50500' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1S50500',label:'05.5.0 Tools and equipment for House and Garden' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1T50000' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G50300',label:'05.3 Household appliances, fitting and repairs' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G50300' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1S50301',label:'05.3.1/2 Major appliances and small electric goods' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G50300' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1S50303',label:'05.3.3 Repair of household appliances' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1T50000' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G50200',label:'05.2 Household textiles' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G50200' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1S50200',label:'05.2.0 Household Textiles' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1T50000' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G50100',label:'05.1 Furniture, furnishings and carpets' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G50100' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1S50102',label:'05.1.2 Carpets and other floor coverings' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G50100' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1S50101',label:'05.1.1 Furniture and furnishings' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1T50000' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G50600',label:'05.6 Goods and services for routine maintenance' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G50600' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1S50602',label:'05.6.2 Domestic services and household services' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G50600' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1S50601',label:'05.6.1 Non-durable household goods' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1T50000' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G50400',label:'05.4 Glassware, tableware and household utensils' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G50400' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1S50400',label:'05.4.0 Glassware, Tableware and Household Utensils' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1A0' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1T100000',label:'10 Education' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1T100000' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G100000',label:'10.0 Education' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1G100000' })
WITH parent CREATE (node:`_generic_hierarchy_node_e44de4c4-d39e-4e2f-942b-3ca10584d078` { code:'cpi1dim1S100000',label:'10.0.0 Education' })-[:hasParent]->(parent);

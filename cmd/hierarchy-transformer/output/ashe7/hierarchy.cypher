CREATE CONSTRAINT ON (n:`_generic_hierarchy_node_Geography`) ASSERT n.code IS UNIQUE;
CREATE (node:`_generic_hierarchy_node_Geography` { code:'K02000001',label:'United Kingdom' });
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'K02000001' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'N92000002',label:'Northern Ireland' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'K02000001' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'K03000001',label:'Great Britain' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'K03000001' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'K04000001',label:'England and Wales' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'K04000001' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E92000001',label:'England' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E92000001' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E12000007',label:'London' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E12000007' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E13000002',label:'Outer London' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E13000002' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E09000008',label:'Croydon' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E13000002' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E09000009',label:'Ealing' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E13000002' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E09000029',label:'Sutton' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E13000002' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E09000026',label:'Redbridge' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E13000002' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E09000002',label:'Barking and Dagenham' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E13000002' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E09000018',label:'Hounslow' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E13000002' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E09000005',label:'Brent' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E13000002' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E09000015',label:'Harrow' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E13000002' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E09000004',label:'Bexley' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E13000002' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E09000027',label:'Richmond upon Thames' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E13000002' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E09000021',label:'Kingston upon Thames' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E13000002' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E09000024',label:'Merton' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E13000002' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E09000031',label:'Waltham Forest' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E13000002' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E09000017',label:'Hillingdon' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E13000002' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E09000016',label:'Havering' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E13000002' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E09000003',label:'Barnet' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E13000002' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E09000010',label:'Enfield' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E13000002' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E09000006',label:'Bromley' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E13000002' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E09000011',label:'Greenwich' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E12000007' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E13000001',label:'Inner London' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E13000001' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E09000030',label:'Tower Hamlets' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E13000001' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E09000025',label:'Newham' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E13000001' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E09000001',label:'City of London' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E13000001' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E09000022',label:'Lambeth' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E13000001' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E09000007',label:'Camden' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E13000001' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E09000019',label:'Islington' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E13000001' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E09000032',label:'Wandsworth' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E13000001' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E09000013',label:'Hammersmith and Fulham' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E13000001' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E09000023',label:'Lewisham' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E13000001' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E09000014',label:'Haringey' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E13000001' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E09000012',label:'Hackney' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E13000001' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E09000033',label:'Westminster' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E13000001' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E09000028',label:'Southwark' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E13000001' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E09000020',label:'Kensington and Chelsea' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E92000001' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E12000003',label:'Yorkshire and The Humber' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E12000003' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E06000010',label:'Kingston upon Hull, City of' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E12000003' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E06000011',label:'East Riding of Yorkshire' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E12000003' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E10000023',label:'North Yorkshire' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000023' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000165',label:'Harrogate' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000023' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000163',label:'Craven' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000023' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000169',label:'Selby' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000023' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000168',label:'Scarborough' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000023' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000167',label:'Ryedale' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000023' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000166',label:'Richmondshire' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000023' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000164',label:'Hambleton' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E12000003' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E06000012',label:'North East Lincolnshire' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E12000003' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E11000003',label:'South Yorkshire' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E11000003' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E08000016',label:'Barnsley' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E11000003' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E08000019',label:'Sheffield' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E11000003' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E08000017',label:'Doncaster' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E11000003' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E08000018',label:'Rotherham' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E12000003' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E06000014',label:'York' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E12000003' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E11000006',label:'West Yorkshire' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E11000006' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E08000032',label:'Bradford' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E11000006' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E08000036',label:'Wakefield' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E11000006' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E08000033',label:'Calderdale' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E11000006' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E08000035',label:'Leeds' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E11000006' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E08000034',label:'Kirklees' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E12000003' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E06000013',label:'North Lincolnshire' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E92000001' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E12000002',label:'North West' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E12000002' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E10000006',label:'Cumbria' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000006' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000030',label:'Eden' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000006' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000027',label:'Barrow-in-Furness' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000006' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000026',label:'Allerdale' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000006' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000031',label:'South Lakeland' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000006' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000028',label:'Carlisle' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000006' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000029',label:'Copeland' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E12000002' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E10000017',label:'Lancashire' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000017' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000119',label:'Fylde' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000017' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000121',label:'Lancaster' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000017' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000128',label:'Wyre' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000017' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000118',label:'Chorley' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000017' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000127',label:'West Lancashire' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000017' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000120',label:'Hyndburn' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000017' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000125',label:'Rossendale' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000017' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000126',label:'South Ribble' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000017' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000117',label:'Burnley' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000017' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000124',label:'Ribble Valley' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000017' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000123',label:'Preston' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000017' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000122',label:'Pendle' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E12000002' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E06000009',label:'Blackpool' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E12000002' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E11000001',label:'Greater Manchester' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E11000001' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E08000010',label:'Wigan' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E11000001' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E08000007',label:'Stockport' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E11000001' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E08000003',label:'Manchester' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E11000001' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E08000004',label:'Oldham' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E11000001' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E08000008',label:'Tameside' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E11000001' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E08000006',label:'Salford' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E11000001' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E08000009',label:'Trafford' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E11000001' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E08000002',label:'Bury' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E11000001' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E08000001',label:'Bolton' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E11000001' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E08000005',label:'Rochdale' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E12000002' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E06000006',label:'Halton' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E12000002' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E06000049',label:'Cheshire East' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E12000002' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E06000008',label:'Blackburn with Darwen' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E12000002' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E06000050',label:'Cheshire West and Chester' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E12000002' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E06000007',label:'Warrington' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E12000002' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E11000002',label:'Merseyside' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E11000002' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E08000015',label:'Wirral' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E11000002' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E08000013',label:'St. Helens' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E11000002' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E08000011',label:'Knowsley' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E11000002' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E08000012',label:'Liverpool' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E11000002' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E08000014',label:'Sefton' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E92000001' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E12000004',label:'East Midlands' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E12000004' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E06000018',label:'Nottingham' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E12000004' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E06000015',label:'Derby' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E12000004' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E06000017',label:'Rutland' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E12000004' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E10000007',label:'Derbyshire' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000007' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000039',label:'South Derbyshire' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000007' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000033',label:'Bolsover' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000007' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000035',label:'Derbyshire Dales' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000007' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000036',label:'Erewash' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000007' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000032',label:'Amber Valley' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000007' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000037',label:'High Peak' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000007' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000038',label:'North East Derbyshire' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000007' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000034',label:'Chesterfield' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E12000004' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E06000016',label:'Leicester' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E12000004' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E10000021',label:'Northamptonshire' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000021' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000156',label:'Wellingborough' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000021' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000155',label:'South Northamptonshire' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000021' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000152',label:'East Northamptonshire' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000021' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000150',label:'Corby' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000021' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000154',label:'Northampton' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000021' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000151',label:'Daventry' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000021' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000153',label:'Kettering' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E12000004' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E10000024',label:'Nottinghamshire' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000024' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000170',label:'Ashfield' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000024' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000173',label:'Gedling' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000024' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000176',label:'Rushcliffe' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000024' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000171',label:'Bassetlaw' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000024' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000174',label:'Mansfield' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000024' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000175',label:'Newark and Sherwood' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000024' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000172',label:'Broxtowe' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E12000004' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E10000018',label:'Leicestershire' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000018' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000134',label:'North West Leicestershire' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000018' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000129',label:'Blaby' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000018' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000130',label:'Charnwood' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000018' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000133',label:'Melton' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000018' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000131',label:'Harborough' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000018' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000132',label:'Hinckley and Bosworth' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000018' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000135',label:'Oadby and Wigston' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E12000004' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E10000019',label:'Lincolnshire' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000019' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000139',label:'North Kesteven' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000019' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000140',label:'South Holland' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000019' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000136',label:'Boston' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000019' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000138',label:'Lincoln' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000019' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000137',label:'East Lindsey' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000019' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000142',label:'West Lindsey' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000019' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000141',label:'South Kesteven' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E92000001' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E12000009',label:'South West' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E12000009' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E06000054',label:'Wiltshire' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E12000009' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E06000022',label:'Bath and North East Somerset' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E12000009' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E10000009',label:'Dorset' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000009' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000048',label:'Christchurch' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000009' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000052',label:'West Dorset' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000009' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000049',label:'East Dorset' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000009' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000050',label:'North Dorset' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000009' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000053',label:'Weymouth and Portland' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000009' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000051',label:'Purbeck' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E12000009' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E06000023',label:'Bristol, City of' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E12000009' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E06000030',label:'Swindon' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E12000009' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E06000024',label:'North Somerset' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E12000009' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E06000026',label:'Plymouth' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E12000009' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E06000029',label:'Poole' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E12000009' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E10000027',label:'Somerset' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000027' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000187',label:'Mendip' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000027' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000189',label:'South Somerset' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000027' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000191',label:'West Somerset' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000027' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000188',label:'Sedgemoor' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000027' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000190',label:'Taunton Deane' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E12000009' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E06000053',label:'Isles of Scilly' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E12000009' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E06000028',label:'Bournemouth' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E12000009' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E10000013',label:'Gloucestershire' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000013' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000082',label:'Stroud' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000013' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000081',label:'Gloucester' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000013' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000080',label:'Forest of Dean' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000013' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000083',label:'Tewkesbury' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000013' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000078',label:'Cheltenham' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000013' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000079',label:'Cotswold' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E12000009' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E06000027',label:'Torbay' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E12000009' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E10000008',label:'Devon' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000008' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000046',label:'Torridge' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000008' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000047',label:'West Devon' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000008' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000040',label:'East Devon' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000008' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000045',label:'Teignbridge' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000008' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000044',label:'South Hams' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000008' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000043',label:'North Devon' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000008' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000041',label:'Exeter' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000008' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000042',label:'Mid Devon' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E12000009' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E06000052',label:'Cornwall' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E12000009' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E06000025',label:'South Gloucestershire' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E92000001' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E12000001',label:'North East' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E12000001' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E06000004',label:'Stockton-on-Tees' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E12000001' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E06000001',label:'Hartlepool' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E12000001' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E06000005',label:'Darlington' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E12000001' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E11000007',label:'Tyne and Wear' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E11000007' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E08000021',label:'Newcastle upon Tyne' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E11000007' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E08000024',label:'Sunderland' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E11000007' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E08000037',label:'Gateshead' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E11000007' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E08000022',label:'North Tyneside' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E11000007' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E08000023',label:'South Tyneside' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E12000001' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E06000002',label:'Middlesbrough' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E12000001' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E06000047',label:'County Durham' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E12000001' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E06000057',label:'Northumberland' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E12000001' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E06000003',label:'Redcar and Cleveland' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E92000001' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E12000008',label:'South East' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E12000008' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E10000016',label:'Kent' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000016' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000116',label:'Tunbridge Wells' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000016' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000106',label:'Canterbury' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000016' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000105',label:'Ashford' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000016' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000109',label:'Gravesham' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000016' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000113',label:'Swale' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000016' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000114',label:'Thanet' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000016' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000107',label:'Dartford' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000016' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000108',label:'Dover' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000016' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000110',label:'Maidstone' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000016' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000115',label:'Tonbridge and Malling' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000016' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000111',label:'Sevenoaks' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000016' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000112',label:'Shepway' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E12000008' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E10000025',label:'Oxfordshire' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000025' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000177',label:'Cherwell' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000025' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000180',label:'Vale of White Horse' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000025' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000178',label:'Oxford' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000025' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000181',label:'West Oxfordshire' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000025' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000179',label:'South Oxfordshire' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E12000008' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E10000014',label:'Hampshire' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000014' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000089',label:'Hart' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000014' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000093',label:'Test Valley' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000014' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000092',label:'Rushmoor' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000014' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000084',label:'Basingstoke and Deane' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000014' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000088',label:'Gosport' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000014' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000087',label:'Fareham' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000014' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000086',label:'Eastleigh' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000014' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000091',label:'New Forest' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000014' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000094',label:'Winchester' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000014' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000085',label:'East Hampshire' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000014' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000090',label:'Havant' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E12000008' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E06000042',label:'Milton Keynes' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E12000008' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E06000045',label:'Southampton' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E12000008' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E06000036',label:'Bracknell Forest' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E12000008' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E10000032',label:'West Sussex' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000032' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000225',label:'Chichester' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000032' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000224',label:'Arun' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000032' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000227',label:'Horsham' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000032' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000226',label:'Crawley' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000032' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000229',label:'Worthing' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000032' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000228',label:'Mid Sussex' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000032' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000223',label:'Adur' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E12000008' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E10000011',label:'East Sussex' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000011' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000061',label:'Eastbourne' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000011' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000063',label:'Lewes' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000011' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000062',label:'Hastings' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000011' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000065',label:'Wealden' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000011' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000064',label:'Rother' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E12000008' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E06000044',label:'Portsmouth' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E12000008' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E06000037',label:'West Berkshire' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E12000008' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E06000041',label:'Wokingham' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E12000008' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E06000046',label:'Isle of Wight' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E12000008' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E06000039',label:'Slough' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E12000008' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E10000002',label:'Buckinghamshire' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000002' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000004',label:'Aylesbury Vale' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000002' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000006',label:'South Bucks' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000002' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000007',label:'Wycombe' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000002' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000005',label:'Chiltern' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E12000008' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E06000043',label:'Brighton and Hove' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E12000008' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E06000038',label:'Reading' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E12000008' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E10000030',label:'Surrey' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000030' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000207',label:'Elmbridge' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000030' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000209',label:'Guildford' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000030' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000214',label:'Surrey Heath' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000030' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000215',label:'Tandridge' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000030' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000217',label:'Woking' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000030' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000216',label:'Waverley' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000030' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000212',label:'Runnymede' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000030' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000210',label:'Mole Valley' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000030' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000213',label:'Spelthorne' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000030' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000208',label:'Epsom and Ewell' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000030' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000211',label:'Reigate and Banstead' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E12000008' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E06000040',label:'Windsor and Maidenhead' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E12000008' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E06000035',label:'Medway' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E92000001' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E12000005',label:'West Midlands' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E12000005' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E06000051',label:'Shropshire' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E12000005' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E10000034',label:'Worcestershire' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000034' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000239',label:'Wyre Forest' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000034' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000235',label:'Malvern Hills' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000034' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000237',label:'Worcester' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000034' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000234',label:'Bromsgrove' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000034' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000236',label:'Redditch' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000034' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000238',label:'Wychavon' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E12000005' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E06000021',label:'Stoke-on-Trent' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E12000005' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E06000020',label:'Telford and Wrekin' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E12000005' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E10000031',label:'Warwickshire' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000031' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000220',label:'Rugby' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000031' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000219',label:'Nuneaton and Bedworth' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000031' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000218',label:'North Warwickshire' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000031' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000222',label:'Warwick' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000031' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000221',label:'Stratford-on-Avon' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E12000005' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E06000019',label:'Herefordshire, County of' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E12000005' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E11000005',label:'West Midlands' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E11000005' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E08000025',label:'Birmingham' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E11000005' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E08000026',label:'Coventry' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E11000005' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E08000027',label:'Dudley' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E11000005' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E08000031',label:'Wolverhampton' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E11000005' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E08000030',label:'Walsall' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E11000005' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E08000029',label:'Solihull' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E11000005' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E08000028',label:'Sandwell' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E12000005' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E10000028',label:'Staffordshire' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000028' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000193',label:'East Staffordshire' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000028' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000195',label:'Newcastle-under-Lyme' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000028' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000198',label:'Staffordshire Moorlands' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000028' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000196',label:'South Staffordshire' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000028' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000199',label:'Tamworth' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000028' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000194',label:'Lichfield' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000028' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000192',label:'Cannock Chase' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000028' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000197',label:'Stafford' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E92000001' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E12000006',label:'East of England' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E12000006' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E06000031',label:'Peterborough' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E12000006' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E06000034',label:'Thurrock' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E12000006' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E06000055',label:'Bedford' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E12000006' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E10000012',label:'Essex' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000012' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000074',label:'Maldon' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000012' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000070',label:'Chelmsford' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000012' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000076',label:'Tendring' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000012' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000067',label:'Braintree' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000012' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000075',label:'Rochford' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000012' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000071',label:'Colchester' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000012' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000066',label:'Basildon' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000012' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000073',label:'Harlow' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000012' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000072',label:'Epping Forest' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000012' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000069',label:'Castle Point' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000012' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000068',label:'Brentwood' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000012' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000077',label:'Uttlesford' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E12000006' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E10000020',label:'Norfolk' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000020' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000149',label:'South Norfolk' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000020' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000144',label:'Broadland' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000020' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000148',label:'Norwich' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000020' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000146',label:'King\'s Lynn and West Norfolk' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000020' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000145',label:'Great Yarmouth' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000020' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000147',label:'North Norfolk' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000020' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000143',label:'Breckland' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E12000006' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E10000003',label:'Cambridgeshire' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000003' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000008',label:'Cambridge' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000003' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000010',label:'Fenland' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000003' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000009',label:'East Cambridgeshire' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000003' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000011',label:'Huntingdonshire' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000003' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000012',label:'South Cambridgeshire' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E12000006' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E06000032',label:'Luton' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E12000006' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E10000029',label:'Suffolk' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000029' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000201',label:'Forest Heath' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000029' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000203',label:'Mid Suffolk' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000029' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000204',label:'St Edmundsbury' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000029' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000205',label:'Suffolk Coastal' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000029' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000202',label:'Ipswich' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000029' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000206',label:'Waveney' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000029' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000200',label:'Babergh' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E12000006' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E06000056',label:'Central Bedfordshire' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E12000006' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E10000015',label:'Hertfordshire' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000015' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000103',label:'Watford' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000015' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000241',label:'Welwyn Hatfield' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000015' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000243',label:'Stevenage' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000015' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000102',label:'Three Rivers' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000015' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000240',label:'St Albans' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000015' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000099',label:'North Hertfordshire' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000015' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000242',label:'East Hertfordshire' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000015' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000095',label:'Broxbourne' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000015' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000096',label:'Dacorum' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E10000015' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E07000098',label:'Hertsmere' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'E12000006' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'E06000033',label:'Southend-on-Sea' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'K04000001' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'W92000004',label:'Wales' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'W92000004' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'W06000002',label:'Gwynedd' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'W92000004' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'W06000016',label:'Rhondda Cynon Taf' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'W92000004' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'W06000008',label:'Ceredigion' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'W92000004' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'W06000011',label:'Swansea' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'W92000004' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'W06000001',label:'Isle of Anglesey' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'W92000004' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'W06000012',label:'Neath Port Talbot' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'W92000004' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'W06000004',label:'Denbighshire' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'W92000004' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'W06000015',label:'Cardiff' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'W92000004' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'W06000022',label:'Newport' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'W92000004' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'W06000023',label:'Powys' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'W92000004' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'W06000018',label:'Caerphilly' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'W92000004' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'W06000009',label:'Pembrokeshire' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'W92000004' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'W06000021',label:'Monmouthshire' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'W92000004' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'W06000013',label:'Bridgend' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'W92000004' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'W06000006',label:'Wrexham' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'W92000004' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'W06000020',label:'Torfaen' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'W92000004' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'W06000024',label:'Merthyr Tydfil' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'W92000004' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'W06000003',label:'Conwy' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'W92000004' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'W06000010',label:'Carmarthenshire' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'W92000004' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'W06000014',label:'The Vale of Glamorgan' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'W92000004' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'W06000019',label:'Blaenau Gwent' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'W92000004' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'W06000005',label:'Flintshire' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'K03000001' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'S92000003',label:'Scotland' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'S92000003' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'S12000026',label:'Scottish Borders' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'S92000003' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'S12000029',label:'South Lanarkshire' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'S92000003' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'S12000010',label:'East Lothian' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'S92000003' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'S12000011',label:'East Renfrewshire' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'S92000003' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'S12000039',label:'West Dunbartonshire' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'S92000003' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'S12000027',label:'Shetland Islands' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'S92000003' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'S12000044',label:'North Lanarkshire' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'S92000003' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'S12000017',label:'Highland' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'S92000003' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'S12000045',label:'East Dunbartonshire' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'S92000003' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'S12000035',label:'Argyll and Bute' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'S92000003' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'S12000013',label:'Eilean Siar' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'S92000003' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'S12000023',label:'Orkney Islands' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'S92000003' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'S12000040',label:'West Lothian' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'S92000003' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'S12000021',label:'North Ayrshire' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'S92000003' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'S12000008',label:'East Ayrshire' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'S92000003' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'S12000030',label:'Stirling' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'S92000003' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'S12000024',label:'Perth and Kinross' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'S92000003' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'S12000034',label:'Aberdeenshire' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'S92000003' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'S12000014',label:'Falkirk' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'S92000003' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'S12000038',label:'Renfrewshire' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'S92000003' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'S12000033',label:'Aberdeen City' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'S92000003' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'S12000046',label:'Glasgow City' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'S92000003' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'S12000036',label:'City of Edinburgh' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'S92000003' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'S12000041',label:'Angus' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'S92000003' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'S12000020',label:'Moray' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'S92000003' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'S12000019',label:'Midlothian' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'S92000003' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'S12000005',label:'Clackmannanshire' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'S92000003' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'S12000042',label:'Dundee City' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'S92000003' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'S12000015',label:'Fife' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'S92000003' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'S12000006',label:'Dumfries and Galloway' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'S92000003' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'S12000028',label:'South Ayrshire' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_Geography` { code:'S92000003' })
WITH parent CREATE (node:`_generic_hierarchy_node_Geography` { code:'S12000018',label:'Inverclyde' })-[:hasParent]->(parent);

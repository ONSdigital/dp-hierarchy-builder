CREATE CONSTRAINT ON (n:`_generic_hierarchy_node_ccg-geography`) ASSERT n.code IS UNIQUE;
CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E92000001',label:'England' });
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E92000001' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E40000005',label:'South East' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E40000005' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E39000042',label:'NHS England South East (Kent, Surrey and Sussex)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000042' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000156',label:'NHS South Kent Coast CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000042' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000184',label:'NHS Thanet CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000042' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000214',label:'NHS Guildford and Waverley CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000042' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000177',label:'NHS Surrey Downs CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000042' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000083',label:'NHS Horsham and Mid Sussex CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000042' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000043',label:'NHS Dartford, Gravesham and Swanley CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000042' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000054',label:'NHS East Surrey CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000042' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000076',label:'NHS Hastings and Rother CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000042' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000021',label:'NHS Brighton and Hove CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000042' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000180',label:'NHS Swale CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000042' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000213',label:'NHS Coastal West Sussex CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000042' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000128',label:'NHS North West Surrey CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000042' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000055',label:'NHS Eastbourne, Hailsham and Seaford CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000042' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000104',label:'NHS Medway CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000042' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000029',label:'NHS Canterbury and Coastal CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000042' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000039',label:'NHS Crawley CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000042' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000002',label:'NHS Ashford CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000042' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000199',label:'NHS West Kent CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000042' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000081',label:'NHS High Weald Lewes Havens CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E40000005' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E39000041',label:'NHS England South East (Hampshire, Isle of Wight and Thames Valley)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000041' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000223',label:'NHS Buckinghamshire CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000041' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000120',label:'NHS North Hampshire CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000041' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000059',label:'NHS Fareham and Gosport CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000041' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000198',label:'NHS West Hampshire CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000041' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000167',label:'NHS Southampton CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000041' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000178',label:'NHS Surrey Heath CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000041' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000224',label:'NHS East Berkshire CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000041' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000087',label:'NHS Isle of Wight CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000041' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000137',label:'NHS Portsmouth CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000041' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000154',label:'NHS South Eastern Hampshire CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000041' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000136',label:'NHS Oxfordshire CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000041' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000221',label:'NHS Berkshire West CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000041' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000118',label:'NHS North East Hampshire and Farnham CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E92000001' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E40000006',label:'South West' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E40000006' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E39000043',label:'NHS England South West (South West North)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000043' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000181',label:'NHS Swindon CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000043' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000062',label:'NHS Gloucestershire CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000043' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000222',label:'NHS Bristol, North Somerset and South Gloucestershire CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000043' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000206',label:'NHS Wiltshire CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000043' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000009',label:'NHS Bath and North East Somerset CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E40000006' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E39000044',label:'NHS England South West (South West South)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000044' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000045',label:'NHS Dorset CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000044' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000152',label:'NHS South Devon and Torbay CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000044' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000150',label:'NHS Somerset CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000044' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000089',label:'NHS Kernow CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000044' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000129',label:'NHS Northern, Eastern and Western Devon CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E92000001' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E40000001',label:'North of England' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E40000001' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E39000029',label:'NHS England North (Yorkshire and Humber)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000029' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000019',label:'NHS Bradford Districts CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000029' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000025',label:'NHS Calderdale CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000029' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000122',label:'NHS North Lincolnshire CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000029' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000052',label:'NHS East Riding of Yorkshire CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000029' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000064',label:'NHS Greater Huddersfield CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000029' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000121',label:'NHS North Kirklees CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000029' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000085',label:'NHS Hull CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000029' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000008',label:'NHS Bassetlaw CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000029' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000069',label:'NHS Hambleton, Richmondshire and Whitby CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000029' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000225',label:'NHS Leeds CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000029' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000073',label:'NHS Harrogate and Rural District CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000029' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000044',label:'NHS Doncaster CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000029' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000145',label:'NHS Scarborough and Ryedale CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000029' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000188',label:'NHS Vale of York CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000029' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000146',label:'NHS Sheffield CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000029' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000141',label:'NHS Rotherham CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000029' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000119',label:'NHS North East Lincolnshire CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000029' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000006',label:'NHS Barnsley CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000029' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000001',label:'NHS Airedale, Wharfedale and Craven CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000029' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000018',label:'NHS Bradford City CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000029' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000190',label:'NHS Wakefield CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E40000001' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E39000039',label:'NHS England North (Cumbria and North East)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000039' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000212',label:'NHS Newcastle Gateshead CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000039' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000047',label:'NHS Durham Dales, Easington and Sedgefield CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000039' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000176',label:'NHS Sunderland CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000039' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000162',label:'NHS South Tees CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000039' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000116',label:'NHS North Durham CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000039' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000163',label:'NHS South Tyneside CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000039' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000215',label:'NHS North Cumbria CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000039' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000042',label:'NHS Darlington CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000039' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000075',label:'NHS Hartlepool and Stockton-on-Tees CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000039' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000127',label:'NHS North Tyneside CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000039' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000130',label:'NHS Northumberland CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E40000001' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E39000040',label:'NHS England North (Lancashire and South Cumbria)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000040' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000227',label:'NHS Greater Preston CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000040' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000050',label:'NHS East Lancashire CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000040' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000228',label:'NHS Morecambe Bay CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000040' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000034',label:'NHS Chorley and South Ribble CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000040' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000226',label:'NHS Fylde and Wyre CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000040' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000015',label:'NHS Blackpool CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000040' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000200',label:'NHS West Lancashire CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000040' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000014',label:'NHS Blackburn with Darwen CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E40000001' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E39000037',label:'NHS England North (Greater Manchester)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000037' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000143',label:'NHS Salford CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000037' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000174',label:'NHS Stockport CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000037' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000187',label:'NHS Trafford CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000037' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000080',label:'NHS Heywood, Middleton and Rochdale CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000037' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000205',label:'NHS Wigan Borough CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000037' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000016',label:'NHS Bolton CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000037' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000217',label:'NHS Manchester CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000037' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000024',label:'NHS Bury CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000037' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000135',label:'NHS Oldham CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000037' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000182',label:'NHS Tameside and Glossop CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E40000001' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E39000026',label:'NHS England North (Cheshire and Merseyside)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000026' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000208',label:'NHS Wirral CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000026' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000056',label:'NHS Eastern Cheshire CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000026' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000172',label:'NHS St Helens CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000026' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000091',label:'NHS Knowsley CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000026' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000194',label:'NHS Warrington CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000026' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000068',label:'NHS Halton CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000026' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000101',label:'NHS Liverpool CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000026' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000196',label:'NHS West Cheshire CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000026' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000161',label:'NHS South Sefton CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000026' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000170',label:'NHS Southport and Formby CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000026' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000151',label:'NHS South Cheshire CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000026' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000189',label:'NHS Vale Royal CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E92000001' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E40000002',label:'Midlands and East of England' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E40000002' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E39000033',label:'NHS England Midlands and East (West Midlands)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000033' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000139',label:'NHS Redditch and Bromsgrove CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000033' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000191',label:'NHS Walsall CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000033' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000164',label:'NHS South Warwickshire CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000033' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000211',label:'NHS Wyre Forest CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000033' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000195',label:'NHS Warwickshire North CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000033' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000144',label:'NHS Sandwell and West Birmingham CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000033' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000210',label:'NHS Wolverhampton CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000033' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000038',label:'NHS Coventry and Rugby CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000033' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000166',label:'NHS South Worcestershire CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000033' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000220',label:'NHS Birmingham and Solihull CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000033' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000046',label:'NHS Dudley CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000033' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000078',label:'NHS Herefordshire CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E40000002' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E39000030',label:'NHS England Midlands and East (Central Midlands)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000030' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000099',label:'NHS Lincolnshire East CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000030' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000037',label:'NHS Corby CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000030' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000157',label:'NHS South Lincolnshire CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000030' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000051',label:'NHS East Leicestershire and Rutland CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000030' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000049',label:'NHS East and North Hertfordshire CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000030' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000102',label:'NHS Luton CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000030' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000100',label:'NHS Lincolnshire West CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000030' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000165',label:'NHS South West Lincolnshire CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000030' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000097',label:'NHS Leicester City CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000030' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000079',label:'NHS Herts Valleys CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000030' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000108',label:'NHS Nene CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000030' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000010',label:'NHS Bedfordshire CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000030' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000201',label:'NHS West Leicestershire CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000030' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000107',label:'NHS Milton Keynes CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E40000002' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E39000032',label:'NHS England Midlands and East (North Midlands)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000032' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000133',label:'NHS Nottingham North and East CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000032' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000173',label:'NHS Stafford and Surrounds CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000032' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000115',label:'NHS North Derbyshire CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000032' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000126',label:'NHS North Staffordshire CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000032' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000071',label:'NHS Hardwick CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000032' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000183',label:'NHS Telford and Wrekin CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000032' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000132',label:'NHS Nottingham City CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000032' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000169',label:'NHS Southern Derbyshire CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000032' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000142',label:'NHS Rushcliffe CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000032' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000053',label:'NHS East Staffordshire CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000032' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000175',label:'NHS Stoke on Trent CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000032' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000109',label:'NHS Newark and Sherwood CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000032' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000147',label:'NHS Shropshire CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000032' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000103',label:'NHS Mansfield and Ashfield CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000032' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000028',label:'NHS Cannock Chase CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000032' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000134',label:'NHS Nottingham West CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000032' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000153',label:'NHS South East Staffordshire and Seisdon Peninsula CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000032' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000058',label:'NHS Erewash CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E40000002' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E39000031',label:'NHS England Midlands and East (East)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000031' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000197',label:'NHS West Essex CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000031' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000117',label:'NHS North East Essex CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000031' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000007',label:'NHS Basildon and Brentwood CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000031' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000218',label:'NHS Norwich CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000031' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000026',label:'NHS Cambridgeshire and Peterborough CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000031' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000106',label:'NHS Mid Essex CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000031' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000030',label:'NHS Castle Point and Rochford CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000031' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000124',label:'NHS North Norfolk CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000031' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000063',label:'NHS Great Yarmouth and Waveney CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000031' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000086',label:'NHS Ipswich and East Suffolk CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000031' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000168',label:'NHS Southend CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000031' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000219',label:'NHS South Norfolk CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000031' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000204',label:'NHS West Suffolk CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000031' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000203',label:'NHS West Norfolk CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000031' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000185',label:'NHS Thurrock CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E92000001' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E40000003',label:'London' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E40000003' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E39000018',label:'NHS England London' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000018' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000072',label:'NHS Haringey CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000018' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000020',label:'NHS Brent CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000018' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000005',label:'NHS Barnet CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000018' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000057',label:'NHS Enfield CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000018' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000138',label:'NHS Redbridge CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000018' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000098',label:'NHS Lewisham CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000018' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000048',label:'NHS Ealing CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000018' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000084',label:'NHS Hounslow CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000018' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000082',label:'NHS Hillingdon CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000018' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000088',label:'NHS Islington CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000018' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000031',label:'NHS Central London (Westminster) CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000018' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000040',label:'NHS Croydon CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000018' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000186',label:'NHS Tower Hamlets CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000018' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000066',label:'NHS Greenwich CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000018' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000004',label:'NHS Barking and Dagenham CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000018' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000113',label:'NHS Newham CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000018' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000090',label:'NHS Kingston CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000018' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000023',label:'NHS Bromley CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000018' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000202',label:'NHS West London CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000018' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000035',label:'NHS City and Hackney CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000018' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000092',label:'NHS Lambeth CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000018' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000027',label:'NHS Camden CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000018' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000171',label:'NHS Southwark CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000018' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000140',label:'NHS Richmond CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000018' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000077',label:'NHS Havering CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000018' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000193',label:'NHS Wandsworth CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000018' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000105',label:'NHS Merton CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000018' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000011',label:'NHS Bexley CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000018' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000192',label:'NHS Waltham Forest CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000018' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000070',label:'NHS Hammersmith and Fulham CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000018' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000074',label:'NHS Harrow CCG' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ccg-geography` { code:'E39000018' })
WITH parent CREATE (node:`_generic_hierarchy_node_ccg-geography` { code:'E38000179',label:'NHS Sutton CCG' })-[:hasParent]->(parent);

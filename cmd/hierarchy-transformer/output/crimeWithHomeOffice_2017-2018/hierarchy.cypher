CREATE CONSTRAINT ON (n:`_generic_hierarchy_node_crime-offence`) ASSERT n.code IS UNIQUE;
CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'offence',label:'Offence' });
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'offence' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'violence-against-the-person',label:'Violence against the person' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'violence-against-the-person' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'8L',label:'Harassment' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'violence-against-the-person' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'1-4.1-4.10-4.2',label:'Homicide' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'violence-against-the-person' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'violence-without-injury',label:'Violence without injury' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'violence-without-injury' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'105A',label:'Assault without injury' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'violence-without-injury' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'14',label:'Procuring illegal abortion' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'violence-without-injury' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'11A',label:'Cruelty to children/young persons' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'violence-without-injury' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'3A',label:'Conspiracy to murder' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'violence-without-injury' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'8Q',label:'Stalking' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'violence-without-injury' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'8M',label:'Racially or religiously aggravated harassment' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'violence-without-injury' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'106',label:'Modern slavery' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'violence-without-injury' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'3B',label:'Threats to kill' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'violence-without-injury' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'104',label:'Assault without injury on a constable' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'violence-without-injury' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'13',label:'Child abduction' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'violence-without-injury' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'36',label:'Kidnapping' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'violence-without-injury' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'105B',label:'Racially or religiously aggravated assault without injury' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'violence-against-the-person' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'violence-with-injury',label:'Violence with injury' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'violence-with-injury' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'8S',label:'Assault with injury on a constable' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'violence-with-injury' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'4.9',label:'Causing death or serious injury by driving: unlicensed drivers etc.' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'violence-with-injury' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'5D',label:'Assault with intent to cause serious harm' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'violence-with-injury' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'4.7',label:'Causing or allowing death of child or vulnerable person' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'violence-with-injury' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'4.6',label:'Causing death by careless driving under influence of drink or drugs' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'violence-with-injury' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'4.8',label:'Causing death by careless or inconsiderate driving' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'violence-with-injury' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'8P',label:'Racially or religiously aggravated assault with injury' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'violence-with-injury' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'4.4',label:'Causing death by dangerous driving' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'violence-with-injury' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'37.1',label:'Causing death by aggravated vehicle taking' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'violence-with-injury' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'4.3',label:'Intentional destruction of a viable unborn child' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'violence-with-injury' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'2',label:'Attempted murder' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'violence-with-injury' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'5E',label:'Endangering life' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'violence-with-injury' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'8N',label:'Assault with injury' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'offence' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'public-order-offences',label:'Public order offences' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'public-order-offences' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'9A',label:'Public fear, alarm or distress' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'public-order-offences' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'62A',label:'Violent disorder' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'public-order-offences' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'9B',label:'Racially or religiously aggravated public fear, alarm or distress' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'public-order-offences' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'66',label:'Other offences against the State or public order' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'offence' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'drug-offences',label:'Drug offences' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'drug-offences' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'trafficking-of-drugs',label:'Trafficking of drugs' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'trafficking-of-drugs' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'92A',label:'Trafficking in controlled drugs' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'drug-offences' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'possession-of-drugs',label:'Possession of drugs' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'possession-of-drugs' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'92E',label:'Possession of controlled drugs (Cannabis)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'possession-of-drugs' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'92D',label:'Possession of controlled drugs (excl. Cannabis)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'possession-of-drugs' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'92C',label:'Other drug offences' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'offence' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'theft-offences',label:'Theft offences' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'theft-offences' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'non-domestic-burglary',label:'Non-domestic burglary' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'non-domestic-burglary' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'30A',label:'Burglary in a building other than a dwelling (outcome only)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'non-domestic-burglary' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'30D',label:'Attempted Burglary Business and Community' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'non-domestic-burglary' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'30B',label:'Attempted burglary in a building other than a dwelling (outcome only)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'non-domestic-burglary' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'31A',label:'Aggravated Burglary Business and Community' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'non-domestic-burglary' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'31',label:'Aggravated burglary in a building other than a dwelling(outcome only)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'non-domestic-burglary' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'30C',label:'Burglary Business and Community' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'theft-offences' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'39',label:'Theft from the person' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'theft-offences' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'theft-of-a-motor-vehicle',label:'Theft of a motor vehicle' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'theft-of-a-motor-vehicle' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'37.2',label:'Aggravated vehicle taking' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'theft-of-a-motor-vehicle' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'48',label:'Theft or unauthorised taking of motor vehicle' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'theft-offences' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'domestic-burglary',label:'Domestic burglary' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'domestic-burglary' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'29',label:'Aggravated burglary in a dwelling (outcome only)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'domestic-burglary' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'28B',label:'Attempted burglary in a dwelling (outcome only)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'domestic-burglary' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'28G',label:'Distraction Burglary Residential' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'domestic-burglary' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'28F',label:'Attempted Burglary Residential' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'domestic-burglary' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'28C',label:'Distraction burglary in a dwelling (outcome only)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'domestic-burglary' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'28A',label:'Burglary in a dwelling(outcome only)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'domestic-burglary' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'28H',label:'Attempted Distraction Burglary Residential' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'domestic-burglary' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'29A',label:'Aggravated Burglary Residential' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'domestic-burglary' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'28D',label:'Attempted distraction burglary in a dwelling (outcome only)' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'domestic-burglary' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'28E',label:'Burglary Residential' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'theft-offences' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'theft-from-a-vehicle',label:'Theft from a vehicle' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'theft-from-a-vehicle' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'45',label:'Theft from vehicle' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'theft-offences' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'bicycle-theft',label:'Bicycle theft' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'bicycle-theft' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'44',label:'Theft or unauthorised taking of a pedal cycle' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'theft-offences' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'46',label:'Shoplifting' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'theft-offences' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'other-theft-offences',label:'Other theft offences' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'other-theft-offences' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'49A',label:'Making off without payment' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'other-theft-offences' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'42',label:'Theft of mail' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'other-theft-offences' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'35',label:'Blackmail' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'other-theft-offences' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'40',label:'Theft in a dwelling other than from an automatic machine or meter' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'other-theft-offences' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'47',label:'Theft from automatic machine or meter' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'other-theft-offences' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'49',label:'Other theft' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'other-theft-offences' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'43',label:'Dishonest use of electricity' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'other-theft-offences' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'41',label:'Theft by an employee' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'theft-offences' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'vehicle-interference',label:'Vehicle interference' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'vehicle-interference' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'126',label:'Interfering with a motor vehicle' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'offence' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'fraud-offences',label:'Fraud offences' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'fraud-offences' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'fraud-offences-to-2012-13',label:'Fraud offences to 2012/13' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'offence' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'miscellaneous-crimes-against-society',label:'Miscellaneous crimes against society' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'miscellaneous-crimes-against-society' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'69',label:'Offender Management Act offences' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'miscellaneous-crimes-against-society' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'38',label:'Profiting from or concealing knowledge of the proceeds of crime' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'miscellaneous-crimes-against-society' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'33A',label:'Making, supplying or possessing articles for use in fraud' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'miscellaneous-crimes-against-society' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'67',label:'Perjury' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'miscellaneous-crimes-against-society' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'60',label:'Forgery or use of false drug prescription' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'miscellaneous-crimes-against-society' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'86',label:'Obscene publications etc' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'miscellaneous-crimes-against-society' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'79',label:'Perverting the course of justice' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'miscellaneous-crimes-against-society' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'24',label:'Exploitation of prostitution' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'miscellaneous-crimes-against-society' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'814',label:'Fraud, forgery etc associated with vehicle or driver records' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'miscellaneous-crimes-against-society' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'61A',label:'Possession of false documents' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'miscellaneous-crimes-against-society' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'26',label:'Bigamy' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'miscellaneous-crimes-against-society' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'15',label:'Concealing an infant death close to birth' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'miscellaneous-crimes-against-society' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'80',label:'Absconding from lawful custody' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'miscellaneous-crimes-against-society' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'83',label:'Bail offences' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'miscellaneous-crimes-against-society' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'27',label:'Soliciting for the purposes of prostitution' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'miscellaneous-crimes-against-society' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'33',label:'Going equipped for stealing, etc' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'miscellaneous-crimes-against-society' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'76',label:'Aiding suicide' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'miscellaneous-crimes-against-society' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'95',label:'Disclosure, obstruction, false or misleading statements etc' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'miscellaneous-crimes-against-society' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'61',label:'Other forgery' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'miscellaneous-crimes-against-society' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'59',label:'Threat or possession with intent to commit criminal damage' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'miscellaneous-crimes-against-society' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'99',label:'Other notifiable offences' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'miscellaneous-crimes-against-society' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'96',label:'Wildlife' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'miscellaneous-crimes-against-society' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'802',label:'Dangerous driving' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'miscellaneous-crimes-against-society' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'54',label:'Handling stolen goods' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'offence' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'criminal-damage-and-arson',label:'Criminal damage and arson' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'criminal-damage-and-arson' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'criminal-damage',label:'Criminal damage' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'criminal-damage' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'58C',label:'Criminal damage to a vehicle' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'criminal-damage' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'58J',label:'Racially or religiously aggravated criminal damage' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'criminal-damage' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'58B',label:'Criminal damage to a building other than a dwelling' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'criminal-damage' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'58D',label:'Other criminal damage' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'criminal-damage' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'58A',label:'Criminal damage to a dwelling' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'criminal-damage-and-arson' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'arson',label:'Arson' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'arson' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'56B',label:'Arson not endangering life' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'arson' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'56A',label:'Arson endangering life' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'offence' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'sexual-offences',label:'Sexual offences' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'sexual-offences' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'other-sexual-offences',label:'Other sexual offences' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'other-sexual-offences' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'71',label:'Abuse of children through sexual exploitation' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'other-sexual-offences' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'88A',label:'Sexual grooming' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'other-sexual-offences' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'88D',label:'Unnatural sexual offences' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'other-sexual-offences' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'20B',label:'Sexual assault on a female child under 13' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'other-sexual-offences' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'72',label:'Trafficking for sexual exploitation' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'other-sexual-offences' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'22A',label:'Causing sexual activity without consent' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'other-sexual-offences' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'20A',label:'Sexual assault on a female aged 13 and over' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'other-sexual-offences' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'88C',label:'Other miscellaneous sexual offences' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'other-sexual-offences' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'17B',label:'Sexual assault on a male child under 13' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'other-sexual-offences' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'22B',label:'Sexual activity involving child under 16' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'other-sexual-offences' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'73',label:'Abuse of position of trust of a sexual nature' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'other-sexual-offences' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'21',label:'Sexual activity involving a child under 13' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'other-sexual-offences' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'88E',label:'Exposure and voyeurism' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'other-sexual-offences' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'70',label:'Sexual activity etc with a person with a mental disorder' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'other-sexual-offences' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'17A',label:'Sexual assault on a male aged 13 and over' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'other-sexual-offences' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'23',label:'Incest or familial sexual offences' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'sexual-offences' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'rape',label:'Rape' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'rape' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'19H',label:'Rape of a male child under 13' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'rape' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'19E',label:'Rape of a female child under 13' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'rape' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'19G',label:'Rape of a male child under 16' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'rape' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'19D',label:'Rape of a female child under 16' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'rape' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'19C',label:'Rape of a female aged 16 and over' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'rape' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'19F',label:'Rape of a male aged 16 and over' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'offence' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'possession-of-weapons-offences',label:'Possession of weapons offences' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'possession-of-weapons-offences' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'90',label:'Other knives offences' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'possession-of-weapons-offences' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'10A',label:'Possession of firearms with intent' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'possession-of-weapons-offences' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'10D',label:'Possession of article with blade or point' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'possession-of-weapons-offences' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'10C',label:'Possession of other weapons' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'possession-of-weapons-offences' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'81',label:'Other firearms offences' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'possession-of-weapons-offences' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'10B',label:'Possession of firearms offences' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'offence' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'robbery',label:'Robbery' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'robbery' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'34A',label:'Robbery of business property' })-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_crime-offence` { code:'robbery' })
WITH parent CREATE (node:`_generic_hierarchy_node_crime-offence` { code:'34B',label:'Robbery of personal property' })-[:hasParent]->(parent);

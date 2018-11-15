CREATE CONSTRAINT ON (n:`_generic_hierarchy_node_ott-regions`) ASSERT n.code IS UNIQUE;
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"other-asia",label:"Other Asia" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"other-eastern-europe",label:"Other Eastern Europe" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"other-africa",label:"Other Africa" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"other-western-europe",label:"Other Western Europe" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"other-southern-africa",label:"Other Southern Africa" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"other-central-and-south-america",label:"Other Central and South America" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"argentina",label:"Argentina" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"australia",label:"Australia" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"austria",label:"Austria" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"bahrain",label:"Bahrain" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"belgium",label:"Belgium" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"brazil",label:"Brazil" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"bulgaria",label:"Bulgaria" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"canada",label:"Canada" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"chile",label:"Chile" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"china",label:"China" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"other",label:"Other" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"denmark",label:"Denmark" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"egypt",label:"Egypt" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"finland",label:"Finland" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"france",label:"France" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"germany",label:"Germany" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"greece",label:"Greece" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"hong-kong",label:"Hong Kong" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"hungary",label:"Hungary" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"iceland",label:"Iceland" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"india",label:"India" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"indonesia",label:"Indonesia" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"other-middle-east",label:"Other Middle East" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"irish-republic",label:"Irish Republic" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"israel-(including-palestine)",label:"Israel (including Palestine)" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"italy",label:"Italy" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"japan",label:"Japan" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"kenya",label:"Kenya" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"kuwait",label:"Kuwait" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"luxembourg",label:"Luxembourg" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"malaysia",label:"Malaysia" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"mexico",label:"Mexico" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"netherlands",label:"Netherlands" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"new-zealand",label:"New Zealand" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"nigeria",label:"Nigeria" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"norway",label:"Norway" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"oman",label:"Oman" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"pakistan",label:"Pakistan" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"poland",label:"Poland" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"portugal",label:"Portugal" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"qatar",label:"Qatar" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"romania",label:"Romania" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"russia",label:"Russia" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"saudi-arabia",label:"Saudi Arabia" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"serbia",label:"Serbia" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"singapore",label:"Singapore" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"south-africa",label:"South Africa" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"south-korea",label:"South Korea" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"spain-balearic-islands",label:"Spain, Balearic Islands" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"sweden",label:"Sweden" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"switzerland",label:"Switzerland" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"taiwan",label:"Taiwan" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"thailand",label:"Thailand" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"czech-republic",label:"Czech Republic" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"turkey",label:"Turkey" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"united-arab-emirates",label:"United Arab Emirates" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"united-states-of-america",label:"United States Of America" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"asia",label:"Asia" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"africa",label:"Africa" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"europe",label:"Europe" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"north-south-and-central-america",label:"North, South and Central America" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"other-region",label:"Other" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"rest-of-world",label:"Rest of World" });
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "asia" AND child.code = "other-asia"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "europe" AND child.code = "other-eastern-europe"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "africa" AND child.code = "other-africa"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "europe" AND child.code = "other-western-europe"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "africa" AND child.code = "other-southern-africa"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "north-south-and-central-america" AND child.code = "other-central-and-south-america"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "north-south-and-central-america" AND child.code = "argentina"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "other-region" AND child.code = "australia"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "europe" AND child.code = "austria"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "asia" AND child.code = "bahrain"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "europe" AND child.code = "belgium"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "north-south-and-central-america" AND child.code = "brazil"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "europe" AND child.code = "bulgaria"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "north-south-and-central-america" AND child.code = "canada"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "north-south-and-central-america" AND child.code = "chile"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "asia" AND child.code = "china"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "other-region" AND child.code = "other"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "europe" AND child.code = "denmark"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "africa" AND child.code = "egypt"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "europe" AND child.code = "finland"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "europe" AND child.code = "france"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "europe" AND child.code = "germany"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "europe" AND child.code = "greece"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "asia" AND child.code = "hong-kong"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "europe" AND child.code = "hungary"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "europe" AND child.code = "iceland"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "asia" AND child.code = "india"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "asia" AND child.code = "indonesia"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "asia" AND child.code = "other-middle-east"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "europe" AND child.code = "irish-republic"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "asia" AND child.code = "israel-(including-palestine)"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "europe" AND child.code = "italy"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "asia" AND child.code = "japan"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "africa" AND child.code = "kenya"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "asia" AND child.code = "kuwait"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "europe" AND child.code = "luxembourg"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "asia" AND child.code = "malaysia"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "north-south-and-central-america" AND child.code = "mexico"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "europe" AND child.code = "netherlands"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "other-region" AND child.code = "new-zealand"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "africa" AND child.code = "nigeria"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "europe" AND child.code = "norway"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "asia" AND child.code = "oman"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "asia" AND child.code = "pakistan"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "europe" AND child.code = "poland"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "europe" AND child.code = "portugal"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "asia" AND child.code = "qatar"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "europe" AND child.code = "romania"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "europe" AND child.code = "russia"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "asia" AND child.code = "saudi-arabia"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "europe" AND child.code = "serbia"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "asia" AND child.code = "singapore"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "africa" AND child.code = "south-africa"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "asia" AND child.code = "south-korea"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "europe" AND child.code = "spain-balearic-islands"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "europe" AND child.code = "sweden"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "europe" AND child.code = "switzerland"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "asia" AND child.code = "taiwan"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "asia" AND child.code = "thailand"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "europe" AND child.code = "czech-republic"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "europe" AND child.code = "turkey"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "asia" AND child.code = "united-arab-emirates"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "north-south-and-central-america" AND child.code = "united-states-of-america"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "rest-of-world" AND child.code = "asia"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "rest-of-world" AND child.code = "africa"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "rest-of-world" AND child.code = "europe"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "rest-of-world" AND child.code = "north-south-and-central-america"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "rest-of-world" AND child.code = "other-region"
CREATE (child)-[:hasParent]->(parent);

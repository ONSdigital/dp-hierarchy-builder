CREATE CONSTRAINT ON (n:`_generic_hierarchy_node_ott-regions`) ASSERT n.code IS UNIQUE;
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"other_asia",label:"Other Asia" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"other_eastern_europe",label:"Other Eastern Europe" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"other_africa",label:"Other Africa" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"other_western_europe",label:"Other Western Europe" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"other_southern_africa",label:"Other Southern Africa" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"other_central_and_south_america",label:"Other Central and South America" });
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
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"hong_kong",label:"Hong Kong" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"hungary",label:"Hungary" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"iceland",label:"Iceland" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"india",label:"India" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"indonesia",label:"Indonesia" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"other_middle_east",label:"Other Middle East" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"irish_republic",label:"Irish Republic" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"israel_(including_palestine)",label:"Israel (including Palestine)" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"italy",label:"Italy" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"japan",label:"Japan" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"kenya",label:"Kenya" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"kuwait",label:"Kuwait" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"luxembourg",label:"Luxembourg" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"malaysia",label:"Malaysia" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"mexico",label:"Mexico" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"netherlands",label:"Netherlands" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"new_zealand",label:"New Zealand" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"nigeria",label:"Nigeria" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"norway",label:"Norway" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"oman",label:"Oman" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"pakistan",label:"Pakistan" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"poland",label:"Poland" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"portugal",label:"Portugal" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"qatar",label:"Qatar" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"romania",label:"Romania" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"russia",label:"Russia" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"saudi_arabia",label:"Saudi Arabia" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"serbia",label:"Serbia" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"singapore",label:"Singapore" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"south_africa",label:"South Africa" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"south_korea",label:"South Korea" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"spain_balearic_islands",label:"Spain, Balearic Islands" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"sweden",label:"Sweden" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"switzerland",label:"Switzerland" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"taiwan",label:"Taiwan" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"thailand",label:"Thailand" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"czech_republic",label:"Czech Republic" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"turkey",label:"Turkey" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"united_arab_emirates",label:"United Arab Emirates" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"united_states_of_america",label:"United States Of America" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"asia",label:"Asia" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"africa",label:"Africa" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"europe",label:"Europe" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"north_south_and_central_america",label:"North, South and Central America" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"other_region",label:"Other" });
CREATE (node:`_generic_hierarchy_node_ott-regions` { code:"rest_of_world",label:"Rest of World" });
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "asia" AND child.code = "other_asia"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "europe" AND child.code = "other_eastern_europe"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "africa" AND child.code = "other_africa"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "europe" AND child.code = "other_western_europe"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "africa" AND child.code = "other_southern_africa"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "north_south_and_central_america" AND child.code = "other_central_and_south_america"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "north_south_and_central_america" AND child.code = "argentina"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "other_region" AND child.code = "australia"
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
WHERE parent.code = "north_south_and_central_america" AND child.code = "brazil"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "europe" AND child.code = "bulgaria"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "north_south_and_central_america" AND child.code = "canada"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "north_south_and_central_america" AND child.code = "chile"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "asia" AND child.code = "china"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "other_region" AND child.code = "other"
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
WHERE parent.code = "asia" AND child.code = "hong_kong"
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
WHERE parent.code = "asia" AND child.code = "other_middle_east"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "europe" AND child.code = "irish_republic"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "asia" AND child.code = "israel_(including_palestine)"
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
WHERE parent.code = "north_south_and_central_america" AND child.code = "mexico"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "europe" AND child.code = "netherlands"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "other_region" AND child.code = "new_zealand"
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
WHERE parent.code = "asia" AND child.code = "saudi_arabia"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "europe" AND child.code = "serbia"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "asia" AND child.code = "singapore"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "africa" AND child.code = "south_africa"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "asia" AND child.code = "south_korea"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "europe" AND child.code = "spain_balearic_islands"
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
WHERE parent.code = "europe" AND child.code = "czech_republic"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "europe" AND child.code = "turkey"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "asia" AND child.code = "united_arab_emirates"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "north_south_and_central_america" AND child.code = "united_states_of_america"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "rest_of_world" AND child.code = "asia"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "rest_of_world" AND child.code = "africa"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "rest_of_world" AND child.code = "europe"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "rest_of_world" AND child.code = "north_south_and_central_america"
CREATE (child)-[:hasParent]->(parent);
MATCH (parent:`_generic_hierarchy_node_ott-regions`),(child:`_generic_hierarchy_node_ott-regions`)
WHERE parent.code = "rest_of_world" AND child.code = "other_region"
CREATE (child)-[:hasParent]->(parent);

-- ========================================
-- Migration 0083: Add content_section rows for 7 places
-- Generated: 2026-08-12
-- Strategy: Use Wikipedia article text, create overview + history + geography + demographics
-- Coverage: 981/988 → 988/988 places with sections
-- ========================================

INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, reading_level, display_order, editorial_status, language, created_at, updated_at, last_verified_at)
VALUES
  ('cs_plc_indiana-state_overview_r3', 'plc_indiana-state', 'overview', 'Overview', 'Indiana (  IN-dee-AN-ə) is a state in the Midwestern region of the United States. It borders Lake Michigan to the northwest, Michigan to the north and northeast, Ohio to the east, the Ohio River and Kentucky to the south and southeast, and the Wabash River and Illinois to the west. Nicknamed "the Hoosier State", Indiana is the 38th-largest by area and the 17th-most populous of the 50 states. The state''s capital and largest city is Indianapolis. Indiana was admitted to the Union as the 19th state on December 11, 1816.
Indigenous resistance to American settlement was broken with their defeat in Battle of Tippecanoe in 1811, and the collapse of Tecumseh''s confederacy in 1813. The new settlers were primarily Americans of British ancestry from the eastern seaboard and the Upland South, and Germans. After the Civil War, in which the state fought for the Union, natural gas attracted heavy industry and new European immigrants to its northern counties. In the first half of the 20th century, northern and central sections experienced a boom in goods manufacture and automobile production. Southern Indiana remained largely rural. After the rise and fall of the Klan in the 1920s, the state swung politically from the Republican to Democratic Party in the New Deal 1930s. Today, with a decades-long record of returning Republican majorities, Indiana is counted a "red state".
Indiana has a diverse economy with a gross state product in 2023 of 404.3 billion. Indianapolis is at the center of the ',
   'general', 10, 'auto_approved', 'en',
   unixepoch(), unixepoch(), unixepoch());
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, reading_level, display_order, editorial_status, language, created_at, updated_at, last_verified_at)
VALUES
  ('cs_plc_indiana-state_history_r3', 'plc_indiana-state', 'history', 'History', 'state''s largest metropolitan area, with a population of over two million. The Fort Wayne metro area follows with a population of 645,000.
The state''s largest city, Indianapolis, is home to professional sports teams, including the NFL''s Indianapolis Colts, the NBA''s Indiana Pacers, and the WNBA''s Indiana Fever. The city also hosts several notable competitive events, such as the Indianapolis 500, held at Indianapolis Motor Speedway.


== Etymology ==
Indiana''s name means "Land of the Indians", or simply "Indian Land". It also stems from Indiana''s territorial history. On May 7, 1800, the United States Congress passed legislation to divide the Northwest Territory into two areas and named the western section the Indiana Territory. In 1816, when Congress passed an Enabling Act to begin the process of establishing statehood for Indiana, a part of this territorial land became the geographic area for the new state.
Formal use of the word Indiana dates from 1768, when a Philadelphia-based trading company gave its land claim in present-day West Virginia the name "Indiana" in honor of its previous owners, the Iroquois. Later, ownership of the claim was transferred to the Indiana Land Company, the first recorded use of the word Indiana. But the Virginia colony argued that it was the rightful owner of the land because it fell within its geographic boundaries. The U.S. Supreme Court denied the land company''s right to the claim in 1798.


=== Hoosier ===
A native or resident of Indiana is kn',
   'general', 20, 'auto_approved', 'en',
   unixepoch(), unixepoch(), unixepoch());
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, reading_level, display_order, editorial_status, language, created_at, updated_at, last_verified_at)
VALUES
  ('cs_plc_indiana-state_geography_r3', 'plc_indiana-state', 'geography', 'Geography', 'own as a Hoosier. The etymology of this word is disputed, but the leading theory, advanced by the Indiana Historical Bureau and the Indiana Historical Society, has its origin in Virginia, Kentucky, the Carolinas, and Tennessee (the Upland South) as a term for a backwoodsman, a rough countryman, or a country bumpkin.


== History ==


=== Indigenous inhabitants ===

The first inhabitants in what is now Indiana were the Paleo-Indians, who arrived about 8000 BC after the melting of the glaciers at the end of the Ice Age. Divided into small groups, the Paleo-Indians were nomads who hunted large game such as mastodons. They created stone tools made out of chert by chipping, knapping and flaking.
The Archaic period between 5000 and 4000 BC saw the development of new ground-stone tools the building of earthwork mounds and middens, suggesting that settlements were becoming more permanent. The Woodland period began around 1500 BC marked by ceramics and pottery and the extended cultivation of plants eventually including crops such as corn and squash, and the development of long-term trade, notably by the Hopewell people.
The Mississippian culture emerged, lasting from 1000 AD until the 15th century, shortly before the arrival of Europeans. During this stage, people created large urban settlements designed according to their cosmology, with large mounds and plazas defining ceremonial and public spaces. The concentrated settlements depended on the agricultural surpluses. One such complex',
   'general', 30, 'auto_approved', 'en',
   unixepoch(), unixepoch(), unixepoch());
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, reading_level, display_order, editorial_status, language, created_at, updated_at, last_verified_at)
VALUES
  ('cs_plc_indiana-state_demographics_r3', 'plc_indiana-state', 'demographics', 'Demographics', ' was the Angel Mounds. They had large public areas such as plazas and platform mounds, where leaders lived or conducted rituals. Mississippian civilization collapsed in Indiana during the mid-15th century for reasons that remain unclear.
The historic Native American tribes in the area at the time of European encounter spoke different languages of the Algonquian family. They included the Shawnee, Miami, and Illini. Refugee tribes from eastern regions, including the Delaware who settled in the White and Whitewater River Valleys, later joined them.


=== European exploration and sovereignty ===

 
In 1679, French explorer René-Robert Cavelier, Sieur de La Salle was the first European to cross into Indiana after reaching present-day South Bend at the St. Joseph River. He was followed by French-Canadian fur traders exchanging blankets, jewelry, tools, whiskey and weapons with the Native Americans for skins.
By 1702, Sieur Juchereau established the first trading post near Vincennes. In 1715, Sieur de Vincennes built Fort Miami at Kekionga, now Fort Wayne. In 1717, another Canadian, Picote de Beletre, built Fort Ouiatenon on the Wabash River, to try to control Native American trade routes from Lake Erie to the Mississippi River.
In 1732, Sieur de Vincennes built a second fur trading post at Vincennes. In a period of a few years, British colonists arrived from the East and contended with the Canadians for control of the lucrative fur trade. Fighting between the French and British col',
   'general', 40, 'auto_approved', 'en',
   unixepoch(), unixepoch(), unixepoch());
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, reading_level, display_order, editorial_status, language, created_at, updated_at, last_verified_at)
VALUES
  ('cs_plc_washington-state_overview_r3', 'plc_washington-state', 'overview', 'Overview', 'Washington is a state in the Pacific Northwest region of the United States. It is often referred to as Washington state to distinguish it from the national capital; both are named after George Washington, a U.S. Founding Father and the first U.S. president. Washington borders the Pacific Ocean to the west, Oregon to the south, and Idaho to the east; it shares an international border with the Canadian province of British Columbia to the north. Olympia is the state capital, and the state''s most populous city is Seattle.
Washington is the 18th-largest state, with an area of 71,362 sq mi (184,830 km2), and the 13th-most populous state, with a population of over 8 million. The majority of Washington''s residents live in the Seattle metropolitan area, the center of transportation, business, and industry on Puget Sound, an inlet of the Pacific Ocean consisting of numerous islands, deep fjords and bays carved out by glaciers. The remainder of the state consists of deep temperate rainforests in the west; mountain ranges in the west, center, northeast, and far southeast, and a semi-arid basin region in the east, center, and south, given over to intensive agriculture. Washington is the second-most populous state on the West Coast and in the Western United States, after California. Mount Rainier, an active stratovolcano, is the state''s highest elevation at 14,400 feet (4,389 meters), and is the most topographically prominent mountain in the contiguous U.S.
Washington is a leading lumber p',
   'general', 10, 'auto_approved', 'en',
   unixepoch(), unixepoch(), unixepoch());
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, reading_level, display_order, editorial_status, language, created_at, updated_at, last_verified_at)
VALUES
  ('cs_plc_washington-state_history_r3', 'plc_washington-state', 'history', 'History', 'roducer, the largest producer of apples, hops, pears, blueberries, spearmint oil, and sweet cherries in the U.S., and ranks high in the production of apricots, asparagus, dry edible peas, grapes, lentils, peppermint oil, potatoes and wheat. Livestock, livestock products, and commercial fishing—particularly of salmon, halibut, and bottomfish—are also significant contributors to the state''s economy. Washington ranks third in wine production. Manufacturing industries in Washington include aircraft, missiles, shipbuilding, and other transportation equipment, food processing, metals, and metal products, chemicals, and machinery.
The state was formed from the western part of the Washington Territory, the claims to which were ceded by the British Empire in the Oregon Treaty of 1846. Most of the land that would become Washington state was ceded by the Indigenous peoples of the region in the Stevens treaties of 1854–1855. It was admitted to the Union as the 42nd state in 1889. One of the wealthiest and most socially liberal states in the country, Washington consistently ranks among the top states for highest life expectancy and employment rates. It was one of the first states (alongside Colorado) to legalize medicinal and recreational cannabis, was among the first states to introduce same-sex marriage, and permitted legal abortions on request before Roe v. Wade in 1973.


== Etymology ==
Washington was named after President George Washington by an act of the United States Congress dur',
   'general', 20, 'auto_approved', 'en',
   unixepoch(), unixepoch(), unixepoch());
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, reading_level, display_order, editorial_status, language, created_at, updated_at, last_verified_at)
VALUES
  ('cs_plc_washington-state_geography_r3', 'plc_washington-state', 'geography', 'Geography', 'ing the creation of Washington Territory in 1853; the territory was originally to be named "Columbia", for the Columbia River and the Columbia District, but Kentucky representative Richard H. Stanton found the name too similar to the District of Columbia (the nation''s capital, itself containing the city of Washington), and proposed naming the new territory after President Washington. Thus, Washington is the only U.S. state named after a president.
Confusion between the state of Washington and the city of Washington, D.C., led to renaming proposals during the statehood process for Washington in 1889, including David Dudley Field II''s suggestion to name the new state "Tacoma"; these proposals failed to garner support. Washington, D.C.''s, own statehood movement in the 21st century has included a proposal to use the name "State of Washington, Douglass Commonwealth", which would conflict with the current state of Washington. Residents of Washington (known as "Washingtonians") and the Pacific Northwest simply refer to the state as "Washington", and the nation''s capital "Washington, D.C.", "the other Washington", or simply "D.C."


== History ==


=== Early history ===

The skeletal remains of Kennewick Man, one of the oldest and most complete human remains found in North America, were discovered in Washington in 1996 and radiocarbon dated to between 8,400 and 8,690 years Before Present. The region has been home to many established tribes of indigenous peoples for thousands of years',
   'general', 30, 'auto_approved', 'en',
   unixepoch(), unixepoch(), unixepoch());
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, reading_level, display_order, editorial_status, language, created_at, updated_at, last_verified_at)
VALUES
  ('cs_plc_washington-state_demographics_r3', 'plc_washington-state', 'demographics', 'Demographics', '. They are notable for their ornately carved welcome figures, canoes, long houses and masks. Prominent among their industries were salmon fishing and, notably among the Makah, whale hunting. The peoples of the Interior had a different subsistence-based culture based on hunting, food-gathering and some forms of agriculture, as well as a dependency on salmon from the Columbia and its tributaries.
The area has been known to host megathrust earthquakes in the past, the last being the Cascadia earthquake of 1700.


=== European exploration ===

The first recorded European landing on the Washington coast was by Spanish Captain Don Bruno de Heceta in 1775 at what is now Point Grenville, on board the Santiago, part of a two-ship flotilla with the Sonora. He claimed the coastal lands up to Prince William Sound for Spain as part of their claimed rights under the Treaty of Tordesillas, which they maintained made the Pacific a "Spanish lake" and all its shores part of the Spanish Empire. Soon thereafter, the smallpox epidemic of the 1770s devastated the Native American population.
In 1778, British explorer Captain James Cook sighted Cape Flattery, at the entrance to the Strait of Juan de Fuca, but Cook did not realize the strait existed. It was not discovered until Charles William Barkley, captain of the Imperial Eagle, sighted it in 1787. The straits were further explored by Spanish explorers Manuel Quimper in 1790 and Francisco de Eliza in 1791, and British explorer George Vancouver in',
   'general', 40, 'auto_approved', 'en',
   unixepoch(), unixepoch(), unixepoch());
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, reading_level, display_order, editorial_status, language, created_at, updated_at, last_verified_at)
VALUES
  ('cs_plc_yellowstone-national-park-wyoming_overview_r3', 'plc_yellowstone-national-park-wyoming', 'overview', 'Overview', 'Yellowstone National Park is a national park of the United States located in the northwest corner of the state of Wyoming, with small portions of it extending into Montana and Idaho. The park is known for its wildlife and its many geothermal features, especially the Old Faithful geyser, one of its most popular. While it represents many types of biomes, subalpine forest is the most abundant. It is part of the South Central Rockies forests ecoregion.
Native Americans have lived in the Yellowstone region for at least 11,000 years. While non-native mountain men visited during the early-to-mid-19th century, organized exploration by non-natives did not begin until the late 1860s. It was established by the 42nd U.S. Congress through the Yellowstone National Park Protection Act and signed into law by President Ulysses S. Grant on March 1, 1872. Yellowstone was the first national park in the US, and is also widely understood to be the first national park in the world.
Management and control of the park originally fell under the jurisdiction of the U.S. Department of the Interior, the first Secretary of the Interior to supervise the park being Columbus Delano. However, the U.S. Army was eventually commissioned to oversee the management of Yellowstone for 30 years between 1886 and 1916. In 1917, the administration of the park was transferred to the National Park Service, which had been created the previous year. Hundreds of structures have been built and are protected for their architec',
   'general', 10, 'auto_approved', 'en',
   unixepoch(), unixepoch(), unixepoch());
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, reading_level, display_order, editorial_status, language, created_at, updated_at, last_verified_at)
VALUES
  ('cs_plc_yellowstone-national-park-wyoming_history_r3', 'plc_yellowstone-national-park-wyoming', 'history', 'History', 'tural and historical significance, and researchers have examined more than one thousand indigenous archaeological sites.
Yellowstone National Park spans an area of 3,468.4 sq mi (8,983 km2), with a large variety of lakes and ponds, canyons, rivers, and mountain ranges. Yellowstone Lake is one of the largest high-elevation lakes in North America and covers part of the Yellowstone Caldera, the largest super volcano on the continent. The caldera is considered a dormant volcano. It has erupted with tremendous force twice in the last two million years. Well over half of the world''s geysers and hydrothermal features are in Yellowstone, fueled by this ongoing volcanism. Lava flows and rocks from volcanic eruptions cover most of the land area of Yellowstone. The park is the centerpiece of the Greater Yellowstone Ecosystem, the largest remaining nearly intact ecosystem in the Earth''s northern temperate zone. In 1978, Yellowstone was named a UNESCO World Heritage Site.
Hundreds of species of mammals, birds, fish, reptiles, and amphibians have been documented, including several that are either endangered or threatened. The vast forests and grasslands also include unique species of plants. Yellowstone Park is the largest and most famous megafauna location in the contiguous United States. The park is inhabited by grizzly bears, cougars, wolves, and free-ranging herds of bison and elk. The Yellowstone Park bison herd is the oldest and largest public bison herd in the United States. Forest ',
   'general', 20, 'auto_approved', 'en',
   unixepoch(), unixepoch(), unixepoch());
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, reading_level, display_order, editorial_status, language, created_at, updated_at, last_verified_at)
VALUES
  ('cs_plc_yellowstone-national-park-wyoming_geography_r3', 'plc_yellowstone-national-park-wyoming', 'geography', 'Geography', 'fires occur in the park each year; in the large forest fires of 1988, over one-third of the park was burnt. Yellowstone has numerous recreational opportunities, including hiking, camping, boating, fishing, and sightseeing. Paved roads provide close access to the major geothermal areas as well as some of the lakes and waterfalls. During the winter, visitors often access the park by way of guided tours that use either snow coaches or snowmobiles.


== Name ==
The Yellowstone area is known by many names in surviving Native American languages, for instance pashaka ("white mountain country") in Assiniboine, aw'' pawishe ("land of steam") in Crow, and memut neespah ("boiling earth") in Nez Perce. The English name "Yellowstone" derives from the Hidatsa term for the Yellowstone River, miʔcíiriaashish, which was translated as "Yellow Stone" in 1797 during the expedition of Canadian explorer David Thompson.


== History ==


=== Pre-Columbian era ===
The archaeological record shows continuous use of the Yellowstone region by Native Americans from the earliest era of human presence in the Americas (the Lithic stage, prior to 8500 BC) through to the national park''s founding. During the construction of the post office in Gardiner, Montana, in the 1950s, an obsidian point of Clovis origin was found that dated from approximately 11,000 years ago. The earliest consistent visits to Yellowstone are linked to the Cody complex circa 7300 BC. The Mummy Cave site indicates that the Cody complex fol',
   'general', 30, 'auto_approved', 'en',
   unixepoch(), unixepoch(), unixepoch());
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, reading_level, display_order, editorial_status, language, created_at, updated_at, last_verified_at)
VALUES
  ('cs_plc_yellowstone-national-park-wyoming_demographics_r3', 'plc_yellowstone-national-park-wyoming', 'demographics', 'Demographics', 'lowed migrating bison herds to Yellowstone and regularly mined obsidian from Obsidian Cliff. Excavations within the park show that Cody people camped on the eastern side of Yellowstone Lake during the summers, fishing and boating on the lake and hunting bear, deer, and bison. 
Use of Obsidian Cliff peaked in the Late Prehistoric period (1000 BC–1000 AD). Thousands of pounds of obsidian was transported thousands of miles to Ohio using the Missouri, Mississippi, and Ohio rivers between roughly 200 BC–400 AD for use as ceremonial goods by the Hopewell Culture. Hopewell grave goods include not only obsidian, but also copper shaped to resemble the horns of bighorn sheep native to the Rockies, which suggests the Hopewell may have visited Yellowstone themselves. 
More recently, around 500–1000 AD, the Shoshone summered on the southern end of Yellowstone Lake. It is likely that regular visits to Yellowstone by the Crow, Nez Perce, Blackfoot, and Salish peoples also began in the pre-Columbian era, although archaeological findings are lacking. In oral traditions, the Shoshone, Blackfoot, and Salish recall women gathering cinnabar and other resources at Obsidian Cliff and making prayers there. Pre-Columbian peoples managed Yellowstone''s forest ecosystem using low-intensity fires. They were aware that fire produced green grass which would attract bison.


=== Late Native use and Western exploration ===
The arrival of European horses, followed eventually by mountain men and fur traders in',
   'general', 40, 'auto_approved', 'en',
   unixepoch(), unixepoch(), unixepoch());
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, reading_level, display_order, editorial_status, language, created_at, updated_at, last_verified_at)
VALUES
  ('cs_plc_mit-massachusetts-institute-of-technology_overview_r3', 'plc_mit-massachusetts-institute-of-technology', 'overview', 'Overview', 'The Massachusetts Institute of Technology (MIT) is a private research university in Cambridge, Massachusetts, United States. Founded in 1861 to advance "useful knowledge", the university has played a significant role in the development of many areas of technology and science.
William Barton Rogers founded MIT to accelerate American industrialization through scientific knowledge. Initially funded by a federal land grant, the institute adopted a German polytechnic model emphasizing laboratory instruction in applied science and engineering, and moved from Boston''s Back Bay to its current campus in Cambridge in 1916. Early growth came through research contracts with private industry, though the institute remained financially constrained and focused primarily on practical engineering education into the 1930s.
MIT''s transformation as a research enterprise began during World War II, when projects like the Radiation Laboratory made it the nation''s largest non-industrial R&D contractor. Graduate enrollment and research funding grew rapidly in the postwar decades as faculty members such as Vannevar Bush helped shape federal support for basic science. In the late twentieth century, MIT became closely associated with computer science, artificial intelligence, biotechnology, open-source software development, and "big science" initiatives like the Apollo Guidance Computer and the LIGO project. Engineering remains its largest school, though MIT has also developed prominent programs in basic',
   'general', 10, 'auto_approved', 'en',
   unixepoch(), unixepoch(), unixepoch());
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, reading_level, display_order, editorial_status, language, created_at, updated_at, last_verified_at)
VALUES
  ('cs_plc_mit-massachusetts-institute-of-technology_history_r3', 'plc_mit-massachusetts-institute-of-technology', 'history', 'History', ' science, economics, management, architecture, and humanities.
MIT has an urban campus that extends more than a mile (1.6 km) along the Charles River. Academic buildings are connected by an extensive corridor system. MIT''s off-campus operations include Lincoln Laboratory and Haystack Observatory, as well as affiliated laboratories such as the Broad and Whitehead Institutes. Undergraduate life is known for hands-on research and elaborate pranks. Tuition is generally not charged to undergraduates from families with incomes below $200,000, and most graduate students are funded by research.  
As of October 2024, 105 Nobel laureates, 26 Turing Award winners, and 8 Fields Medalists have been affiliated with MIT as alumni, faculty members, or researchers.  Alumni and faculty have founded many notable companies and served in senior government positions in the United States and abroad.


== History ==


=== Foundation and vision ===
[...] a school of industrial science aiding the advancement, development and practical application of science in connection with arts, agriculture, manufactures, and commerce [...]
In 1859, a proposal was submitted to the Massachusetts General Court to use newly filled lands in Back Bay, Boston for a "Conservatory of Art and Science", but the proposal failed. A charter for the incorporation of the Massachusetts Institute of Technology, proposed by William Barton Rogers, was signed by John Albion Andrew, the governor of Massachusetts, on April 10, 1861.
Rog',
   'general', 20, 'auto_approved', 'en',
   unixepoch(), unixepoch(), unixepoch());
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, reading_level, display_order, editorial_status, language, created_at, updated_at, last_verified_at)
VALUES
  ('cs_plc_mit-massachusetts-institute-of-technology_geography_r3', 'plc_mit-massachusetts-institute-of-technology', 'geography', 'Geography', 'ers, a geologist who had recently arrived in Boston from the University of Virginia, wanted to establish an institution to address rapid scientific and technological advances. He did not wish to found a professional school, but a combination with elements of both professional and liberal education, proposing that:

The true and only practicable object of a polytechnic school is, as I conceive, the teaching, not of the minute details and manipulations of the arts, which can be done only in the workshop, but the inculcation of those scientific principles which form the basis and explanation of them, and along with this, a full and methodical review of all their leading processes and operations in connection with physical laws.
The Rogers Plan reflected the German research university model, emphasizing an independent faculty engaged in research, as well as instruction oriented around seminars and laboratories.


=== Early developments ===

Two days after MIT was chartered, the first battle of the Civil War broke out. After a long delay through the war years, MIT''s first classes were held in the Mercantile Building in Boston in 1865. The new institute was founded as part of the Morrill Land-Grant Colleges Act to fund institutions "to promote the liberal and practical education of the industrial classes" and was a land-grant school. In 1863, under the same act, the Commonwealth of Massachusetts founded the Massachusetts Agricultural College, which later developed into the Universi',
   'general', 30, 'auto_approved', 'en',
   unixepoch(), unixepoch(), unixepoch());
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, reading_level, display_order, editorial_status, language, created_at, updated_at, last_verified_at)
VALUES
  ('cs_plc_mit-massachusetts-institute-of-technology_demographics_r3', 'plc_mit-massachusetts-institute-of-technology', 'demographics', 'Demographics', 'ty of Massachusetts Amherst. In 1866, the proceeds from land sales went toward new buildings in the Back Bay.

MIT was informally called "Boston Tech". The institute adopted the European polytechnic university model and emphasized laboratory instruction from an early date. Despite chronic financial problems, the institute saw growth in the last two decades of the 19th century under President Francis Amasa Walker. Programs in electrical, chemical, marine, and sanitary engineering were introduced, new buildings were built, and the size of the student body increased to more than one thousand.
The curriculum drifted to a vocational emphasis, with less focus on theoretical science. The fledgling school still suffered from chronic financial shortages which diverted the attention of the MIT leadership. During these "Boston Tech" years, MIT faculty and alumni rebuffed Harvard University president (and former MIT faculty) Charles W. Eliot''s repeated attempts to merge MIT with Harvard College''s Lawrence Scientific School. There would be at least six attempts to absorb MIT into Harvard. In its cramped Back Bay location, MIT could not afford to expand its overcrowded facilities, driving a desperate search for a new campus and funding. Eventually, the MIT Corporation approved a formal agreement to merge with Harvard and move to then-remote Allston, over the vehement objections of MIT faculty, students, and alumni. The merger plan collapsed in 1905 when the Massachusetts Supreme Judicial C',
   'general', 40, 'auto_approved', 'en',
   unixepoch(), unixepoch(), unixepoch());
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, reading_level, display_order, editorial_status, language, created_at, updated_at, last_verified_at)
VALUES
  ('cs_plc_california-institute-of-technology-caltech_overview_r3', 'plc_california-institute-of-technology-caltech', 'overview', 'Overview', 'The California Institute of Technology (branded as Caltech) is a private research university in Pasadena, California, United States. The university is responsible for many modern scientific advancements and is among a small group of institutes of technology in the United States that are devoted to the instruction of pure and applied sciences.
The institution was founded as a preparatory and vocational school by Amos G. Throop in 1891 and began attracting influential scientists such as George Ellery Hale, Arthur Amos Noyes, and Robert Andrews Millikan in the early 20th century. The vocational and preparatory schools were disbanded and spun off in 1910, and the college assumed its present name in 1920. In 1934, Caltech was elected to the Association of American Universities, and the antecedents of NASA''s Jet Propulsion Laboratory, which Caltech continues to manage and operate, were established between 1936 and 1943 under Theodore von Kármán.
Caltech has six academic divisions with strong emphasis on science and engineering, managing $332 million in research grants as of 2010. Its 124-acre (50 ha) primary campus is located approximately 11 mi (18 km) northeast of downtown Los Angeles, in Pasadena. First-year students are required to live on campus, and 95% of undergraduates remain in the on-campus housing system at Caltech. Students agree to abide by an honor code which allows faculty to assign take-home examinations. The Caltech Beavers compete in 13 intercollegiate sports in t',
   'general', 10, 'auto_approved', 'en',
   unixepoch(), unixepoch(), unixepoch());
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, reading_level, display_order, editorial_status, language, created_at, updated_at, last_verified_at)
VALUES
  ('cs_plc_california-institute-of-technology-caltech_history_r3', 'plc_california-institute-of-technology-caltech', 'history', 'History', 'he NCAA Division III''s Southern California Intercollegiate Athletic Conference (SCIAC).
Scientists and engineers at or from the university have played an essential role in many modern scientific breakthroughs and innovations, including advances in space research, sustainability science, quantum physics, and seismology. As of October 2024, there are 80 Nobel laureates who have been affiliated with Caltech, making it the institution with the highest number of Nobelists per capita in America. This includes 48 alumni and faculty members (49 prizes, with chemist Linus Pauling being the only individual in history to win two unshared prizes). In addition, 68 National Medal of Science Recipients, 43 MacArthur Fellows, 15 National Medal of Technology and Innovation recipients, 11 astronauts, 5 science advisors to the president, 4 Fields Medalists, and 6 Turing Award winners have been affiliated with Caltech.


== History ==


=== Throop College ===

Caltech started as a vocational school founded in present-day Old Pasadena on Fair Oaks Avenue and Chestnut Street on September 23, 1891, by local businessman and politician Amos G. Throop. The school was known successively as Throop University, Throop Polytechnic Institute (and Manual Training School) and Throop College of Technology before acquiring its current name in 1920. The vocational school was disbanded and the preparatory program was split off to form the independent Polytechnic School in 1907.
At a time when scientific research ',
   'general', 20, 'auto_approved', 'en',
   unixepoch(), unixepoch(), unixepoch());
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, reading_level, display_order, editorial_status, language, created_at, updated_at, last_verified_at)
VALUES
  ('cs_plc_california-institute-of-technology-caltech_geography_r3', 'plc_california-institute-of-technology-caltech', 'geography', 'Geography', 'in the United States was still in its infancy, George Ellery Hale, a solar astronomer from the University of Chicago, founded the Mount Wilson Observatory in 1904. He joined Throop''s board of trustees in 1907, and soon began developing the university, and the whole of Pasadena, into a major scientific and cultural destination. He engineered the appointment of James A. B. Scherer, a literary scholar untutored in science but very capable in administration and fund-raising, to Throop''s presidency in 1908. Scherer persuaded retired businessman and trustee Charles W. Gates to donate $25,000 in seed money (equivalent to $900,000 in 2025) to build Gates Laboratory, the first science building on campus.


=== World Wars ===

In 1910, Throop moved to its current site. Arthur Fleming donated the land for the permanent campus site. Theodore Roosevelt delivered an address at Throop Institute on March 21, 1911, and he declared:

I want to see institutions like Throop turn out perhaps ninety-nine of every hundred students as men who are to do given pieces of industrial work better than any one else can do them; I want to see those men do the kind of work that is now being done on the Panama Canal and on the great irrigation projects in the interior of this country—and the one-hundredth man I want to see with the kind of cultural scientific training that will make him and his fellows the matrix out of which you can occasionally develop a man like your great astronomer, George Ellery Hale.
A',
   'general', 30, 'auto_approved', 'en',
   unixepoch(), unixepoch(), unixepoch());
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, reading_level, display_order, editorial_status, language, created_at, updated_at, last_verified_at)
VALUES
  ('cs_plc_california-institute-of-technology-caltech_demographics_r3', 'plc_california-institute-of-technology-caltech', 'demographics', 'Demographics', 'lso in 1911, a bill was introduced in the California Legislature calling for the establishment of a publicly funded "California Institute of Technology", with an initial budget of a million dollars, ten times the budget of Throop at the time. The board of trustees offered to turn Throop over to the state, but the presidents of Stanford University and the University of California, Berkeley successfully lobbied to defeat the bill, which allowed Throop to develop as the only scientific research-oriented educational institute in southern California, public or private, until the onset of World War II necessitated the broader development of research-based science education. The promise of Throop attracted physical chemist Arthur Amos Noyes from MIT to develop the institution and assist in establishing it as a center for science and technology.
With the onset of World War I, Hale organized the National Research Council to coordinate and support scientific work on military problems. While he supported the idea of federal appropriations for science, he took exception to a federal bill that would have funded engineering research at land-grant colleges, and instead sought to raise a $1 million national research fund entirely from private sources. To that end, as Hale wrote in The New York Times:

Throop College of Technology, in Pasadena California has recently afforded a striking illustration of one way in which the Research Council can secure co-operation and advance scientific invest',
   'general', 40, 'auto_approved', 'en',
   unixepoch(), unixepoch(), unixepoch());
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, reading_level, display_order, editorial_status, language, created_at, updated_at, last_verified_at)
VALUES
  ('cs_plc_united-states-military-academy-west-point_overview_r3', 'plc_united-states-military-academy-west-point', 'overview', 'Overview', 'The United States Military Academy (USMA), commonly known as West Point, is a United States service academy in West Point, New York, that educates cadets for service as commissioned officers in the United States Army. The academy was founded in 1802, and it is the oldest of the five American service academies. The Army has occupied the site since establishing a fort there in 1780 during the American Revolutionary War, as it sits on strategic high ground overlooking the Hudson River 50 miles (80 km) north of New York City.
West Point''s academic program grants the Bachelor of Science degree with a curriculum that grades cadets'' performance upon a broad academic program, military leadership performance, and mandatory participation in competitive athletics. Candidates for admission must apply directly to the academy and receive a nomination, usually from a member of Congress. Students are officers-in-training with the rank of cadet. Collectively, the students at the academy are the "United States Corps of Cadets" (USCC). The Army fully funds tuition for cadets in exchange for an active duty service obligation upon graduation. About 1,300 cadets enter the academy each July, with about 1,000 cadets graduating. The academy began admitting female cadets in 1976, and women now make up around 20% of entrants. The academy''s traditions have influenced other institutions because of its age and unique mission. It was the first American college to have an accredited civil engineering progra',
   'general', 10, 'auto_approved', 'en',
   unixepoch(), unixepoch(), unixepoch());
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, reading_level, display_order, editorial_status, language, created_at, updated_at, last_verified_at)
VALUES
  ('cs_plc_united-states-military-academy-west-point_history_r3', 'plc_united-states-military-academy-west-point', 'history', 'History', 'm, and its technical curriculum became a model for engineering schools. It was also the first college to have class rings.
West Point fields 15 men''s and nine women''s National Collegiate Athletic Association (NCAA) sports teams. Cadets compete in one sport every fall, winter, and spring season at the intramural, club, or intercollegiate level. Its football team was a national power in the early and mid-20th century, winning three national championships. Its alumni are collectively referred to as "The Long Gray Line" and include U.S. presidents Dwight D. Eisenhower and Ulysses S. Grant; Confederate president Jefferson Davis; Confederate generals Robert E. Lee and Stonewall Jackson; American poet Edgar Allan Poe (did not graduate but was court-martialed for intentional neglect of duties); U.S. generals William Tecumseh Sherman, John J. Pershing, Douglas MacArthur, Omar Bradley, and George Patton; presidents of Costa Rica, Nicaragua, and the Philippines; and 76 Medal of Honor recipients.


== History ==


=== Colonial period, founding, and early years ===

The Continental Army first occupied West Point, New York, on 27 January 1778, and it is the oldest continuously operating Army post in the United States. Between 1778 and 1780, the Polish engineer and military hero Tadeusz Kościuszko oversaw the construction of the garrison defenses. However, Kościuszko''s plan of a system of small forts did not meet with the approval of New York Governor (and General) George Clinton or the oth',
   'general', 20, 'auto_approved', 'en',
   unixepoch(), unixepoch(), unixepoch());
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, reading_level, display_order, editorial_status, language, created_at, updated_at, last_verified_at)
VALUES
  ('cs_plc_united-states-military-academy-west-point_geography_r3', 'plc_united-states-military-academy-west-point', 'geography', 'Geography', 'er general officers. It was determined that a battery along the river to "annoy the shipping" was more appropriate, and Washington''s chief engineer, Rufus Putnam, directed the construction of a major fortification on a hill 500 feet (150 m) above sea level that commanded the West Point plain. General Alexander McDougall named it Fort Putnam. The Great Hudson River Chain and high ground above the narrow "S" curve in the river enabled the Continental Army to prevent the Royal Navy from sailing upriver and dividing Patriot forces in the Northern colonies from the south. While the fortifications at West Point were known as Fort Arnold during the war, as commander, Benedict Arnold committed his act of treason, attempting to turn the fort over to the British. After Arnold betrayed the patriot cause, the Army changed the name of the fortifications at West Point, New York, to Fort Clinton, named after General James Clinton. With the peace after the American Revolutionary War, various ordnance and military stores were left deposited at West Point.

"Cadets" underwent training in artillery and engineering studies at the garrison since 1794. During the Quasi-War, Alexander Hamilton laid out plans for the establishment of a military academy at West Point and introduced "A Bill for Establishing a Military Academy" in the House of Representatives. In 1801, shortly after his inauguration as president, Thomas Jefferson directed that plans be set in motion to establish at West Point the Unite',
   'general', 30, 'auto_approved', 'en',
   unixepoch(), unixepoch(), unixepoch());
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, reading_level, display_order, editorial_status, language, created_at, updated_at, last_verified_at)
VALUES
  ('cs_plc_united-states-military-academy-west-point_demographics_r3', 'plc_united-states-military-academy-west-point', 'demographics', 'Demographics', 'd States Military Academy. He selected Jonathan Williams to serve as its first superintendent. Congress formally authorized the establishment and funding of the school with the Military Peace Establishment Act of 1802, which Jefferson signed on 16 March. The academy officially commenced operations on 4 July 1802. The academy graduated Joseph Gardner Swift, its first official graduate, in October 1802. He later returned as Superintendent from 1812 to 1814. In its tumultuous early years, the academy featured few standards for admission or length of study. Cadets ranged in age from 10 years to 37 years and attended between 6 months to 6 years. The impending War of 1812 caused the United States Congress to authorize a more formal system of education at the academy and increased the size of the Corps of Cadets to 250.

In 1817, Colonel Sylvanus Thayer became the Superintendent and established the curriculum, elements of which are still in use as of 2020. Thayer instilled strict disciplinary standards, set a standard course of academic study, and emphasized honorable conduct. He was very much inspired by the curriculum of the French École Polytechnique, where he had been sent upon his demand, for two years in order to study the scientific and technological achievements developed by the French Republican faction and bring them back to the United States. Known as the "Father of the Military Academy," he is honored with a monument on campus for the profound impact he had on the academ',
   'general', 40, 'auto_approved', 'en',
   unixepoch(), unixepoch(), unixepoch());
INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, reading_level, display_order, editorial_status, language, created_at, updated_at, last_verified_at)
VALUES
  ('cs_plc_test_run_overview_r3', 'plc_test_run', 'overview', 'Overview', 'Test(s), testing, or TEST may refer to:

Test (assessment), an educational assessment intended to measure the respondents'' knowledge or other abilities


== Arts and entertainment ==
Test (2013 film), an American film
Test (2014 film), a Russian film
Test (2025 film), an Indian sports drama
Test (2026 film), an American sports drama film
Test (group), a jazz collective
Tests (album), a 1998 album by The Microphones
Testing (album), an album by ASAP Rocky
"Testing" (Dilbert), a 1999 television episode
"Test", a song by Aitch featuring AJ Tracey from the album 4


== Computing ==
.test, a reserved top-level domain
Software testing
test (Unix), a Unix command for evaluating conditional expressions
TEST (x86 instruction), an x86 assembly language instruction


== People ==
Test (wrestler), ring name for Andrew Martin (1975–2009), Canadian professional wrestler
John Test (1781–1849), American politician
Zack Test (born 1989), American rugby union player


== Science and technology ==
Experiment, a procedure carried out in order to test a hypothesis
Statistical hypothesis test, techniques to reach conclusions about probabilistic behavior
Metal testing
Mechanical testing
Proof test, a stress test to demonstrate the fitness of a load-bearing structure
Product testing
Stress testing
System testing
Test equipment
Test (biology), the shell of sea urchins and certain microorganisms


== Sports ==
Test cricket, a series of matches played by two national representative teams
Test match (ru',
   'general', 10, 'auto_approved', 'en',
   unixepoch(), unixepoch(), unixepoch());

-- ========================================
-- Migration 0079: Place events from Wikidata
-- Generated: 2026-08-12
-- Strategy: Fetch P571 (inception), P576 (dissolution), P793 (significant event) from Wikidata
-- Per-place events: cap at 20 (Wikidata has fewer, higher-quality events than Wikipedia text)
-- ========================================

-- Bootstrap: populate place.wikidata_qid where missing
UPDATE place SET wikidata_qid = 'Q16553' WHERE id = 'plc_san-jose';
UPDATE place SET wikidata_qid = 'Q16559' WHERE id = 'plc_austin';
UPDATE place SET wikidata_qid = 'Q980152' WHERE id = 'plc_portland';
UPDATE place SET wikidata_qid = 'Q979971' WHERE id = 'plc_memphis';
UPDATE place SET wikidata_qid = 'Q49233' WHERE id = 'plc_orlando';
UPDATE place SET wikidata_qid = 'Q49266' WHERE id = 'plc_wichita';
UPDATE place SET wikidata_qid = 'Q161562' WHERE id = 'plc_california-institute-of-technology-caltech';
UPDATE place SET wikidata_qid = 'Q9219' WHERE id = 'plc_united-states-military-academy-west-point';
UPDATE place SET wikidata_qid = 'Q5547293' WHERE id = 'plc_georgia';
UPDATE place SET wikidata_qid = 'Q1251262' WHERE id = 'plc_new-york';
UPDATE place SET wikidata_qid = 'Q14946652' WHERE id = 'plc_lexington';
UPDATE place SET wikidata_qid = 'Q49243' WHERE id = 'plc_riverside';
UPDATE place SET wikidata_qid = 'Q49242' WHERE id = 'plc_corpus-christi';
UPDATE place SET wikidata_qid = 'Q49244' WHERE id = 'plc_santa-ana';
UPDATE place SET wikidata_qid = 'Q49240' WHERE id = 'plc_stockton';
UPDATE place SET wikidata_qid = 'Q850812' WHERE id = 'plc_newark';
UPDATE place SET wikidata_qid = 'Q3458655' WHERE id = 'plc_madison';
UPDATE place SET wikidata_qid = 'Q1025974' WHERE id = 'plc_toledo';
UPDATE place SET wikidata_qid = 'Q49268' WHERE id = 'plc_fort-wayne';
UPDATE place SET wikidata_qid = 'Q969432' WHERE id = 'plc_buffalo';
UPDATE place SET wikidata_qid = 'Q599922' WHERE id = 'plc_durham';
UPDATE place SET wikidata_qid = 'Q16868' WHERE id = 'plc_laredo';
UPDATE place SET wikidata_qid = 'Q1028053' WHERE id = 'plc_chesapeake';
UPDATE place SET wikidata_qid = 'Q495377' WHERE id = 'plc_richmond';
UPDATE place SET wikidata_qid = 'Q3001264' WHERE id = 'plc_rochester';
UPDATE place SET wikidata_qid = 'Q3708771' WHERE id = 'plc_worcester';
UPDATE place SET wikidata_qid = 'Q6651738' WHERE id = 'plc_little-rock';
UPDATE place SET wikidata_qid = 'Q981727' WHERE id = 'plc_fayetteville';
UPDATE place SET wikidata_qid = 'Q51691' WHERE id = 'plc_amarillo';
UPDATE place SET wikidata_qid = 'Q981955' WHERE id = 'plc_montgomery';
UPDATE place SET wikidata_qid = 'Q4976750' WHERE id = 'plc_brownsville';
UPDATE place SET wikidata_qid = 'Q335017' WHERE id = 'plc_newport-news';
UPDATE place SET wikidata_qid = 'Q85785993' WHERE id = 'plc_mobile';
UPDATE place SET wikidata_qid = 'Q165972' WHERE id = 'plc_fort-lauderdale';
UPDATE place SET wikidata_qid = 'Q212991' WHERE id = 'plc_santa-rosa';
UPDATE place SET wikidata_qid = 'Q21020957' WHERE id = 'plc_salem';
UPDATE place SET wikidata_qid = 'Q131335' WHERE id = 'plc_sioux-falls';
UPDATE place SET wikidata_qid = 'Q490732' WHERE id = 'plc_fort-collins';
UPDATE place SET wikidata_qid = 'Q924022' WHERE id = 'plc_springfield';
UPDATE place SET wikidata_qid = 'Q5127671' WHERE id = 'plc_clarksville';
UPDATE place SET wikidata_qid = 'Q488125' WHERE id = 'plc_salinas';
UPDATE place SET wikidata_qid = 'Q1966879' WHERE id = 'plc_jackson';
UPDATE place SET wikidata_qid = 'Q233892' WHERE id = 'plc_rockford';
UPDATE place SET wikidata_qid = 'Q48851204' WHERE id = 'plc_joliet';
UPDATE place SET wikidata_qid = 'Q979889' WHERE id = 'plc_gainesville';
UPDATE place SET wikidata_qid = 'Q128069' WHERE id = 'plc_syracuse';
UPDATE place SET wikidata_qid = 'Q491350' WHERE id = 'plc_orange';
UPDATE place SET wikidata_qid = 'Q128996465' WHERE id = 'plc_charleston';
UPDATE place SET wikidata_qid = 'Q6842292' WHERE id = 'plc_midland';
UPDATE place SET wikidata_qid = 'Q128306' WHERE id = 'plc_denton';
UPDATE place SET wikidata_qid = 'Q1884356' WHERE id = 'plc_cedar-rapids';
UPDATE place SET wikidata_qid = 'Q526217' WHERE id = 'plc_elizabeth';
UPDATE place SET wikidata_qid = 'Q2025799' WHERE id = 'plc_norman';
UPDATE place SET wikidata_qid = 'Q128295' WHERE id = 'plc_abilene';
UPDATE place SET wikidata_qid = 'Q284803' WHERE id = 'plc_lafayette';
UPDATE place SET wikidata_qid = 'Q163749' WHERE id = 'plc_west-palm-beach';
UPDATE place SET wikidata_qid = 'Q134835942' WHERE id = 'plc_allentown';
UPDATE place SET wikidata_qid = 'Q5435093' WHERE id = 'plc_fargo';
UPDATE place SET wikidata_qid = 'Q485172' WHERE id = 'plc_ann-arbor';
UPDATE place SET wikidata_qid = 'Q3709202' WHERE id = 'plc_wilmington';
UPDATE place SET wikidata_qid = 'Q813431' WHERE id = 'plc_beaumont';
UPDATE place SET wikidata_qid = 'Q23709417' WHERE id = 'plc_provo';
UPDATE place SET wikidata_qid = 'Q323432' WHERE id = 'plc_fairfield';
UPDATE place SET wikidata_qid = 'Q5602128' WHERE id = 'plc_greeley';
UPDATE place SET wikidata_qid = 'Q1010525' WHERE id = 'plc_everett';
UPDATE place SET wikidata_qid = 'Q4949523' WHERE id = 'plc_boulder';
UPDATE place SET wikidata_qid = 'Q5602316' WHERE id = 'plc_green-bay';
UPDATE place SET wikidata_qid = 'Q128349' WHERE id = 'plc_wichita-falls';
UPDATE place SET wikidata_qid = 'Q7859927' WHERE id = 'plc_tyler';
UPDATE place SET wikidata_qid = 'Q3476179' WHERE id = 'plc_davenport';
UPDATE place SET wikidata_qid = 'Q982462' WHERE id = 'plc_hillsboro';
UPDATE place SET wikidata_qid = 'Q9020417' WHERE id = 'plc_las-cruces';
UPDATE place SET wikidata_qid = 'Q671480' WHERE id = 'plc_albany';
UPDATE place SET wikidata_qid = 'Q969223' WHERE id = 'plc_roanoke';
UPDATE place SET wikidata_qid = 'Q925598' WHERE id = 'plc_san-angelo';
UPDATE place SET wikidata_qid = 'Q462161' WHERE id = 'plc_kenosha';
UPDATE place SET wikidata_qid = 'Q234061' WHERE id = 'plc_erie';
UPDATE place SET wikidata_qid = 'Q5459470' WHERE id = 'plc_flint';
UPDATE place SET wikidata_qid = 'Q490434' WHERE id = 'plc_ventura';
UPDATE place SET wikidata_qid = 'Q38249691' WHERE id = 'plc_lawton';
UPDATE place SET wikidata_qid = 'Q685335' WHERE id = 'plc_portsmouth';
UPDATE place SET wikidata_qid = 'Q79820' WHERE id = 'plc_yuma';
UPDATE place SET wikidata_qid = 'Q648501' WHERE id = 'plc_asheville';
UPDATE place SET wikidata_qid = 'Q22076519' WHERE id = 'plc_lawrence';
UPDATE place SET wikidata_qid = 'Q499203' WHERE id = 'plc_yakima';
UPDATE place SET wikidata_qid = 'Q159288' WHERE id = 'plc_santa-barbara';
UPDATE place SET wikidata_qid = 'Q495361' WHERE id = 'plc_redding';
UPDATE place SET wikidata_qid = 'Q112967965' WHERE id = 'plc_macon';
UPDATE place SET wikidata_qid = 'Q2700934' WHERE id = 'plc_greenville';
UPDATE place SET wikidata_qid = 'Q979435' WHERE id = 'plc_trenton';
UPDATE place SET wikidata_qid = 'Q7820393' WHERE id = 'plc_toms-river';
UPDATE place SET wikidata_qid = 'Q578289' WHERE id = 'plc_waukegan';
UPDATE place SET wikidata_qid = 'Q342428' WHERE id = 'plc_suffolk';
UPDATE place SET wikidata_qid = 'Q2673322' WHERE id = 'plc_reading';
UPDATE place SET wikidata_qid = 'Q490441' WHERE id = 'plc_concord';
UPDATE place SET wikidata_qid = 'Q977059' WHERE id = 'plc_santa-fe';
UPDATE place SET wikidata_qid = 'Q4886973' WHERE id = 'plc_bend';
UPDATE place SET wikidata_qid = 'Q285751' WHERE id = 'plc_duluth';
UPDATE place SET wikidata_qid = 'Q3357955' WHERE id = 'plc_ogden';
UPDATE place SET wikidata_qid = 'Q505549' WHERE id = 'plc_redwood-city';
UPDATE place SET wikidata_qid = 'Q430267' WHERE id = 'plc_bellingham';
UPDATE place SET wikidata_qid = 'Q978246' WHERE id = 'plc_edinburg';
UPDATE place SET wikidata_qid = 'Q885396' WHERE id = 'plc_bloomington';
UPDATE place SET wikidata_qid = 'Q489255' WHERE id = 'plc_sioux-city';
UPDATE place SET wikidata_qid = 'Q499189' WHERE id = 'plc_merced';
UPDATE place SET wikidata_qid = 'Q852645' WHERE id = 'plc_longview';
UPDATE place SET wikidata_qid = 'Q695556' WHERE id = 'plc_bryan';
UPDATE place SET wikidata_qid = 'Q60537' WHERE id = 'plc_napa';
UPDATE place SET wikidata_qid = 'Q6708461' WHERE id = 'plc_lynchburg';
UPDATE place SET wikidata_qid = 'Q2573670' WHERE id = 'plc_medford';
UPDATE place SET wikidata_qid = 'Q2454935' WHERE id = 'plc_racine';
UPDATE place SET wikidata_qid = 'Q7438733' WHERE id = 'plc_scranton';
UPDATE place SET wikidata_qid = 'Q48441856' WHERE id = 'plc_saint-joseph';
UPDATE place SET wikidata_qid = 'Q5025715' WHERE id = 'plc_camden';
UPDATE place SET wikidata_qid = 'Q864106' WHERE id = 'plc_lake-charles';
UPDATE place SET wikidata_qid = 'Q6350366' WHERE id = 'plc_kalamazoo';
UPDATE place SET wikidata_qid = 'Q1875878' WHERE id = 'plc_bismarck';
UPDATE place SET wikidata_qid = 'Q22076489' WHERE id = 'plc_gastonia';
UPDATE place SET wikidata_qid = 'Q487977' WHERE id = 'plc_iowa-city';
UPDATE place SET wikidata_qid = 'Q4781378' WHERE id = 'plc_appleton';
UPDATE place SET wikidata_qid = 'Q506451' WHERE id = 'plc_fort-myers';
UPDATE place SET wikidata_qid = 'Q27430193' WHERE id = 'plc_rapid-city';
UPDATE place SET wikidata_qid = 'Q674049' WHERE id = 'plc_decatur';
UPDATE place SET wikidata_qid = 'Q5390651' WHERE id = 'plc_franklin';
UPDATE place SET wikidata_qid = 'Q7975157' WHERE id = 'plc_waukesha';
UPDATE place SET wikidata_qid = 'Q281481' WHERE id = 'plc_canton';
UPDATE place SET wikidata_qid = 'Q189602' WHERE id = 'plc_missoula';
UPDATE place SET wikidata_qid = 'Q574612' WHERE id = 'plc_new-braunfels';
UPDATE place SET wikidata_qid = 'Q79842' WHERE id = 'plc_flagstaff';
UPDATE place SET wikidata_qid = 'Q2039265' WHERE id = 'plc_muncie';
UPDATE place SET wikidata_qid = 'Q22083050' WHERE id = 'plc_frederick';
UPDATE place SET wikidata_qid = 'Q22134093' WHERE id = 'plc_pasco';
UPDATE place SET wikidata_qid = 'Q583894' WHERE id = 'plc_kissimmee';
UPDATE place SET wikidata_qid = 'Q260282' WHERE id = 'plc_conroe';
UPDATE place SET wikidata_qid = 'Q79519' WHERE id = 'plc_dothan';
UPDATE place SET wikidata_qid = 'Q6166550' WHERE id = 'plc_waterloo';
UPDATE place SET wikidata_qid = 'Q1134558' WHERE id = 'plc_eau-claire';
UPDATE place SET wikidata_qid = 'Q784496' WHERE id = 'plc_victoria';
UPDATE place SET wikidata_qid = 'Q7355621' WHERE id = 'plc_rockville';
UPDATE place SET wikidata_qid = 'Q169948' WHERE id = 'plc_yuba-city';
UPDATE place SET wikidata_qid = 'Q936741' WHERE id = 'plc_oshkosh';
UPDATE place SET wikidata_qid = 'Q7401131' WHERE id = 'plc_saint-cloud';
UPDATE place SET wikidata_qid = 'Q730938' WHERE id = 'plc_ellicott-city';
UPDATE place SET wikidata_qid = 'Q296142' WHERE id = 'plc_saint-charles';
UPDATE place SET wikidata_qid = 'Q331380' WHERE id = 'plc_schenectady';
UPDATE place SET wikidata_qid = 'Q1019287' WHERE id = 'plc_cheyenne';
UPDATE place SET wikidata_qid = 'Q492819' WHERE id = 'plc_broomfield';
UPDATE place SET wikidata_qid = 'Q14212316' WHERE id = 'plc_conway';
UPDATE place SET wikidata_qid = 'Q29043843' WHERE id = 'plc_youngstown';
UPDATE place SET wikidata_qid = 'Q159232' WHERE id = 'plc_santa-cruz';
UPDATE place SET wikidata_qid = 'Q851000' WHERE id = 'plc_madera';
UPDATE place SET wikidata_qid = 'Q3138794' WHERE id = 'plc_janesville';
UPDATE place SET wikidata_qid = 'Q2695764' WHERE id = 'plc_georgetown';
UPDATE place SET wikidata_qid = 'Q2154315' WHERE id = 'plc_bowling-green';
UPDATE place SET wikidata_qid = 'Q695565' WHERE id = 'plc_council-bluffs';
UPDATE place SET wikidata_qid = 'Q5644748' WHERE id = 'plc_hamilton';
UPDATE place SET wikidata_qid = 'Q23817811' WHERE id = 'plc_utica';
UPDATE place SET wikidata_qid = 'Q7703338' WHERE id = 'plc_terre-haute';
UPDATE place SET wikidata_qid = 'Q506411' WHERE id = 'plc_san-marcos';
UPDATE place SET wikidata_qid = 'Q3292509' WHERE id = 'plc_grand-junction';
UPDATE place SET wikidata_qid = 'Q223177' WHERE id = 'plc_casper';
UPDATE place SET wikidata_qid = 'Q7228207' WHERE id = 'plc_pontiac';
UPDATE place SET wikidata_qid = 'Q466190' WHERE id = 'plc_great-falls';
UPDATE place SET wikidata_qid = 'Q494711' WHERE id = 'plc_lancaster';
UPDATE place SET wikidata_qid = 'Q496360' WHERE id = 'plc_idaho-falls';
UPDATE place SET wikidata_qid = 'Q631915' WHERE id = 'plc_san-rafael';
UPDATE place SET wikidata_qid = 'Q1645069' WHERE id = 'plc_noblesville';
UPDATE place SET wikidata_qid = 'Q976351' WHERE id = 'plc_marietta';
UPDATE place SET wikidata_qid = 'Q494295' WHERE id = 'plc_owensboro';
UPDATE place SET wikidata_qid = 'Q493794' WHERE id = 'plc_dubuque';
UPDATE place SET wikidata_qid = 'Q1045455' WHERE id = 'plc_carson-city';
UPDATE place SET wikidata_qid = 'Q837129' WHERE id = 'plc_woodland';
UPDATE place SET wikidata_qid = 'Q462177' WHERE id = 'plc_white-plains';
UPDATE place SET wikidata_qid = 'Q918195' WHERE id = 'plc_ocala';
UPDATE place SET wikidata_qid = 'Q981893' WHERE id = 'plc_sanford';
UPDATE place SET wikidata_qid = 'Q135397529' WHERE id = 'plc_kokomo';
UPDATE place SET wikidata_qid = 'Q7005773' WHERE id = 'plc_new-brunswick';
UPDATE place SET wikidata_qid = 'Q85764277' WHERE id = 'plc_grand-forks';
UPDATE place SET wikidata_qid = 'Q7688775' WHERE id = 'plc_taunton';
UPDATE place SET wikidata_qid = 'Q524285' WHERE id = 'plc_corvallis';
UPDATE place SET wikidata_qid = 'Q30625075' WHERE id = 'plc_olympia';
UPDATE place SET wikidata_qid = 'Q1010240' WHERE id = 'plc_valdosta';
UPDATE place SET wikidata_qid = 'Q375185' WHERE id = 'plc_hanford';
UPDATE place SET wikidata_qid = 'Q1023555' WHERE id = 'plc_castle-rock';
UPDATE place SET wikidata_qid = 'Q491469' WHERE id = 'plc_anderson';
UPDATE place SET wikidata_qid = 'Q755615' WHERE id = 'plc_towson';
UPDATE place SET wikidata_qid = 'Q491540' WHERE id = 'plc_sarasota';
UPDATE place SET wikidata_qid = 'Q320729' WHERE id = 'plc_pocatello';
UPDATE place SET wikidata_qid = 'Q582121' WHERE id = 'plc_bradenton';
UPDATE place SET wikidata_qid = 'Q932561' WHERE id = 'plc_elyria';
UPDATE place SET wikidata_qid = 'Q486306' WHERE id = 'plc_pensacola';
UPDATE place SET wikidata_qid = 'Q575315' WHERE id = 'plc_wheaton';
UPDATE place SET wikidata_qid = 'Q511935' WHERE id = 'plc_harrisonburg';
UPDATE place SET wikidata_qid = 'Q14687741' WHERE id = 'plc_la-crosse';
UPDATE place SET wikidata_qid = 'Q984361' WHERE id = 'plc_enid';
UPDATE place SET wikidata_qid = 'Q982603' WHERE id = 'plc_caldwell';
UPDATE place SET wikidata_qid = 'Q5594675' WHERE id = 'plc_grand-island';
UPDATE place SET wikidata_qid = 'Q1812230' WHERE id = 'plc_leesburg';
UPDATE place SET wikidata_qid = 'Q6666885' WHERE id = 'plc_logan';
UPDATE place SET wikidata_qid = 'Q16462308' WHERE id = 'plc_harrisburg';
UPDATE place SET wikidata_qid = 'Q135744' WHERE id = 'plc_galveston';
UPDATE place SET wikidata_qid = 'Q975226' WHERE id = 'plc_troy';
UPDATE place SET wikidata_qid = 'Q982523' WHERE id = 'plc_wilson';
UPDATE place SET wikidata_qid = 'Q130391555' WHERE id = 'plc_monroe';
UPDATE place SET wikidata_qid = 'Q6869327' WHERE id = 'plc_minot';
UPDATE place SET wikidata_qid = 'Q970802' WHERE id = 'plc_saginaw';
UPDATE place SET wikidata_qid = 'Q7408465' WHERE id = 'plc_stillwater';
UPDATE place SET wikidata_qid = 'Q984834' WHERE id = 'plc_sheboygan';
UPDATE place SET wikidata_qid = 'Q973561' WHERE id = 'plc_huntington';
UPDATE place SET wikidata_qid = 'Q7370091' WHERE id = 'plc_roswell';
UPDATE place SET wikidata_qid = 'Q808535' WHERE id = 'plc_barnstable';
UPDATE place SET wikidata_qid = 'Q3708563' WHERE id = 'plc_salina';
UPDATE place SET wikidata_qid = 'Q548384' WHERE id = 'plc_twin-falls';
UPDATE place SET wikidata_qid = 'Q49012' WHERE id = 'plc_san-luis-obispo';
UPDATE place SET wikidata_qid = 'Q3453123' WHERE id = 'plc_jeffersonville';
UPDATE place SET wikidata_qid = 'Q974040' WHERE id = 'plc_mansfield';
UPDATE place SET wikidata_qid = 'Q384464' WHERE id = 'plc_hattiesburg';
UPDATE place SET wikidata_qid = 'Q123766' WHERE id = 'plc_charlottesville';
UPDATE place SET wikidata_qid = 'Q2671726' WHERE id = 'plc_littleton';
UPDATE place SET wikidata_qid = 'Q213814' WHERE id = 'plc_binghamton';
UPDATE place SET wikidata_qid = 'Q983779' WHERE id = 'plc_titusville';
UPDATE place SET wikidata_qid = 'Q2145285' WHERE id = 'plc_hackensack';
UPDATE place SET wikidata_qid = 'Q7195063' WHERE id = 'plc_pine-bluff';
UPDATE place SET wikidata_qid = 'Q4890650' WHERE id = 'plc_bentonville';
UPDATE place SET wikidata_qid = 'Q584340' WHERE id = 'plc_fort-pierce';
UPDATE place SET wikidata_qid = 'Q3709687' WHERE id = 'plc_york';
UPDATE place SET wikidata_qid = 'Q495369' WHERE id = 'plc_el-centro';
UPDATE place SET wikidata_qid = 'Q3179996' WHERE id = 'plc_augusta';
UPDATE place SET wikidata_qid = 'Q569678' WHERE id = 'plc_bozeman';
UPDATE place SET wikidata_qid = 'Q216258' WHERE id = 'plc_hilo';
UPDATE place SET wikidata_qid = 'Q985584' WHERE id = 'plc_fond-du-lac';
UPDATE place SET wikidata_qid = 'Q2789813' WHERE id = 'plc_jefferson-city';
UPDATE place SET wikidata_qid = 'Q383014' WHERE id = 'plc_rockwall';
UPDATE place SET wikidata_qid = 'Q4999191' WHERE id = 'plc_burlington';
UPDATE place SET wikidata_qid = 'Q3481314' WHERE id = 'plc_urbana';
UPDATE place SET wikidata_qid = 'Q846586' WHERE id = 'plc_danville';
UPDATE place SET wikidata_qid = 'Q975590' WHERE id = 'plc_lufkin';
UPDATE place SET wikidata_qid = 'Q6586' WHERE id = 'plc_rome';
UPDATE place SET wikidata_qid = 'Q2391559' WHERE id = 'plc_del-rio';
UPDATE place SET wikidata_qid = 'Q1490945' WHERE id = 'plc_gadsden';
UPDATE place SET wikidata_qid = 'Q1025813' WHERE id = 'plc_leavenworth';
UPDATE place SET wikidata_qid = 'Q7101121' WHERE id = 'plc_oregon-city';
UPDATE place SET wikidata_qid = 'Q5580286' WHERE id = 'plc_goldsboro';
UPDATE place SET wikidata_qid = 'Q3146940' WHERE id = 'plc_tupelo';
UPDATE place SET wikidata_qid = 'Q16460377' WHERE id = 'plc_hot-springs';
UPDATE place SET wikidata_qid = 'Q2553690' WHERE id = 'plc_prattville';
UPDATE place SET wikidata_qid = 'Q20711300' WHERE id = 'plc_norristown';
UPDATE place SET wikidata_qid = 'Q980889' WHERE id = 'plc_gallatin';
UPDATE place SET wikidata_qid = 'Q357471' WHERE id = 'plc_houma';
UPDATE place SET wikidata_qid = 'Q2617226' WHERE id = 'plc_butte';
UPDATE place SET wikidata_qid = 'Q1650199' WHERE id = 'plc_benton';
UPDATE place SET wikidata_qid = 'Q7404729' WHERE id = 'plc_salisbury';
UPDATE place SET wikidata_qid = 'Q812071' WHERE id = 'plc_bay-city';
UPDATE place SET wikidata_qid = 'Q970482' WHERE id = 'plc_nacogdoches';
UPDATE place SET wikidata_qid = 'Q1208413' WHERE id = 'plc_mcminnville';
UPDATE place SET wikidata_qid = 'Q125156507' WHERE id = 'plc_dalton';
UPDATE place SET wikidata_qid = 'Q958596' WHERE id = 'plc_wenatchee';
UPDATE place SET wikidata_qid = 'Q3053698' WHERE id = 'plc_new-city';
UPDATE place SET wikidata_qid = 'Q1994691' WHERE id = 'plc_hinesville';
UPDATE place SET wikidata_qid = 'Q645475' WHERE id = 'plc_waxahachie';
UPDATE place SET wikidata_qid = 'Q7161037' WHERE id = 'plc_pekin';
UPDATE place SET wikidata_qid = 'Q482937' WHERE id = 'plc_tooele';
UPDATE place SET wikidata_qid = 'Q19462691' WHERE id = 'plc_kearney';
UPDATE place SET wikidata_qid = 'Q536759' WHERE id = 'plc_manitowoc';
UPDATE place SET wikidata_qid = 'Q2136629' WHERE id = 'plc_goshen';
UPDATE place SET wikidata_qid = 'Q2856147' WHERE id = 'plc_douglasville';
UPDATE place SET wikidata_qid = 'Q16872963' WHERE id = 'plc_gillette';
UPDATE place SET wikidata_qid = 'Q614148' WHERE id = 'plc_valparaiso';
UPDATE place SET wikidata_qid = 'Q2394912' WHERE id = 'plc_lewiston';
UPDATE place SET wikidata_qid = 'Q7178162' WHERE id = 'plc_petersburg';
UPDATE place SET wikidata_qid = 'Q3458774' WHERE id = 'plc_bangor';
UPDATE place SET wikidata_qid = 'Q107271479' WHERE id = 'plc_fairbanks';
UPDATE place SET wikidata_qid = 'Q7962683' WHERE id = 'plc_walla-walla';
UPDATE place SET wikidata_qid = 'Q327515' WHERE id = 'plc_laramie';
UPDATE place SET wikidata_qid = 'Q2456192' WHERE id = 'plc_cookeville';
UPDATE place SET wikidata_qid = 'Q5703481' WHERE id = 'plc_helena';
UPDATE place SET wikidata_qid = 'Q28005978' WHERE id = 'plc_west-bend';
UPDATE place SET wikidata_qid = 'Q2117694' WHERE id = 'plc_winchester';
UPDATE place SET wikidata_qid = 'Q977312' WHERE id = 'plc_winona';
UPDATE place SET wikidata_qid = 'Q488702' WHERE id = 'plc_eureka';
UPDATE place SET wikidata_qid = 'Q3025151' WHERE id = 'plc_garden-city';
UPDATE place SET wikidata_qid = 'Q758542' WHERE id = 'plc_auburn';
UPDATE place SET wikidata_qid = 'Q2152341' WHERE id = 'plc_williston';
UPDATE place SET wikidata_qid = 'Q3389296' WHERE id = 'plc_easton';
UPDATE place SET wikidata_qid = 'Q2453592' WHERE id = 'plc_watertown';
UPDATE place SET wikidata_qid = 'Q989567' WHERE id = 'plc_wooster';
UPDATE place SET wikidata_qid = 'Q578351' WHERE id = 'plc_kankakee';
UPDATE place SET wikidata_qid = 'Q991209' WHERE id = 'plc_stevens-point';
UPDATE place SET wikidata_qid = 'Q1012650' WHERE id = 'plc_superior';
UPDATE place SET wikidata_qid = 'Q49220' WHERE id = 'plc_fremont';
UPDATE place SET wikidata_qid = 'Q6806892' WHERE id = 'plc_medina';
UPDATE place SET wikidata_qid = 'Q970495' WHERE id = 'plc_kingsville';
UPDATE place SET wikidata_qid = 'Q553956' WHERE id = 'plc_statesville';
UPDATE place SET wikidata_qid = 'Q128261' WHERE id = 'plc_carrollton';
UPDATE place SET wikidata_qid = 'Q725046' WHERE id = 'plc_asheboro';
UPDATE place SET wikidata_qid = 'Q5134021' WHERE id = 'plc_clinton';
UPDATE place SET wikidata_qid = 'Q125934' WHERE id = 'plc_mount-pleasant';
UPDATE place SET wikidata_qid = 'Q2671911' WHERE id = 'plc_xenia';
UPDATE place SET wikidata_qid = 'Q6398104' WHERE id = 'plc_key-west';
UPDATE place SET wikidata_qid = 'Q853577' WHERE id = 'plc_owatonna';
UPDATE place SET wikidata_qid = 'Q6511037' WHERE id = 'plc_lebanon';
UPDATE place SET wikidata_qid = 'Q8066138' WHERE id = 'plc_zanesville';
UPDATE place SET wikidata_qid = 'Q20880792' WHERE id = 'plc_starkville';
UPDATE place SET wikidata_qid = 'Q48739592' WHERE id = 'plc_sandusky';
UPDATE place SET wikidata_qid = 'Q280102' WHERE id = 'plc_chaska';
UPDATE place SET wikidata_qid = 'Q608293' WHERE id = 'plc_woodstock';
UPDATE place SET wikidata_qid = 'Q1132213' WHERE id = 'plc_ardmore';
UPDATE place SET wikidata_qid = 'Q185609' WHERE id = 'plc_belvidere';
UPDATE place SET wikidata_qid = 'Q6915443' WHERE id = 'plc_moscow';
UPDATE place SET wikidata_qid = 'Q2024803' WHERE id = 'plc_bridgeton';
UPDATE place SET wikidata_qid = 'Q1133659' WHERE id = 'plc_edwardsville';
UPDATE place SET wikidata_qid = 'Q2092792' WHERE id = 'plc_hastings';
UPDATE place SET wikidata_qid = 'Q982382' WHERE id = 'plc_paducah';
UPDATE place SET wikidata_qid = 'Q830149' WHERE id = 'plc_paris';
UPDATE place SET wikidata_qid = 'Q1758615' WHERE id = 'plc_dedham';
UPDATE place SET wikidata_qid = 'Q983761' WHERE id = 'plc_fort-dodge';
UPDATE place SET wikidata_qid = 'Q5374397' WHERE id = 'plc_emporia';
UPDATE place SET wikidata_qid = 'Q853566' WHERE id = 'plc_ottumwa';
UPDATE place SET wikidata_qid = 'Q6646063' WHERE id = 'plc_junction-city';
UPDATE place SET wikidata_qid = 'Q5501102' WHERE id = 'plc_freeport';
UPDATE place SET wikidata_qid = 'Q575509' WHERE id = 'plc_staunton';
UPDATE place SET wikidata_qid = 'Q241912' WHERE id = 'plc_searcy';
UPDATE place SET wikidata_qid = 'Q989960' WHERE id = 'plc_north-platte';
UPDATE place SET wikidata_qid = 'Q2108879' WHERE id = 'plc_fairfax';
UPDATE place SET wikidata_qid = 'Q955896' WHERE id = 'plc_muscatine';
UPDATE place SET wikidata_qid = 'Q14681916' WHERE id = 'plc_elk-river';
UPDATE place SET wikidata_qid = 'Q939602' WHERE id = 'plc_corsicana';
UPDATE place SET wikidata_qid = 'Q6773450' WHERE id = 'plc_marshall';
UPDATE place SET wikidata_qid = 'Q975572' WHERE id = 'plc_dickinson';
UPDATE place SET wikidata_qid = 'Q1630187' WHERE id = 'plc_brookings';
UPDATE place SET wikidata_qid = 'Q177861' WHERE id = 'plc_faribault';
UPDATE place SET wikidata_qid = 'Q4956736' WHERE id = 'plc_brandon';
UPDATE place SET wikidata_qid = 'Q6413411' WHERE id = 'plc_kingston';
UPDATE place SET wikidata_qid = 'Q3708755' WHERE id = 'plc_mcdonough';
UPDATE place SET wikidata_qid = 'Q2153124' WHERE id = 'plc_crestview';
UPDATE place SET wikidata_qid = 'Q2658906' WHERE id = 'plc_keene';
UPDATE place SET wikidata_qid = 'Q5604928' WHERE id = 'plc_greenwood';
UPDATE place SET wikidata_qid = 'Q577981' WHERE id = 'plc_gallup';
UPDATE place SET wikidata_qid = 'Q5314235' WHERE id = 'plc_duncan';
UPDATE place SET wikidata_qid = 'Q5608769' WHERE id = 'plc_griffin';
UPDATE place SET wikidata_qid = 'Q525007' WHERE id = 'plc_kerrville';
UPDATE place SET wikidata_qid = 'Q5860365' WHERE id = 'plc_vicksburg';
UPDATE place SET wikidata_qid = 'Q3708399' WHERE id = 'plc_van-buren';
UPDATE place SET wikidata_qid = 'Q950966' WHERE id = 'plc_marysville';
UPDATE place SET wikidata_qid = 'Q2233477' WHERE id = 'plc_farmington';
UPDATE place SET wikidata_qid = 'Q16460216' WHERE id = 'plc_hopewell';
UPDATE place SET wikidata_qid = 'Q3131938' WHERE id = 'plc_new-castle';
UPDATE place SET wikidata_qid = 'Q404979' WHERE id = 'plc_anniston';
UPDATE place SET wikidata_qid = 'Q1507715' WHERE id = 'plc_ruston';
UPDATE place SET wikidata_qid = 'Q7115202' WHERE id = 'plc_oxford';
UPDATE place SET wikidata_qid = 'Q913225' WHERE id = 'plc_pascagoula';
UPDATE place SET wikidata_qid = 'Q7368113' WHERE id = 'plc_roseburg';
UPDATE place SET wikidata_qid = 'Q853175' WHERE id = 'plc_kalispell';
UPDATE place SET wikidata_qid = 'Q599407' WHERE id = 'plc_christiansburg';
UPDATE place SET wikidata_qid = 'Q2980048' WHERE id = 'plc_geneva';
UPDATE place SET wikidata_qid = 'Q975508' WHERE id = 'plc_chillicothe';
UPDATE place SET wikidata_qid = 'Q981436' WHERE id = 'plc_lumberton';
UPDATE place SET wikidata_qid = 'Q7445106' WHERE id = 'plc_sedalia';
UPDATE place SET wikidata_qid = 'Q64432910' WHERE id = 'plc_naples';
UPDATE place SET wikidata_qid = 'Q983596' WHERE id = 'plc_greenfield';
UPDATE place SET wikidata_qid = 'Q1181108' WHERE id = 'plc_waynesboro';
UPDATE place SET wikidata_qid = 'Q846146' WHERE id = 'plc_klamath-falls';
UPDATE place SET wikidata_qid = 'Q6747799' WHERE id = 'plc_mandan';
UPDATE place SET wikidata_qid = 'Q2048581' WHERE id = 'plc_kinston';
UPDATE place SET wikidata_qid = 'Q7493430' WHERE id = 'plc_shelbyville';
UPDATE place SET wikidata_qid = 'Q581365' WHERE id = 'plc_marquette';
UPDATE place SET wikidata_qid = 'Q982185' WHERE id = 'plc_hays';
UPDATE place SET wikidata_qid = 'Q7200765' WHERE id = 'plc_plainview';
UPDATE place SET wikidata_qid = 'Q7508916' WHERE id = 'plc_sidney';
UPDATE place SET wikidata_qid = 'Q21197816' WHERE id = 'plc_liberal';
UPDATE place SET wikidata_qid = 'Q1133562' WHERE id = 'plc_chambersburg';
UPDATE place SET wikidata_qid = 'Q982091' WHERE id = 'plc_adrian';
UPDATE place SET wikidata_qid = 'Q1077109' WHERE id = 'plc_lockport';
UPDATE place SET wikidata_qid = 'Q3240318' WHERE id = 'plc_sapulpa';
UPDATE place SET wikidata_qid = 'Q744550' WHERE id = 'plc_belton';
UPDATE place SET wikidata_qid = 'Q5579062' WHERE id = 'plc_golden';
UPDATE place SET wikidata_qid = 'Q1006582' WHERE id = 'plc_ashland';
UPDATE place SET wikidata_qid = 'Q22022445' WHERE id = 'plc_elko';
UPDATE place SET wikidata_qid = 'Q79783' WHERE id = 'plc_nogales';
UPDATE place SET wikidata_qid = 'Q7493342' WHERE id = 'plc_shelby';
UPDATE place SET wikidata_qid = 'Q2036253' WHERE id = 'plc_cumberland';
UPDATE place SET wikidata_qid = 'Q981525' WHERE id = 'plc_stephenville';
UPDATE place SET wikidata_qid = 'Q955386' WHERE id = 'plc_rolla';
UPDATE place SET wikidata_qid = 'Q3506095' WHERE id = 'plc_warrensburg';
UPDATE place SET wikidata_qid = 'Q1010244' WHERE id = 'plc_west-chester';
UPDATE place SET wikidata_qid = 'Q998669' WHERE id = 'plc_plattsburgh';
UPDATE place SET wikidata_qid = 'Q998689' WHERE id = 'plc_painesville';
UPDATE place SET wikidata_qid = 'Q1986492' WHERE id = 'plc_willmar';
UPDATE place SET wikidata_qid = 'Q975754' WHERE id = 'plc_madisonville';
UPDATE place SET wikidata_qid = 'Q983593' WHERE id = 'plc_selma';
UPDATE place SET wikidata_qid = 'Q960468' WHERE id = 'plc_papillion';
UPDATE place SET wikidata_qid = 'Q162489' WHERE id = 'plc_angleton';
UPDATE place SET wikidata_qid = 'Q981528' WHERE id = 'plc_alice';
UPDATE place SET wikidata_qid = 'Q979741' WHERE id = 'plc_newton';
UPDATE place SET wikidata_qid = 'Q446314' WHERE id = 'plc_altus';
UPDATE place SET wikidata_qid = 'Q1041757' WHERE id = 'plc_carlisle';
UPDATE place SET wikidata_qid = 'Q982367' WHERE id = 'plc_mineola';
UPDATE place SET wikidata_qid = 'Q7116469' WHERE id = 'plc_ozark';
UPDATE place SET wikidata_qid = 'Q6022830' WHERE id = 'plc_montrose';
UPDATE place SET wikidata_qid = 'Q981222' WHERE id = 'plc_brownwood';
UPDATE place SET wikidata_qid = 'Q868684' WHERE id = 'plc_ellensburg';
UPDATE place SET wikidata_qid = 'Q2046869' WHERE id = 'plc_claremore';
UPDATE place SET wikidata_qid = 'Q809580' WHERE id = 'plc_bartow';
UPDATE place SET wikidata_qid = 'Q30623417' WHERE id = 'plc_murray';
UPDATE place SET wikidata_qid = 'Q2475740' WHERE id = 'plc_milledgeville';
UPDATE place SET wikidata_qid = 'Q1380739' WHERE id = 'plc_cortland';
UPDATE place SET wikidata_qid = 'Q4967292' WHERE id = 'plc_brigham-city';
UPDATE place SET wikidata_qid = 'Q7795610' WHERE id = 'plc_thomasville';
UPDATE place SET wikidata_qid = 'Q575978' WHERE id = 'plc_fairmont';
UPDATE place SET wikidata_qid = 'Q838759' WHERE id = 'plc_westminster';
UPDATE place SET wikidata_qid = 'Q6914118' WHERE id = 'plc_morristown';
UPDATE place SET wikidata_qid = 'Q3708993' WHERE id = 'plc_macomb';
UPDATE place SET wikidata_qid = 'Q1017220' WHERE id = 'plc_el-reno';
UPDATE place SET wikidata_qid = 'Q8055811' WHERE id = 'plc_yorkville';
UPDATE place SET wikidata_qid = 'Q2710299' WHERE id = 'plc_el-dorado';
UPDATE place SET wikidata_qid = 'Q1966377' WHERE id = 'plc_natchitoches';
UPDATE place SET wikidata_qid = 'Q576209' WHERE id = 'plc_ottawa';
UPDATE place SET wikidata_qid = 'Q1994656' WHERE id = 'plc_mcalester';
UPDATE place SET wikidata_qid = 'Q617602' WHERE id = 'plc_palestine';
UPDATE place SET wikidata_qid = 'Q986432' WHERE id = 'plc_steubenville';
UPDATE place SET wikidata_qid = 'Q976478' WHERE id = 'plc_pampa';
UPDATE place SET wikidata_qid = 'Q893055' WHERE id = 'plc_boone';
UPDATE place SET wikidata_qid = 'Q953543' WHERE id = 'plc_punta-gorda';
UPDATE place SET wikidata_qid = 'Q585857' WHERE id = 'plc_vincennes';
UPDATE place SET wikidata_qid = 'Q5316209' WHERE id = 'plc_durango';
UPDATE place SET wikidata_qid = 'Q1018467' WHERE id = 'plc_elizabeth-city';
UPDATE place SET wikidata_qid = 'Q1003702' WHERE id = 'plc_wisconsin-rapids';
UPDATE place SET wikidata_qid = 'Q2028342' WHERE id = 'plc_lenoir';
UPDATE place SET wikidata_qid = 'Q2140170' WHERE id = 'plc_gretna';
UPDATE place SET wikidata_qid = 'Q7494869' WHERE id = 'plc_sheridan';
UPDATE place SET wikidata_qid = 'Q501789' WHERE id = 'plc_colonial-heights';
UPDATE place SET wikidata_qid = 'Q977940' WHERE id = 'plc_marion';
UPDATE place SET wikidata_qid = 'Q1075847' WHERE id = 'plc_logansport';
UPDATE place SET wikidata_qid = 'Q1017583' WHERE id = 'plc_oswego';
UPDATE place SET wikidata_qid = 'Q7659564' WHERE id = 'plc_sycamore';
UPDATE place SET wikidata_qid = 'Q3708325' WHERE id = 'plc_martinsburg';
UPDATE place SET wikidata_qid = 'Q990934' WHERE id = 'plc_tiffin';
UPDATE place SET wikidata_qid = 'Q913476' WHERE id = 'plc_albert-lea';
UPDATE place SET wikidata_qid = 'Q6415832' WHERE id = 'plc_kirksville';
UPDATE place SET wikidata_qid = 'Q1180999' WHERE id = 'plc_new-philadelphia';
UPDATE place SET wikidata_qid = 'Q586070' WHERE id = 'plc_radford';
UPDATE place SET wikidata_qid = 'Q4769878' WHERE id = 'plc_anoka';
UPDATE place SET wikidata_qid = 'Q1934356' WHERE id = 'plc_ada';
UPDATE place SET wikidata_qid = 'Q110530730' WHERE id = 'plc_durant';
UPDATE place SET wikidata_qid = 'Q955462' WHERE id = 'plc_poplar-bluff';
UPDATE place SET wikidata_qid = 'Q5734059' WHERE id = 'plc_bristol';
UPDATE place SET wikidata_qid = 'Q813745' WHERE id = 'plc_beckley';
UPDATE place SET wikidata_qid = 'Q7162458' WHERE id = 'plc_pendleton';
UPDATE place SET wikidata_qid = 'Q5127609' WHERE id = 'plc_clarksdale';
UPDATE place SET wikidata_qid = 'Q494715' WHERE id = 'plc_norwalk';
UPDATE place SET wikidata_qid = 'Q1268670' WHERE id = 'plc_dyersburg';
UPDATE place SET wikidata_qid = 'Q5251520' WHERE id = 'plc_defiance';
UPDATE place SET wikidata_qid = 'Q528541' WHERE id = 'plc_chalmette';
UPDATE place SET wikidata_qid = 'Q2729512' WHERE id = 'plc_tifton';
UPDATE place SET wikidata_qid = 'Q613415' WHERE id = 'plc_morganton';
UPDATE place SET wikidata_qid = 'Q1154039' WHERE id = 'plc_opelousas';
UPDATE place SET wikidata_qid = 'Q908929' WHERE id = 'plc_brenham';
UPDATE place SET wikidata_qid = 'Q2168431' WHERE id = 'plc_sevierville';
UPDATE place SET wikidata_qid = 'Q2794790' WHERE id = 'plc_chickasha';
UPDATE place SET wikidata_qid = 'Q868860' WHERE id = 'plc_uvalde';
UPDATE place SET wikidata_qid = 'Q988744' WHERE id = 'plc_stuart';
UPDATE place SET wikidata_qid = 'Q54888746' WHERE id = 'plc_red-wing';
UPDATE place SET wikidata_qid = 'Q1431633' WHERE id = 'plc_mount-clemens';
UPDATE place SET wikidata_qid = 'Q969026' WHERE id = 'plc_vero-beach';
UPDATE place SET wikidata_qid = 'Q428722' WHERE id = 'plc_calhoun';
UPDATE place SET wikidata_qid = 'Q850972' WHERE id = 'plc_oroville';
UPDATE place SET wikidata_qid = 'Q6468795' WHERE id = 'plc_laconia';
UPDATE place SET wikidata_qid = 'Q837109' WHERE id = 'plc_dublin';
UPDATE place SET wikidata_qid = 'Q994132' WHERE id = 'plc_brunswick';
UPDATE place SET wikidata_qid = 'Q3476013' WHERE id = 'plc_clarksburg';
UPDATE place SET wikidata_qid = 'Q978175' WHERE id = 'plc_sulphur-springs';
UPDATE place SET wikidata_qid = 'Q3709335' WHERE id = 'plc_frankfort';
UPDATE place SET wikidata_qid = 'Q123067' WHERE id = 'plc_americus';
UPDATE place SET wikidata_qid = 'Q5182939' WHERE id = 'plc_crawfordsville';
UPDATE place SET wikidata_qid = 'Q921689' WHERE id = 'plc_albemarle';
UPDATE place SET wikidata_qid = 'Q837105' WHERE id = 'plc_ukiah';
UPDATE place SET wikidata_qid = 'Q948168' WHERE id = 'plc_clayton';
UPDATE place SET wikidata_qid = 'Q985304' WHERE id = 'plc_conyers';
UPDATE place SET wikidata_qid = 'Q7383453' WHERE id = 'plc_rutland';
UPDATE place SET wikidata_qid = 'Q5364422' WHERE id = 'plc_elkton';
UPDATE place SET wikidata_qid = 'Q980595' WHERE id = 'plc_gatesville';
UPDATE place SET wikidata_qid = 'Q3460486' WHERE id = 'plc_great-bend';
UPDATE place SET wikidata_qid = 'Q79975' WHERE id = 'plc_talladega';
UPDATE place SET wikidata_qid = 'Q3471942' WHERE id = 'plc_mitchell';
UPDATE place SET wikidata_qid = 'Q1904873' WHERE id = 'plc_laurinburg';
UPDATE place SET wikidata_qid = 'Q1613686' WHERE id = 'plc_hernando';
UPDATE place SET wikidata_qid = 'Q6024005' WHERE id = 'plc_indianola';
UPDATE place SET wikidata_qid = 'Q7169701' WHERE id = 'plc_perry';
UPDATE place SET wikidata_qid = 'Q978937' WHERE id = 'plc_jasper';
UPDATE place SET wikidata_qid = 'Q2443384' WHERE id = 'plc_winder';
UPDATE place SET wikidata_qid = 'Q2152335' WHERE id = 'plc_tavares';
UPDATE place SET wikidata_qid = 'Q2651966' WHERE id = 'plc_jamestown';
UPDATE place SET wikidata_qid = 'Q14683487' WHERE id = 'plc_newport';
UPDATE place SET wikidata_qid = 'Q79484' WHERE id = 'plc_cullman';
UPDATE place SET wikidata_qid = 'Q985271' WHERE id = 'plc_the-dalles';
UPDATE place SET wikidata_qid = 'Q549516' WHERE id = 'plc_los-lunas';
UPDATE place SET wikidata_qid = 'Q986903' WHERE id = 'plc_dixon';
UPDATE place SET wikidata_qid = 'Q3130238' WHERE id = 'plc_henderson';
UPDATE place SET wikidata_qid = 'Q629584' WHERE id = 'plc_susanville';
UPDATE place SET wikidata_qid = 'Q984544' WHERE id = 'plc_traverse-city';
UPDATE place SET wikidata_qid = 'Q6968552' WHERE id = 'plc_natchez';
UPDATE place SET wikidata_qid = 'Q1002631' WHERE id = 'plc_greeneville';
UPDATE place SET wikidata_qid = 'Q508358' WHERE id = 'plc_front-royal';
UPDATE place SET wikidata_qid = 'Q8021142' WHERE id = 'plc_williamsburg';
UPDATE place SET wikidata_qid = 'Q981218' WHERE id = 'plc_hereford';
UPDATE place SET wikidata_qid = 'Q4868660' WHERE id = 'plc_batavia';
UPDATE place SET wikidata_qid = 'Q975768' WHERE id = 'plc_dumas';
UPDATE place SET wikidata_qid = 'Q3477828' WHERE id = 'plc_canyon';
UPDATE place SET wikidata_qid = 'Q974334' WHERE id = 'plc_corinth';
UPDATE place SET wikidata_qid = 'Q28035714' WHERE id = 'plc_scottsboro';
UPDATE place SET wikidata_qid = 'Q79403' WHERE id = 'plc_forrest-city';
UPDATE place SET wikidata_qid = 'Q978924' WHERE id = 'plc_graham';
UPDATE place SET wikidata_qid = 'Q730430' WHERE id = 'plc_bemidji';
UPDATE place SET wikidata_qid = 'Q1133544' WHERE id = 'plc_bloomsburg';
UPDATE place SET wikidata_qid = 'Q1013317' WHERE id = 'plc_thibodaux';
UPDATE place SET wikidata_qid = 'Q8048826' WHERE id = 'plc_yankton';
UPDATE place SET wikidata_qid = 'Q1508405' WHERE id = 'plc_deming';
UPDATE place SET wikidata_qid = 'Q734974' WHERE id = 'plc_greensburg';
UPDATE place SET wikidata_qid = 'Q22076612' WHERE id = 'plc_warsaw';
UPDATE place SET wikidata_qid = 'Q1871967' WHERE id = 'plc_glasgow';
UPDATE place SET wikidata_qid = 'Q981868' WHERE id = 'plc_rio-grande-city';
UPDATE place SET wikidata_qid = 'Q22134004' WHERE id = 'plc_moultrie';
UPDATE place SET wikidata_qid = 'Q3709301' WHERE id = 'plc_morris';
UPDATE place SET wikidata_qid = 'Q976381' WHERE id = 'plc_carthage';
UPDATE place SET wikidata_qid = 'Q79653' WHERE id = 'plc_fort-payne';
UPDATE place SET wikidata_qid = 'Q546468' WHERE id = 'plc_red-bluff';
UPDATE place SET wikidata_qid = 'Q3501570' WHERE id = 'plc_sterling';
UPDATE place SET wikidata_qid = 'Q1184769' WHERE id = 'plc_indiana';
UPDATE place SET wikidata_qid = 'Q40747' WHERE id = 'plc_pierre';
UPDATE place SET wikidata_qid = 'Q615027' WHERE id = 'plc_waycross';
UPDATE place SET wikidata_qid = 'Q940349' WHERE id = 'plc_chippewa-falls';
UPDATE place SET wikidata_qid = 'Q2203766' WHERE id = 'plc_washington-court-house';
UPDATE place SET wikidata_qid = 'Q978665' WHERE id = 'plc_covington';
UPDATE place SET wikidata_qid = 'Q970608' WHERE id = 'plc_levelland';
UPDATE place SET wikidata_qid = 'Q408744' WHERE id = 'plc_falls-church';
UPDATE place SET wikidata_qid = 'Q138606250' WHERE id = 'plc_circleville';
UPDATE place SET wikidata_qid = 'Q986634' WHERE id = 'plc_sault-ste-marie';
UPDATE place SET wikidata_qid = 'Q509541' WHERE id = 'plc_andrews';
UPDATE place SET wikidata_qid = 'Q5894343' WHERE id = 'plc_hendersonville';
UPDATE place SET wikidata_qid = 'Q7235407' WHERE id = 'plc_pottsville';
UPDATE place SET wikidata_qid = 'Q30601965' WHERE id = 'plc_mountain-home';
UPDATE place SET wikidata_qid = 'Q890296' WHERE id = 'plc_boerne';
UPDATE place SET wikidata_qid = 'Q6777249' WHERE id = 'plc_martinsville';
UPDATE place SET wikidata_qid = 'Q935482' WHERE id = 'plc_port-orchard';
UPDATE place SET wikidata_qid = 'Q981756' WHERE id = 'plc_hudson';
UPDATE place SET wikidata_qid = 'Q3178632' WHERE id = 'plc_washington';
UPDATE place SET wikidata_qid = 'Q3461341' WHERE id = 'plc_orangeburg';
UPDATE place SET wikidata_qid = 'Q522530' WHERE id = 'plc_lockhart';
UPDATE place SET wikidata_qid = 'Q4955872' WHERE id = 'plc_brainerd';
UPDATE place SET wikidata_qid = 'Q813867' WHERE id = 'plc_bedford';
UPDATE place SET wikidata_qid = 'Q7012183' WHERE id = 'plc_new-ulm';
UPDATE place SET wikidata_qid = 'Q2649652' WHERE id = 'plc_huron';
UPDATE place SET wikidata_qid = 'Q813374' WHERE id = 'plc_beaufort';
UPDATE place SET wikidata_qid = 'Q1770518' WHERE id = 'plc_riverhead';
UPDATE place SET wikidata_qid = 'Q114117504' WHERE id = 'plc_butler';
UPDATE place SET wikidata_qid = 'Q1975464' WHERE id = 'plc_fergus-falls';
UPDATE place SET wikidata_qid = 'Q814163' WHERE id = 'plc_beeville';
UPDATE place SET wikidata_qid = 'Q2189250' WHERE id = 'plc_mcpherson';
UPDATE place SET wikidata_qid = 'Q970371' WHERE id = 'plc_crowley';
UPDATE place SET wikidata_qid = 'Q3476507' WHERE id = 'plc_harrison';
UPDATE place SET wikidata_qid = 'Q815891' WHERE id = 'plc_bellefontaine';
UPDATE place SET wikidata_qid = 'Q1063053' WHERE id = 'plc_bardstown';
UPDATE place SET wikidata_qid = 'Q1185603' WHERE id = 'plc_worthington';
UPDATE place SET wikidata_qid = 'Q5963657' WHERE id = 'plc_la-grande';
UPDATE place SET wikidata_qid = 'Q1010225' WHERE id = 'plc_meadville';
UPDATE place SET wikidata_qid = 'Q532408' WHERE id = 'plc_connersville';
UPDATE place SET wikidata_qid = 'Q129677508' WHERE id = 'plc_woodward';
UPDATE place SET wikidata_qid = 'Q839802' WHERE id = 'plc_fulton';
UPDATE place SET wikidata_qid = 'Q2897304' WHERE id = 'plc_grenada';
UPDATE place SET wikidata_qid = 'Q7401354' WHERE id = 'plc_saint-helens';
UPDATE place SET wikidata_qid = 'Q6863780' WHERE id = 'plc_minden';
UPDATE place SET wikidata_qid = 'Q577958' WHERE id = 'plc_effingham';
UPDATE place SET wikidata_qid = 'Q1023649' WHERE id = 'plc_gaffney';
UPDATE place SET wikidata_qid = 'Q11151861' WHERE id = 'plc_cambridge';
UPDATE place SET wikidata_qid = 'Q2879945' WHERE id = 'plc_bainbridge';
UPDATE place SET wikidata_qid = 'Q5603111' WHERE id = 'plc_green-river';
UPDATE place SET wikidata_qid = 'Q984721' WHERE id = 'plc_steamboat-springs';
UPDATE place SET wikidata_qid = 'Q306318' WHERE id = 'plc_abbeville';
UPDATE place SET wikidata_qid = 'Q982477' WHERE id = 'plc_port-lavaca';
UPDATE place SET wikidata_qid = 'Q114397368' WHERE id = 'plc_brookhaven';
UPDATE place SET wikidata_qid = 'Q43080584' WHERE id = 'plc_beatrice';
UPDATE place SET wikidata_qid = 'Q1975746' WHERE id = 'plc_fernandina-beach';
UPDATE place SET wikidata_qid = 'Q1022872' WHERE id = 'plc_escanaba';
UPDATE place SET wikidata_qid = 'Q966271' WHERE id = 'plc_west-plains';
UPDATE place SET wikidata_qid = 'Q991015' WHERE id = 'plc_okmulgee';
UPDATE place SET wikidata_qid = 'Q973753' WHERE id = 'plc_winfield';
UPDATE place SET wikidata_qid = 'Q966480' WHERE id = 'plc_somerville';
UPDATE place SET wikidata_qid = 'Q6475342' WHERE id = 'plc_lake-city';
UPDATE place SET wikidata_qid = 'Q1000065' WHERE id = 'plc_neosho';
UPDATE place SET wikidata_qid = 'Q462799' WHERE id = 'plc_evanston';
UPDATE place SET wikidata_qid = 'Q349995' WHERE id = 'plc_poquoson';
UPDATE place SET wikidata_qid = 'Q22073235' WHERE id = 'plc_smithfield';
UPDATE place SET wikidata_qid = 'Q1915491' WHERE id = 'plc_los-alamos';
UPDATE place SET wikidata_qid = 'Q988821' WHERE id = 'plc_portales';
UPDATE place SET wikidata_qid = 'Q2241892' WHERE id = 'plc_shepherdsville';
UPDATE place SET wikidata_qid = 'Q5500903' WHERE id = 'plc_freehold';
UPDATE place SET wikidata_qid = 'Q1920861' WHERE id = 'plc_guymon';
UPDATE place SET wikidata_qid = 'Q993453' WHERE id = 'plc_bucyrus';
UPDATE place SET wikidata_qid = 'Q1738353' WHERE id = 'plc_kelso';
UPDATE place SET wikidata_qid = 'Q2669251' WHERE id = 'plc_maryville';
UPDATE place SET wikidata_qid = 'Q541733' WHERE id = 'plc_lovington';
UPDATE place SET wikidata_qid = 'Q979796' WHERE id = 'plc_snyder';
UPDATE place SET wikidata_qid = 'Q22076415' WHERE id = 'plc_blackfoot';
UPDATE place SET wikidata_qid = 'Q5301160' WHERE id = 'plc_douglas';
UPDATE place SET wikidata_qid = 'Q976159' WHERE id = 'plc_magnolia';
UPDATE place SET wikidata_qid = 'Q6826173' WHERE id = 'plc_mexico';
UPDATE place SET wikidata_qid = 'Q205755' WHERE id = 'plc_ravenna';
UPDATE place SET wikidata_qid = 'Q7106888' WHERE id = 'plc_oskaloosa';
UPDATE place SET wikidata_qid = 'Q1399190' WHERE id = 'plc_port-washington';
UPDATE place SET wikidata_qid = 'Q1185021' WHERE id = 'plc_lewisburg';
UPDATE place SET wikidata_qid = 'Q7559795' WHERE id = 'plc_somerset';
UPDATE place SET wikidata_qid = 'Q2671841' WHERE id = 'plc_crossville';
UPDATE place SET wikidata_qid = 'Q16460817' WHERE id = 'plc_ionia';
UPDATE place SET wikidata_qid = 'Q1438635' WHERE id = 'plc_fort-morgan';
UPDATE place SET wikidata_qid = 'Q979456' WHERE id = 'plc_guthrie';
UPDATE place SET wikidata_qid = 'Q16890757' WHERE id = 'plc_cusseta';
UPDATE place SET wikidata_qid = 'Q983832' WHERE id = 'plc_yazoo-city';
UPDATE place SET wikidata_qid = 'Q55606518' WHERE id = 'plc_campbellsville';
UPDATE place SET wikidata_qid = 'Q7575964' WHERE id = 'plc_spencer';
UPDATE place SET wikidata_qid = 'Q14693410' WHERE id = 'plc_vernal';
UPDATE place SET wikidata_qid = 'Q7402077' WHERE id = 'plc_saint-peter';
UPDATE place SET wikidata_qid = 'Q6182518' WHERE id = 'plc_jerome';
UPDATE place SET wikidata_qid = 'Q12897644' WHERE id = 'plc_tarboro';
UPDATE place SET wikidata_qid = 'Q979250' WHERE id = 'plc_raymondville';
UPDATE place SET wikidata_qid = 'Q991020' WHERE id = 'plc_coshocton';
UPDATE place SET wikidata_qid = 'Q2472594' WHERE id = 'plc_lawrenceburg';
UPDATE place SET wikidata_qid = 'Q4492566' WHERE id = 'plc_fredericksburg';
UPDATE place SET wikidata_qid = 'Q1018280' WHERE id = 'plc_grand-haven';
UPDATE place SET wikidata_qid = 'Q107143797' WHERE id = 'plc_peru';
UPDATE place SET wikidata_qid = 'Q1922944' WHERE id = 'plc_west-point';
UPDATE place SET wikidata_qid = 'Q48818181' WHERE id = 'plc_union';
UPDATE place SET wikidata_qid = 'Q16890645' WHERE id = 'plc_cordele';
UPDATE place SET wikidata_qid = 'Q1181835' WHERE id = 'plc_malvern';
UPDATE place SET wikidata_qid = 'Q7620142' WHERE id = 'plc_storm-lake';
UPDATE place SET wikidata_qid = 'Q2615624' WHERE id = 'plc_lincolnton';
UPDATE place SET wikidata_qid = 'Q22076503' WHERE id = 'plc_ironton';
UPDATE place SET wikidata_qid = 'Q972748' WHERE id = 'plc_deridder';
UPDATE place SET wikidata_qid = 'Q7690276' WHERE id = 'plc_taylorville';
UPDATE place SET wikidata_qid = 'Q22349725' WHERE id = 'plc_coldwater';
UPDATE place SET wikidata_qid = 'Q981845' WHERE id = 'plc_sweetwater';
UPDATE place SET wikidata_qid = 'Q2030238' WHERE id = 'plc_mount-holly';
UPDATE place SET wikidata_qid = 'Q6764387' WHERE id = 'plc_marinette';
UPDATE place SET wikidata_qid = 'Q1012164' WHERE id = 'plc_van-wert';
UPDATE place SET wikidata_qid = 'Q4791656' WHERE id = 'plc_arkadelphia';
UPDATE place SET wikidata_qid = 'Q1924324' WHERE id = 'plc_vermillion';
UPDATE place SET wikidata_qid = 'Q4939488' WHERE id = 'plc_bolivar';
UPDATE place SET wikidata_qid = 'Q810678' WHERE id = 'plc_bastrop';
UPDATE place SET wikidata_qid = 'Q4812952' WHERE id = 'plc_atchison';
UPDATE place SET wikidata_qid = 'Q977742' WHERE id = 'plc_batesville';
UPDATE place SET wikidata_qid = 'Q4842452' WHERE id = 'plc_kennett';
UPDATE place SET wikidata_qid = 'Q927485' WHERE id = 'plc_placerville';
UPDATE place SET wikidata_qid = 'Q934111' WHERE id = 'plc_vernon';
UPDATE place SET wikidata_qid = 'Q846402' WHERE id = 'plc_union-city';
UPDATE place SET wikidata_qid = 'Q9027296' WHERE id = 'plc_manchester';
UPDATE place SET wikidata_qid = 'Q985173' WHERE id = 'plc_sebring';
UPDATE place SET wikidata_qid = 'Q7355526' WHERE id = 'plc_rockport';
UPDATE place SET wikidata_qid = 'Q3473799' WHERE id = 'plc_burley';
UPDATE place SET wikidata_qid = 'Q1363104' WHERE id = 'plc_canandaigua';
UPDATE place SET wikidata_qid = 'Q1185633' WHERE id = 'plc_greencastle';
UPDATE place SET wikidata_qid = 'Q2472136' WHERE id = 'plc_big-rapids';
UPDATE place SET wikidata_qid = 'Q955907' WHERE id = 'plc_palatka';
UPDATE place SET wikidata_qid = 'Q620310' WHERE id = 'plc_celina';
UPDATE place SET wikidata_qid = 'Q617483' WHERE id = 'plc_portage';
UPDATE place SET wikidata_qid = 'Q23698524' WHERE id = 'plc_wabash';
UPDATE place SET wikidata_qid = 'Q1025149' WHERE id = 'plc_cadillac';
UPDATE place SET wikidata_qid = 'Q1003844' WHERE id = 'plc_newberry';
UPDATE place SET wikidata_qid = 'Q982839' WHERE id = 'plc_jefferson';
UPDATE place SET wikidata_qid = 'Q4881868' WHERE id = 'plc_bel-air';
UPDATE place SET wikidata_qid = 'Q2461688' WHERE id = 'plc_jennings';
UPDATE place SET wikidata_qid = 'Q1012455' WHERE id = 'plc_alpena';
UPDATE place SET wikidata_qid = 'Q122853535' WHERE id = 'plc_mayfield';
UPDATE place SET wikidata_qid = 'Q144856' WHERE id = 'plc_bonham';
UPDATE place SET wikidata_qid = 'Q2298104' WHERE id = 'plc_waverly';
UPDATE place SET wikidata_qid = 'Q586353' WHERE id = 'plc_london';
UPDATE place SET wikidata_qid = 'Q2116642' WHERE id = 'plc_plymouth';
UPDATE place SET wikidata_qid = 'Q104862186' WHERE id = 'plc_woodbury';
UPDATE place SET wikidata_qid = 'Q4930692' WHERE id = 'plc_bluffton';
UPDATE place SET wikidata_qid = 'Q6128445' WHERE id = 'plc_silver-city';
UPDATE place SET wikidata_qid = 'Q1187047' WHERE id = 'plc_uniontown';
UPDATE place SET wikidata_qid = 'Q5666235' WHERE id = 'plc_harrisonville';
UPDATE place SET wikidata_qid = 'Q979446' WHERE id = 'plc_pearsall';
UPDATE place SET wikidata_qid = 'Q22076425' WHERE id = 'plc_carroll';
UPDATE place SET wikidata_qid = 'Q927455' WHERE id = 'plc_glenwood-springs';
UPDATE place SET wikidata_qid = 'Q7970665' WHERE id = 'plc_warrenton';
UPDATE place SET wikidata_qid = 'Q2655751' WHERE id = 'plc_elkhorn';
UPDATE place SET wikidata_qid = 'Q3708248' WHERE id = 'plc_hope';
UPDATE place SET wikidata_qid = 'Q2238330' WHERE id = 'plc_moncks-corner';
UPDATE place SET wikidata_qid = 'Q15273835' WHERE id = 'plc_russellville';
UPDATE place SET wikidata_qid = 'Q983986' WHERE id = 'plc_shelton';
UPDATE place SET wikidata_qid = 'Q959425' WHERE id = 'plc_havre';
UPDATE place SET wikidata_qid = 'Q492796' WHERE id = 'plc_wapakoneta';
UPDATE place SET wikidata_qid = 'Q9299685' WHERE id = 'plc_monticello';
UPDATE place SET wikidata_qid = 'Q1010247' WHERE id = 'plc_alamosa';
UPDATE place SET wikidata_qid = 'Q7976823' WHERE id = 'plc_waynesville';
UPDATE place SET wikidata_qid = 'Q5140396' WHERE id = 'plc_cody';
UPDATE place SET wikidata_qid = 'Q4699596' WHERE id = 'plc_cairo';
UPDATE place SET wikidata_qid = 'Q1152219' WHERE id = 'plc_baker-city';
UPDATE place SET wikidata_qid = 'Q777429' WHERE id = 'plc_cedartown';
UPDATE place SET wikidata_qid = 'Q981849' WHERE id = 'plc_brownfield';
UPDATE place SET wikidata_qid = 'Q79767' WHERE id = 'plc_safford';
UPDATE place SET wikidata_qid = 'Q3708643' WHERE id = 'plc_sparta';
UPDATE place SET wikidata_qid = 'Q1187059' WHERE id = 'plc_sunbury';
UPDATE place SET wikidata_qid = 'Q6860903' WHERE id = 'plc_milton';
UPDATE place SET wikidata_qid = 'Q2073812' WHERE id = 'plc_astoria';
UPDATE place SET wikidata_qid = 'Q1187817' WHERE id = 'plc_lock-haven';
UPDATE place SET wikidata_qid = 'Q330678' WHERE id = 'plc_prineville';
UPDATE place SET wikidata_qid = 'Q60768917' WHERE id = 'plc_howell';
UPDATE place SET wikidata_qid = 'Q978232' WHERE id = 'plc_pecos';
UPDATE place SET wikidata_qid = 'Q970422' WHERE id = 'plc_lamesa';
UPDATE place SET wikidata_qid = 'Q18353530' WHERE id = 'plc_anaconda';
UPDATE place SET wikidata_qid = 'Q923474' WHERE id = 'plc_granbury';
UPDATE place SET wikidata_qid = 'Q1001828' WHERE id = 'plc_port-townsend';
UPDATE place SET wikidata_qid = 'Q3710652' WHERE id = 'plc_warren';
UPDATE place SET wikidata_qid = 'Q541233' WHERE id = 'plc_monmouth';
UPDATE place SET wikidata_qid = 'Q987118' WHERE id = 'plc_waseca';
UPDATE place SET wikidata_qid = 'Q545727' WHERE id = 'plc_grants';
UPDATE place SET wikidata_qid = 'Q1816491' WHERE id = 'plc_merrill';
UPDATE place SET wikidata_qid = 'Q3710245' WHERE id = 'plc_rockingham';
UPDATE place SET wikidata_qid = 'Q6500961' WHERE id = 'plc_laurens';
UPDATE place SET wikidata_qid = 'Q48740541' WHERE id = 'plc_versailles';
UPDATE place SET wikidata_qid = 'Q1013670' WHERE id = 'plc_shawano';
UPDATE place SET wikidata_qid = 'Q85775421' WHERE id = 'plc_la-plata';
UPDATE place SET wikidata_qid = 'Q976567' WHERE id = 'plc_hondo';
UPDATE place SET wikidata_qid = 'Q79775' WHERE id = 'plc_bay-minette';
UPDATE place SET wikidata_qid = 'Q1924806' WHERE id = 'plc_marianna';
UPDATE place SET wikidata_qid = 'Q23016494' WHERE id = 'plc_andalusia';
UPDATE place SET wikidata_qid = 'Q958137' WHERE id = 'plc_rawlins';
UPDATE place SET wikidata_qid = 'Q981297' WHERE id = 'plc_liberty';
UPDATE place SET wikidata_qid = 'Q7795592' WHERE id = 'plc_thomaston';
UPDATE place SET wikidata_qid = 'Q654046' WHERE id = 'plc_fitzgerald';
UPDATE place SET wikidata_qid = 'Q982424' WHERE id = 'plc_olney';

-- Events:
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_san-jose_1777_0', 'plc_san-jose', '1777-11-29',
   1777, 'founding', 'history',
   'San Jose founded in 1777', 'San Jose date of incorporation or first settlement: 1777 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q16553', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_austin_1835_0', 'plc_austin', NULL,
   1835, 'founding', 'history',
   'Austin founded in 1835', 'Austin date of incorporation or first settlement: 1835 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q16559', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_memphis_1889_0', 'plc_memphis', NULL,
   1889, 'founding', 'history',
   'Memphis founded in 1889', 'Memphis date of incorporation or first settlement: 1889 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q979971', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_orlando_1875_0', 'plc_orlando', '1875-07-31',
   1875, 'founding', 'history',
   'Orlando founded in 1875', 'Orlando date of incorporation or first settlement: 1875 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q49233', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_wichita_1868_0', 'plc_wichita', NULL,
   1868, 'founding', 'history',
   'Wichita founded in 1868', 'Wichita date of incorporation or first settlement: 1868 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q49266', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_california-institute-of-technology-caltech_1891_0', 'plc_california-institute-of-technology-caltech', NULL,
   1891, 'founding', 'history',
   'California Institute of Technology (Caltech) founded in 1891', 'California Institute of Technology (Caltech) date of incorporation or first settlement: 1891 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q161562', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_united-states-military-academy-west-point_1802_0', 'plc_united-states-military-academy-west-point', '1802-03-16',
   1802, 'founding', 'history',
   'United States Military Academy (West Point) founded in 1802', 'United States Military Academy (West Point) date of incorporation or first settlement: 1802 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q9219', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_new-york_1850_0', 'plc_new-york', NULL,
   1850, 'founding', 'history',
   'New York founded in 1850', 'New York date of incorporation or first settlement: 1850 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q1251262', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_riverside_1870_0', 'plc_riverside', NULL,
   1870, 'founding', 'history',
   'Riverside founded in 1870', 'Riverside date of incorporation or first settlement: 1870 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q49243', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_corpus-christi_1839_0', 'plc_corpus-christi', NULL,
   1839, 'founding', 'history',
   'Corpus Christi founded in 1839', 'Corpus Christi date of incorporation or first settlement: 1839 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q49242', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_santa-ana_1869_0', 'plc_santa-ana', NULL,
   1869, 'founding', 'history',
   'Santa Ana founded in 1869', 'Santa Ana date of incorporation or first settlement: 1869 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q49244', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_stockton_1849_0', 'plc_stockton', NULL,
   1849, 'founding', 'history',
   'Stockton founded in 1849', 'Stockton date of incorporation or first settlement: 1849 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q49240', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_fort-wayne_1794_0', 'plc_fort-wayne', NULL,
   1794, 'founding', 'history',
   'Fort Wayne founded in 1794', 'Fort Wayne date of incorporation or first settlement: 1794 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q49268', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_buffalo_1872_0', 'plc_buffalo', NULL,
   1872, 'founding', 'history',
   'Buffalo founded in 1872', 'Buffalo date of incorporation or first settlement: 1872 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q969432', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_laredo_1755_0', 'plc_laredo', NULL,
   1755, 'founding', 'history',
   'Laredo founded in 1755', 'Laredo date of incorporation or first settlement: 1755 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q16868', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_richmond_1905_0', 'plc_richmond', NULL,
   1905, 'founding', 'history',
   'Richmond founded in 1905', 'Richmond date of incorporation or first settlement: 1905 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q495377', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_worcester_1788_0', 'plc_worcester', NULL,
   1788, 'founding', 'history',
   'Worcester founded in 1788', 'Worcester date of incorporation or first settlement: 1788 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q3708771', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_amarillo_1887_0', 'plc_amarillo', NULL,
   1887, 'founding', 'history',
   'Amarillo founded in 1887', 'Amarillo date of incorporation or first settlement: 1887 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q51691', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_montgomery_1848_0', 'plc_montgomery', '1848-02-26',
   1848, 'founding', 'history',
   'Montgomery founded in 1848', 'Montgomery date of incorporation or first settlement: 1848 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q981955', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_newport-news_1881_0', 'plc_newport-news', NULL,
   1881, 'founding', 'history',
   'Newport News founded in 1881', 'Newport News date of incorporation or first settlement: 1881 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q335017', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_fort-lauderdale_1911_0', 'plc_fort-lauderdale', '1911-03-27',
   1911, 'founding', 'history',
   'Fort Lauderdale founded in 1911', 'Fort Lauderdale date of incorporation or first settlement: 1911 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q165972', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_santa-rosa_1868_0', 'plc_santa-rosa', NULL,
   1868, 'founding', 'history',
   'Santa Rosa founded in 1868', 'Santa Rosa date of incorporation or first settlement: 1868 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q212991', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_sioux-falls_1856_0', 'plc_sioux-falls', NULL,
   1856, 'founding', 'history',
   'Sioux Falls founded in 1856', 'Sioux Falls date of incorporation or first settlement: 1856 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q131335', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_fort-collins_1864_0', 'plc_fort-collins', NULL,
   1864, 'founding', 'history',
   'Fort Collins founded in 1864', 'Fort Collins date of incorporation or first settlement: 1864 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q490732', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_jackson_1848_0', 'plc_jackson', NULL,
   1848, 'founding', 'history',
   'Jackson founded in 1848', 'Jackson date of incorporation or first settlement: 1848 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q1966879', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_rockford_1834_0', 'plc_rockford', NULL,
   1834, 'founding', 'history',
   'Rockford founded in 1834', 'Rockford date of incorporation or first settlement: 1834 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q233892', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_rockford_1852_1', 'plc_rockford', '1852-01-03',
   1852, 'founding', 'history',
   'Rockford founded in 1852', 'Rockford date of incorporation or first settlement: 1852 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q233892', 0.8, 10,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_syracuse_1848_0', 'plc_syracuse', NULL,
   1848, 'founding', 'history',
   'Syracuse founded in 1848', 'Syracuse date of incorporation or first settlement: 1848 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q128069', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_orange_1869_0', 'plc_orange', NULL,
   1869, 'founding', 'history',
   'Orange founded in 1869', 'Orange date of incorporation or first settlement: 1869 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q491350', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_denton_1866_0', 'plc_denton', NULL,
   1866, 'founding', 'history',
   'Denton founded in 1866', 'Denton date of incorporation or first settlement: 1866 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q128306', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_elizabeth_1787_0', 'plc_elizabeth', NULL,
   1787, 'founding', 'history',
   'Elizabeth founded in 1787', 'Elizabeth date of incorporation or first settlement: 1787 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q526217', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_elizabeth_1834_1', 'plc_elizabeth', '1834-04-05',
   1834, 'founding', 'history',
   'Elizabeth founded in 1834', 'Elizabeth date of incorporation or first settlement: 1834 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q526217', 0.8, 10,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_abilene_1881_0', 'plc_abilene', NULL,
   1881, 'founding', 'history',
   'Abilene founded in 1881', 'Abilene date of incorporation or first settlement: 1881 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q128295', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_lafayette_1848_0', 'plc_lafayette', NULL,
   1848, 'founding', 'history',
   'Lafayette founded in 1848', 'Lafayette date of incorporation or first settlement: 1848 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q284803', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_west-palm-beach_1884_0', 'plc_west-palm-beach', NULL,
   1884, 'founding', 'history',
   'West Palm Beach founded in 1884', 'West Palm Beach date of incorporation or first settlement: 1884 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q163749', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_ann-arbor_1824_0', 'plc_ann-arbor', NULL,
   1824, 'founding', 'history',
   'Ann Arbor founded in 1824', 'Ann Arbor date of incorporation or first settlement: 1824 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q485172', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_fairfield_1859_0', 'plc_fairfield', NULL,
   1859, 'founding', 'history',
   'Fairfield founded in 1859', 'Fairfield date of incorporation or first settlement: 1859 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q323432', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_everett_1795_0', 'plc_everett', NULL,
   1795, 'founding', 'history',
   'Everett founded in 1795', 'Everett date of incorporation or first settlement: 1795 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q1010525', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_kenosha_1835_0', 'plc_kenosha', NULL,
   1835, 'founding', 'history',
   'Kenosha founded in 1835', 'Kenosha date of incorporation or first settlement: 1835 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q462161', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_erie_1795_0', 'plc_erie', '1795-04-18',
   1795, 'founding', 'history',
   'Erie founded in 1795', 'Erie date of incorporation or first settlement: 1795 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q234061', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_ventura_1782_0', 'plc_ventura', '1782-03-31',
   1782, 'founding', 'history',
   'Ventura founded in 1782', 'Ventura date of incorporation or first settlement: 1782 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q490434', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_portsmouth_1803_0', 'plc_portsmouth', NULL,
   1803, 'founding', 'history',
   'Portsmouth founded in 1803', 'Portsmouth date of incorporation or first settlement: 1803 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q685335', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_yuma_1888_0', 'plc_yuma', NULL,
   1888, 'founding', 'history',
   'Yuma founded in 1888', 'Yuma date of incorporation or first settlement: 1888 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q79820', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_asheville_1797_0', 'plc_asheville', NULL,
   1797, 'founding', 'history',
   'Asheville founded in 1797', 'Asheville date of incorporation or first settlement: 1797 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q648501', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_yakima_1847_0', 'plc_yakima', NULL,
   1847, 'founding', 'history',
   'Yakima founded in 1847', 'Yakima date of incorporation or first settlement: 1847 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q499203', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_santa-barbara_1847_0', 'plc_santa-barbara', NULL,
   1847, 'founding', 'history',
   'Santa Barbara founded in 1847', 'Santa Barbara date of incorporation or first settlement: 1847 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q159288', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_redding_1887_0', 'plc_redding', NULL,
   1887, 'founding', 'history',
   'Redding founded in 1887', 'Redding date of incorporation or first settlement: 1887 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q495361', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_waukegan_1859_0', 'plc_waukegan', NULL,
   1859, 'founding', 'history',
   'Waukegan founded in 1859', 'Waukegan date of incorporation or first settlement: 1859 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q578289', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_suffolk_1742_0', 'plc_suffolk', NULL,
   1742, 'founding', 'history',
   'Suffolk founded in 1742', 'Suffolk date of incorporation or first settlement: 1742 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q342428', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_reading_1870_0', 'plc_reading', NULL,
   1870, 'founding', 'history',
   'Reading founded in 1870', 'Reading date of incorporation or first settlement: 1870 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q2673322', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_concord_1869_0', 'plc_concord', NULL,
   1869, 'founding', 'history',
   'Concord founded in 1869', 'Concord date of incorporation or first settlement: 1869 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q490441', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_duluth_1821_0', 'plc_duluth', NULL,
   1821, 'founding', 'history',
   'Duluth founded in 1821', 'Duluth date of incorporation or first settlement: 1821 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q285751', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_ogden_1817_0', 'plc_ogden', NULL,
   1817, 'founding', 'history',
   'Ogden founded in 1817', 'Ogden date of incorporation or first settlement: 1817 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q3357955', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_bellingham_1852_0', 'plc_bellingham', NULL,
   1852, 'founding', 'history',
   'Bellingham founded in 1852', 'Bellingham date of incorporation or first settlement: 1852 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q430267', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_edinburg_1908_0', 'plc_edinburg', NULL,
   1908, 'founding', 'history',
   'Edinburg founded in 1908', 'Edinburg date of incorporation or first settlement: 1908 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q978246', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_sioux-city_1854_0', 'plc_sioux-city', NULL,
   1854, 'founding', 'history',
   'Sioux City founded in 1854', 'Sioux City date of incorporation or first settlement: 1854 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q489255', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_merced_1889_0', 'plc_merced', NULL,
   1889, 'founding', 'history',
   'Merced founded in 1889', 'Merced date of incorporation or first settlement: 1889 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q499189', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_longview_1871_0', 'plc_longview', NULL,
   1871, 'founding', 'history',
   'Longview founded in 1871', 'Longview date of incorporation or first settlement: 1871 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q852645', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_bryan_1872_0', 'plc_bryan', NULL,
   1872, 'founding', 'history',
   'Bryan founded in 1872', 'Bryan date of incorporation or first settlement: 1872 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q695556', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_lake-charles_1861_0', 'plc_lake-charles', '1861-03-07',
   1861, 'founding', 'history',
   'Lake Charles founded in 1861', 'Lake Charles date of incorporation or first settlement: 1861 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q864106', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_bismarck_1873_0', 'plc_bismarck', NULL,
   1873, 'founding', 'history',
   'Bismarck founded in 1873', 'Bismarck date of incorporation or first settlement: 1873 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q1875878', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_iowa-city_1839_0', 'plc_iowa-city', NULL,
   1839, 'founding', 'history',
   'Iowa City founded in 1839', 'Iowa City date of incorporation or first settlement: 1839 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q487977', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_fort-myers_1886_0', 'plc_fort-myers', NULL,
   1886, 'founding', 'history',
   'Fort Myers founded in 1886', 'Fort Myers date of incorporation or first settlement: 1886 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q506451', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_decatur_1854_0', 'plc_decatur', NULL,
   1854, 'founding', 'history',
   'Decatur founded in 1854', 'Decatur date of incorporation or first settlement: 1854 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q674049', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_canton_1850_0', 'plc_canton', NULL,
   1850, 'founding', 'history',
   'Canton founded in 1850', 'Canton date of incorporation or first settlement: 1850 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q281481', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_missoula_1866_0', 'plc_missoula', NULL,
   1866, 'founding', 'history',
   'Missoula founded in 1866', 'Missoula date of incorporation or first settlement: 1866 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q189602', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_new-braunfels_1845_0', 'plc_new-braunfels', NULL,
   1845, 'founding', 'history',
   'New Braunfels founded in 1845', 'New Braunfels date of incorporation or first settlement: 1845 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q574612', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_flagstaff_1876_0', 'plc_flagstaff', NULL,
   1876, 'founding', 'history',
   'Flagstaff founded in 1876', 'Flagstaff date of incorporation or first settlement: 1876 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q79842', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_kissimmee_1881_0', 'plc_kissimmee', NULL,
   1881, 'founding', 'history',
   'Kissimmee founded in 1881', 'Kissimmee date of incorporation or first settlement: 1881 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q583894', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_conroe_1904_0', 'plc_conroe', NULL,
   1904, 'founding', 'history',
   'Conroe founded in 1904', 'Conroe date of incorporation or first settlement: 1904 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q260282', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_dothan_1885_0', 'plc_dothan', NULL,
   1885, 'founding', 'history',
   'Dothan founded in 1885', 'Dothan date of incorporation or first settlement: 1885 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q79519', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_eau-claire_1848_0', 'plc_eau-claire', NULL,
   1848, 'founding', 'history',
   'Eau Claire founded in 1848', 'Eau Claire date of incorporation or first settlement: 1848 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q1134558', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_yuba-city_1849_0', 'plc_yuba-city', NULL,
   1849, 'founding', 'history',
   'Yuba City founded in 1849', 'Yuba City date of incorporation or first settlement: 1849 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q169948', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_oshkosh_1818_0', 'plc_oshkosh', NULL,
   1818, 'founding', 'history',
   'Oshkosh founded in 1818', 'Oshkosh date of incorporation or first settlement: 1818 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q936741', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_ellicott-city_1772_0', 'plc_ellicott-city', NULL,
   1772, 'founding', 'history',
   'Ellicott City founded in 1772', 'Ellicott City date of incorporation or first settlement: 1772 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q730938', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_schenectady_1765_0', 'plc_schenectady', NULL,
   1765, 'founding', 'history',
   'Schenectady founded in 1765', 'Schenectady date of incorporation or first settlement: 1765 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q331380', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_broomfield_2001_0', 'plc_broomfield', '2001-11-15',
   2001, 'founding', 'history',
   'Broomfield founded in 2001', 'Broomfield date of incorporation or first settlement: 2001 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q492819', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_santa-cruz_1791_0', 'plc_santa-cruz', '1791-09-25',
   1791, 'founding', 'history',
   'Santa Cruz founded in 1791', 'Santa Cruz date of incorporation or first settlement: 1791 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q159232', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_council-bluffs_1854_0', 'plc_council-bluffs', NULL,
   1854, 'founding', 'history',
   'Council Bluffs founded in 1854', 'Council Bluffs date of incorporation or first settlement: 1854 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q695565', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_san-marcos_1963_0', 'plc_san-marcos', NULL,
   1963, 'founding', 'history',
   'San Marcos founded in 1963', 'San Marcos date of incorporation or first settlement: 1963 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q506411', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_grand-junction_1854_0', 'plc_grand-junction', NULL,
   1854, 'founding', 'history',
   'Grand Junction founded in 1854', 'Grand Junction date of incorporation or first settlement: 1854 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q3292509', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_great-falls_1883_0', 'plc_great-falls', NULL,
   1883, 'founding', 'history',
   'Great Falls founded in 1883', 'Great Falls date of incorporation or first settlement: 1883 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q466190', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_lancaster_1977_0', 'plc_lancaster', NULL,
   1977, 'founding', 'history',
   'Lancaster founded in 1977', 'Lancaster date of incorporation or first settlement: 1977 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q494711', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_idaho-falls_1864_0', 'plc_idaho-falls', NULL,
   1864, 'founding', 'history',
   'Idaho Falls founded in 1864', 'Idaho Falls date of incorporation or first settlement: 1864 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q496360', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_noblesville_1823_0', 'plc_noblesville', NULL,
   1823, 'founding', 'history',
   'Noblesville founded in 1823', 'Noblesville date of incorporation or first settlement: 1823 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q1645069', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_owensboro_1797_0', 'plc_owensboro', NULL,
   1797, 'founding', 'history',
   'Owensboro founded in 1797', 'Owensboro date of incorporation or first settlement: 1797 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q494295', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_carson-city_1866_0', 'plc_carson-city', NULL,
   1866, 'founding', 'history',
   'Carson City founded in 1866', 'Carson City date of incorporation or first settlement: 1866 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q1045455', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_woodland_1871_0', 'plc_woodland', NULL,
   1871, 'founding', 'history',
   'Woodland founded in 1871', 'Woodland date of incorporation or first settlement: 1871 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q837129', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_white-plains_1683_0', 'plc_white-plains', NULL,
   1683, 'founding', 'history',
   'White Plains founded in 1683', 'White Plains date of incorporation or first settlement: 1683 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q462177', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_ocala_1845_0', 'plc_ocala', NULL,
   1845, 'founding', 'history',
   'Ocala founded in 1845', 'Ocala date of incorporation or first settlement: 1845 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q918195', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_anderson_1956_0', 'plc_anderson', '1956-01-16',
   1956, 'founding', 'history',
   'Anderson founded in 1956', 'Anderson date of incorporation or first settlement: 1956 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q491469', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_towson_1750_0', 'plc_towson', NULL,
   1750, 'founding', 'history',
   'Towson founded in 1750', 'Towson date of incorporation or first settlement: 1750 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q755615', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_sarasota_1763_0', 'plc_sarasota', NULL,
   1763, 'founding', 'history',
   'Sarasota founded in 1763', 'Sarasota date of incorporation or first settlement: 1763 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q491540', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_pocatello_1889_0', 'plc_pocatello', NULL,
   1889, 'founding', 'history',
   'Pocatello founded in 1889', 'Pocatello date of incorporation or first settlement: 1889 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q320729', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_bradenton_1842_0', 'plc_bradenton', NULL,
   1842, 'founding', 'history',
   'Bradenton founded in 1842', 'Bradenton date of incorporation or first settlement: 1842 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q582121', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_elyria_1817_0', 'plc_elyria', NULL,
   1817, 'founding', 'history',
   'Elyria founded in 1817', 'Elyria date of incorporation or first settlement: 1817 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q932561', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_pensacola_1559_0', 'plc_pensacola', NULL,
   1559, 'founding', 'history',
   'Pensacola founded in 1559', 'Pensacola date of incorporation or first settlement: 1559 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q486306', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_pensacola_1781_1', 'plc_pensacola', NULL,
   1781, 'political', 'history',
   'Siege of Pensacola (1781)', 'Siege of Pensacola (Wikidata Q2060558, P793)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q486306', 0.8, 10,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_pensacola_1707_2', 'plc_pensacola', NULL,
   1707, 'political', 'history',
   'Siege of Pensacola (1707)', 'Siege of Pensacola (Wikidata Q12717505, P793)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q486306', 0.8, 20,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_wheaton_1831_0', 'plc_wheaton', NULL,
   1831, 'founding', 'history',
   'Wheaton founded in 1831', 'Wheaton date of incorporation or first settlement: 1831 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q575315', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_harrisonburg_1779_0', 'plc_harrisonburg', NULL,
   1779, 'founding', 'history',
   'Harrisonburg founded in 1779', 'Harrisonburg date of incorporation or first settlement: 1779 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q511935', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_enid_1893_0', 'plc_enid', NULL,
   1893, 'founding', 'history',
   'Enid founded in 1893', 'Enid date of incorporation or first settlement: 1893 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q984361', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_galveston_1785_0', 'plc_galveston', NULL,
   1785, 'founding', 'history',
   'Galveston founded in 1785', 'Galveston date of incorporation or first settlement: 1785 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q135744', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_troy_1882_0', 'plc_troy', NULL,
   1882, 'founding', 'history',
   'Troy founded in 1882', 'Troy date of incorporation or first settlement: 1882 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q975226', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_wilson_1912_0', 'plc_wilson', NULL,
   1912, 'founding', 'history',
   'Wilson founded in 1912', 'Wilson date of incorporation or first settlement: 1912 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q982523', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_sheboygan_1846_0', 'plc_sheboygan', NULL,
   1846, 'founding', 'history',
   'Sheboygan founded in 1846', 'Sheboygan date of incorporation or first settlement: 1846 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q984834', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_barnstable_1637_0', 'plc_barnstable', NULL,
   1637, 'founding', 'history',
   'Barnstable founded in 1637', 'Barnstable date of incorporation or first settlement: 1637 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q808535', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_twin-falls_1904_0', 'plc_twin-falls', NULL,
   1904, 'founding', 'history',
   'Twin Falls founded in 1904', 'Twin Falls date of incorporation or first settlement: 1904 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q548384', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_san-luis-obispo_1772_0', 'plc_san-luis-obispo', NULL,
   1772, 'founding', 'history',
   'San Luis Obispo founded in 1772', 'San Luis Obispo date of incorporation or first settlement: 1772 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q49012', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_mansfield_1856_0', 'plc_mansfield', NULL,
   1856, 'founding', 'history',
   'Mansfield founded in 1856', 'Mansfield date of incorporation or first settlement: 1856 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q974040', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_hattiesburg_1882_0', 'plc_hattiesburg', NULL,
   1882, 'founding', 'history',
   'Hattiesburg founded in 1882', 'Hattiesburg date of incorporation or first settlement: 1882 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q384464', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_charlottesville_1762_0', 'plc_charlottesville', NULL,
   1762, 'founding', 'history',
   'Charlottesville founded in 1762', 'Charlottesville date of incorporation or first settlement: 1762 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q123766', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_binghamton_1834_0', 'plc_binghamton', NULL,
   1834, 'founding', 'history',
   'Binghamton founded in 1834', 'Binghamton date of incorporation or first settlement: 1834 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q213814', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_titusville_1867_0', 'plc_titusville', NULL,
   1867, 'founding', 'history',
   'Titusville founded in 1867', 'Titusville date of incorporation or first settlement: 1867 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q983779', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_fort-pierce_1901_0', 'plc_fort-pierce', NULL,
   1901, 'founding', 'history',
   'Fort Pierce founded in 1901', 'Fort Pierce date of incorporation or first settlement: 1901 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q584340', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_el-centro_1905_0', 'plc_el-centro', NULL,
   1905, 'founding', 'history',
   'El Centro founded in 1905', 'El Centro date of incorporation or first settlement: 1905 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q495369', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_augusta_1786_0', 'plc_augusta', NULL,
   1786, 'founding', 'history',
   'Augusta founded in 1786', 'Augusta date of incorporation or first settlement: 1786 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q3179996', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_bozeman_1864_0', 'plc_bozeman', '1864-08-09',
   1864, 'founding', 'history',
   'Bozeman founded in 1864', 'Bozeman date of incorporation or first settlement: 1864 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q569678', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_fond-du-lac_1843_0', 'plc_fond-du-lac', NULL,
   1843, 'founding', 'history',
   'Fond du Lac founded in 1843', 'Fond du Lac date of incorporation or first settlement: 1843 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q985584', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_rockwall_1854_0', 'plc_rockwall', NULL,
   1854, 'founding', 'history',
   'Rockwall founded in 1854', 'Rockwall date of incorporation or first settlement: 1854 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q383014', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_urbana_1793_0', 'plc_urbana', NULL,
   1793, 'founding', 'history',
   'Urbana founded in 1793', 'Urbana date of incorporation or first settlement: 1793 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q3481314', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_danville_1982_0', 'plc_danville', NULL,
   1982, 'founding', 'history',
   'Danville founded in 1982', 'Danville date of incorporation or first settlement: 1982 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q846586', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_rome_1870_0', 'plc_rome', NULL,
   1870, 'founding', 'history',
   'Rome founded in 1870', 'Rome date of incorporation or first settlement: 1870 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q6586', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_leavenworth_1885_0', 'plc_leavenworth', NULL,
   1885, 'founding', 'history',
   'Leavenworth founded in 1885', 'Leavenworth date of incorporation or first settlement: 1885 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q1025813', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_butte_1890_0', 'plc_butte', NULL,
   1890, 'founding', 'history',
   'Butte founded in 1890', 'Butte date of incorporation or first settlement: 1890 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q2617226', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_mcminnville_1810_0', 'plc_mcminnville', NULL,
   1810, 'founding', 'history',
   'McMinnville founded in 1810', 'McMinnville date of incorporation or first settlement: 1810 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q1208413', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_wenatchee_1892_0', 'plc_wenatchee', NULL,
   1892, 'founding', 'history',
   'Wenatchee founded in 1892', 'Wenatchee date of incorporation or first settlement: 1892 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q958596', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_hinesville_1837_0', 'plc_hinesville', NULL,
   1837, 'founding', 'history',
   'Hinesville founded in 1837', 'Hinesville date of incorporation or first settlement: 1837 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q1994691', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_waxahachie_1850_0', 'plc_waxahachie', NULL,
   1850, 'founding', 'history',
   'Waxahachie founded in 1850', 'Waxahachie date of incorporation or first settlement: 1850 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q645475', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_tooele_1851_0', 'plc_tooele', NULL,
   1851, 'founding', 'history',
   'Tooele founded in 1851', 'Tooele date of incorporation or first settlement: 1851 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q482937', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_douglasville_1875_0', 'plc_douglasville', NULL,
   1875, 'founding', 'history',
   'Douglasville founded in 1875', 'Douglasville date of incorporation or first settlement: 1875 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q2856147', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_laramie_1868_0', 'plc_laramie', NULL,
   1868, 'founding', 'history',
   'Laramie founded in 1868', 'Laramie date of incorporation or first settlement: 1868 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q327515', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_cookeville_1854_0', 'plc_cookeville', NULL,
   1854, 'founding', 'history',
   'Cookeville founded in 1854', 'Cookeville date of incorporation or first settlement: 1854 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q2456192', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_eureka_1850_0', 'plc_eureka', '1850-05-13',
   1850, 'founding', 'history',
   'Eureka founded in 1850', 'Eureka date of incorporation or first settlement: 1850 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q488702', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_wooster_1808_0', 'plc_wooster', NULL,
   1808, 'founding', 'history',
   'Wooster founded in 1808', 'Wooster date of incorporation or first settlement: 1808 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q989567', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_kankakee_1853_0', 'plc_kankakee', NULL,
   1853, 'founding', 'history',
   'Kankakee founded in 1853', 'Kankakee date of incorporation or first settlement: 1853 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q578351', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_stevens-point_1858_0', 'plc_stevens-point', NULL,
   1858, 'founding', 'history',
   'Stevens Point founded in 1858', 'Stevens Point date of incorporation or first settlement: 1858 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q991209', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_fremont_1956_0', 'plc_fremont', '1956-01-23',
   1956, 'founding', 'history',
   'Fremont founded in 1956', 'Fremont date of incorporation or first settlement: 1956 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q49220', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_kingsville_1904_0', 'plc_kingsville', '1904-07-04',
   1904, 'founding', 'history',
   'Kingsville founded in 1904', 'Kingsville date of incorporation or first settlement: 1904 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q970495', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_statesville_1753_0', 'plc_statesville', NULL,
   1753, 'founding', 'history',
   'Statesville founded in 1753', 'Statesville date of incorporation or first settlement: 1753 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q553956', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_carrollton_1913_0', 'plc_carrollton', NULL,
   1913, 'founding', 'history',
   'Carrollton founded in 1913', 'Carrollton date of incorporation or first settlement: 1913 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q128261', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_asheboro_1796_0', 'plc_asheboro', '1796-12-25',
   1796, 'founding', 'history',
   'Asheboro founded in 1796', 'Asheboro date of incorporation or first settlement: 1796 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q725046', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_chaska_1891_0', 'plc_chaska', NULL,
   1891, 'founding', 'history',
   'Chaska founded in 1891', 'Chaska date of incorporation or first settlement: 1891 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q280102', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_woodstock_1829_0', 'plc_woodstock', NULL,
   1829, 'founding', 'history',
   'Woodstock founded in 1829', 'Woodstock date of incorporation or first settlement: 1829 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q608293', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_belvidere_1835_0', 'plc_belvidere', NULL,
   1835, 'founding', 'history',
   'Belvidere founded in 1835', 'Belvidere date of incorporation or first settlement: 1835 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q185609', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_edwardsville_1884_0', 'plc_edwardsville', '1884-06-16',
   1884, 'founding', 'history',
   'Edwardsville founded in 1884', 'Edwardsville date of incorporation or first settlement: 1884 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q1133659', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_edwardsville_1768_1', 'plc_edwardsville', NULL,
   1768, 'career', 'history',
   'first settlement (1768)', 'first settlement (Wikidata Q16685537, P793)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q1133659', 0.8, 10,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_hastings_1890_0', 'plc_hastings', NULL,
   1890, 'founding', 'history',
   'Hastings founded in 1890', 'Hastings date of incorporation or first settlement: 1890 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q2092792', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_paris_1845_0', 'plc_paris', NULL,
   1845, 'founding', 'history',
   'Paris founded in 1845', 'Paris date of incorporation or first settlement: 1845 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q830149', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_dedham_1635_0', 'plc_dedham', NULL,
   1635, 'founding', 'history',
   'Dedham founded in 1635', 'Dedham date of incorporation or first settlement: 1635 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q1758615', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_fort-dodge_1869_0', 'plc_fort-dodge', NULL,
   1869, 'founding', 'history',
   'Fort Dodge founded in 1869', 'Fort Dodge date of incorporation or first settlement: 1869 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q983761', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_fort-dodge_1850_1', 'plc_fort-dodge', NULL,
   1850, 'founding', 'history',
   'Fort Dodge founded in 1850', 'Fort Dodge date of incorporation or first settlement: 1850 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q983761', 0.8, 10,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_ottumwa_1844_0', 'plc_ottumwa', NULL,
   1844, 'founding', 'history',
   'Ottumwa founded in 1844', 'Ottumwa date of incorporation or first settlement: 1844 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q853566', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_staunton_1891_0', 'plc_staunton', NULL,
   1891, 'founding', 'history',
   'Staunton founded in 1891', 'Staunton date of incorporation or first settlement: 1891 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q575509', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_muscatine_1839_0', 'plc_muscatine', NULL,
   1839, 'founding', 'history',
   'Muscatine founded in 1839', 'Muscatine date of incorporation or first settlement: 1839 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q955896', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_corsicana_1848_0', 'plc_corsicana', NULL,
   1848, 'founding', 'history',
   'Corsicana founded in 1848', 'Corsicana date of incorporation or first settlement: 1848 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q939602', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_dickinson_1977_0', 'plc_dickinson', NULL,
   1977, 'founding', 'history',
   'Dickinson founded in 1977', 'Dickinson date of incorporation or first settlement: 1977 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q975572', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_brookings_1951_0', 'plc_brookings', NULL,
   1951, 'founding', 'history',
   'Brookings founded in 1951', 'Brookings date of incorporation or first settlement: 1951 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q1630187', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_faribault_1855_0', 'plc_faribault', NULL,
   1855, 'founding', 'history',
   'Faribault founded in 1855', 'Faribault date of incorporation or first settlement: 1855 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q177861', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_crestview_1883_0', 'plc_crestview', NULL,
   1883, 'founding', 'history',
   'Crestview founded in 1883', 'Crestview date of incorporation or first settlement: 1883 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q2153124', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_gallup_1881_0', 'plc_gallup', NULL,
   1881, 'founding', 'history',
   'Gallup founded in 1881', 'Gallup date of incorporation or first settlement: 1881 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q577981', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_kerrville_1856_0', 'plc_kerrville', NULL,
   1856, 'founding', 'history',
   'Kerrville founded in 1856', 'Kerrville date of incorporation or first settlement: 1856 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q525007', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_new-castle_1791_0', 'plc_new-castle', NULL,
   1791, 'founding', 'history',
   'New Castle founded in 1791', 'New Castle date of incorporation or first settlement: 1791 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q3131938', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_pascagoula_1718_0', 'plc_pascagoula', NULL,
   1718, 'founding', 'history',
   'Pascagoula founded in 1718', 'Pascagoula date of incorporation or first settlement: 1718 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q913225', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_christiansburg_1808_0', 'plc_christiansburg', NULL,
   1808, 'founding', 'history',
   'Christiansburg founded in 1808', 'Christiansburg date of incorporation or first settlement: 1808 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q599407', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_greenfield_1947_0', 'plc_greenfield', '1947-01-07',
   1947, 'founding', 'history',
   'Greenfield founded in 1947', 'Greenfield date of incorporation or first settlement: 1947 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q983596', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_waynesboro_1749_0', 'plc_waynesboro', NULL,
   1749, 'founding', 'history',
   'Waynesboro founded in 1749', 'Waynesboro date of incorporation or first settlement: 1749 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q1181108', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_klamath-falls_1905_0', 'plc_klamath-falls', NULL,
   1905, 'founding', 'history',
   'Klamath Falls founded in 1905', 'Klamath Falls date of incorporation or first settlement: 1905 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q846146', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_kinston_1762_0', 'plc_kinston', NULL,
   1762, 'founding', 'history',
   'Kinston founded in 1762', 'Kinston date of incorporation or first settlement: 1762 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q2048581', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_marquette_1874_0', 'plc_marquette', NULL,
   1874, 'founding', 'history',
   'Marquette founded in 1874', 'Marquette date of incorporation or first settlement: 1874 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q581365', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_chambersburg_1734_0', 'plc_chambersburg', NULL,
   1734, 'founding', 'history',
   'Chambersburg founded in 1734', 'Chambersburg date of incorporation or first settlement: 1734 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q1133562', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_adrian_1900_0', 'plc_adrian', NULL,
   1900, 'founding', 'history',
   'Adrian founded in 1900', 'Adrian date of incorporation or first settlement: 1900 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q982091', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_belton_1850_0', 'plc_belton', NULL,
   1850, 'founding', 'history',
   'Belton founded in 1850', 'Belton date of incorporation or first settlement: 1850 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q744550', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_elko_1890_0', 'plc_elko', NULL,
   1890, 'founding', 'history',
   'Elko founded in 1890', 'Elko date of incorporation or first settlement: 1890 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q22022445', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_elko_1965_1', 'plc_elko', '1965',
   1965, 'political', 'history',
   'Elko dissolved in 1965', 'Elko dissolution date: 1965 (Wikidata P576)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q22022445', 0.8, 10,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_nogales_1893_0', 'plc_nogales', NULL,
   1893, 'founding', 'history',
   'Nogales founded in 1893', 'Nogales date of incorporation or first settlement: 1893 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q79783', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_stephenville_1856_0', 'plc_stephenville', NULL,
   1856, 'founding', 'history',
   'Stephenville founded in 1856', 'Stephenville date of incorporation or first settlement: 1856 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q981525', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_rolla_1844_0', 'plc_rolla', NULL,
   1844, 'founding', 'history',
   'Rolla founded in 1844', 'Rolla date of incorporation or first settlement: 1844 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q955386', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_warrensburg_1813_0', 'plc_warrensburg', NULL,
   1813, 'founding', 'history',
   'Warrensburg founded in 1813', 'Warrensburg date of incorporation or first settlement: 1813 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q3506095', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_west-chester_1799_0', 'plc_west-chester', '1799-03-28',
   1799, 'founding', 'history',
   'West Chester founded in 1799', 'West Chester date of incorporation or first settlement: 1799 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q1010244', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_plattsburgh_1785_0', 'plc_plattsburgh', NULL,
   1785, 'founding', 'history',
   'Plattsburgh founded in 1785', 'Plattsburgh date of incorporation or first settlement: 1785 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q998669', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_painesville_1800_0', 'plc_painesville', NULL,
   1800, 'founding', 'history',
   'Painesville founded in 1800', 'Painesville date of incorporation or first settlement: 1800 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q998689', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_papillion_1870_0', 'plc_papillion', NULL,
   1870, 'founding', 'history',
   'Papillion founded in 1870', 'Papillion date of incorporation or first settlement: 1870 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q960468', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_alice_1888_0', 'plc_alice', NULL,
   1888, 'founding', 'history',
   'Alice founded in 1888', 'Alice date of incorporation or first settlement: 1888 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q981528', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_newton_1853_0', 'plc_newton', NULL,
   1853, 'founding', 'history',
   'Newton founded in 1853', 'Newton date of incorporation or first settlement: 1853 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q979741', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_mineola_1877_0', 'plc_mineola', NULL,
   1877, 'founding', 'history',
   'Mineola founded in 1877', 'Mineola date of incorporation or first settlement: 1877 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q982367', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_ellensburg_1883_0', 'plc_ellensburg', NULL,
   1883, 'founding', 'history',
   'Ellensburg founded in 1883', 'Ellensburg date of incorporation or first settlement: 1883 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q868684', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_claremore_1883_0', 'plc_claremore', NULL,
   1883, 'founding', 'history',
   'Claremore founded in 1883', 'Claremore date of incorporation or first settlement: 1883 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q2046869', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_bartow_1851_0', 'plc_bartow', NULL,
   1851, 'founding', 'history',
   'Bartow founded in 1851', 'Bartow date of incorporation or first settlement: 1851 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q809580', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_cortland_1791_0', 'plc_cortland', NULL,
   1791, 'founding', 'history',
   'Cortland founded in 1791', 'Cortland date of incorporation or first settlement: 1791 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q1380739', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_westminster_1870_0', 'plc_westminster', NULL,
   1870, 'founding', 'history',
   'Westminster founded in 1870', 'Westminster date of incorporation or first settlement: 1870 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q838759', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_ottawa_1853_0', 'plc_ottawa', NULL,
   1853, 'founding', 'history',
   'Ottawa founded in 1853', 'Ottawa date of incorporation or first settlement: 1853 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q576209', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_mcalester_1872_0', 'plc_mcalester', NULL,
   1872, 'founding', 'history',
   'McAlester founded in 1872', 'McAlester date of incorporation or first settlement: 1872 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q1994656', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_palestine_1846_0', 'plc_palestine', NULL,
   1846, 'founding', 'history',
   'Palestine founded in 1846', 'Palestine date of incorporation or first settlement: 1846 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q617602', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_steubenville_1795_0', 'plc_steubenville', NULL,
   1795, 'founding', 'history',
   'Steubenville founded in 1795', 'Steubenville date of incorporation or first settlement: 1795 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q986432', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_pampa_1888_0', 'plc_pampa', NULL,
   1888, 'founding', 'history',
   'Pampa founded in 1888', 'Pampa date of incorporation or first settlement: 1888 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q976478', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_boone_1872_0', 'plc_boone', NULL,
   1872, 'founding', 'history',
   'Boone founded in 1872', 'Boone date of incorporation or first settlement: 1872 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q893055', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_punta-gorda_1882_0', 'plc_punta-gorda', NULL,
   1882, 'founding', 'history',
   'Punta Gorda founded in 1882', 'Punta Gorda date of incorporation or first settlement: 1882 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q953543', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_vincennes_1732_0', 'plc_vincennes', NULL,
   1732, 'founding', 'history',
   'Vincennes founded in 1732', 'Vincennes date of incorporation or first settlement: 1732 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q585857', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_elizabeth-city_1794_0', 'plc_elizabeth-city', NULL,
   1794, 'founding', 'history',
   'Elizabeth City founded in 1794', 'Elizabeth City date of incorporation or first settlement: 1794 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q1018467', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_lenoir_1841_0', 'plc_lenoir', NULL,
   1841, 'founding', 'history',
   'Lenoir founded in 1841', 'Lenoir date of incorporation or first settlement: 1841 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q2028342', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_logansport_1826_0', 'plc_logansport', NULL,
   1826, 'founding', 'history',
   'Logansport founded in 1826', 'Logansport date of incorporation or first settlement: 1826 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q1075847', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_oswego_1796_0', 'plc_oswego', NULL,
   1796, 'founding', 'history',
   'Oswego founded in 1796', 'Oswego date of incorporation or first settlement: 1796 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q1017583', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_tiffin_1812_0', 'plc_tiffin', NULL,
   1812, 'founding', 'history',
   'Tiffin founded in 1812', 'Tiffin date of incorporation or first settlement: 1812 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q990934', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_albert-lea_1855_0', 'plc_albert-lea', NULL,
   1855, 'founding', 'history',
   'Albert Lea founded in 1855', 'Albert Lea date of incorporation or first settlement: 1855 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q913476', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_new-philadelphia_1840_0', 'plc_new-philadelphia', NULL,
   1840, 'founding', 'history',
   'New Philadelphia founded in 1840', 'New Philadelphia date of incorporation or first settlement: 1840 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q1180999', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_radford_1887_0', 'plc_radford', NULL,
   1887, 'founding', 'history',
   'Radford founded in 1887', 'Radford date of incorporation or first settlement: 1887 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q586070', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_ada_1853_0', 'plc_ada', NULL,
   1853, 'founding', 'history',
   'Ada founded in 1853', 'Ada date of incorporation or first settlement: 1853 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q1934356', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_beckley_1838_0', 'plc_beckley', NULL,
   1838, 'founding', 'history',
   'Beckley founded in 1838', 'Beckley date of incorporation or first settlement: 1838 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q813745', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_norwalk_1957_0', 'plc_norwalk', NULL,
   1957, 'founding', 'history',
   'Norwalk founded in 1957', 'Norwalk date of incorporation or first settlement: 1957 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q494715', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_tifton_1872_0', 'plc_tifton', NULL,
   1872, 'founding', 'history',
   'Tifton founded in 1872', 'Tifton date of incorporation or first settlement: 1872 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q2729512', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_opelousas_1720_0', 'plc_opelousas', NULL,
   1720, 'founding', 'history',
   'Opelousas founded in 1720', 'Opelousas date of incorporation or first settlement: 1720 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q1154039', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_brenham_1844_0', 'plc_brenham', NULL,
   1844, 'founding', 'history',
   'Brenham founded in 1844', 'Brenham date of incorporation or first settlement: 1844 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q908929', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_sevierville_1795_0', 'plc_sevierville', NULL,
   1795, 'founding', 'history',
   'Sevierville founded in 1795', 'Sevierville date of incorporation or first settlement: 1795 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q2168431', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_mount-clemens_1799_0', 'plc_mount-clemens', NULL,
   1799, 'founding', 'history',
   'Mount Clemens founded in 1799', 'Mount Clemens date of incorporation or first settlement: 1799 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q1431633', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_vero-beach_1925_0', 'plc_vero-beach', NULL,
   1925, 'founding', 'history',
   'Vero Beach founded in 1925', 'Vero Beach date of incorporation or first settlement: 1925 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q969026', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_calhoun_1848_0', 'plc_calhoun', NULL,
   1848, 'founding', 'history',
   'Calhoun founded in 1848', 'Calhoun date of incorporation or first settlement: 1848 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q428722', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_dublin_1982_0', 'plc_dublin', NULL,
   1982, 'founding', 'history',
   'Dublin founded in 1982', 'Dublin date of incorporation or first settlement: 1982 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q837109', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_brunswick_1715_0', 'plc_brunswick', NULL,
   1715, 'founding', 'history',
   'Brunswick founded in 1715', 'Brunswick date of incorporation or first settlement: 1715 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q994132', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_albemarle_1826_0', 'plc_albemarle', NULL,
   1826, 'founding', 'history',
   'Albemarle founded in 1826', 'Albemarle date of incorporation or first settlement: 1826 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q921689', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_clayton_1857_0', 'plc_clayton', NULL,
   1857, 'founding', 'history',
   'Clayton founded in 1857', 'Clayton date of incorporation or first settlement: 1857 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q948168', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_laurinburg_1877_0', 'plc_laurinburg', NULL,
   1877, 'founding', 'history',
   'Laurinburg founded in 1877', 'Laurinburg date of incorporation or first settlement: 1877 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q1904873', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_tavares_1880_0', 'plc_tavares', NULL,
   1880, 'founding', 'history',
   'Tavares founded in 1880', 'Tavares date of incorporation or first settlement: 1880 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q2152335', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_cullman_1873_0', 'plc_cullman', NULL,
   1873, 'founding', 'history',
   'Cullman founded in 1873', 'Cullman date of incorporation or first settlement: 1873 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q79484', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_the-dalles_1857_0', 'plc_the-dalles', NULL,
   1857, 'founding', 'history',
   'The Dalles founded in 1857', 'The Dalles date of incorporation or first settlement: 1857 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q985271', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_traverse-city_1891_0', 'plc_traverse-city', NULL,
   1891, 'founding', 'history',
   'Traverse City founded in 1891', 'Traverse City date of incorporation or first settlement: 1891 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q984544', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_greeneville_1783_0', 'plc_greeneville', NULL,
   1783, 'founding', 'history',
   'Greeneville founded in 1783', 'Greeneville date of incorporation or first settlement: 1783 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q1002631', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_front-royal_1788_0', 'plc_front-royal', NULL,
   1788, 'founding', 'history',
   'Front Royal founded in 1788', 'Front Royal date of incorporation or first settlement: 1788 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q508358', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_corinth_1909_0', 'plc_corinth', NULL,
   1909, 'founding', 'history',
   'Corinth founded in 1909', 'Corinth date of incorporation or first settlement: 1909 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q974334', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_forrest-city_1870_0', 'plc_forrest-city', NULL,
   1870, 'founding', 'history',
   'Forrest City founded in 1870', 'Forrest City date of incorporation or first settlement: 1870 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q79403', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_graham_1871_0', 'plc_graham', NULL,
   1871, 'founding', 'history',
   'Graham founded in 1871', 'Graham date of incorporation or first settlement: 1871 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q978924', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_bloomsburg_1797_0', 'plc_bloomsburg', NULL,
   1797, 'founding', 'history',
   'Bloomsburg founded in 1797', 'Bloomsburg date of incorporation or first settlement: 1797 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q1133544', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_thibodaux_1830_0', 'plc_thibodaux', NULL,
   1830, 'founding', 'history',
   'Thibodaux founded in 1830', 'Thibodaux date of incorporation or first settlement: 1830 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q1013317', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_rio-grande-city_1848_0', 'plc_rio-grande-city', NULL,
   1848, 'founding', 'history',
   'Rio Grande City founded in 1848', 'Rio Grande City date of incorporation or first settlement: 1848 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q981868', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_fort-payne_1889_0', 'plc_fort-payne', NULL,
   1889, 'founding', 'history',
   'Fort Payne founded in 1889', 'Fort Payne date of incorporation or first settlement: 1889 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q79653', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_red-bluff_1850_0', 'plc_red-bluff', NULL,
   1850, 'founding', 'history',
   'Red Bluff founded in 1850', 'Red Bluff date of incorporation or first settlement: 1850 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q546468', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_indiana_1805_0', 'plc_indiana', NULL,
   1805, 'founding', 'history',
   'Indiana founded in 1805', 'Indiana date of incorporation or first settlement: 1805 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q1184769', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_pierre_1880_0', 'plc_pierre', NULL,
   1880, 'founding', 'history',
   'Pierre founded in 1880', 'Pierre date of incorporation or first settlement: 1880 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q40747', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_waycross_1820_0', 'plc_waycross', NULL,
   1820, 'founding', 'history',
   'Waycross founded in 1820', 'Waycross date of incorporation or first settlement: 1820 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q615027', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_washington-court-house_1810_0', 'plc_washington-court-house', NULL,
   1810, 'founding', 'history',
   'Washington Court House founded in 1810', 'Washington Court House date of incorporation or first settlement: 1810 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q2203766', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_levelland_1921_0', 'plc_levelland', NULL,
   1921, 'founding', 'history',
   'Levelland founded in 1921', 'Levelland date of incorporation or first settlement: 1921 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q970608', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_falls-church_1733_0', 'plc_falls-church', NULL,
   1733, 'founding', 'history',
   'Falls Church founded in 1733', 'Falls Church date of incorporation or first settlement: 1733 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q408744', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_sault-ste-marie_1668_0', 'plc_sault-ste-marie', NULL,
   1668, 'founding', 'history',
   'Sault Ste. Marie founded in 1668', 'Sault Ste. Marie date of incorporation or first settlement: 1668 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q986634', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_andrews_1937_0', 'plc_andrews', NULL,
   1937, 'founding', 'history',
   'Andrews founded in 1937', 'Andrews date of incorporation or first settlement: 1937 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q509541', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_boerne_1849_0', 'plc_boerne', NULL,
   1849, 'founding', 'history',
   'Boerne founded in 1849', 'Boerne date of incorporation or first settlement: 1849 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q890296', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_port-orchard_1854_0', 'plc_port-orchard', NULL,
   1854, 'founding', 'history',
   'Port Orchard founded in 1854', 'Port Orchard date of incorporation or first settlement: 1854 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q935482', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_washington_1849_0', 'plc_washington', NULL,
   1849, 'founding', 'history',
   'Washington founded in 1849', 'Washington date of incorporation or first settlement: 1849 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q3178632', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_huron_1888_0', 'plc_huron', NULL,
   1888, 'founding', 'history',
   'Huron founded in 1888', 'Huron date of incorporation or first settlement: 1888 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q2649652', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_beaufort_1709_0', 'plc_beaufort', NULL,
   1709, 'founding', 'history',
   'Beaufort founded in 1709', 'Beaufort date of incorporation or first settlement: 1709 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q813374', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_beeville_1859_0', 'plc_beeville', NULL,
   1859, 'founding', 'history',
   'Beeville founded in 1859', 'Beeville date of incorporation or first settlement: 1859 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q814163', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_mcpherson_1872_0', 'plc_mcpherson', NULL,
   1872, 'founding', 'history',
   'McPherson founded in 1872', 'McPherson date of incorporation or first settlement: 1872 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q2189250', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_crowley_1951_0', 'plc_crowley', NULL,
   1951, 'founding', 'history',
   'Crowley founded in 1951', 'Crowley date of incorporation or first settlement: 1951 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q970371', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_harrison_1696_0', 'plc_harrison', NULL,
   1696, 'founding', 'history',
   'Harrison founded in 1696', 'Harrison date of incorporation or first settlement: 1696 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q3476507', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_bellefontaine_1817_0', 'plc_bellefontaine', NULL,
   1817, 'founding', 'history',
   'Bellefontaine founded in 1817', 'Bellefontaine date of incorporation or first settlement: 1817 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q815891', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_bardstown_1770_0', 'plc_bardstown', NULL,
   1770, 'founding', 'history',
   'Bardstown founded in 1770', 'Bardstown date of incorporation or first settlement: 1770 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q1063053', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_worthington_1811_0', 'plc_worthington', NULL,
   1811, 'founding', 'history',
   'Worthington founded in 1811', 'Worthington date of incorporation or first settlement: 1811 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q1185603', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_meadville_1788_0', 'plc_meadville', NULL,
   1788, 'founding', 'history',
   'Meadville founded in 1788', 'Meadville date of incorporation or first settlement: 1788 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q1010225', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_connersville_1813_0', 'plc_connersville', NULL,
   1813, 'founding', 'history',
   'Connersville founded in 1813', 'Connersville date of incorporation or first settlement: 1813 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q532408', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_fulton_1825_0', 'plc_fulton', NULL,
   1825, 'founding', 'history',
   'Fulton founded in 1825', 'Fulton date of incorporation or first settlement: 1825 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q839802', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_effingham_1814_0', 'plc_effingham', NULL,
   1814, 'founding', 'history',
   'Effingham founded in 1814', 'Effingham date of incorporation or first settlement: 1814 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q577958', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_gaffney_1804_0', 'plc_gaffney', NULL,
   1804, 'founding', 'history',
   'Gaffney founded in 1804', 'Gaffney date of incorporation or first settlement: 1804 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q1023649', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_abbeville_1857_0', 'plc_abbeville', NULL,
   1857, 'founding', 'history',
   'Abbeville founded in 1857', 'Abbeville date of incorporation or first settlement: 1857 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q306318', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_fernandina-beach_1811_0', 'plc_fernandina-beach', NULL,
   1811, 'founding', 'history',
   'Fernandina Beach founded in 1811', 'Fernandina Beach date of incorporation or first settlement: 1811 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q1975746', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_west-plains_1832_0', 'plc_west-plains', NULL,
   1832, 'founding', 'history',
   'West Plains founded in 1832', 'West Plains date of incorporation or first settlement: 1832 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q966271', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_okmulgee_1868_0', 'plc_okmulgee', NULL,
   1868, 'founding', 'history',
   'Okmulgee founded in 1868', 'Okmulgee date of incorporation or first settlement: 1868 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q991015', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_neosho_1829_0', 'plc_neosho', NULL,
   1829, 'founding', 'history',
   'Neosho founded in 1829', 'Neosho date of incorporation or first settlement: 1829 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q1000065', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_evanston_1836_0', 'plc_evanston', NULL,
   1836, 'founding', 'history',
   'Evanston founded in 1836', 'Evanston date of incorporation or first settlement: 1836 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q462799', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_poquoson_1630_0', 'plc_poquoson', NULL,
   1630, 'founding', 'history',
   'Poquoson founded in 1630', 'Poquoson date of incorporation or first settlement: 1630 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q349995', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_shepherdsville_1793_0', 'plc_shepherdsville', NULL,
   1793, 'founding', 'history',
   'Shepherdsville founded in 1793', 'Shepherdsville date of incorporation or first settlement: 1793 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q2241892', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_guymon_1901_0', 'plc_guymon', NULL,
   1901, 'founding', 'history',
   'Guymon founded in 1901', 'Guymon date of incorporation or first settlement: 1901 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q1920861', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_magnolia_1968_0', 'plc_magnolia', NULL,
   1968, 'founding', 'history',
   'Magnolia founded in 1968', 'Magnolia date of incorporation or first settlement: 1968 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q976159', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_lewisburg_1784_0', 'plc_lewisburg', NULL,
   1784, 'founding', 'history',
   'Lewisburg founded in 1784', 'Lewisburg date of incorporation or first settlement: 1784 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q1185021', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_yazoo-city_1824_0', 'plc_yazoo-city', NULL,
   1824, 'founding', 'history',
   'Yazoo City founded in 1824', 'Yazoo City date of incorporation or first settlement: 1824 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q983832', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_raymondville_1904_0', 'plc_raymondville', NULL,
   1904, 'founding', 'history',
   'Raymondville founded in 1904', 'Raymondville date of incorporation or first settlement: 1904 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q979250', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_coshocton_1802_0', 'plc_coshocton', NULL,
   1802, 'founding', 'history',
   'Coshocton founded in 1802', 'Coshocton date of incorporation or first settlement: 1802 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q991020', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_lawrenceburg_1819_0', 'plc_lawrenceburg', NULL,
   1819, 'founding', 'history',
   'Lawrenceburg founded in 1819', 'Lawrenceburg date of incorporation or first settlement: 1819 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q2472594', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_grand-haven_1867_0', 'plc_grand-haven', NULL,
   1867, 'founding', 'history',
   'Grand Haven founded in 1867', 'Grand Haven date of incorporation or first settlement: 1867 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q1018280', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_malvern_1889_0', 'plc_malvern', NULL,
   1889, 'founding', 'history',
   'Malvern founded in 1889', 'Malvern date of incorporation or first settlement: 1889 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q1181835', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_lincolnton_1798_0', 'plc_lincolnton', NULL,
   1798, 'founding', 'history',
   'Lincolnton founded in 1798', 'Lincolnton date of incorporation or first settlement: 1798 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q2615624', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_deridder_1903_0', 'plc_deridder', NULL,
   1903, 'founding', 'history',
   'DeRidder founded in 1903', 'DeRidder date of incorporation or first settlement: 1903 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q972748', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_mount-holly_1838_0', 'plc_mount-holly', NULL,
   1838, 'founding', 'history',
   'Mount Holly founded in 1838', 'Mount Holly date of incorporation or first settlement: 1838 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q2030238', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_van-wert_1848_0', 'plc_van-wert', NULL,
   1848, 'founding', 'history',
   'Van Wert founded in 1848', 'Van Wert date of incorporation or first settlement: 1848 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q1012164', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_vernon_1905_0', 'plc_vernon', NULL,
   1905, 'founding', 'history',
   'Vernon founded in 1905', 'Vernon date of incorporation or first settlement: 1905 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q934111', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_sebring_1912_0', 'plc_sebring', NULL,
   1912, 'founding', 'history',
   'Sebring founded in 1912', 'Sebring date of incorporation or first settlement: 1912 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q985173', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_canandaigua_1788_0', 'plc_canandaigua', NULL,
   1788, 'founding', 'history',
   'Canandaigua founded in 1788', 'Canandaigua date of incorporation or first settlement: 1788 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q1363104', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_greencastle_1782_0', 'plc_greencastle', NULL,
   1782, 'founding', 'history',
   'Greencastle founded in 1782', 'Greencastle date of incorporation or first settlement: 1782 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q1185633', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_big-rapids_1855_0', 'plc_big-rapids', NULL,
   1855, 'founding', 'history',
   'Big Rapids founded in 1855', 'Big Rapids date of incorporation or first settlement: 1855 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q2472136', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_palatka_1821_0', 'plc_palatka', NULL,
   1821, 'founding', 'history',
   'Palatka founded in 1821', 'Palatka date of incorporation or first settlement: 1821 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q955907', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_cadillac_1877_0', 'plc_cadillac', NULL,
   1877, 'founding', 'history',
   'Cadillac founded in 1877', 'Cadillac date of incorporation or first settlement: 1877 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q1025149', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_newberry_1889_0', 'plc_newberry', NULL,
   1889, 'founding', 'history',
   'Newberry founded in 1889', 'Newberry date of incorporation or first settlement: 1889 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q1003844', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_jefferson_1841_0', 'plc_jefferson', NULL,
   1841, 'founding', 'history',
   'Jefferson founded in 1841', 'Jefferson date of incorporation or first settlement: 1841 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q982839', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_bel-air_1841_0', 'plc_bel-air', NULL,
   1841, 'founding', 'history',
   'Bel Air founded in 1841', 'Bel Air date of incorporation or first settlement: 1841 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q4881868', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_jennings_1888_0', 'plc_jennings', '1888-05-02',
   1888, 'founding', 'history',
   'Jennings founded in 1888', 'Jennings date of incorporation or first settlement: 1888 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q2461688', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_alpena_1840_0', 'plc_alpena', NULL,
   1840, 'founding', 'history',
   'Alpena founded in 1840', 'Alpena date of incorporation or first settlement: 1840 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q1012455', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_bonham_1837_0', 'plc_bonham', NULL,
   1837, 'founding', 'history',
   'Bonham founded in 1837', 'Bonham date of incorporation or first settlement: 1837 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q144856', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_plymouth_1853_0', 'plc_plymouth', NULL,
   1853, 'founding', 'history',
   'Plymouth founded in 1853', 'Plymouth date of incorporation or first settlement: 1853 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q2116642', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_uniontown_1776_0', 'plc_uniontown', NULL,
   1776, 'founding', 'history',
   'Uniontown founded in 1776', 'Uniontown date of incorporation or first settlement: 1776 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q1187047', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_moncks-corner_1728_0', 'plc_moncks-corner', NULL,
   1728, 'founding', 'history',
   'Moncks Corner founded in 1728', 'Moncks Corner date of incorporation or first settlement: 1728 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q2238330', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_shelton_1889_0', 'plc_shelton', NULL,
   1889, 'founding', 'history',
   'Shelton founded in 1889', 'Shelton date of incorporation or first settlement: 1889 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q983986', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_havre_1893_0', 'plc_havre', NULL,
   1893, 'founding', 'history',
   'Havre founded in 1893', 'Havre date of incorporation or first settlement: 1893 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q959425', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_wapakoneta_1782_0', 'plc_wapakoneta', NULL,
   1782, 'founding', 'history',
   'Wapakoneta founded in 1782', 'Wapakoneta date of incorporation or first settlement: 1782 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q492796', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_alamosa_1878_0', 'plc_alamosa', NULL,
   1878, 'founding', 'history',
   'Alamosa founded in 1878', 'Alamosa date of incorporation or first settlement: 1878 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q1010247', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_cairo_1803_0', 'plc_cairo', NULL,
   1803, 'founding', 'history',
   'Cairo founded in 1803', 'Cairo date of incorporation or first settlement: 1803 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q4699596', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_baker-city_1874_0', 'plc_baker-city', NULL,
   1874, 'founding', 'history',
   'Baker City founded in 1874', 'Baker City date of incorporation or first settlement: 1874 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q1152219', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_safford_1874_0', 'plc_safford', NULL,
   1874, 'founding', 'history',
   'Safford founded in 1874', 'Safford date of incorporation or first settlement: 1874 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q79767', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_sunbury_1772_0', 'plc_sunbury', NULL,
   1772, 'founding', 'history',
   'Sunbury founded in 1772', 'Sunbury date of incorporation or first settlement: 1772 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q1187059', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_astoria_1839_0', 'plc_astoria', NULL,
   1839, 'founding', 'history',
   'Astoria founded in 1839', 'Astoria date of incorporation or first settlement: 1839 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q2073812', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_lock-haven_1769_0', 'plc_lock-haven', NULL,
   1769, 'founding', 'history',
   'Lock Haven founded in 1769', 'Lock Haven date of incorporation or first settlement: 1769 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q1187817', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_prineville_1880_0', 'plc_prineville', NULL,
   1880, 'founding', 'history',
   'Prineville founded in 1880', 'Prineville date of incorporation or first settlement: 1880 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q330678', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_lamesa_1903_0', 'plc_lamesa', NULL,
   1903, 'founding', 'history',
   'Lamesa founded in 1903', 'Lamesa date of incorporation or first settlement: 1903 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q970422', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_granbury_1860_0', 'plc_granbury', NULL,
   1860, 'founding', 'history',
   'Granbury founded in 1860', 'Granbury date of incorporation or first settlement: 1860 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q923474', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_port-townsend_1851_0', 'plc_port-townsend', '1851-04-24',
   1851, 'founding', 'history',
   'Port Townsend founded in 1851', 'Port Townsend date of incorporation or first settlement: 1851 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q1001828', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'DAY');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_waseca_1867_0', 'plc_waseca', NULL,
   1867, 'founding', 'history',
   'Waseca founded in 1867', 'Waseca date of incorporation or first settlement: 1867 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q987118', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_hondo_1881_0', 'plc_hondo', NULL,
   1881, 'founding', 'history',
   'Hondo founded in 1881', 'Hondo date of incorporation or first settlement: 1881 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q976567', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_marianna_1828_0', 'plc_marianna', NULL,
   1828, 'founding', 'history',
   'Marianna founded in 1828', 'Marianna date of incorporation or first settlement: 1828 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q1924806', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_fitzgerald_1895_0', 'plc_fitzgerald', NULL,
   1895, 'founding', 'history',
   'Fitzgerald founded in 1895', 'Fitzgerald date of incorporation or first settlement: 1895 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q654046', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, source_section, confidence, display_order, lang, fetched_at, last_verified_at, created_at, date_precision)
VALUES
  ('ev_wd_olney_1909_0', 'plc_olney', NULL,
   1909, 'founding', 'history',
   'Olney founded in 1909', 'Olney date of incorporation or first settlement: 1909 (Wikidata P571)',
   'src_wikidata', 'https://www.wikidata.org/wiki/Q982424', 0.8, 0,
   'en', unixepoch(), unixepoch(), unixepoch(), 'YEAR');

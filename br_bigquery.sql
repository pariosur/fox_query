--simple regex condition (to use in priority)
CASE WHEN REGEXP_CONTAINS(product_name_description, r"maillot\sciclismo")
	THEN "clothing_sportswear_cycling_uncategorized"


  -- HELMETS AND ACCESORIES


WHEN merchant_name="ebay" and REGEXP_CONTAINS(product_name_description, r"casco.*(star|nzi|scooter|midland|ventura|acerbis|momo|moto|modular|vintage|integral|militar|jet|shiro|vespa|shark|motocicleta|viper|motorcycle|helmet|marlboro|abatible|lunar|senna|arai|manos|trial|abierto|helm|visera)")
THEN "automotive_car and motorbike accessories_protective clothing_uncategorized"

WHEN merchant_name="ebay" and REGEXP_CONTAINS(product_name_description, r"cascos.*(volumen)")
THEN "computer and electronics_accessories_audio and video accessories_uncategorized"

WHEN merchant_name="ebay" and REGEXP_CONTAINS(product_name_description, r"helmet.*(honda|open|headset|stockist|amber|motorsport|karting|motorcycle|moto|enduro|bluetooth|pads|decal|wigs|motocross|turismo|modular|visor|sticker)")
THEN "automotive_car and motorbike accessories_protective clothing_uncategorized"

WHEN merchant_name="ebay" and REGEXP_CONTAINS(product_name_description, r"(casco|helmet).*(cover|paintball|airsoft|camouflage|aramid|aleman)")
THEN "sports and outdoors_paintball_helmets and accessories_uncategorized"

WHEN merchant_name="ebay" and REGEXP_CONTAINS(product_name_description, r"helmet.*(wrist)")
THEN "sports and outdoors_skates, skateboards and scooters_protective gear_uncategorized"

WHEN merchant_name="ebay" and REGEXP_CONTAINS(product_name_description, r"(helmet|casco).*(escalada|champ|parachute|safety)")
THEN "sports and outdoors_uncategorized_uncategorized_uncategorized"

WHEN merchant_name="ebay" and ml_category_1='cycling' and REGEXP_CONTAINS(product_name_description, r"huawei|slim")
THEN "computer and electronics_accessories_mobile phone accessories_uncategorized"


WHEN merchant_name="ebay" and ml_category_1='cycling' and REGEXP_CONTAINS(product_name_description, r"headguard")
THEN "clothing_baby_uncategorized_uncategorized"

WHEN merchant_name="ebay" and ml_category_1='cycling' and REGEXP_CONTAINS(product_name_description, r"correa\sde\scasco")
THEN "health and personal care_medical supplies and equipment_uncategorized_uncategorized"


WHEN merchant_name="alibaba" and ml_category_0 ='clothing' and REGEXP_CONTAINS(product_name_description, r"(casco|helmet).*(paintball|airsoft|camouflage|aramid|aleman)")
THEN "sports and outdoors_paintball_helmets and accessories_uncategorized"


WHEN merchant_name="deporvillage" and REGEXP_CONTAINS(product_name_description, r"camara\sde\saccion")
THEN "computer and electronics_camera and photo_action cameras and accessories_uncategorized"


WHEN merchant_name="deporvillage" and REGEXP_CONTAINS(product_name_description, r"camara.*(valvula|michelin)")
THEN "sports and outdoors_cycling_components and parts_uncategorized"

WHEN merchant_name="elcorteingles" and REGEXP_CONTAINS(product_name_description, r"casco.*(vision|luke)")
THEN "toys and games_fancy dress and accessories_uncategorized_uncategorized"

WHEN merchant_name="elcorteingles" and REGEXP_CONTAINS(product_name_description, r"patrulla\scanina")
THEN "toys and games_sports toys and outdoor_bikes, trikes and riding toys_uncategorized"

WHEN merchant_name="elcorteingles" and REGEXP_CONTAINS(product_name_description, r"casco.*(moto)")
THEN "automotive_car and motorbike accessories_protective clothing_uncategorized"

WHEN merchant_name="elcorteingles" and REGEXP_CONTAINS(product_name_description, r"casco.*(patinaje|livall)")
THEN "sports and outdoors_skates, skateboards and scooters_protective gear_uncategorized"

WHEN merchant_name="elcorteingles" and ml_category_0='sports and outdoors' and REGEXP_CONTAINS(product_name_description, r"chocolate")
THEN "grocery_sweet groceries_biscuits, cakes, chocolates and sweets_uncategorized"

WHEN ml_category_2="cycling" and REGEXP_CONTAINS(product_name_description, r"gorro.*(natación|punto|bordado|lana|beisbol|quimio|salud|turbante|ducha)")
	THEN "clothing_sportswear_uncategorized_uncategorized"

WHEN merchant_name="amazon" and REGEXP_CONTAINS(product_name_description, r"only\smujer")
	THEN "clothing_women_uncategorized_uncategorized"



-- SHOES


WHEN merchant_name="adidas" and ml_category_1="cycling" and REGEXP_CONTAINS(product_name_description, r"zapatilla\salpha")
	THEN "sports and outdoors_running_shoes_uncategorized"

WHEN merchant_name="decathlon" and ml_category_1="cycling" and REGEXP_CONTAINS(product_name_description, r"zapatillas\sbebe")
	THEN "shoes and accessories_shoes_baby shoes_uncategorized"

WHEN REGEXP_CONTAINS(product_name_description, r"sandalia.*(brillante|natacion|playa|moda|velcro|velcro|hawaii|fondo)")
	THEN "shoes and accessories_uncategorized_uncategorized_uncategorized"


-- ACCESORIES


WHEN merchant_name in ("alibaba") and ml_category_2="cycling" and REGEXP_CONTAINS(product_name_description, r"(light|lights).*(led|usb)")
	THEN "sports and outdoors_cycling_lighting_uncategorized"

WHEN merchant_name in ("ebay","gearbest","decathlon") and ml_category_1="cycling" and REGEXP_CONTAINS(product_name_description, r"usb\srechargeable|led")
	THEN "sports and outdoors_cycling_lighting_uncategorized"

WHEN merchant_name in ("vinted") and ml_category_1="cycling" and REGEXP_CONTAINS(product_name_description, r"adidas")
	THEN "clothing_unisex_knitwear, hoodies and sweatshirts_uncategorized"

WHEN merchant_name in ("gearbest") and ml_category_1="cycling" and REGEXP_CONTAINS(product_name_description, r"tricycle")
	THEN "baby products_pushchairs, prams and accessories_pushchairs and prams_uncategorized"

WHEN ml_category_1="cycling" and REGEXP_CONTAINS(product_name_description, r"culotte|maillot|chaqueta|saco")
	THEN "clothing_sportswear_cycling_uncategorized"

WHEN merchant_name in ("decathlon") and ml_category_2="cycling" and REGEXP_CONTAINS(product_name_description, r"pantalon|guantes")
	THEN "clothing_sportswear_cycling_uncategorized"

WHEN merchant_name in ("privalia") and ml_category_1="cycling" and REGEXP_CONTAINS(product_name_description, r"aplique")
	THEN "lighting_indoor lighting_lamps_uncategorized"

WHEN merchant_name in ("privalia") and ml_category_1="cycling" and REGEXP_CONTAINS(product_name_description, r"soporte\spara\sescobilla")
	THEN "home and kitchen_bathroom_other bathroom accessories_uncategorized"

WHEN merchant_name in ("privalia") and ml_category_1="cycling" and REGEXP_CONTAINS(product_name_description, r"mochila")
	THEN "sports and outdoors_skates, skateboards and scooters_uncategorized_uncategorized"

WHEN merchant_name in ("privalia") and ml_category_1="cycling" and REGEXP_CONTAINS(product_name_description, r"bolso")
	THEN "luggage and bags_accessories_handbag accessories_uncategorized"

WHEN merchant_name in ("pccomponentes") and ml_category_1="cycling" and REGEXP_CONTAINS(product_name_description, r"portatil")
	THEN "luggage and bags_bags_laptop bags_uncategorized"

WHEN merchant_name in ("pccomponentes") and ml_category_1="cycling" and REGEXP_CONTAINS(product_name_description, r"led.*(bicicleta)")
	THEN "sports and outdoors_cycling_lighting_uncategorized"

WHEN merchant_name in ("pccomponentes") and ml_category_1="cycling" and REGEXP_CONTAINS(product_name_description, r"cooler")
	THEN "computer and electronics_components and replacement parts_fans and cooling_uncategorized"


-- GLASSES

WHEN merchant_name in ("gearbest") and ml_category_1="cycling" and REGEXP_CONTAINS(product_name_description, r"xiaomi")
	THEN "clothing_accessories_sunglasses_uncategorized"


WHEN merchant_name in ("media markt") and ml_category_1="cycling" and REGEXP_CONTAINS(product_name_description, r"gafas.*(sol)")
	THEN "clothing_accessories_sunglasses_uncategorized"


-- TOOLS

WHEN merchant_name in ("ebay") and ml_category_1="cycling" and REGEXP_CONTAINS(product_name_description, r"aceite")
	THEN "automotive_oils_greases and lubricants_uncategorized"

WHEN merchant_name in ("ebay") and ml_category_1="cycling" and REGEXP_CONTAINS(product_name_description, r"caballete")
	THEN "sports and outdoors_cycling_components and parts_uncategorized"

WHEN merchant_name in ("ebay") and ml_category_1="cycling" and REGEXP_CONTAINS(product_name_description, r"llave")
	THEN "diy and tools_power, garden and hand tools_hand tools_uncategorized"

WHEN merchant_name in ("ebay") and ml_category_1="cycling" and REGEXP_CONTAINS(product_name_description, r"grafito")
	THEN "diy and tools_power, garden and hand tools_cleaning tools_uncategorized"

WHEN merchant_name in ("privalia") and ml_category_1="cycling" and REGEXP_CONTAINS(product_name_description, r"trufa")
	THEN "grocery_salty groceries_sauces and condiments_nut oils - ambient"

WHEN merchant_name in ("decathlon","wallapop") and ml_category_1="cycling" and REGEXP_CONTAINS(product_name_description, r"caballete")
	THEN "sports and outdoors_cycling_accessories_uncategorized"


-- COMPONENTS AND PARTS


WHEN REGEXP_CONTAINS(product_name_description, r"bomba\sde\sbicicleta")
	THEN NULL

WHEN REGEXP_CONTAINS(product_name_description, r"tuerca.*bicicleta|bicicleta.*tuerca")
	THEN "sports and outdoors_cycling_components and parts_uncategorized"

WHEN merchant_name in ("ebay") and REGEXP_CONTAINS(product_name_description, r"ccam")
	THEN "computer and electronics_portable sound and video_uncategorized_uncategorized"


WHEN REGEXP_CONTAINS(product_name_description, r"head\scase|base\sde\scarga|redmi|snapdragon|octacore|camara\sfrontal|fuente\sde\salimentacion")
	THEN "computer and electronics_accessories_mobile phone accessories_uncategorized"


WHEN merchant_name in ("ebay","wallapop") and REGEXP_CONTAINS(product_name_description, r"casetera|madonna|sabbath|heavy|cosmos|clash|walkman|radiohead")
	THEN "computer and electronics_hi-fi and home audio_uncategorized_uncategorized"

WHEN merchant_name in ("ebay") and ml_category_1 = "cycling" and REGEXP_CONTAINS(product_name_description, r"lampara|usb")
	THEN "sports and outdoors_cycling_lighting_uncategorized"

WHEN merchant_name in ("ebay") and ml_category_1 = "cycling" and REGEXP_CONTAINS(product_name_description, r"cd.*(hendrix|platero|grunge)")
	THEN "cds and vinyl_uncategorized_uncategorized_uncategorized"

WHEN merchant_name in ("ebay") and ml_category_1 = "cycling" and REGEXP_CONTAINS(product_name_description, r"chuwi")
	THEN "computer and electronics_tablets_tablets_uncategorized"

WHEN merchant_name in ("ebay") and ml_category_1 = "cycling" and REGEXP_CONTAINS(product_name_description, r"sello|coruna|magazine|spain")
	THEN "toys and games_hobbies_collectibles_uncategorized"

WHEN merchant_name in ("ebay") and ml_category_1 = "cycling" and REGEXP_CONTAINS(product_name_description, r"1.2v")
	THEN "computer and electronics_accessories_household batteries, chargers and accessories_uncategorized"

WHEN merchant_name in ("ebay") and ml_category_1 = "cycling" and REGEXP_CONTAINS(product_name_description, r"springfield|glock")
	THEN "sports and outdoors_airsoft_guns and rifles_uncategorized"

WHEN merchant_name in ("ebay") and ml_category_1 = "cycling" and REGEXP_CONTAINS(product_name_description, r"ortodoncia")
	THEN "health and personal care_dental care_orthodontic products_uncategorized"

WHEN merchant_name in ("ebay") and ml_category_1 = "cycling" and REGEXP_CONTAINS(product_name_description, r"honda|yamaha|susuki|ktm|motorcycle|alignment")
	THEN "automotive_car and motorbike care_brake care_uncategorized"

WHEN merchant_name in ("ebay") and ml_category_1 = "cycling" and REGEXP_CONTAINS(product_name_description, r"winch")
	THEN "automotive_tools and equipment_engine tools and equipment_uncategorized"

WHEN merchant_name in ("vente privee") and ml_category_1 = "cycling" and REGEXP_CONTAINS(product_name_description, r"bolso|cabas|mochila|neceser|fetish|cuello|fular")
	THEN "luggage and bags_uncategorized_uncategorized_uncategorized"

WHEN merchant_name in ("privalia") and ml_category_1 = "cycling" and REGEXP_CONTAINS(product_name_description, r"body|ranita|jaqueta")
	THEN "clothing_women_uncategorized_uncategorized"

WHEN merchant_name in ("privalia") and ml_category_1 = "cycling" and REGEXP_CONTAINS(product_name_description, r"melissa|chinelo|tenis")
	THEN "shoes and accessories_uncategorized_uncategorized_uncategorized"

WHEN merchant_name in ("privalia") and ml_category_1 = "cycling" and REGEXP_CONTAINS(product_name_description, r"friccao")
	THEN "toys and games_arts and crafts_uncategorized_uncategorized"

WHEN merchant_name in ("privalia") and ml_category_1 = "cycling" and REGEXP_CONTAINS(product_name_description, r"atornillador|abrazaderas")
	THEN "diy and tools_power, garden and hand tools_hand tools_uncategorized"

WHEN merchant_name in ("privalia") and ml_category_1 = "cycling" and REGEXP_CONTAINS(product_name_description, r"travesseiro")
	THEN "home and kitchen_bedding_cushions and pillows_uncategorized"

WHEN ml_category_1 = "cycling" and REGEXP_CONTAINS(product_name_description, r"headphones")
	THEN "computer and electronics_headphones, earphones and accessories_headphones and earphones_uncategorized"

WHEN ml_category_1 = "cycling" and REGEXP_CONTAINS(product_name_description, r"gato\shidraulico")
	THEN "business, industry and science_material handling products_uncategorized_uncategorized"

WHEN merchant_name in ("media markt") and ml_category_1 = "cycling" and REGEXP_CONTAINS(product_name_description, r"simulador")
	THEN "pc and video games_consoles and accessories_uncategorized_uncategorized"

WHEN merchant_name in ("media markt") and ml_category_1 = "cycling" and REGEXP_CONTAINS(product_name_description, r"cambio\sdirecto")
	THEN "high-tech_garanties_uncategorized_uncategorized"

WHEN merchant_name in ("media markt") and ml_category_1 = "cycling" and REGEXP_CONTAINS(product_name_description, r"soporte")
	THEN "sports and outdoors_cycling_accessories_uncategorized"

WHEN merchant_name in ("decathlon") and ml_category_1 = "cycling" and REGEXP_CONTAINS(product_name_description, r"soporte\sde\srueda")
	THEN "sports and outdoors_cycling_accessories_uncategorized"

WHEN merchant_name in ("media markt") and ml_category_1 = "cycling" and REGEXP_CONTAINS(product_name_description, r"turbopoweful")
	THEN "home and kitchen_small kitchen appliances_blenders, mixers and food processors_uncategorized"


WHEN merchant_name in ("decathlon") and ml_category_1 = "cycling" and REGEXP_CONTAINS(product_name_description, r"vtt\srockrider")
	THEN "sports and outdoors_cycling_bikes_uncategorized"

WHEN merchant_name in ("decathlon") and ml_category_1 = "cycling" and REGEXP_CONTAINS(product_name_description, r"servicio")
	THEN "sports and outdoors_cycling_uncategorized_uncategorized"

WHEN merchant_name in ("wallapop") and ml_category_1 = "cycling" and REGEXP_CONTAINS(product_name_description, r"xeon")
	THEN "computer and electronics_components and replacement parts_cpus_uncategorized"

WHEN merchant_name in ("zalandoprive") and ml_category_1 = "cycling" and REGEXP_CONTAINS(product_name_description, r"camara")
	THEN "computer and electronics_camera and photo_film cameras_uncategorized"

WHEN merchant_name in ("zalandoprive") and ml_category_1 = "cycling" and REGEXP_CONTAINS(product_name_description, r"hamaca")
	THEN "garden and outdoors_garden furniture and accessories_hammocks, swing chairs and accessories_uncategorized"

WHEN merchant_name in ("elcorteingles") and ml_category_1 = "cycling" and REGEXP_CONTAINS(product_name_description, r"bicho|competencias")
	THEN "livres_uncategorized_uncategorized_uncategorized"

WHEN merchant_name in ("elcorteingles") and ml_category_1 = "cycling" and REGEXP_CONTAINS(product_name_description, r"juego")
	THEN "toys and games_baby and toddler toys_uncategorized_uncategorized"

WHEN merchant_name in ("elcorteingles") and ml_category_1 = "cycling" and REGEXP_CONTAINS(product_name_description, r"kimber")
	THEN "shoes and accessories_uncategorized_uncategorized_uncategorized"

WHEN merchant_name in ("elcorteingles") and ml_category_1 = "cycling" and REGEXP_CONTAINS(product_name_description, r"liso")
	THEN "clothing_sportswear_cycling_uncategorized"


-- PROTECTIVE WEAR

WHEN ml_category_1 = "cycling" and REGEXP_CONTAINS(product_name_description, r"mascarilla")
	THEN "health and personal care_medical, remedies and dietary supplements_surgical face masks_uncategorized"

WHEN ml_category_1 = "cycling" and REGEXP_CONTAINS(product_name_description, r"gloves")
	THEN "clothing_accessories_gloves and mitts_uncategorized"

WHEN ml_category_1 = "cycling" and REGEXP_CONTAINS(product_name_description, r"(mascara|masks|cubreboca|senston|copa|nnbb).*(ciclismo|cycling)")
	THEN "clothing_sportswear_cycling_uncategorized"

WHEN merchant_name in ("amazon") and ml_category_1 = "cycling" and REGEXP_CONTAINS(product_name_description, r"drake18|tanggo|pasamontanas|sotocasco")
	THEN "clothing_sportswear_cycling_uncategorized"

WHEN merchant_name in ("deporvillage") and ml_category_1 = "cycling" and REGEXP_CONTAINS(product_name_description, r"mascara")
	THEN "clothing_sportswear_cycling_uncategorized"

WHEN merchant_name in ("deporvillage") and ml_category_1 = "cycling" and REGEXP_CONTAINS(product_name_description, r"antipinchazos.*zefal")
	THEN "sports and outdoors_cycling_accessories_uncategorized"


-- KID'S BIKES AND ACCESSORIES

WHEN ml_category_1 = "cycling" and REGEXP_CONTAINS(product_name_description, r"pegatinas|stickers|sticker|pegatina|adhesivo|portabicicleta")
	THEN "sports and outdoors_cycling_accessories_uncategorized"

WHEN merchant_name in ("deporvillage") and ml_category_1 = "cycling" and REGEXP_CONTAINS(product_name_description, r"merida")
	THEN "sports and outdoors_cycling_bikes_uncategorized"

WHEN merchant_name in ("deporvillage") and ml_category_1 = "cycling" and REGEXP_CONTAINS(product_name_description, r"placa")
	THEN "sports and outdoors_cycling_accessories_uncategorized"

WHEN merchant_name in ("wallapop") and ml_category_1 = "cycling" and REGEXP_CONTAINS(product_name_description, r"amortiguador")
	THEN "sports and outdoors_cycling_components and parts_uncategorized"

WHEN merchant_name in ("wallapop") and ml_category_1 = "cycling" and REGEXP_CONTAINS(product_name_description, r"cascos")
	THEN "computer and electronics_headphones, earphones and accessories_headphones and earphones_uncategorized"


-- BIKES


WHEN ml_category_1 = "cycling" and REGEXP_CONTAINS(product_name_description, r"coche\selectrico")
	THEN "toys and games_electronic toys_uncategorized_uncategorized"

WHEN  ml_category_2 = "bikes" and REGEXP_CONTAINS(product_name_description, r"(kinderkraft|triciclo|feber|minnie|injusa|homcom|infantil|moto\sbmw|air\sboy)")
THEN "toys and games_sports toys and outdoor_bikes, trikes and riding toys_uncategorized"

WHEN  REGEXP_CONTAINS(product_name_description, r"sartoriale")
	THEN "clothing_men_suits and blazer_uncategorized"

WHEN merchant_name="alibaba" and ml_category_2="cycling" and REGEXP_CONTAINS(product_name_description, r"sudadera")
	THEN "clothing_sportswear_uncategorized_uncategorized"

WHEN  ml_category_2 = "bikes" and REGEXP_CONTAINS(product_name_description, r"stunt\sextreme")
THEN "apps and games_uncategorized_uncategorized_uncategorized"

WHEN  ml_category_1 = "cycling" and REGEXP_CONTAINS(product_name_description, r"bell\sminnie|buzina|mini\sbmx|betty")
THEN "sports and outdoors_cycling_kids' bikes and accessories_uncategorized"

WHEN  ml_category_2 = "bikes" and REGEXP_CONTAINS(product_name_description, r"bpa|instagram")
THEN "sports and outdoors_cycling_accessories_uncategorized"

WHEN  ml_category_2 = "bikes" and REGEXP_CONTAINS(product_name_description, r"micro\sroller")
THEN "diy and tools_electrical_switchers and dimmers_uncategorized"

WHEN  ml_category_2 = "bikes" and REGEXP_CONTAINS(product_name_description, r"cassette|tija|galfer")
THEN "sports and outdoors_cycling_components and parts_uncategorized"

WHEN  ml_category_2 = "bikes" and merchant_name="ebay" and REGEXP_CONTAINS(product_name_description, r"pieza")
THEN "sports and outdoors_cycling_components and parts_uncategorized"

WHEN  ml_category_2 = "bikes" and REGEXP_CONTAINS(product_name_description, r"mechero")
THEN "home and kitchen_kitchen tools and gadgets_household accessory_lighter meche"

WHEN  ml_category_2 = "bikes" and merchant_name="alibaba" and REGEXP_CONTAINS(product_name_description, r"control\scar")
THEN "toys and games_play figures and vehicles_play vehicles_uncategorized"

WHEN  ml_category_2 = "bikes" and REGEXP_CONTAINS(product_name_description, r"caixa")
THEN "garden and outdoors_garden storage and housing_containers_uncategorized"

WHEN  ml_category_2 = "bikes" and REGEXP_CONTAINS(product_name_description, r"mistery\sbox")
THEN "grocery_sweet groceries_bread, rusk, pancake and bakery products_pizza bread - frozen"

WHEN  ml_category_2 = "bikes" and REGEXP_CONTAINS(product_name_description, r"botas")
THEN "sports and outdoors_cycling_shoes_uncategorized"

WHEN  ml_category_2 = "bikes" and REGEXP_CONTAINS(product_name_description, r"carter\spit")
THEN "sports and outdoors_cycling_shoes_uncategorized"

WHEN  ml_category_2 = "bikes" and REGEXP_CONTAINS(product_name_description, r"motorbike|killer")
THEN "automotive_car and motorbike care_uncategorized_uncategorized"

WHEN  ml_category_2 = "bikes" and REGEXP_CONTAINS(product_name_description, r"ridicula|arreglaba")
THEN "books_uncategorized_uncategorized_uncategorized"

WHEN  ml_category_2 = "bikes" and REGEXP_CONTAINS(product_name_description, r"aceite|handlebar")
THEN "sports and outdoors_cycling_accessories_uncategorized"

WHEN  ml_category_2 = "bikes" and merchant_name="deporvillage" and REGEXP_CONTAINS(product_name_description, r"llave")
THEN "sports and outdoors_cycling_tools_uncategorized"

WHEN  ml_category_2 = "bikes" and REGEXP_CONTAINS(product_name_description, r"manillar|bielas|carcasa")
THEN "sports and outdoors_cycling_components and parts_uncategorized"

WHEN  ml_category_2 = "bikes" and REGEXP_CONTAINS(product_name_description, r"xiaomi.*(mix)")
THEN "computer and electronics_mobile phones and smartphones_uncategorized_uncategorized"

WHEN  ml_category_2 = "bikes" and merchant_name="wallapop" and REGEXP_CONTAINS(product_name_description, r"sillin|buje|tubos")
THEN "sports and outdoors_cycling_components and parts_uncategorized"

WHEN  ml_category_2 = "bikes" and REGEXP_CONTAINS(product_name_description, r"indoor|x-bike")
THEN "sports and outdoors_fitness_exercise machines_uncategorized"

WHEN  ml_category_2 = "bikes" and merchant_name in ("wallapop","ebay") and REGEXP_CONTAINS(product_name_description, r"freno|potencia|pieza|rueda|pump|chain")
THEN "sports and outdoors_cycling_components and parts_uncategorized"

WHEN  ml_category_2 = "bikes" and REGEXP_CONTAINS(product_name_description, r"kit.*(conversion|elektro|ebike\sele)")
THEN "sports and outdoors_cycling_components and parts_uncategorized"

WHEN  ml_category_2 = "bikes" and merchant_name in ("ebay") and REGEXP_CONTAINS(product_name_description, r"lambskin")
THEN "clothing_unisex_coats, jackets and vests_uncategorized"

WHEN  ml_category_2 = "bikes" and merchant_name in ("ebay") and REGEXP_CONTAINS(product_name_description, r"mm2")
THEN "pc and video games_uncategorized_uncategorized_uncategorized"

WHEN  ml_category_2 = "bikes" and REGEXP_CONTAINS(product_name_description, r"hydroboost|hidroboost")
THEN "home and kitchen_vacuums and floor care_steam cleaners and floor polishers_uncategorized"

WHEN ml_category_2 = "bikes" and merchant_name in ("elcorteingles") and REGEXP_CONTAINS(product_name_description, r"bicicleta\s29")
THEN "sports and outdoors_cycling_bikes_uncategorized"




-- UNCATEGORIZED

WHEN merchant_name in ("amazon") and REGEXP_CONTAINS(product_name_description, r"continental.*(0150|fahrradreifen|ultra\ssport)")
THEN "sports and outdoors_cycling_components and parts_uncategorized"

WHEN merchant_name in ("amazon") and REGEXP_CONTAINS(product_name_description, r"(rogelli\sradsport|premium\smultifuncion\sbandana).*(braga|panuelo\scon\scalavera|diadema)|punteras.*(windstopper)")
THEN "clothing_sportswear_cycling_uncategorized"

WHEN merchant_name in ("amazon") and REGEXP_CONTAINS(product_name_description, r"hasagei\sbandana|rogelli\sradsport")
THEN "clothing_sportswear_cycling_uncategorized"

WHEN merchant_name in ("amazon") and REGEXP_CONTAINS(product_name_description, r"pedales\sbicicleta\smontana|pedales\sde\sbicicleta\sde\smontana|hseamall.*(freno\sdisco)|punos\sbicicleta\santideslizantes|punos\spara\sbicicleta|punos\sbicicleta\smtb|volo\sextender\sbar")
THEN "sports and outdoors_cycling_components and parts_uncategorized"

WHEN merchant_name in ("amazon") and REGEXP_CONTAINS(product_name_description, r"camara\sinterior\sde\sbicicleta|slime.*(camara)|alomejor\seslabon|vittoria.*(camara|geax)|sram\seagle|triwonder\smtb")
THEN "sports and outdoors_cycling_components and parts_uncategorized"

WHEN merchant_name in ("amazon") and REGEXP_CONTAINS(product_name_description, r"lampara\sluz\sbicicleta| luz\susb\srecargable.*(bicicleta\sluz)")
THEN "sports and outdoors_cycling_lighting_uncategorized"

WHEN merchant_name in ("amazon") and REGEXP_CONTAINS(product_name_description, r"lixada\sbloque\sapoyo|elite.*(calapies)")
THEN "sports and outdoors_cycling_accessories_uncategorized"

WHEN merchant_name in ("amazon") and REGEXP_CONTAINS(product_name_description, r"bell\sde\sbicicleta.*(ninos)")
THEN "sports and outdoors_cycling_kids' bikes and accessories_uncategorized"

WHEN merchant_name in ("amazon") and REGEXP_CONTAINS(product_name_description, r"tbest\scontrolador")
THEN "sports and outdoors_cycling_components and parts_uncategorized"

WHEN merchant_name in ("amazon") and REGEXP_CONTAINS(product_name_description, r"alphashield")
THEN "sports and outdoors_cycling_components and parts_uncategorized"

WHEN merchant_name in ("amazon") and REGEXP_CONTAINS(product_name_description, r"bkool|rockbros\scubierta\sde\ssudor|bocina\spara\sbicicleta")
THEN "sports and outdoors_cycling_accessories_uncategorized"




-- CLOTHING SPORTSWEAR

WHEN REGEXP_CONTAINS(product_name_description, r"culotte/sciclismo")
	THEN "clothing_sportswear_cycling_uncategorized"

WHEN REGEXP_CONTAINS(product_name_description, r"chaqueta/sciclismo")
	THEN "clothing_sportswear_cycling_uncategorized"

WHEN  ml_category_1 = "sportswear" and REGEXP_CONTAINS(product_name_description, r"handlebar|cassette")
THEN "sports and outdoors_cycling_components and parts_uncategorized"

WHEN  ml_category_1 = "sportswear" and REGEXP_CONTAINS(product_name_description, r"handlebar")
THEN "sports and outdoors_cycling_components and parts_uncategorized"

WHEN  ml_category_1 = "sportswear" and merchant_name in ("ebay") and REGEXP_CONTAINS(product_name_description, r"guantes.*(moto)|moto")
THEN "automotive_car and motorbike accessories_protective clothing_uncategorized"

WHEN  ml_category_1 = "sportswear" and REGEXP_CONTAINS(product_name_description, r"glass|glass|hot\sspy|gafa|spy1|ken\sblock")
THEN "sports and outdoors_cycling_glasses_uncategorized"

WHEN  ml_category_1 = "sportswear" and merchant_name in ("ebay") and REGEXP_CONTAINS(product_name_description, r"camiseta.*(yamaha|jurasico)")
THEN "clothing_men_tops, t-shirts and shirts_uncategorized"

WHEN  ml_category_1 = "sportswear" and REGEXP_CONTAINS(product_name_description, r"shoe")
THEN "sports and outdoors_cycling_shoes_uncategorized"

WHEN  ml_category_2 = "cycling" and REGEXP_CONTAINS(product_name_description, r"playboy|bobby|onlnova|gorilla\swear|spyder|bermuda.*(felpa|jeans|reflectante|sarga)")
THEN "clothing_unisex_shorts_uncategorized"

WHEN  ml_category_1 = "sportswear" and merchant_name in ("zalandoprive") and REGEXP_CONTAINS(product_name_description, r"grizzlies")
THEN "clothing_sportswear_basketball_uncategorized"

WHEN  ml_category_1 = "sportswear" and merchant_name in ("vinted","shopee","ebay") and REGEXP_CONTAINS(product_name_description, r"nfl|hoosiers|football|bayern|chelsea|handball|real|nba|doncic|equipe|juventus|manchester|foot|arsenal|galaxy|celta\svigo|germain|atletico|barcelona|tottenham")
THEN "clothing_sportswear_uncategorized_uncategorized"


WHEN  ml_category_1 = "sportswear" and merchant_name in ("vinted") and REGEXP_CONTAINS(product_name_description, r"maillot\sde\sbain.*(homme)")
THEN "clothing_men_swimwear_uncategorized"


WHEN  ml_category_1 = "sportswear" and merchant_name in ("vinted") and REGEXP_CONTAINS(product_name_description, r"maillot\sde\sbain")
THEN "clothing_women_swimwear_uncategorized"


WHEN  ml_category_1 = "sportswear" and merchant_name in ("vinted") and REGEXP_CONTAINS(product_name_description, r"sweat|rockster|felpa|knitwear")
THEN "clothing_unisex_knitwear, hoodies and sweatshirts_uncategorized"


WHEN  ml_category_1 = "sportswear" and merchant_name in ("vinted") and REGEXP_CONTAINS(product_name_description, r"zara|haut")
THEN "clothing_unisex_uncategorized_uncategorized"


WHEN  ml_category_2 = "cycling" and merchant_name in ("vinted","alibaba") and REGEXP_CONTAINS(product_name_description, r"casco")
THEN "sports and outdoors_cycling_helmets and accessories_uncategorized"

WHEN  ml_category_2 = "cycling" and REGEXP_CONTAINS(product_name_description, r"jersei|piumino|capucha")
THEN "clothing_unisex_knitwear, hoodies and sweatshirts_uncategorized"

WHEN  ml_category_2 = "cycling" and merchant_name in ("vinted") and REGEXP_CONTAINS(product_name_description, r"chino|jersey")
THEN "clothing_unisex_uncategorized_uncategorized"

WHEN  ml_category_2 = "cycling" and merchant_name in ("shein") and REGEXP_CONTAINS(product_name_description, r"shein")
THEN "clothing_unisex_uncategorized_uncategorized"

WHEN  ml_category_2 = "cycling" and merchant_name in ("shein","vente privee","bershka") and REGEXP_CONTAINS(product_name_description, r"tirantes|top\shalter|top\stank|homewear|lluvia|manguito")
THEN "clothing_unisex_uncategorized_uncategorized"

WHEN  ml_category_2 = "cycling" and merchant_name in ("shein","privalia") and REGEXP_CONTAINS(product_name_description, r"short.*(bike|ciclista|bicicleta|mezclilla|alto|fibra|power)")
THEN "clothing_women_leggings_uncategorized"

WHEN  ml_category_2 = "cycling" and merchant_name in ("shein") and REGEXP_CONTAINS(product_name_description, r"manga|mameluco|conjunto|griffe|rompeviento|chaqueta\sbiker")
THEN "clothing_women_uncategorized_uncategorized"

WHEN  ml_category_2 = "cycling" and merchant_name in ("shein") and REGEXP_CONTAINS(product_name_description, r"motocicleta")
THEN "automotive_car and motorbike accessories_uncategorized_uncategorized"

WHEN  ml_category_2 = "cycling" and merchant_name in ("shein") and REGEXP_CONTAINS(product_name_description, r"pajaro")
THEN "garden and outdoors_gardening_plant containers and accessories_uncategorized"

WHEN  ml_category_2 = "cycling" and merchant_name in ("shein") and REGEXP_CONTAINS(product_name_description, r"luz")
THEN "sports and outdoors_cycling_lighting_uncategorized"

WHEN  ml_category_2 = "cycling" and merchant_name in ("shein") and REGEXP_CONTAINS(product_name_description, r"colgante")
THEN "jewellery_women_pendants and coins_uncategorized"

WHEN  ml_category_2 = "cycling" and merchant_name in ("vente privee") and REGEXP_CONTAINS(product_name_description, r"pulsera")
THEN "jewellery_women_bracelets_uncategorized"

WHEN  ml_category_2 = "cycling" and merchant_name in ("vente privee") and REGEXP_CONTAINS(product_name_description, r"polar|chaqueta.*(acolchado|gris|softshell)")
THEN "clothing_sportswear_uncategorized_uncategorized"

WHEN  ml_category_2 = "cycling" and merchant_name in ("vente privee") and REGEXP_CONTAINS(product_name_description, r"gorro")
THEN "clothing_accessories_hats and caps_uncategorized"

WHEN  ml_category_2 = "cycling" and merchant_name in ("bershka","pullandbear") and REGEXP_CONTAINS(product_name_description, r"pantalon.*(piel|ciclista)")
THEN "clothing_women_leggings_uncategorized"

WHEN  ml_category_2 = "cycling" and merchant_name in ("elcorteingles") and REGEXP_CONTAINS(product_name_description, r"seis")
THEN "books_uncategorized_uncategorized_uncategorized"


WHEN  ml_category_2 = "cycling" and merchant_name in ("elcorteingles") and REGEXP_CONTAINS(product_name_description, r"rubik")
THEN "toys and games_arts and crafts_uncategorized_uncategorized"


WHEN  ml_category_2 = "cycling" and merchant_name in ("elcorteingles","shein","amazon") and REGEXP_CONTAINS(product_name_description, r"herramienta")
THEN "sports and outdoors_cycling_tools_uncategorized"

WHEN  ml_category_2 = "cycling" and REGEXP_CONTAINS(product_name_description, r"camison|chamarra")
THEN "clothing_women_uncategorized_uncategorized"

WHEN  ml_category_2 = "cycling" and merchant_name in ("privalia") and REGEXP_CONTAINS(product_name_description, r"billabong")
THEN "clothing_unisex_shorts_uncategorized"

WHEN  ml_category_2 = "cycling" and REGEXP_CONTAINS(product_name_description, r"crocs")
THEN "shoes and accessories_shoes_uncategorized_uncategorized"


WHEN  ml_category_2 = "cycling" and merchant_name in ("alibaba") and REGEXP_CONTAINS(product_name_description, r"perro|mascota|gatos|cachorro|ropa\sde\sinvierno\spara\s.*(per|mas)")
THEN "pet supplies_dogs_clothing and accessories_uncategorized"


WHEN  ml_category_2 = "cycling" and merchant_name in ("alibaba") and REGEXP_CONTAINS(product_name_description, r"visera|gorra|sombrero")
THEN "clothing_accessories_hats and caps_uncategorized"


WHEN  ml_category_2 = "cycling" and merchant_name in ("alibaba") and REGEXP_CONTAINS(product_name_description, r"calcetines.*(deportivos|futbol)")
THEN "clothing_men_socks_uncategorized"

WHEN  ml_category_2 = "cycling" and merchant_name in ("alibaba") and REGEXP_CONTAINS(product_name_description, r"camiseta.*(futbol)")
THEN "clothing_sportswear_football_uncategorized"

WHEN  ml_category_2 = "cycling" and merchant_name in ("alibaba","ebay") and REGEXP_CONTAINS(product_name_description, r"led|usb|rear\ssafety")
THEN "sports and outdoors_cycling_lighting_uncategorized"


WHEN  ml_category_2 = "cycling" and REGEXP_CONTAINS(product_name_description, r"gorro.*(cabello|mujer|ducha|lana|pelo|invierno)")
THEN "clothing_accessories_hats and caps_uncategorized"


WHEN  ml_category_2 = "cycling" and merchant_name in ("alibaba","ebay") and REGEXP_CONTAINS(product_name_description, r"guantes\sde\sinvierno|hiking.*(gloves)|thermal.*(gloves)")
THEN "clothing_accessories_gloves and mitts_uncategorized"


WHEN  ml_category_2 = "cycling" and merchant_name in ("alibaba","ebay") and REGEXP_CONTAINS(product_name_description, r"(guantes|gloves).*(moto|enduro)|enduro\smotocross.*(downhill)")
THEN "automotive_car and motorbike accessories_protective clothing_uncategorized"

WHEN  ml_category_2 = "cycling" and merchant_name in ("alibaba","ebay") and REGEXP_CONTAINS(product_name_description, r"(guantes|gloves).*(box|fight)")
THEN "sports and outdoors_boxing_gloves and mitts_uncategorized"

WHEN  ml_category_2 = "cycling" and merchant_name in ("alibaba","ebay") and REGEXP_CONTAINS(product_name_description, r"t-shirt.*(alpine|ford)")
THEN "clothing_men_tops, t-shirts and shirts_uncategorized"


WHEN  ml_category_2 = "cycling" and merchant_name in ("alibaba","ebay") and REGEXP_CONTAINS(product_name_description, r"funda|xiaomi")
THEN "computer and electronics_accessories_mobile phone accessories_uncategorized"


WHEN  ml_category_2 = "cycling" and merchant_name in ("alibaba","ebay") and REGEXP_CONTAINS(product_name_description, r"toe\ssocks|socks.*(football|sport)")
THEN "clothing_unisex_uncategorized_uncategorized"

WHEN  ml_category_2 = "cycling" and merchant_name in ("alibaba","ebay") and REGEXP_CONTAINS(product_name_description, r"vestido")
THEN "clothing_women_uncategorized_uncategorized"

WHEN  ml_category_2 = "cycling" and merchant_name in ("alibaba","ebay") and REGEXP_CONTAINS(product_name_description, r"ropa\sinterior\stermica|boxer")
THEN "clothing_men_underwear_uncategorized"

WHEN  ml_category_2 = "cycling" and REGEXP_CONTAINS(product_name_description, r"bermuda\sciclista")
THEN "clothing_women_leggings_uncategorized"

WHEN  ml_category_2 = "cycling" and merchant_name in ("ebay") and REGEXP_CONTAINS(product_name_description, r"superhero|marvel")
THEN "clothing_men_uncategorized_uncategorized"

WHEN  ml_category_2 = "cycling" and merchant_name in ("ebay","alibaba") and REGEXP_CONTAINS(product_name_description, r"anti\spollution|anti-dust")
THEN "health and personal care_medical, remedies and dietary supplements_surgical face masks_uncategorized"


WHEN  ml_category_2 = "cycling" and merchant_name in ("ebay","alibaba") and REGEXP_CONTAINS(product_name_description, r"pegatina")
THEN "sports and outdoors_cycling_kids' bikes and accessories_uncategorized"


WHEN  ml_category_2 = "cycling" and merchant_name in ("ebay","alibaba") and REGEXP_CONTAINS(product_name_description, r"enduro")
THEN "automotive_car and motorbike accessories_protective clothing_uncategorized"


WHEN  ml_category_2 = "cycling" and merchant_name in ("ebay","alibaba") and REGEXP_CONTAINS(product_name_description, r"adidas")
THEN "clothing_sportswear_uncategorized_uncategorized"

WHEN  ml_category_2 = "cycling" and merchant_name in ("ebay","alibaba") and REGEXP_CONTAINS(product_name_description, r"electronic\sbell|600ml|liquido\ssellante|mount\sholder")
THEN "sports and outdoors_cycling_accessories_uncategorized"

WHEN  ml_category_2 = "cycling" and merchant_name in ("ebay","alibaba") and REGEXP_CONTAINS(product_name_description, r"hoodie")
THEN "clothing_unisex_knitwear, hoodies and sweatshirts_uncategorized"

WHEN  ml_category_2 = "cycling" and merchant_name in ("ebay","alibaba") and REGEXP_CONTAINS(product_name_description, r"tool")
THEN "sports and outdoors_cycling_components and parts_uncategorized"

WHEN  ml_category_2 = "cycling" and merchant_name in ("shopee") and REGEXP_CONTAINS(product_name_description, r"guantes.*(\sde\szorro|carreras)|motocross|fox\s14")
THEN "automotive_car and motorbike accessories_protective clothing_uncategorized"

WHEN  ml_category_2 = "cycling" and merchant_name in ("shopee") and REGEXP_CONTAINS(product_name_description, r"guantes.*(\sde\szorro|carreras)|motocross|fox\s14")
THEN "automotive_car and motorbike accessories_protective clothing_uncategorized"

WHEN  ml_category_2 = "cycling" and merchant_name in ("ebay") and REGEXP_CONTAINS(product_name_description, r"pro\scycling\smanager")
THEN "apps and games_uncategorized_uncategorized_uncategorized"



-- OUTLIERS

WHEN REGEXP_CONTAINS(product_name_description, r"kasfam.*(mascara)|mascara\santipolvo")
THEN "health and personal care_medical, remedies and dietary supplements_surgical face masks_uncategorized"





-- !!! NEVER USE THE BREADCRUMB_AGGREGATE !!!
-- end part, do not change
ELSE NULL
END

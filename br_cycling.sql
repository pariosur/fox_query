/* General comments about the structure : your BR should be structured with 3 or 4 main blocks

Block 1. Products from other category_0
--> Every product that NOT belongs to the same category_0 (ex : large appliances) than your mission
--> Full categorization is NOT NEEDED, meaning, if you find kitchen knives, just put them in "home and kitchen_uncategorized_uncategorized_uncategorized"

Block 2. Products from the same category_0 than your scope but from other breadcrumbs
--> Full categorization is NEEDED, meaning if you're working on "large appliances" and you find a washing machine, you have to fully recategorize it in : large appliances_washing machines and tumble dryers_washing machines_uncategorized

Block 3. Products from same category_0 and from same breadcrumbs than your scope
--> Every product that belongs to large appliances AND belongs to your scope of Breadcrumbs (ex : Ovens and Referigerators Breadcrumbs)
--> Full categorization is NEEDED, meaning if you find a freezer in ovens, fully recategorize it in : large appliances_refrigerators, freezers and ice cube makers_freezers_uncategorized

Block 4. (ONLY IF NEEDED) Block with filters on merchant_name
--> Even if general Regex Rules are expected, sometimes there is no choice to filter on merchant_name, use this last block if needed

The Structure should looks like that (with identation and comments)

//OTHER CATEGORY_0
    //VIDEO GAMES
    IF REGEXP_MATCH([Product Concat],  "video game")  THEN "pc and video games_uncategorized_uncategorized_uncategorized"
    //MUSICAL INSTRUMENTS
    ELSEIF REGEXP_MATCH([Product Concat],  "piano")  THEN "musical instruments and dj_uncategorized_uncategorized_uncategorized"
    //GROCERY
    ELSEIF REGEXP_MATCH([Product Concat],  "chicken breast")  THEN "grocery_uncategorized_uncategorized_uncategorized"
    ...

//SAME CATEGORY_0 BUT DIFFERENT BREADCRUMBS
    //WASHING MACHINES
    ELSEIF REGEXP_MATCH([Product Concat],  "washaing machine")  THEN "large appliances_washing machines and tumble dryers_washing machines_uncategorized"
    ...

//SAME CATGEORY_0 AND BREADCRUMBS CONCERNED BY THE BR
    //FREEZER
    ELSEIF REGEXP_MATCH([Product Concat],  "freezer")  THEN "large appliances_refrigerators, freezers and ice cube makers_freezers_uncategorized"
    ...

//FILTER ON MERCHANT NAME
    //FILTER ON IKEA
    ELSEIF [Merchant Name]="ikea" REGEXP_MATCH([Product Concat],  "tinad")  THEN "large appliances_refrigerators, freezers and ice cube makers_refrigerators_uncategorized"
    ...
*/

// first rule - keep the 'IF' structure
////Find below examples of conditions to optimize your rule

//simple regex condition (to use in priority)
IF REGEXP_MATCH([Product Concat],  "maillot\sciclismo")
	THEN "clothing_sportswear_cycling_uncategorized"


  // HELMETS AND ACCESORIES


ELSEIF [merchant_name (copie pour filter)]="ebay" and REGEXP_MATCH([Product Concat], "casco.*(star|nzi|scooter|midland|ventura|acerbis|momo|moto|modular|vintage|integral|militar|jet|shiro|vespa|shark|motocicleta|viper|motorcycle|helmet|marlboro|abatible|lunar|senna|arai|manos|trial|abierto|helm|visera)")
THEN "automotive_car and motorbike accessories_protective clothing_uncategorized"

ELSEIF [merchant_name (copie pour filter)]="ebay" and REGEXP_MATCH([Product Concat], "cascos.*(volumen)")
THEN "computer and electronics_accessories_audio and video accessories_uncategorized"

ELSEIF [merchant_name (copie pour filter)]="ebay" and REGEXP_MATCH([Product Concat], "helmet.*(honda|open|headset|stockist|amber|motorsport|karting|motorcycle|moto|enduro|bluetooth|pads|decal|wigs|motocross|turismo|modular|visor|sticker)")
THEN "automotive_car and motorbike accessories_protective clothing_uncategorized"

ELSEIF [merchant_name (copie pour filter)]="ebay" and REGEXP_MATCH([Product Concat], "(casco|helmet).*(cover|paintball|airsoft|camouflage|aramid|aleman)")
THEN "sports and outdoors_paintball_helmets and accessories_uncategorized"

ELSEIF [merchant_name (copie pour filter)]="ebay" and REGEXP_MATCH([Product Concat], "helmet.*(wrist)")
THEN "sports and outdoors_skates, skateboards and scooters_protective gear_uncategorized"

ELSEIF [merchant_name (copie pour filter)]="ebay" and REGEXP_MATCH([Product Concat], "(helmet|casco).*(escalada|champ|parachute|safety)")
THEN "sports and outdoors_uncategorized_uncategorized_uncategorized"

ELSEIF [merchant_name (copie pour filter)]="ebay" and [Ml Category 1]='cycling' and REGEXP_MATCH([Product Concat], "huawei|slim")
THEN "computer and electronics_accessories_mobile phone accessories_uncategorized"


ELSEIF [merchant_name (copie pour filter)]="ebay" and [Ml Category 1]='cycling' and REGEXP_MATCH([Product Concat], "headguard")
THEN "clothing_baby_uncategorized_uncategorized"

ELSEIF [merchant_name (copie pour filter)]="ebay" and [Ml Category 1]='cycling' and REGEXP_MATCH([Product Concat], "correa\sde\scasco")
THEN "health and personal care_medical supplies and equipment_uncategorized_uncategorized"


ELSEIF [merchant_name (copie pour filter)]="alibaba" and [Ml Category 0] ='clothing' and REGEXP_MATCH([Product Concat], "(casco|helmet).*(paintball|airsoft|camouflage|aramid|aleman)")
THEN "sports and outdoors_paintball_helmets and accessories_uncategorized"


ELSEIF [merchant_name (copie pour filter)]="deporvillage" and REGEXP_MATCH([Product Concat], "camara\sde\saccion")
THEN "computer and electronics_camera and photo_action cameras and accessories_uncategorized"


ELSEIF [merchant_name (copie pour filter)]="deporvillage" and REGEXP_MATCH([Product Concat], "camara.*(valvula|michelin)")
THEN "sports and outdoors_cycling_components and parts_uncategorized"

ELSEIF [merchant_name (copie pour filter)]="elcorteingles" and REGEXP_MATCH([Product Concat], "casco.*(vision|luke)")
THEN "toys and games_fancy dress and accessories_uncategorized_uncategorized"

ELSEIF [merchant_name (copie pour filter)]="elcorteingles" and REGEXP_MATCH([Product Concat], "patrulla\scanina")
THEN "toys and games_sports toys and outdoor_bikes, trikes and riding toys_uncategorized"

ELSEIF [merchant_name (copie pour filter)]="elcorteingles" and REGEXP_MATCH([Product Concat], "casco.*(moto)")
THEN "automotive_car and motorbike accessories_protective clothing_uncategorized"

ELSEIF [merchant_name (copie pour filter)]="elcorteingles" and REGEXP_MATCH([Product Concat], "casco.*(patinaje|livall)")
THEN "sports and outdoors_skates, skateboards and scooters_protective gear_uncategorized"

ELSEIF [merchant_name (copie pour filter)]="elcorteingles" and [Ml Category 0]='sports and outdoors' and REGEXP_MATCH([Product Concat], "chocolate")
THEN "grocery_sweet groceries_biscuits, cakes, chocolates and sweets_uncategorized"

ELSEIF [Ml Category 2]="cycling" and REGEXP_MATCH([Product Concat], "gorro.*(natación|punto|bordado|lana|beisbol|quimio|salud|turbante|ducha)")
	THEN "clothing_sportswear_uncategorized_uncategorized"

ELSEIF [merchant_name (copie pour filter)]="amazon" and REGEXP_MATCH([Product Concat],  "only\smujer")
	THEN "clothing_women_uncategorized_uncategorized"



// SHOES


ELSEIF [merchant_name (copie pour filter)]="adidas" and [Ml Category 1]="cycling" and REGEXP_MATCH([Product Concat],  "zapatilla\salpha")
	THEN "sports and outdoors_running_shoes_uncategorized"

ELSEIF [merchant_name (copie pour filter)]="decathlon" and [Ml Category 1]="cycling" and REGEXP_MATCH([Product Concat],  "zapatillas\sbebe")
	THEN "shoes and accessories_shoes_baby shoes_uncategorized"

ELSEIF REGEXP_MATCH([Product Concat], "sandalia.*(brillante|natacion|playa|moda|velcro|velcro|hawaii|fondo)")
	THEN "shoes and accessories_uncategorized_uncategorized_uncategorized"


// ACCESORIES


ELSEIF [merchant_name (copie pour filter)] in ("alibaba") and [Ml Category 2]="cycling" and REGEXP_MATCH([Product Concat],  "(light|lights).*(led|usb)")
	THEN "sports and outdoors_cycling_lighting_uncategorized"

ELSEIF [merchant_name (copie pour filter)] in ("ebay","gearbest","decathlon") and [Ml Category 1]="cycling" and REGEXP_MATCH([Product Concat],  "usb\srechargeable|led")
	THEN "sports and outdoors_cycling_lighting_uncategorized"

ELSEIF [merchant_name (copie pour filter)] in ("vinted") and [Ml Category 1]="cycling" and REGEXP_MATCH([Product Concat],  "adidas")
	THEN "clothing_unisex_knitwear, hoodies and sweatshirts_uncategorized"

ELSEIF [merchant_name (copie pour filter)] in ("gearbest") and [Ml Category 1]="cycling" and REGEXP_MATCH([Product Concat],  "tricycle")
	THEN "baby products_pushchairs, prams and accessories_pushchairs and prams_uncategorized"

ELSEIF [Ml Category 1]="cycling" and REGEXP_MATCH([Product Concat],  "culotte|maillot|chaqueta|saco")
	THEN "clothing_sportswear_cycling_uncategorized"

ELSEIF [merchant_name (copie pour filter)] in ("decathlon") and [Ml Category 2]="cycling" and REGEXP_MATCH([Product Concat],  "pantalon|guantes")
	THEN "clothing_sportswear_cycling_uncategorized"

ELSEIF [merchant_name (copie pour filter)] in ("privalia") and [Ml Category 1]="cycling" and REGEXP_MATCH([Product Concat],  "aplique")
	THEN "lighting_indoor lighting_lamps_uncategorized"

ELSEIF [merchant_name (copie pour filter)] in ("privalia") and [Ml Category 1]="cycling" and REGEXP_MATCH([Product Concat],  "soporte\spara\sescobilla")
	THEN "home and kitchen_bathroom_other bathroom accessories_uncategorized"

ELSEIF [merchant_name (copie pour filter)] in ("privalia") and [Ml Category 1]="cycling" and REGEXP_MATCH([Product Concat],  "mochila")
	THEN "sports and outdoors_skates, skateboards and scooters_uncategorized_uncategorized"

ELSEIF [merchant_name (copie pour filter)] in ("privalia") and [Ml Category 1]="cycling" and REGEXP_MATCH([Product Concat],  "bolso")
	THEN "luggage and bags_accessories_handbag accessories_uncategorized"

ELSEIF [merchant_name (copie pour filter)] in ("pccomponentes") and [Ml Category 1]="cycling" and REGEXP_MATCH([Product Concat],  "portatil")
	THEN "luggage and bags_bags_laptop bags_uncategorized"

ELSEIF [merchant_name (copie pour filter)] in ("pccomponentes") and [Ml Category 1]="cycling" and REGEXP_MATCH([Product Concat],  "led.*(bicicleta)")
	THEN "sports and outdoors_cycling_lighting_uncategorized"

ELSEIF [merchant_name (copie pour filter)] in ("pccomponentes") and [Ml Category 1]="cycling" and REGEXP_MATCH([Product Concat],  "cooler")
	THEN "computer and electronics_components and replacement parts_fans and cooling_uncategorized"


// GLASSES

ELSEIF [merchant_name (copie pour filter)] in ("gearbest") and [Ml Category 1]="cycling" and REGEXP_MATCH([Product Concat],  "xiaomi")
	THEN "clothing_accessories_sunglasses_uncategorized"


ELSEIF [merchant_name (copie pour filter)] in ("media markt") and [Ml Category 1]="cycling" and REGEXP_MATCH([Product Concat], "gafas.*(sol)")
	THEN "clothing_accessories_sunglasses_uncategorized"


// TOOLS

ELSEIF [merchant_name (copie pour filter)] in ("ebay") and [Ml Category 1]="cycling" and REGEXP_MATCH([Product Concat], "aceite")
	THEN "automotive_oils_greases and lubricants_uncategorized"

ELSEIF [merchant_name (copie pour filter)] in ("ebay") and [Ml Category 1]="cycling" and REGEXP_MATCH([Product Concat], "caballete")
	THEN "sports and outdoors_cycling_components and parts_uncategorized"

ELSEIF [merchant_name (copie pour filter)] in ("ebay") and [Ml Category 1]="cycling" and REGEXP_MATCH([Product Concat], "llave")
	THEN "diy and tools_power, garden and hand tools_hand tools_uncategorized"

ELSEIF [merchant_name (copie pour filter)] in ("ebay") and [Ml Category 1]="cycling" and REGEXP_MATCH([Product Concat], "grafito")
	THEN "diy and tools_power, garden and hand tools_cleaning tools_uncategorized"

ELSEIF [merchant_name (copie pour filter)] in ("privalia") and [Ml Category 1]="cycling" and REGEXP_MATCH([Product Concat], "trufa")
	THEN "grocery_salty groceries_sauces and condiments_nut oils - ambient"

ELSEIF [merchant_name (copie pour filter)] in ("decathlon","wallapop") and [Ml Category 1]="cycling" and REGEXP_MATCH([Product Concat], "caballete")
	THEN "sports and outdoors_cycling_accessories_uncategorized"


// COMPONENTS AND PARTS


ELSEIF REGEXP_MATCH([Product Concat], "bomba\sde\sbicicleta")
	THEN NULL

ELSEIF REGEXP_MATCH([Product Concat], "tuerca.*bicicleta|bicicleta.*tuerca")
	THEN "sports and outdoors_cycling_components and parts_uncategorized"

ELSEIF [merchant_name (copie pour filter)] in ("ebay") and REGEXP_MATCH([Product Concat], "ccam")
	THEN "computer and electronics_portable sound and video_uncategorized_uncategorized"


ELSEIF REGEXP_MATCH([Product Concat], "head\scase|base\sde\scarga|redmi|snapdragon|octacore|camara\sfrontal|fuente\sde\salimentacion")
	THEN "computer and electronics_accessories_mobile phone accessories_uncategorized"


ELSEIF [merchant_name (copie pour filter)] in ("ebay","wallapop") and REGEXP_MATCH([Product Concat], "casetera|madonna|sabbath|heavy|cosmos|clash|walkman|radiohead")
	THEN "computer and electronics_hi-fi and home audio_uncategorized_uncategorized"

ELSEIF [merchant_name (copie pour filter)] in ("ebay") and [Ml Category 1] = "cycling" and REGEXP_MATCH([Product Concat], "lampara|usb")
	THEN "sports and outdoors_cycling_lighting_uncategorized"

ELSEIF [merchant_name (copie pour filter)] in ("ebay") and [Ml Category 1] = "cycling" and REGEXP_MATCH([Product Concat], "cd.*(hendrix|platero|grunge)")
	THEN "cds and vinyl_uncategorized_uncategorized_uncategorized"

ELSEIF [merchant_name (copie pour filter)] in ("ebay") and [Ml Category 1] = "cycling" and REGEXP_MATCH([Product Concat], "chuwi")
	THEN "computer and electronics_tablets_tablets_uncategorized"

ELSEIF [merchant_name (copie pour filter)] in ("ebay") and [Ml Category 1] = "cycling" and REGEXP_MATCH([Product Concat], "sello|coruna|magazine|spain")
	THEN "toys and games_hobbies_collectibles_uncategorized"

ELSEIF [merchant_name (copie pour filter)] in ("ebay") and [Ml Category 1] = "cycling" and REGEXP_MATCH([Product Concat], "1.2v")
	THEN "computer and electronics_accessories_household batteries, chargers and accessories_uncategorized"

ELSEIF [merchant_name (copie pour filter)] in ("ebay") and [Ml Category 1] = "cycling" and REGEXP_MATCH([Product Concat], "springfield|glock")
	THEN "sports and outdoors_airsoft_guns and rifles_uncategorized"

ELSEIF [merchant_name (copie pour filter)] in ("ebay") and [Ml Category 1] = "cycling" and REGEXP_MATCH([Product Concat], "ortodoncia")
	THEN "health and personal care_dental care_orthodontic products_uncategorized"

ELSEIF [merchant_name (copie pour filter)] in ("ebay") and [Ml Category 1] = "cycling" and REGEXP_MATCH([Product Concat], "honda|yamaha|susuki|ktm|motorcycle|alignment")
	THEN "automotive_car and motorbike care_brake care_uncategorized"

ELSEIF [merchant_name (copie pour filter)] in ("ebay") and [Ml Category 1] = "cycling" and REGEXP_MATCH([Product Concat], "winch")
	THEN "automotive_tools and equipment_engine tools and equipment_uncategorized"

ELSEIF [merchant_name (copie pour filter)] in ("vente privee") and [Ml Category 1] = "cycling" and REGEXP_MATCH([Product Concat], "bolso|cabas|mochila|neceser|fetish|cuello|fular")
	THEN "luggage and bags_uncategorized_uncategorized_uncategorized"

ELSEIF [merchant_name (copie pour filter)] in ("privalia") and [Ml Category 1] = "cycling" and REGEXP_MATCH([Product Concat], "body|ranita|jaqueta")
	THEN "clothing_women_uncategorized_uncategorized"

ELSEIF [merchant_name (copie pour filter)] in ("privalia") and [Ml Category 1] = "cycling" and REGEXP_MATCH([Product Concat], "melissa|chinelo|tenis")
	THEN "shoes and accessories_uncategorized_uncategorized_uncategorized"

ELSEIF [merchant_name (copie pour filter)] in ("privalia") and [Ml Category 1] = "cycling" and REGEXP_MATCH([Product Concat], "friccao")
	THEN "toys and games_arts and crafts_uncategorized_uncategorized"

ELSEIF [merchant_name (copie pour filter)] in ("privalia") and [Ml Category 1] = "cycling" and REGEXP_MATCH([Product Concat], "atornillador|abrazaderas")
	THEN "diy and tools_power, garden and hand tools_hand tools_uncategorized"

ELSEIF [merchant_name (copie pour filter)] in ("privalia") and [Ml Category 1] = "cycling" and REGEXP_MATCH([Product Concat], "travesseiro")
	THEN "home and kitchen_bedding_cushions and pillows_uncategorized"

ELSEIF [Ml Category 1] = "cycling" and REGEXP_MATCH([Product Concat], "headphones")
	THEN "computer and electronics_headphones, earphones and accessories_headphones and earphones_uncategorized"

ELSEIF [Ml Category 1] = "cycling" and REGEXP_MATCH([Product Concat], "gato\shidraulico")
	THEN "business, industry and science_material handling products_uncategorized_uncategorized"

ELSEIF [merchant_name (copie pour filter)] in ("media markt") and [Ml Category 1] = "cycling" and REGEXP_MATCH([Product Concat], "simulador")
	THEN "pc and video games_consoles and accessories_uncategorized_uncategorized"

ELSEIF [merchant_name (copie pour filter)] in ("media markt") and [Ml Category 1] = "cycling" and REGEXP_MATCH([Product Concat], "cambio\sdirecto")
	THEN "high-tech_garanties_uncategorized_uncategorized"

ELSEIF [merchant_name (copie pour filter)] in ("media markt") and [Ml Category 1] = "cycling" and REGEXP_MATCH([Product Concat], "soporte")
	THEN "sports and outdoors_cycling_accessories_uncategorized"

ELSEIF [merchant_name (copie pour filter)] in ("decathlon") and [Ml Category 1] = "cycling" and REGEXP_MATCH([Product Concat], "soporte\sde\srueda")
	THEN "sports and outdoors_cycling_accessories_uncategorized"

ELSEIF [merchant_name (copie pour filter)] in ("media markt") and [Ml Category 1] = "cycling" and REGEXP_MATCH([Product Concat], "turbopoweful")
	THEN "home and kitchen_small kitchen appliances_blenders, mixers and food processors_uncategorized"


ELSEIF [merchant_name (copie pour filter)] in ("decathlon") and [Ml Category 1] = "cycling" and REGEXP_MATCH([Product Concat], "vtt\srockrider")
	THEN "sports and outdoors_cycling_bikes_uncategorized"

ELSEIF [merchant_name (copie pour filter)] in ("decathlon") and [Ml Category 1] = "cycling" and REGEXP_MATCH([Product Concat], "servicio")
	THEN "sports and outdoors_cycling_uncategorized_uncategorized"

ELSEIF [merchant_name (copie pour filter)] in ("wallapop") and [Ml Category 1] = "cycling" and REGEXP_MATCH([Product Concat], "xeon")
	THEN "computer and electronics_components and replacement parts_cpus_uncategorized"

ELSEIF [merchant_name (copie pour filter)] in ("zalandoprive") and [Ml Category 1] = "cycling" and REGEXP_MATCH([Product Concat], "camara")
	THEN "computer and electronics_camera and photo_film cameras_uncategorized"

ELSEIF [merchant_name (copie pour filter)] in ("zalandoprive") and [Ml Category 1] = "cycling" and REGEXP_MATCH([Product Concat], "hamaca")
	THEN "garden and outdoors_garden furniture and accessories_hammocks, swing chairs and accessories_uncategorized"

ELSEIF [merchant_name (copie pour filter)] in ("elcorteingles") and [Ml Category 1] = "cycling" and REGEXP_MATCH([Product Concat], "bicho|competencias")
	THEN "livres_uncategorized_uncategorized_uncategorized"

ELSEIF [merchant_name (copie pour filter)] in ("elcorteingles") and [Ml Category 1] = "cycling" and REGEXP_MATCH([Product Concat], "juego")
	THEN "toys and games_baby and toddler toys_uncategorized_uncategorized"

ELSEIF [merchant_name (copie pour filter)] in ("elcorteingles") and [Ml Category 1] = "cycling" and REGEXP_MATCH([Product Concat], "kimber")
	THEN "shoes and accessories_uncategorized_uncategorized_uncategorized"

ELSEIF [merchant_name (copie pour filter)] in ("elcorteingles") and [Ml Category 1] = "cycling" and REGEXP_MATCH([Product Concat], "liso")
	THEN "clothing_sportswear_cycling_uncategorized"


// PROTECTIVE WEAR

ELSEIF [Ml Category 1] = "cycling" and REGEXP_MATCH([Product Concat], "mascarilla")
	THEN "health and personal care_medical, remedies and dietary supplements_surgical face masks_uncategorized"

ELSEIF [Ml Category 1] = "cycling" and REGEXP_MATCH([Product Concat], "gloves")
	THEN "clothing_accessories_gloves and mitts_uncategorized"

ELSEIF [Ml Category 1] = "cycling" and REGEXP_MATCH([Product Concat], "(mascara|masks|cubreboca|senston|copa|nnbb).*(ciclismo|cycling)")
	THEN "clothing_sportswear_cycling_uncategorized"

ELSEIF [merchant_name (copie pour filter)] in ("amazon") and [Ml Category 1] = "cycling" and REGEXP_MATCH([Product Concat], "drake18|tanggo|pasamontanas|sotocasco")
	THEN "clothing_sportswear_cycling_uncategorized"

ELSEIF [merchant_name (copie pour filter)] in ("deporvillage") and [Ml Category 1] = "cycling" and REGEXP_MATCH([Product Concat], "mascara")
	THEN "clothing_sportswear_cycling_uncategorized"

ELSEIF [merchant_name (copie pour filter)] in ("deporvillage") and [Ml Category 1] = "cycling" and REGEXP_MATCH([Product Concat], "antipinchazos.*zefal")
	THEN "sports and outdoors_cycling_accessories_uncategorized"


// KID'S BIKES AND ACCESSORIES

ELSEIF [Ml Category 1] = "cycling" and REGEXP_MATCH([Product Concat], "pegatinas|stickers|sticker|pegatina|adhesivo|portabicicleta")
	THEN "sports and outdoors_cycling_accessories_uncategorized"

ELSEIF [merchant_name (copie pour filter)] in ("deporvillage") and [Ml Category 1] = "cycling" and REGEXP_MATCH([Product Concat], "merida")
	THEN "sports and outdoors_cycling_bikes_uncategorized"

ELSEIF [merchant_name (copie pour filter)] in ("deporvillage") and [Ml Category 1] = "cycling" and REGEXP_MATCH([Product Concat], "placa")
	THEN "sports and outdoors_cycling_accessories_uncategorized"

ELSEIF [merchant_name (copie pour filter)] in ("wallapop") and [Ml Category 1] = "cycling" and REGEXP_MATCH([Product Concat], "amortiguador")
	THEN "sports and outdoors_cycling_components and parts_uncategorized"

ELSEIF [merchant_name (copie pour filter)] in ("wallapop") and [Ml Category 1] = "cycling" and REGEXP_MATCH([Product Concat], "cascos")
	THEN "computer and electronics_headphones, earphones and accessories_headphones and earphones_uncategorized"


// BIKES


ELSEIF [Ml Category 1] = "cycling" and REGEXP_MATCH([Product Concat],  "coche\selectrico")
	THEN "toys and games_electronic toys_uncategorized_uncategorized"

ELSEIF  [Ml Category 2] = "bikes" and REGEXP_MATCH([Product Concat],  "(kinderkraft|triciclo|feber|minnie|injusa|homcom|infantil|moto\sbmw|air\sboy)")
THEN "toys and games_sports toys and outdoor_bikes, trikes and riding toys_uncategorized"

ELSEIF  REGEXP_MATCH([Product Concat],  "sartoriale")
	THEN "clothing_men_suits and blazer_uncategorized"

ELSEIF [merchant_name (copie pour filter)]="alibaba" and [Ml Category 2]="cycling" and REGEXP_MATCH([Product Concat],  "sudadera")
	THEN "clothing_sportswear_uncategorized_uncategorized"

ELSEIF  [Ml Category 2] = "bikes" and REGEXP_MATCH([Product Concat],  "stunt\sextreme")
THEN "apps and games_uncategorized_uncategorized_uncategorized"

ELSEIF  [Ml Category 1] = "cycling" and REGEXP_MATCH([Product Concat],  "bell\sminnie|buzina|mini\sbmx|betty")
THEN "sports and outdoors_cycling_kids' bikes and accessories_uncategorized"

ELSEIF  [Ml Category 2] = "bikes" and REGEXP_MATCH([Product Concat],  "bpa|instagram")
THEN "sports and outdoors_cycling_accessories_uncategorized"

ELSEIF  [Ml Category 2] = "bikes" and REGEXP_MATCH([Product Concat],  "micro\sroller")
THEN "diy and tools_electrical_switchers and dimmers_uncategorized"

ELSEIF  [Ml Category 2] = "bikes" and REGEXP_MATCH([Product Concat],  "cassette|tija|galfer")
THEN "sports and outdoors_cycling_components and parts_uncategorized"

ELSEIF  [Ml Category 2] = "bikes" and [merchant_name (copie pour filter)]="ebay" and REGEXP_MATCH([Product Concat],  "pieza")
THEN "sports and outdoors_cycling_components and parts_uncategorized"

ELSEIF  [Ml Category 2] = "bikes" and REGEXP_MATCH([Product Concat],  "mechero")
THEN "home and kitchen_kitchen tools and gadgets_household accessory_lighter meche"

ELSEIF  [Ml Category 2] = "bikes" and [merchant_name (copie pour filter)]="alibaba" and REGEXP_MATCH([Product Concat],  "control\scar")
THEN "toys and games_play figures and vehicles_play vehicles_uncategorized"

ELSEIF  [Ml Category 2] = "bikes" and REGEXP_MATCH([Product Concat],  "caixa")
THEN "garden and outdoors_garden storage and housing_containers_uncategorized"

ELSEIF  [Ml Category 2] = "bikes" and REGEXP_MATCH([Product Concat],  "mistery\sbox")
THEN "grocery_sweet groceries_bread, rusk, pancake and bakery products_pizza bread - frozen"

ELSEIF  [Ml Category 2] = "bikes" and REGEXP_MATCH([Product Concat],  "botas")
THEN "sports and outdoors_cycling_shoes_uncategorized"

ELSEIF  [Ml Category 2] = "bikes" and REGEXP_MATCH([Product Concat],  "carter\spit")
THEN "sports and outdoors_cycling_shoes_uncategorized"

ELSEIF  [Ml Category 2] = "bikes" and REGEXP_MATCH([Product Concat],  "motorbike|killer")
THEN "automotive_car and motorbike care_uncategorized_uncategorized"

ELSEIF  [Ml Category 2] = "bikes" and REGEXP_MATCH([Product Concat],  "ridicula|arreglaba")
THEN "books_uncategorized_uncategorized_uncategorized"

ELSEIF  [Ml Category 2] = "bikes" and REGEXP_MATCH([Product Concat],  "aceite|handlebar")
THEN "sports and outdoors_cycling_accessories_uncategorized"

ELSEIF  [Ml Category 2] = "bikes" and [merchant_name (copie pour filter)]="deporvillage" and REGEXP_MATCH([Product Concat],  "llave")
THEN "sports and outdoors_cycling_tools_uncategorized"

ELSEIF  [Ml Category 2] = "bikes" and REGEXP_MATCH([Product Concat],  "manillar|bielas|carcasa")
THEN "sports and outdoors_cycling_components and parts_uncategorized"

ELSEIF  [Ml Category 2] = "bikes" and REGEXP_MATCH([Product Concat],  "xiaomi.*(mix)")
THEN "computer and electronics_mobile phones and smartphones_uncategorized_uncategorized"

ELSEIF  [Ml Category 2] = "bikes" and [merchant_name (copie pour filter)]="wallapop" and REGEXP_MATCH([Product Concat],  "sillin|buje|tubos")
THEN "sports and outdoors_cycling_components and parts_uncategorized"

ELSEIF  [Ml Category 2] = "bikes" and REGEXP_MATCH([Product Concat],  "indoor|x-bike")
THEN "sports and outdoors_fitness_exercise machines_uncategorized"

ELSEIF  [Ml Category 2] = "bikes" and [merchant_name (copie pour filter)] in ("wallapop","ebay") and REGEXP_MATCH([Product Concat],  "freno|potencia|pieza|rueda|pump|chain")
THEN "sports and outdoors_cycling_components and parts_uncategorized"

ELSEIF  [Ml Category 2] = "bikes" and REGEXP_MATCH([Product Concat],  "kit.*(conversion|elektro|ebike\sele)")
THEN "sports and outdoors_cycling_components and parts_uncategorized"

ELSEIF  [Ml Category 2] = "bikes" and [merchant_name (copie pour filter)] in ("ebay") and REGEXP_MATCH([Product Concat],  "lambskin")
THEN "clothing_unisex_coats, jackets and vests_uncategorized"

ELSEIF  [Ml Category 2] = "bikes" and [merchant_name (copie pour filter)] in ("ebay") and REGEXP_MATCH([Product Concat],  "mm2")
THEN "pc and video games_uncategorized_uncategorized_uncategorized"

ELSEIF  [Ml Category 2] = "bikes" and REGEXP_MATCH([Product Concat],  "hydroboost|hidroboost")
THEN "home and kitchen_vacuums and floor care_steam cleaners and floor polishers_uncategorized"

ELSEIF [Ml Category 2] = "bikes" and [merchant_name (copie pour filter)] in ("elcorteingles") and REGEXP_MATCH([Product Concat],  "bicicleta\s29")
THEN "sports and outdoors_cycling_bikes_uncategorized"




// UNCATEGORIZED

ELSEIF [merchant_name (copie pour filter)] in ("amazon") and REGEXP_MATCH([Product Concat],  "continental.*(0150|fahrradreifen|ultra\ssport)")
THEN "sports and outdoors_cycling_components and parts_uncategorized"

ELSEIF [merchant_name (copie pour filter)] in ("amazon") and REGEXP_MATCH([Product Concat],  "(rogelli\sradsport|premium\smultifuncion\sbandana).*(braga|panuelo\scon\scalavera|diadema)|punteras.*(windstopper)")
THEN "clothing_sportswear_cycling_uncategorized"

ELSEIF [merchant_name (copie pour filter)] in ("amazon") and REGEXP_MATCH([Product Concat],  "hasagei\sbandana|rogelli\sradsport")
THEN "clothing_sportswear_cycling_uncategorized"

ELSEIF [merchant_name (copie pour filter)] in ("amazon") and REGEXP_MATCH([Product Concat],  "pedales\sbicicleta\smontana|pedales\sde\sbicicleta\sde\smontana|hseamall.*(freno\sdisco)|punos\sbicicleta\santideslizantes|punos\spara\sbicicleta|punos\sbicicleta\smtb|volo\sextender\sbar")
THEN "sports and outdoors_cycling_components and parts_uncategorized"

ELSEIF [merchant_name (copie pour filter)] in ("amazon") and REGEXP_MATCH([Product Concat],  "camara\sinterior\sde\sbicicleta|slime.*(camara)|alomejor\seslabon|vittoria.*(camara|geax)|sram\seagle|triwonder\smtb")
THEN "sports and outdoors_cycling_components and parts_uncategorized"

ELSEIF [merchant_name (copie pour filter)] in ("amazon") and REGEXP_MATCH([Product Concat],  "lampara\sluz\sbicicleta| luz\susb\srecargable.*(bicicleta\sluz)")
THEN "sports and outdoors_cycling_lighting_uncategorized"

ELSEIF [merchant_name (copie pour filter)] in ("amazon") and REGEXP_MATCH([Product Concat],  "lixada\sbloque\sapoyo|elite.*(calapies)")
THEN "sports and outdoors_cycling_accessories_uncategorized"

ELSEIF [merchant_name (copie pour filter)] in ("amazon") and REGEXP_MATCH([Product Concat],  "bell\sde\sbicicleta.*(ninos)")
THEN "sports and outdoors_cycling_kids' bikes and accessories_uncategorized"

ELSEIF [merchant_name (copie pour filter)] in ("amazon") and REGEXP_MATCH([Product Concat],  "tbest\scontrolador")
THEN "sports and outdoors_cycling_components and parts_uncategorized"

ELSEIF [merchant_name (copie pour filter)] in ("amazon") and REGEXP_MATCH([Product Concat],  "alphashield")
THEN "sports and outdoors_cycling_components and parts_uncategorized"

ELSEIF [merchant_name (copie pour filter)] in ("amazon") and REGEXP_MATCH([Product Concat],  "bkool|rockbros\scubierta\sde\ssudor|bocina\spara\sbicicleta")
THEN "sports and outdoors_cycling_accessories_uncategorized"



// OUTLIERS

ELSEIF REGEXP_MATCH([Product Concat], "kasfam.*(mascara)|mascara\santipolvo")
THEN "health and personal care_medical, remedies and dietary supplements_surgical face masks_uncategorized"




// CLOTHING SPORTSWEAR

ELSEIF REGEXP_MATCH([Product Concat],  "culotte/sciclismo")
	THEN "clothing_sportswear_cycling_uncategorized"

ELSEIF REGEXP_MATCH([Product Concat],  "chaqueta/sciclismo")
	THEN "clothing_sportswear_cycling_uncategorized"

ELSEIF  [Ml Category 1] = "sportswear" and REGEXP_MATCH([Product Concat],  "handlebar|cassette")
THEN "sports and outdoors_cycling_components and parts_uncategorized"

ELSEIF  [Ml Category 1] = "sportswear" and REGEXP_MATCH([Product Concat],  "handlebar")
THEN "sports and outdoors_cycling_components and parts_uncategorized"

ELSEIF  [Ml Category 1] = "sportswear" and [merchant_name (copie pour filter)] in ("ebay") and REGEXP_MATCH([Product Concat],  "guantes.*(moto)|moto")
THEN "automotive_car and motorbike accessories_protective clothing_uncategorized"

ELSEIF  [Ml Category 1] = "sportswear" and REGEXP_MATCH([Product Concat],  "glass|glass|hot\sspy|gafa|spy1|ken\sblock")
THEN "sports and outdoors_cycling_glasses_uncategorized"

ELSEIF  [Ml Category 1] = "sportswear" and [merchant_name (copie pour filter)] in ("ebay") and REGEXP_MATCH([Product Concat],  "camiseta.*(yamaha|jurasico)")
THEN "clothing_men_tops, t-shirts and shirts_uncategorized"

ELSEIF  [Ml Category 1] = "sportswear" and REGEXP_MATCH([Product Concat],  "shoe")
THEN "sports and outdoors_cycling_shoes_uncategorized"

ELSEIF  [Ml Category 2] = "cycling" and REGEXP_MATCH([Product Concat],  "playboy|bobby|onlnova|gorilla\swear|spyder|bermuda.*(felpa|jeans|reflectante|sarga)")
THEN "clothing_unisex_shorts_uncategorized"

ELSEIF  [Ml Category 1] = "sportswear" and [merchant_name (copie pour filter)] in ("zalandoprive") and REGEXP_MATCH([Product Concat],  "grizzlies")
THEN "clothing_sportswear_basketball_uncategorized"

ELSEIF  [Ml Category 1] = "sportswear" and [merchant_name (copie pour filter)] in ("vinted","shopee","ebay") and REGEXP_MATCH([Product Concat],  "nfl|hoosiers|football|bayern|chelsea|handball|real|nba|doncic|equipe|juventus|manchester|foot|arsenal|galaxy|celta\svigo|germain|atletico|barcelona|tottenham")
THEN "clothing_sportswear_uncategorized_uncategorized"


ELSEIF  [Ml Category 1] = "sportswear" and [merchant_name (copie pour filter)] in ("vinted") and REGEXP_MATCH([Product Concat],  "maillot\sde\sbain.*(homme)")
THEN "clothing_men_swimwear_uncategorized"


ELSEIF  [Ml Category 1] = "sportswear" and [merchant_name (copie pour filter)] in ("vinted") and REGEXP_MATCH([Product Concat],  "maillot\sde\sbain")
THEN "clothing_women_swimwear_uncategorized"


ELSEIF  [Ml Category 1] = "sportswear" and [merchant_name (copie pour filter)] in ("vinted") and REGEXP_MATCH([Product Concat],  "sweat|rockster|felpa|knitwear")
THEN "clothing_unisex_knitwear, hoodies and sweatshirts_uncategorized"


ELSEIF  [Ml Category 1] = "sportswear" and [merchant_name (copie pour filter)] in ("vinted") and REGEXP_MATCH([Product Concat],  "zara|haut")
THEN "clothing_unisex_uncategorized_uncategorized"


ELSEIF  [Ml Category 2] = "cycling" and [merchant_name (copie pour filter)] in ("vinted","alibaba") and REGEXP_MATCH([Product Concat],  "casco")
THEN "sports and outdoors_cycling_helmets and accessories_uncategorized"

ELSEIF  [Ml Category 2] = "cycling" and REGEXP_MATCH([Product Concat],  "jersei|piumino|capucha")
THEN "clothing_unisex_knitwear, hoodies and sweatshirts_uncategorized"

ELSEIF  [Ml Category 2] = "cycling" and [merchant_name (copie pour filter)] in ("vinted") and REGEXP_MATCH([Product Concat],  "chino|jersey")
THEN "clothing_unisex_uncategorized_uncategorized"

ELSEIF  [Ml Category 2] = "cycling" and [merchant_name (copie pour filter)] in ("shein") and REGEXP_MATCH([Product Concat],  "shein")
THEN "clothing_unisex_uncategorized_uncategorized"

ELSEIF  [Ml Category 2] = "cycling" and [merchant_name (copie pour filter)] in ("shein","vente privee","bershka") and REGEXP_MATCH([Product Concat],  "tirantes|top\shalter|top\stank|homewear|lluvia|manguito")
THEN "clothing_unisex_uncategorized_uncategorized"

ELSEIF  [Ml Category 2] = "cycling" and [merchant_name (copie pour filter)] in ("shein","privalia") and REGEXP_MATCH([Product Concat],  "short.*(bike|ciclista|bicicleta|mezclilla|alto|fibra|power)")
THEN "clothing_women_leggings_uncategorized"

ELSEIF  [Ml Category 2] = "cycling" and [merchant_name (copie pour filter)] in ("shein") and REGEXP_MATCH([Product Concat],  "manga|mameluco|conjunto|griffe|rompeviento|chaqueta\sbiker")
THEN "clothing_women_uncategorized_uncategorized"

ELSEIF  [Ml Category 2] = "cycling" and [merchant_name (copie pour filter)] in ("shein") and REGEXP_MATCH([Product Concat],  "motocicleta")
THEN "automotive_car and motorbike accessories_uncategorized_uncategorized"

ELSEIF  [Ml Category 2] = "cycling" and [merchant_name (copie pour filter)] in ("shein") and REGEXP_MATCH([Product Concat],  "pajaro")
THEN "garden and outdoors_gardening_plant containers and accessories_uncategorized"

ELSEIF  [Ml Category 2] = "cycling" and [merchant_name (copie pour filter)] in ("shein") and REGEXP_MATCH([Product Concat],  "luz")
THEN "sports and outdoors_cycling_lighting_uncategorized"

ELSEIF  [Ml Category 2] = "cycling" and [merchant_name (copie pour filter)] in ("shein") and REGEXP_MATCH([Product Concat],  "colgante")
THEN "jewellery_women_pendants and coins_uncategorized"

ELSEIF  [Ml Category 2] = "cycling" and [merchant_name (copie pour filter)] in ("vente privee") and REGEXP_MATCH([Product Concat],  "pulsera")
THEN "jewellery_women_bracelets_uncategorized"

ELSEIF  [Ml Category 2] = "cycling" and [merchant_name (copie pour filter)] in ("vente privee") and REGEXP_MATCH([Product Concat],  "polar|chaqueta.*(acolchado|gris|softshell)")
THEN "clothing_sportswear_uncategorized_uncategorized"

ELSEIF  [Ml Category 2] = "cycling" and [merchant_name (copie pour filter)] in ("vente privee") and REGEXP_MATCH([Product Concat],  "gorro")
THEN "clothing_accessories_hats and caps_uncategorized"

ELSEIF  [Ml Category 2] = "cycling" and [merchant_name (copie pour filter)] in ("bershka","pullandbear") and REGEXP_MATCH([Product Concat],  "pantalon.*(piel|ciclista)")
THEN "clothing_women_leggings_uncategorized"

ELSEIF  [Ml Category 2] = "cycling" and [merchant_name (copie pour filter)] in ("elcorteingles") and REGEXP_MATCH([Product Concat],  "seis")
THEN "books_uncategorized_uncategorized_uncategorized"


ELSEIF  [Ml Category 2] = "cycling" and [merchant_name (copie pour filter)] in ("elcorteingles") and REGEXP_MATCH([Product Concat],  "rubik")
THEN "toys and games_arts and crafts_uncategorized_uncategorized"


ELSEIF  [Ml Category 2] = "cycling" and [merchant_name (copie pour filter)] in ("elcorteingles","shein","amazon") and REGEXP_MATCH([Product Concat],  "herramienta")
THEN "sports and outdoors_cycling_tools_uncategorized"

ELSEIF  [Ml Category 2] = "cycling" and REGEXP_MATCH([Product Concat],  "camison|chamarra")
THEN "clothing_women_uncategorized_uncategorized"

ELSEIF  [Ml Category 2] = "cycling" and [merchant_name (copie pour filter)] in ("privalia") and REGEXP_MATCH([Product Concat],  "billabong")
THEN "clothing_unisex_shorts_uncategorized"

ELSEIF  [Ml Category 2] = "cycling" and REGEXP_MATCH([Product Concat],  "crocs")
THEN "shoes and accessories_shoes_uncategorized_uncategorized"


ELSEIF  [Ml Category 2] = "cycling" and [merchant_name (copie pour filter)] in ("alibaba") and REGEXP_MATCH([Product Concat],  "perro|mascota|gatos|cachorro|ropa\sde\sinvierno\spara\s.*(per|mas)")
THEN "pet supplies_dogs_clothing and accessories_uncategorized"


ELSEIF  [Ml Category 2] = "cycling" and [merchant_name (copie pour filter)] in ("alibaba") and REGEXP_MATCH([Product Concat],  "visera|gorra|sombrero")
THEN "clothing_accessories_hats and caps_uncategorized"


ELSEIF  [Ml Category 2] = "cycling" and [merchant_name (copie pour filter)] in ("alibaba") and REGEXP_MATCH([Product Concat],  "calcetines.*(deportivos|futbol)")
THEN "clothing_men_socks_uncategorized"

ELSEIF  [Ml Category 2] = "cycling" and [merchant_name (copie pour filter)] in ("alibaba") and REGEXP_MATCH([Product Concat],  "camiseta.*(futbol)")
THEN "clothing_sportswear_football_uncategorized"

ELSEIF  [Ml Category 2] = "cycling" and [merchant_name (copie pour filter)] in ("alibaba","ebay") and REGEXP_MATCH([Product Concat],  "led|usb|rear\ssafety")
THEN "sports and outdoors_cycling_lighting_uncategorized"


ELSEIF  [Ml Category 2] = "cycling" and REGEXP_MATCH([Product Concat],  "gorro.*(cabello|mujer|ducha|lana|pelo|invierno)")
THEN "clothing_accessories_hats and caps_uncategorized"


ELSEIF  [Ml Category 2] = "cycling" and [merchant_name (copie pour filter)] in ("alibaba","ebay") and REGEXP_MATCH([Product Concat],  "guantes\sde\sinvierno|hiking.*(gloves)|thermal.*(gloves)")
THEN "clothing_accessories_gloves and mitts_uncategorized"


ELSEIF  [Ml Category 2] = "cycling" and [merchant_name (copie pour filter)] in ("alibaba","ebay") and REGEXP_MATCH([Product Concat],  "(guantes|gloves).*(moto|enduro)|enduro\smotocross.*(downhill)")
THEN "automotive_car and motorbike accessories_protective clothing_uncategorized"

ELSEIF  [Ml Category 2] = "cycling" and [merchant_name (copie pour filter)] in ("alibaba","ebay") and REGEXP_MATCH([Product Concat],  "(guantes|gloves).*(box|fight)")
THEN "sports and outdoors_boxing_gloves and mitts_uncategorized"

ELSEIF  [Ml Category 2] = "cycling" and [merchant_name (copie pour filter)] in ("alibaba","ebay") and REGEXP_MATCH([Product Concat],  "t-shirt.*(alpine|ford)")
THEN "clothing_men_tops, t-shirts and shirts_uncategorized"


ELSEIF  [Ml Category 2] = "cycling" and [merchant_name (copie pour filter)] in ("alibaba","ebay") and REGEXP_MATCH([Product Concat],  "funda|xiaomi")
THEN "computer and electronics_accessories_mobile phone accessories_uncategorized"


ELSEIF  [Ml Category 2] = "cycling" and [merchant_name (copie pour filter)] in ("alibaba","ebay") and REGEXP_MATCH([Product Concat],  "toe\ssocks|socks.*(football|sport)")
THEN "clothing_unisex_uncategorized_uncategorized"

ELSEIF  [Ml Category 2] = "cycling" and [merchant_name (copie pour filter)] in ("alibaba","ebay") and REGEXP_MATCH([Product Concat],  "vestido")
THEN "clothing_women_uncategorized_uncategorized"

ELSEIF  [Ml Category 2] = "cycling" and [merchant_name (copie pour filter)] in ("alibaba","ebay") and REGEXP_MATCH([Product Concat],  "ropa\sinterior\stermica|boxer")
THEN "clothing_men_underwear_uncategorized"

ELSEIF  [Ml Category 2] = "cycling" and REGEXP_MATCH([Product Concat],  "bermuda\sciclista")
THEN "clothing_women_leggings_uncategorized"

ELSEIF  [Ml Category 2] = "cycling" and [merchant_name (copie pour filter)] in ("ebay") and REGEXP_MATCH([Product Concat],  "superhero|marvel")
THEN "clothing_men_uncategorized_uncategorized"

ELSEIF  [Ml Category 2] = "cycling" and [merchant_name (copie pour filter)] in ("ebay","alibaba") and REGEXP_MATCH([Product Concat],  "anti\spollution|anti-dust")
THEN "health and personal care_medical, remedies and dietary supplements_surgical face masks_uncategorized"


ELSEIF  [Ml Category 2] = "cycling" and [merchant_name (copie pour filter)] in ("ebay","alibaba") and REGEXP_MATCH([Product Concat],  "pegatina")
THEN "sports and outdoors_cycling_kids' bikes and accessories_uncategorized"


ELSEIF  [Ml Category 2] = "cycling" and [merchant_name (copie pour filter)] in ("ebay","alibaba") and REGEXP_MATCH([Product Concat],  "enduro")
THEN "automotive_car and motorbike accessories_protective clothing_uncategorized"


ELSEIF  [Ml Category 2] = "cycling" and [merchant_name (copie pour filter)] in ("ebay","alibaba") and REGEXP_MATCH([Product Concat],  "adidas")
THEN "clothing_sportswear_uncategorized_uncategorized"

ELSEIF  [Ml Category 2] = "cycling" and [merchant_name (copie pour filter)] in ("ebay","alibaba") and REGEXP_MATCH([Product Concat],  "electronic\sbell|600ml|liquido\ssellante|mount\sholder")
THEN "sports and outdoors_cycling_accessories_uncategorized"

ELSEIF  [Ml Category 2] = "cycling" and [merchant_name (copie pour filter)] in ("ebay","alibaba") and REGEXP_MATCH([Product Concat],  "hoodie")
THEN "clothing_unisex_knitwear, hoodies and sweatshirts_uncategorized"

ELSEIF  [Ml Category 2] = "cycling" and [merchant_name (copie pour filter)] in ("ebay","alibaba") and REGEXP_MATCH([Product Concat],  "tool")
THEN "sports and outdoors_cycling_components and parts_uncategorized"

ELSEIF  [Ml Category 2] = "cycling" and [merchant_name (copie pour filter)] in ("shopee") and REGEXP_MATCH([Product Concat],  "guantes.*(\sde\szorro|carreras)|motocross|fox\s14")
THEN "automotive_car and motorbike accessories_protective clothing_uncategorized"

ELSEIF  [Ml Category 2] = "cycling" and [merchant_name (copie pour filter)] in ("shopee") and REGEXP_MATCH([Product Concat],  "guantes.*(\sde\szorro|carreras)|motocross|fox\s14")
THEN "automotive_car and motorbike accessories_protective clothing_uncategorized"

ELSEIF  [Ml Category 2] = "cycling" and [merchant_name (copie pour filter)] in ("ebay") and REGEXP_MATCH([Product Concat],  "pro\scycling\smanager")
THEN "apps and games_uncategorized_uncategorized_uncategorized"




// !!! NEVER USE THE BREADCRUMB_AGGREGATE !!!
// end part, do not change
ELSE NULL
END

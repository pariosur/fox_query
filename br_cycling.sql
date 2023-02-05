



//simple regex condition (to use in priority)


IF REGEXP_MATCH([Product Concat],  "maillot ciclismo")
	THEN "clothing_sportswear_cycling_uncategorized"



ELSEIF REGEXP_MATCH([Product Concat],  "culotte ciclismo")
	THEN "clothing_sportswear_cycling_uncategorized"

ELSEIF REGEXP_MATCH([Product Concat],  "chaqueta ciclismo")
	THEN "clothing_sportswear_cycling_uncategorized"


// COMPONENTS AND PARTS


ELSEIF REGEXP_MATCH([Product Concat], "bomba\sde\sbicicleta")
	THEN NULL
ELSEIF REGEXP_MATCH([Product Concat], "tuerca.*bicicleta|bicicleta.*tuerca")
	THEN "sports and outdoors_cycling_components and parts_uncategorized"


// OUTLIERS

ELSEIF REGEXP_MATCH([Product Concat],  "coche\selectrico")
	THEN "toys and games_electronic toys_uncategorized_uncategorized"

ELSEIF  REGEXP_MATCH([Product Concat],  "triciclo")
THEN "sports and outdoors_cycling_kids' bikes and accessories_uncategorized"

ELSEIF  REGEXP_MATCH([Product Concat],  "kinderkraft")
	THEN "baby products_pushchairs, prams and accessories_pushchairs and prams_uncategorized"

ELSEIF  REGEXP_MATCH([Product Concat],  "sartoriale")
	THEN "clothing_men_suits and blazer_uncategorized"


ELSEIF [merchant_name (copie pour filter)]="alibaba" and [Ml Category 2]="cycling" and REGEXP_MATCH([Product Concat],  "sudadera")
	THEN "clothing_sportswear_uncategorized_uncategorized"

ELSEIF [merchant_name (copie pour filter)]="ebay" and REGEXP_MATCH([Product Concat], "casco.*(star|nzi|scooter|midland|ventura|acerbis|momo|moto|modular|vintage|integral|militar|jet|shiro|vespa|shark|motocicleta|viper|motorcycle|helmet|marlboro|abatible)")
THEN "automotive_car and motorbike accessories_protective clothing_uncategorized"

ELSEIF [merchant_name (copie pour filter)]="ebay" and REGEXP_MATCH([Product Concat], "cascos.*(volumen)")
THEN "computer and electronics_accessories_audio and video accessories_uncategorized"


ELSEIF [merchant_name (copie pour filter)]="deporvillage" and REGEXP_MATCH([Product Concat], "camara\sde\saccion")
THEN "computer and electronics_camera and photo_action cameras and accessories_uncategorized"


ELSEIF [merchant_name (copie pour filter)]="deporvillage" and REGEXP_MATCH([Product Concat], "camara.*(valvula|michelin)")
THEN "sports and outdoors_cycling_components and parts_uncategorized"


ELSEIF [Ml Category 2]="cycling" and REGEXP_MATCH([Product Concat], "gorro.*(natación|punto|bordado|lana|beisbol|quimio|salud|turbante|ducha)")
	THEN "clothing_sportswear_uncategorized_uncategorized"


ELSEIF [merchant_name (copie pour filter)]="amazon" and REGEXP_MATCH([Product Concat],  "only\smujer")
	THEN "clothing_women_uncategorized_uncategorized"



// Cycling Shoes


ELSEIF [merchant_name (copie pour filter)]="adidas" and [Ml Category 1]="cycling" and REGEXP_MATCH([Product Concat],  "zapatilla\salpha")
	THEN "sports and outdoors_running_shoes_uncategorized"

ELSEIF [merchant_name (copie pour filter)]="decathlon" and [Ml Category 1]="cycling" and REGEXP_MATCH([Product Concat],  "zapatillas\sbebe")
	THEN "shoes and accessories_shoes_baby shoes_uncategorized"




// !!! NEVER USE THE BREADCRUMB_AGGREGATE !!!
// end part, do not change
ELSE NULL
END

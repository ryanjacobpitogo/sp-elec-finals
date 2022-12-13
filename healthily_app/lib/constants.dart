import 'package:flutter/material.dart';

// Color varianbles
const clrDarkRed = Color.fromARGB(255, 174, 38, 62);
const clrLightRed = Color.fromARGB(255, 255, 51, 73);
const clrMainRed = Color.fromARGB(255, 221, 71, 71);
const clrPaleRed = Color.fromARGB(255, 202, 78, 77);
const clrCyanBlue = Color.fromARGB(255, 17, 151, 245);
const clrWhite = Colors.white;
const clrBlack = Colors.black;
const clrGrey = Colors.grey;

//font sizes
const titleFontSize = 36.0;

//Scaffold Background
const scaffoldBackground = BoxDecoration(
  image: DecorationImage(
    image: AssetImage("assets/scaffoldBg.jpg"),
    fit: BoxFit.fill,
  ),
);

//Box Shadows
var boxShadowDefault = BoxShadow(
    color: Colors.grey.withOpacity(0.5),
    spreadRadius: 2,
    blurRadius: 4,
    offset: const Offset(2, 2));

var boxShadowLow = BoxShadow(
    color: Colors.black.withOpacity(.2),
    spreadRadius: 2,
    blurRadius: 3,
    offset: const Offset(2, 2.5));

//Box Decoration
var boxDecorDefault = BoxDecoration(
  color: clrWhite,
  border: Border.all(color: clrGrey, width: inputFieldBorWidth),
  borderRadius: BorderRadius.circular(inputFieldBorRad),
);
var boxDecorContainer = const BoxDecoration(
  color: clrWhite,
  borderRadius: BorderRadius.only(
      topLeft: Radius.circular(50), topRight: Radius.circular(50)),
);

//Login Button constants
const loginPadding = 10.0;
const loginMinHeight = 50.0;
const loginMaxWidth = 270.0;
const loginMinWidth = 120.0;
final loginFacebookIcon =
    Image.asset("assets/facebook.png", width: 30, height: 30);
final loginGoogleIcon = Image.asset(
  "assets/google.png",
  width: 20,
  height: 20,
);

//Input Field constants
const inputFieldBorRad = 15.0;
const inputFieldFontSize = 15.0;
const inputFieldPadding = 12.0;
const inputFieldBorWidth = 2.5;

//Input Field variables
TextEditingController uNameController = TextEditingController();
TextEditingController passController = TextEditingController();

//Login Data

//Diet Details Data
List<Map<String, dynamic>> tagsList = [
  {
    "id": 1,
    "tag": "Pork",
    "clicked": false,
    "image": Image.asset("assets/tag_meat.png"),
    "bImage": Image.asset("assets/b_tag_meat.png")
  },
  {
    "id": 2,
    "tag": "Fish",
    "clicked": false,
    "image": Image.asset("assets/tag_fish.png"),
    "bImage": Image.asset("assets/b_tag_fish.png")
  },
  {
    "id": 3,
    "tag": "Vegetable",
    "clicked": false,
    "image": Image.asset("assets/tag_vegetable.png"),
    "bImage": Image.asset("assets/b_tag_vegetable.png")
  },
  {
    "id": 4,
    "tag": "Chicken",
    "clicked": false,
    "image": Image.asset("assets/tag_turkey.png"),
    "bImage": Image.asset("assets/b_tag_turkey.png")
  },
  {
    "id": 5,
    "tag": "No Milk",
    "clicked": false,
    "image": Image.asset("assets/tag_milk.png"),
    "bImage": Image.asset("assets/b_tag_milk.png")
  },
  {
    "id": 6,
    "tag": "No Sugar",
    "clicked": false,
    "image": Image.asset("assets/tag_sugar.png"),
    "bImage": Image.asset("assets/b_tag_sugar.png")
  },
  {
    "id": 7,
    "tag": "Beef",
    "clicked": false,
    "image": Image.asset("assets/beef.png"),
    "bImage": Image.asset("assets/b_beef.png")
  },
  {
    "id": 8,
    "tag": "Mushroom",
    "clicked": false,
    "image": Image.asset("assets/mushroom.png"),
    "bImage": Image.asset("assets/b_mushroom.png")
  },
  {
    "id": 10,
    "tag": "Seafood",
    "clicked": false,
    "image": Image.asset("assets/Seafood.png"),
    "bImage": Image.asset("assets/b_Seafood.png")
  },
  {
    "id": 11,
    "tag": "Fruit",
    "clicked": false,
    "image": Image.asset("assets/fruits.png"),
    "bImage": Image.asset("assets/b_fruits.png")
  },
  {
    "id": 12,
    "tag": "Eggs",
    "clicked": false,
    "image": Image.asset("assets/Eggs.png"),
    "bImage": Image.asset("assets/b_Eggs.png")
  },
  {
    "id": 13,
    "tag": "Potato",
    "clicked": false,
    "image": Image.asset("assets/potato.png"),
    "bImage": Image.asset("assets/b_potato.png")
  },
  {
    "id": 14,
    "tag": "Wheat",
    "clicked": false,
    "image": Image.asset("assets/wheat.png"),
    "bImage": Image.asset("assets/b_wheat.png")
  },
  {
    "id": 15,
    "tag": "Dairy",
    "clicked": false,
    "image": Image.asset("assets/Dairy.png"),
    "bImage": Image.asset("assets/b_Dairy.png")
  },
];

//Food List Data
List<Map<String, dynamic>> foodlist = [
  //pork
  {
    "type": "Adobo",
    "name": "Pork Adobo",
    "tag": "Pork",
    "image": const AssetImage("assets/adobo.jpg")
  },
  {
    "type": "Pork Chops",
    "name": "Pork chop",
    "tag": "Pork",
    "image": const AssetImage("assets/FL_porkchops.jpg")
  },
  {
    "type": " Grilled",
    "name": "Grilled Pork",
    "tag": "Pork",
    "image": const AssetImage("assets/FL_grilledpork.jpg")
  },

  //fish
  {
    "type": "Fillet",
    "name": "Fish Fillet",
    "tag": "Fish",
    "image": const AssetImage("assets/fillet.jpg")
  },
  {
    "type": "Soup",
    "name": "Fish Soup",
    "tag": "Fish",
    "image": const AssetImage("assets/soup.jpg")
  },

  //Veg
  {
    "type": "Soup",
    "name": "Veg Soup",
    "tag": "Vegetable",
    "image": const AssetImage("assets/soup.jpg")
  },
  {
    "type": "Salad",
    "name": "Veg Salad",
    "tag": "Vegetable",
    "image": const AssetImage("assets/salad.jpg")
  },

  //chicken
  {
    "type": "Inasal",
    "name": "Chicken Inasal",
    "tag": "Chicken",
    "image": const AssetImage("assets/inasal.jpg")
  },
  {
    "type": "Soup",
    "name": "Chicken Soup",
    "tag": "Chicken",
    "image": const AssetImage("assets/soup.jpg")
  },

  //beef
  {
    "type": "Soup",
    "name": "Beef Soup",
    "tag": "Beef",
    "image": const AssetImage("assets/soup.jpg")
  },
  {
    "type": "Steak",
    "name": "Beef Steak",
    "tag": "Beef",
    "image": const AssetImage("assets/FL_steaked.jpg")
  },

  //mush
  {
    "type": "Soup",
    "name": "Mushroom Soup",
    "tag": "Mushroom",
    "image": const AssetImage("assets/soup.jpg")
  },

  //Seafoods
  {
    "type": "Shrimps",
    "name": "Shrimps",
    "Seafoods": "Seafoods",
    "image": const AssetImage("assets/soup.jpg")
  },
  {
    "type": "Soup",
    "name": "Crab Soup",
    "Seafoods": "Seafoods",
    "image": const AssetImage("assets/soup.jpg")
  },

  //fruit
  {
    "type": "Salad",
    "name": "Fruits Salad",
    "tag": "Fruits",
    "image": const AssetImage("assets/soup.jpg")
  },
  {
    "type": "Smoothie",
    "name": "Fruits",
    "tag": "Fruits",
    "image": const AssetImage("assets/soup.jpg")
  },
];

//Restaurant List
List<Map<String, dynamic>> restaurant = [
  //porkadobo
  {
    'id': 'PA1',
    'name': 'The Thray',
    'type': "Pork Adobo",
    'price': 225,
    'location':
        'The Thray Grove Bldg. Guadalupe 6000 Cebu City Central Visayas',
    'calorie': 425,
    'logo':
        const NetworkImage("https://i.ibb.co/FY5538h/REs-pork-AThethry.jpg"),
    'image':
        const NetworkImage("https://i.ibb.co/7J25cKB/REs-pork-AThethray.jpg"),
    'place': const NetworkImage("https://i.ibb.co/G52PzRB/PA-thethrayplace.jpg")
  },
  {
    'id': 'PA2',
    'name': 'Hukad',
    'type': "Pork Adobo",
    'price': 200,
    'location': 'Salinas Drive, Lahug, Cebu City',
    'calorie': 405,
    'logo': const NetworkImage("https://i.ibb.co/stBzzLJ/PA-hukadlogo.png"),
    'image': const NetworkImage("https://i.ibb.co/H77MNYV/R.jpg"),
    'place': const NetworkImage("https://i.ibb.co/qxczSZs/Pa-hukadplace.jpg")
  },
  {
    'id': 'PA3',
    'name': 'Adobo Connection',
    'type': "Pork Adobo",
    'price': 200,
    'location': 'Gaisano Fiesta Mall 6045 Talisay,Cebu,Philippines',
    'calorie': 405,
    'logo': const NetworkImage("https://i.ibb.co/gyLksWK/8216818-orig.png"),
    'image': const NetworkImage("https://i.ibb.co/9h491Tk/4.jpg"),
    'place':
        const NetworkImage("https://i.ibb.co/wL1xpjd/adobo-connection-5.jpg")
  },
  {
    'id': 'PA4',
    'name': 'Cios Kitchen',
    'type': "Pork Adobo",
    'price': 200,
    'location': '42507 Benedicto Plaza Nouvelle, Cebu City 6000 Philippines',
    'calorie': 405,
    'logo': const NetworkImage("https://i.ibb.co/2nB0sYK/OIP.jpg"),
    'image': const NetworkImage(
        "https://i.ibb.co/dJyMBT1/image-url-https-static-onecms-io-wp-content-uploads-sites-44-2019-08-26232411-3757032.jpg"),
    'place': const NetworkImage(
        "https://i.ibb.co/6sbQ2d1/48874270846-60b28fbaf9-z.jpg")
  },

  //porkchops
  {
    'id': 'PC1',
    'name': 'KKD stk+bbq',
    'type': "Pork chop",
    'price': 200,
    'location': 'M. J. Cuenco Ave, Cebu City, Cebu, Philippines',
    'calorie': 405,
    'logo':
        const NetworkImage("https://i.ibb.co/2v6gt2z/kkd-stk-bbq-cebu-2.jpg"),
    'image': const NetworkImage(
        "https://i.ibb.co/PCzDNtf/recipe-grilled-pork-chop.jpg"),
    'place':
        const NetworkImage("https://i.ibb.co/NsYctnc/kkd-stk-bbq-cebu-4.jpg")
  },
  {
    'id': 'PC2',
    'name': 'Han Pork',
    'type': "Pork chop",
    'price': 200,
    'location':
        'Mango Square, General Maxilom Avenue Cebu City Central Visayas',
    'calorie': 405,
    'logo': const NetworkImage("https://i.ibb.co/Pg3s4Xd/OIP.jpg"),
    'image': const NetworkImage(
        "https://i.ibb.co/BLn92Bj/ff3ff113fb217f53b7f657f908c1ec57.jpg"),
    'place': const NetworkImage(
        "https://i.ibb.co/4PbHZ8L/notre-salle-au-tout-debut.jpg")
  },
  {
    'id': 'PC3',
    'name': 'Casaverde',
    'type': "Pork chop",
    'price': 200,
    'location': 'Salinas Drive, Lahug, Cebu City',
    'calorie': 405,
    'logo': const NetworkImage("https://i.ibb.co/p12Jjtc/OIP.jpg"),
    'image': const NetworkImage("https://i.ibb.co/stqnCFt/OIP.jpg"),
    'place': const NetworkImage("https://i.ibb.co/3B4HVJM/DSCN4364.jpg")
  },

  //grilled pork
  {
    'id': 'GP1',
    'name': 'KKD stk+bbq',
    'type': "Grilled Pork",
    'price': 200,
    'location': 'M. J. Cuenco Ave, Cebu City, Cebu, Philippines',
    'calorie': 405,
    'logo':
        const NetworkImage("https://i.ibb.co/2v6gt2z/kkd-stk-bbq-cebu-2.jpg"),
    'image': const NetworkImage(
        "https://i.ibb.co/PCzDNtf/recipe-grilled-pork-chop.jpg"),
    'place':
        const NetworkImage("https://i.ibb.co/NsYctnc/kkd-stk-bbq-cebu-4.jpg")
  },
  {
    'id': 'GP2',
    'name': 'Hukad',
    'type': "Grilled Pork",
    'price': 200,
    'location': 'Salinas Drive, Lahug, Cebu City',
    'calorie': 405,
    'logo': const NetworkImage("https://i.ibb.co/stBzzLJ/PA-hukadlogo.png"),
    'image': const NetworkImage(
        "https://i.ibb.co/cXBtJJw/webp-u-https-cdn-phonebooky-com-blog-wp-content-uploads-2016-09-22203732-Tuna-Belly.jpg"),
    'place': const NetworkImage("https://i.ibb.co/qxczSZs/Pa-hukadplace.jpg")
  },
  {
    'id': 'GP3',
    'name': 'Barbix Barbecue & Grill',
    'type': "Grilled Pork",
    'price': 200,
    'location': 'Salinas Drive, Lahug, Cebu City',
    'calorie': 405,
    'logo': const NetworkImage(
        "https://i.ibb.co/4FfxNr8/5c80d94f919a315da04640fd664483f7.jpg"),
    'place': const NetworkImage("https://i.ibb.co/34bdpRx/1553701361098.jpg")
  },

  //fillet
  {
    'id': 'FF1',
    'name': 'Davids Tea House',
    'type': "Fish Fillet",
    'price': 200,
    'location': 'M. J. Cuenco Ave, Cebu City, Cebu, Philippines',
    'calorie': 405,
    'logo': const NetworkImage("https://i.ibb.co/fG2byC9/6924437.jpg"),
    'image': const NetworkImage(
        "https://i.ibb.co/PCzDNtf/recipe-grilled-pork-chop.jpg"),
    'place': const NetworkImage("https://i.ibb.co/Ns5G4K2/431.jpg")
  },
  {
    'id': 'FF2',
    'name': 'Casaverde',
    'type': "Fish Fillet",
    'price': 200,
    'location': 'Salinas Drive, Lahug, Cebu City',
    'calorie': 405,
    'logo': const NetworkImage("https://i.ibb.co/p12Jjtc/OIP.jpg"),
    'image': const NetworkImage(
        "https://i.ibb.co/SrJb97w/casa-verde-cebu-offdutymama-2.jpg"),
    'place': const NetworkImage("https://i.ibb.co/3B4HVJM/DSCN4364.jpg")
  },
  {
    'id': 'FF3',
    'name': 'Seafood Paradise',
    'type': "Fish Fillet",
    'price': 200,
    'location': '110 Gorordo Ave, Cebu City, 6000 Cebu, Philippines',
    'calorie': 405,
    'logo': const NetworkImage(
        "https://i.ibb.co/ZfxS9vT/id8qag480x360-rs-1-pid-Img-Det.jpg"),
    'image': const NetworkImage(
        "https://i.ibb.co/JRXqYDn/Thai-Style-Grilled-Fish-Fillets.jpg"),
    'place': const NetworkImage(
        "https://i.ibb.co/BCnsW8T/Seafood-Paradise-Buffet-SM-Seaside-Cebu-1-1024x809.jpg")
  },

  //fish soup
  {
    'id': 'FS3',
    'name': 'Tanciongs',
    'type': "Fish Soup",
    'price': 200,
    'location': 'bulacao, Cebu City, Philippines',
    'calorie': 405,
    'logo': const NetworkImage(
        "https://i.ibb.co/zVq3Fsq/291858769-427411366066059-4650770153033149863-n.jpg"),
    'image': const NetworkImage("https://i.ibb.co/q95DTkZ/s1.jpg"),
    'place': const NetworkImage("https://i.ibb.co/2KxM8W1/s.jpg")
  },
  {
    'id': 'FS1',
    'name': 'SKT ta bay',
    'type': "Fish Soup",
    'price': 200,
    'location': 'Orchid Street Capitol Site 6000 Cebu City Central Visayas',
    'calorie': 405,
    'logo': const NetworkImage("https://i.ibb.co/m533vKc/R-1.jpg"),
    'image': const NetworkImage("https://i.ibb.co/mvnYzMN/tinolang-isda.jpg"),
    'place': const NetworkImage("https://i.ibb.co/PmVVdkd/326-509305626.jpg")
  },
  {
    'id': 'FS2',
    'name': 'Teppan Okonomiyaki',
    'type': "Fish Soup",
    'price': 200,
    'location': '110 Gorordo Ave, Cebu City, 6000 Cebu, Philippines',
    'calorie': 405,
    'logo': const NetworkImage(
        "https://i.ibb.co/rd1vyH3/3a256d3c9d7b245ee005842fa424c4b4.png"),
    'image': const NetworkImage("https://i.ibb.co/bRJqMMp/maxresdefault.jpg"),
    'place': const NetworkImage(
        "https://i.ibb.co/VqbLghF/the-first-hiroshima-okonomiyak.jpg")
  },

  //Veg
  {
    'id': 'VS1',
    'name': 'KUSINA UNO',
    'type': "Veg Soup",
    'price': 200,
    'location': '110 Gorordo Ave, Cebu City, 6000 Cebu, Philippines',
    'calorie': 405,
    'logo': const NetworkImage("https://i.ibb.co/rfND6vR/KU.jpg"),
    'image': const NetworkImage("https://i.ibb.co/bHtGGFB/utan-bisaya.jpg"),
    'place': const NetworkImage("https://i.ibb.co/D778jSW/as.jpg  ")
  },
  {
    'id': 'VS2',
    'name': 'Tanciongs',
    'type': "Veg Soup",
    'price': 200,
    'location': 'bulacao, Cebu City, Philippines',
    'calorie': 405,
    'logo': const NetworkImage(
        "https://i.ibb.co/zVq3Fsq/291858769-427411366066059-4650770153033149863-n.jpg"),
    'image': const NetworkImage("https://i.ibb.co/S7Y3gQ8/vegetable-soup.jpg"),
    'place': const NetworkImage("https://i.ibb.co/2KxM8W1/s.jpg")
  },
  {
    'id': 'VS3',
    'name': 'Chop Stpo',
    'type': "Veg Soup",
    'price': 200,
    'location': 'Maxilom Avenue, Cebu City 6000 Philippines',
    'calorie': 405,
    'logo': const NetworkImage("https://i.ibb.co/XJmB2Gw/OIP.jpg"),
    'image': const NetworkImage(
        "https://i.ibb.co/QkBkpxz/diabetes-friendly-recipe-clear-vegetable-soup.jpg"),
    'place': const NetworkImage("https://i.ibb.co/smqYR7j/as.jpg")
  },
  {
    'id': 'VS4',
    'name': 'House of Lechon',
    'type': "Veg Soup",
    'price': 200,
    'location': 'Acacia Street, Cebu City 6000 Philippines',
    'calorie': 405,
    'logo': const NetworkImage(
        "https://i.ibb.co/6YGcCRy/welcome-to-house-of-lechon.jpg"),
    'image': const NetworkImage("https://i.ibb.co/K7vK8fJ/as.jpg"),
    'place': const NetworkImage(
        "https://i.ibb.co/MSdbzPh/houseoflechoncapitol-11.jpg")
  },

  //veg salad
  {
    'id': 'VS1',
    'name': 'KUSINA UNO',
    'type': "Veg Salad",
    'price': 200,
    'location': '110 Gorordo Ave, Cebu City, 6000 Cebu, Philippines',
    'calorie': 405,
    'logo': const NetworkImage("https://i.ibb.co/rfND6vR/KU.jpg"),
    'image': const NetworkImage("https://i.ibb.co/HKGdRhb/as.jpg"),
    'place': const NetworkImage("https://i.ibb.co/D778jSW/as.jpg  ")
  },
  {
    'id': 'VS2',
    'name': 'Tanciongs',
    'type': "Veg Salad",
    'price': 200,
    'location': 'bulacao, Cebu City, Philippines',
    'calorie': 405,
    'logo': const NetworkImage(
        "https://i.ibb.co/zVq3Fsq/291858769-427411366066059-4650770153033149863-n.jpg"),
    'image': const NetworkImage(
        "https://i.ibb.co/7zXdJnD/abaca-robinsons-galleria-01.jpg"),
    'place': const NetworkImage("https://i.ibb.co/2KxM8W1/s.jpg")
  },
  {
    'id': 'VS3',
    'name': 'Chop Stpo',
    'type': "Veg Salad",
    'price': 200,
    'location': 'Maxilom Avenue, Cebu City 6000 Philippines',
    'calorie': 405,
    'logo': const NetworkImage("https://i.ibb.co/XJmB2Gw/OIP.jpg"),
    'image': const NetworkImage("https://i.ibb.co/zGB2j6y/DSC01144.jpg"),
    'place': const NetworkImage("https://i.ibb.co/smqYR7j/as.jpg")
  },
  {
    'id': 'VS4',
    'name': 'House of Lechon',
    'type': "Veg Salad",
    'price': 200,
    'location': 'Acacia Street, Cebu City 6000 Philippines',
    'calorie': 405,
    'logo': const NetworkImage(
        "https://i.ibb.co/6YGcCRy/welcome-to-house-of-lechon.jpg"),
    'image': const NetworkImage(
        "https://i.ibb.co/MDsB0Qq/68435-The-Chieftain-Irish-Pub-Restaurant-Mixed-Green-Salad.jpg"),
    'place': const NetworkImage(
        "https://i.ibb.co/MSdbzPh/houseoflechoncapitol-11.jpg")
  },

  //chicken
  {
    'id': 'CS1',
    'name': 'KUSINA UNO',
    'type': "Chicken Soup",
    'price': 200,
    'location': '110 Gorordo Ave, Cebu City, 6000 Cebu, Philippines',
    'calorie': 405,
    'logo': const NetworkImage("https://i.ibb.co/rfND6vR/KU.jpg"),
    'image': const NetworkImage("https://i.ibb.co/myTFyqy/as.webp"),
    'place': const NetworkImage("https://i.ibb.co/D778jSW/as.jpg  ")
  },
  {
    'id': 'CS2',
    'name': 'Tanciongs',
    'type': "Chicken Soup",
    'price': 200,
    'location': 'bulacao, Cebu City, Philippines',
    'calorie': 405,
    'logo': const NetworkImage(
        "https://i.ibb.co/zVq3Fsq/291858769-427411366066059-4650770153033149863-n.jpg"),
    'image':
        const NetworkImage("https://i.ibb.co/02V2hf9/IMG-6656-1024x1024.jpg"),
    'place': const NetworkImage("https://i.ibb.co/2KxM8W1/s.jpg")
  },
  {
    'id': 'CS3',
    'name': 'RAI RAI KEN',
    'type': "Chicken Soup",
    'price': 200,
    'location': '3rd Level Ayala Center Cebu 6000 Cebu City 6000 Cebu City',
    'calorie': 405,
    'logo': const NetworkImage("https://i.ibb.co/0J9P6Zk/as.jpg"),
    'image':
        const NetworkImage("https://i.ibb.co/7SFcy07/Chicken-Rice-Soup.jpg"),
    'place': const NetworkImage(" https://i.ibb.co/SRdp0Pb/ls.jpg")
  },

  //chicken nsal
  {
    'id': 'CI1',
    'name': 'Chooks-to-Go',
    'type': "Chicken Soup",
    'price': 200,
    'location': 'J Centre Mall, Tipolo, Mandaue City, Mandaue City',
    'calorie': 405,
    'logo': const NetworkImage("https://i.ibb.co/NnWtwy6/Gg-vBMY6.jpg"),
    'image': const NetworkImage("https://i.ibb.co/kHzq1gm/as.jpg"),
    'place': const NetworkImage(
        "https://i.ibb.co/mH4W2Kh/3be69ba157d2229475c14cd2b17e50d5-featured-v2.webp")
  },
];

//Recipe List
List<Map<String, dynamic>> reci = [
  //Pork Adobo
  {
    'type': "Pork Adobo", 'name': "Pork Adobo", 'auth': 'Vanjo Moreno',
    'time': '1 hour 10 minutes', 'cal': '211kcal',
    'image': 'https://i.ibb.co/KwsjpTG/Pork-Adobo.jpg',
    //https://panlasangpinoy.com/filipino-food-pork-adobo-recipe/
  },
  {
    'type': "Pork Adobo", 'name': "Pork Adobo", 'auth': 'Liza Agbanlog',
    'time': '1 hour 10 minutes', 'cal': '239.93 kcal',
    'image': 'https://i.ibb.co/ynFvyhK/Pork-Adobo-2-jpg.webp',
    //https://salu-salo.com/pork-adobo/
  },
  {
    'type': "Pork Adobo", 'name': "Pork Adobo", 'auth': 'June Xie',
    'time': '2 hrs', 'cal': '250 kcal',
    'image': 'https://i.ibb.co/QYpbXr4/pork-adobo-1-jpg-1654712703.jpg',
    //https://www.delish.com/cooking/recipe-ideas/a40119787/pork-adobo-recipe/
  },
  {
    'type': "Pork Adobo", 'name': "Pork Adobo", 'auth': 'BEBS',
    'time': '1 hr 15 mins', 'cal': '220 kcal',
    'image': 'https://i.ibb.co/bLCgQHM/pork-adobo.jpg',
    //https://www.foxyfolksy.com/pork-adobo-recipe/
  },
  {
    'type': "Pork Adobo", 'name': "Pork Adobo", 'auth': 'Pilipinas Recipe',
    'time': '45 mins', 'cal': '200 kcal',
    'image': 'https://i.ibb.co/VLD6JmB/Adobong-Baboy-Recipe.jpg',
    //https://www.foodnetwork.com/recipes/food-network-kitchen/pork-belly-adobo-3362407
  },

  {
    'type': "Pork Adobo", 'name': "Pork Adobo", 'auth': 'Maryanne Cabrera',
    'time': '40 MINUTES', 'cal': '193kcal',
    'image': 'https://i.ibb.co/71bLC87/pork-adobo-1-800x450.jpg',
    //https://www.lovefilipinofood.com/pork-adobo/
  },

  {
    'type': "Pork Adobo", 'name': "Pork Adobo", 'auth': 'Lalaine Manalo',
    'time': ' 1 hr 15 mins', 'cal': '193kcal',
    'image': 'https://i.ibb.co/60SpQ53/filipino-pork-adobo-5-730x1095.jpg',
    //https://www.kawalingpinoy.com/pork-adobo/
  },

  //pork chop
  {
    'type': "Pork chop", 'name': 'Baked Pork Chops', 'auth': 'Food Network',
    'time': ' 40 min', 'cal': '193kcal',
    'image': 'https://i.ibb.co/Yp0y0jq/1487435385846.jpg',
    //https://www.foodnetwork.com/recipes/food-network-kitchen/baked-pork-chop-3631185
  },
  {
    'type': "Pork chop", 'name': 'Breaded Pork Chops', 'auth': 'Food Network',
    'time': ' 50 min', 'cal': '220kcal',
    'image': 'https://i.ibb.co/RQ50R2y/1389218639113.jpg',
    //https://www.foodnetwork.com/recipes/food-network-kitchen/breaded-pork-chops-with-warm-apple-cabbage-slaw-3362216
  },
  {
    'type': "Pork chop", 'name': 'Ranch Pork Chop ', 'auth': 'REE DRUMMOND',
    'time': ' 50 min', 'cal': '220kcal',
    'image': 'https://i.ibb.co/xgfzYY7/1534272447915.jpg',
    //https://www.foodnetwork.com/recipes/ree-drummond/ranch-pork-chop-sheet-pan-supper-5399499
  },
  {
    'type': "Pork chop", 'name': 'Grilled Pork Chops ',
    'auth': 'SUNNY ANDERSON',
    'time': ' 1 hr 15 min', 'cal': '220kcal',
    'image': 'https://i.ibb.co/8rG1tzS/1393206943617.jpg',
    //https://www.foodnetwork.com/recipes/sunny-anderson/easy-grilled-pork-chops-recipe-2106547
  },
  {
    'type': "Pork chop", 'name': 'Pan Fried Pork Chops',
    'auth': ' REE DRUMMOND',
    'time': ' 25 min', 'cal': '220kcal',
    'image': 'https://i.ibb.co/mDXd8w8/1384789067362.jpg',
    //https://www.foodnetwork.com/recipes/ree-drummond/pan-fried-pork-chops-recipe-1989074
  },
  {
    'type': "Pork chop", 'name': 'Lighter Fried Pork Chops',
    'auth': ' REE DRUMMOND',
    'time': ' 16 min', 'cal': '200kcal',
    'image': 'https://i.ibb.co/G5HVRxP/as.jpg',
    //https://www.foodnetwork.com/recipes/ree-drummond/lighter-fried-pork-chop-3588765
  },

  //grilled
  {
    'type': "Grilled Pork", 'name': 'Grilled Pork Tenderloins',
    'auth': ' Betsy Carrington',
    'time': ' 30 min', 'cal': '196kcal',
    'image': 'https://i.ibb.co/McXFdm6/exps23008-FM153592-B03-10-4b-9.jpg',
    //https://www.tasteofhome.com/recipes/grilled-pork-tenderloins/
  },
  {
    'type': "Grilled Pork", 'name': 'Potluck Spareribs',
    'auth': ' Sheri Kirkman',
    'time': ' 2hrs', 'cal': '196kcal',
    'image': 'https://i.ibb.co/McXFdm6/exps23008-FM153592-B03-10-4b-9.jpg',
    //https://www.tasteofhome.com/recipes/potluck-spareribs/
  },
  {
    'type': "Grilled Pork", 'name': 'Greek Pork Chops',
    'auth': ' Geri Lipczynski',
    'time': ' 25 min', 'cal': '196kcal',
    'image':
        'https://i.ibb.co/nc7s2VF/Greek-Pork-Chops-EXPS-SDJJ17-30883-C02-16-5b-3.jpg',
    //https://www.tasteofhome.com/recipes/greek-pork-chops/
  },
  {
    'type': "Grilled Pork", 'name': 'Grilled Pork Tenderloins',
    'auth': 'Steve Ehrhart',
    'time': ' 30 min', 'cal': '196kcal',
    'image':
        'https://i.ibb.co/Xb5FFtQ/Flavorful-Grilled-Pork-Tenderloin-EXPS-SDJJ17-7259-C02-15-2b.jpg',
    //https://www.tasteofhome.com/collection/top-10-grilled-pork-recipes/
  },
  {
    'type': "Grilled Pork", 'name': 'Provolone-Stuffed Pork Chops',
    'auth': 'Barbara Pletzke',
    'time': ' 30 min', 'cal': '196kcal',
    'image':
        'https://i.ibb.co/r5LVrNY/Provolone-Stuffed-Pork-Chops-with-Tarragon-Vinaigrette-exps84067-TH2379797-A11-29-6b-C-RMS-3.jpg',
    //https://www.tasteofhome.com/recipes/flavorful-grilled-pork-tenderloin/
  },
  {
    'type': "Grilled Pork", 'name': 'Ultimate Grilled Pork Chops',
    'auth': 'Matthew Hass',
    'time': ' 30 min', 'cal': '196kcal',
    'image':
        'https://i.ibb.co/LJfZvYv/Ultimate-Grilled-Pork-Chops-EXPS-GHTAM17-188376-C05-10-9b-15.jpg',
    //https://www.tasteofhome.com/recipes/flavorful-grilled-pork-tenderloin/
  },

  //fillet
  {
    'type': 'Fish Fillet', 'name': 'Parmesan Crusted Baked Fish',
    'auth': 'Diana Rattray',
    'time': '45 mins', 'cal': '180kcal',
    'image':
        'https://i.ibb.co/W6Shdq5/parmesan-baked-fish-3058409-hero-01-5c82869a46e0fb00017b309b.webp',
    //https://www.thespruceeats.com/parmesan-baked-fish-3058409
  },

  {
    'type': 'Fish Fillet', 'name': 'Japanese Simmered Fish', 'auth': 'judy Ung',
    'time': '40 mins', 'cal': '180kcal',
    'image':
        'https://i.ibb.co/W2tSWdL/japanese-simmering-sauce-for-fish-sakana-no-nitsuke-2030879-hero-01-86c88876daf046d5957ecf1434a92de6.webp',
    //https://www.thespruceeats.com/japanese-simmering-sauce-for-fish-sakana-no-nitsuke-2030879
  },
  {
    'type': 'Fish Fillet', 'name': 'Baked Halibut With Parmesan Crumb Topping',
    'auth': 'Diana Rattray',
    'time': '22 mins', 'cal': '180kcal',
    'image':
        'https://i.ibb.co/tHSBDwK/baked-halibut-butter-parmesan-topping-3057312-10-preview-5b041dd70e23d9003792d9b6.webp',
    //https://www.thespruceeats.com/baked-halibut-butter-parmesan-topping-3057312
  },
  {
    'type': 'Fish Fillet', 'name': 'Grilled Sea Bass With Garlicg',
    'auth': 'Derrick Riches',
    'time': '40 mins', 'cal': '180kcal',
    'image':
        'https://i.ibb.co/6tvbxzP/grilled-sea-bass-with-garlic-butter-recipe-334370-hero-01-c4867bcfab4847c6b16d315ff4e113bc.webp',
    //https://www.thespruceeats.com/grilled-sea-bass-with-garlic-butter-recipe-334370
  },
  {
    'type': 'Fish Fillet', 'name': 'Fish Pakora', 'auth': 'Petrina Verma Sarka',
    'time': '71 mins', 'cal': '180kcal',
    'image':
        'https://i.ibb.co/Z1R8hrH/fish-pakora-recipe-1957611-hero-01-48677a8d10564caa9be5d226ed69012e.webp',
    //https://www.thespruceeats.com/fish-pakora-recipe-1957611
  },

  //soupf
  {
    'type': 'Fish Soup', 'name': 'Cioppino', 'auth': 'Star Pooley ',
    'time': '50 mins', 'cal': '318kcal',
    'image':
        'https://i.ibb.co/HVxmV8y/12816-cioppino-Allrecipes-Magazine-0aa0a97da5bd45bfb55ed5f5b893e837.webp',
    //read://https_www.allrecipes.com/?url=https%3A%2F%2Fwww.allrecipes.com%2Frecipe%2F12816%2Fcioppino%2F
  },
  {
    'type': 'Fish Soup', 'name': 'FISH SOUP', 'auth': ' Izzy ',
    'time': '45 mins', 'cal': '318kcal',
    'image': 'https://i.ibb.co/SvzDNrJ/Fish-Soup-03-1.jpg',
    //https://izzycooking.com/fish-soup/
  },

  //Veg soup
  {
    'type': 'Veg Soup', 'name': 'Cold Cream of Green Pea Soup ',
    'auth': 'Prem Kumar Pogakula',
    'time': '50 mins', 'cal': '118kcal',
    'image': 'https://i.ibb.co/5FRkFvh/pea-mint-soup.jpg',
    //https://food.ndtv.com/recipe-cold-cream-of-green-pea-soup-379131
  },
  {
    'type': 'Veg Soup', 'name': 'Radish Soup ', 'auth': 'NDTV Food',
    'time': '1hr 20 mins', 'cal': '118kcal',
    'image': 'https://i.ibb.co/vPtvcH9/haggq8nc-soup-625x300-31-October-18.jpg',
    //https://food.ndtv.com/recipe-radish-soup-with-tofu-miso-cream-148965
  },
  {
    'type': 'Veg Soup', 'name': 'Turnip and Zucchini Soup', 'auth': 'NDTV Food',
    'time': '40 mins', 'cal': '118kcal',
    'image': 'https://i.ibb.co/hyvzJW9/fim41u6o-soup-625x300-23-October-18.jpg',
    //https://food.ndtv.com/recipe-turnip-and-zucchini-soup-339997
  },
  {
    'type': 'Veg Soup', 'name': 'Broccoli and Cheddar Soup',
    'auth': 'Arjun Gupta',
    'time': '40 mins', 'cal': '118kcal',
    'image': 'https://i.ibb.co/C6k356F/soup-620x300-81517994429.jpg',
    //https://food.ndtv.com/recipe-broccoli-and-cheddar-soup-351908
  },
  {
    'type': 'Veg Soup', 'name': 'Vegetable Manchow Soup', 'auth': 'Niru Gupta',
    'time': '35 mins', 'cal': '118kcal',
    'image':
        'https://i.ibb.co/QMKY8wR/ae7d9ct-manchow-soup-640x480-12-September-20.jpg',
    //https://food.ndtv.com/recipe-vegetable-manchow-soup-chinese-soup-1-531478
  },
  {
    'type': 'Veg Soup', 'name': 'Utan Bisaya', 'auth': 'IDGE MENDIOLA ',
    'time': '35 mins', 'cal': '118kcal',
    'image': 'https://i.ibb.co/qBcKWFt/as.jpg',
    //https://www.yummy.ph/recipe/utan-bisaya-recipe-a157-20191220
  },
  {
    'type': 'Veg Soup', 'name': 'Hearty Vegetable Soup',
    'auth': 'Janice Steinmetz ',
    'time': '1hr 20 mins', 'cal': '118kcal',
    'image':
        'https://i.ibb.co/JddPBKD/moroccan-lentil-sweet-potato-soup-8-500x500.jpg',
    //https://www.tasteofhome.com/recipes/hearty-vegetable-soup/
  },
  {
    'type': 'Veg Soup', 'name': 'Healing Cabbage Soup', 'auth': 'JGCASE ',
    'time': '50 mins', 'cal': '118kcal',
    'image':
        'https://i.ibb.co/yQ63fd6/82923-healing-cabbage-soup-ddmfs-4x3-0120-2847bb9e35504c658a6d677199db0c56.webp',
    //https://www.allrecipes.com/recipe/82923/healing-cabbage-soup/
  },

  //veg salad
  {
    'type': 'Veg Salad', 'name': 'Carrot Salad with Black Grape',
    'auth': 'Preah Narang ',
    'time': '25 mins', 'cal': '118kcal',
    'image': 'https://i.ibb.co/5kC3LrC/carrot-salad-620x350-51517485756.jpg',
    //https://food.ndtv.com/recipe-carrot-salad-with-black-grape-dressing-344667
  },
  {
    'type': 'Veg Salad', 'name': 'Carrot Salad with Black Grape',
    'auth': 'Preah Narang ',
    'time': '25 mins', 'cal': '118kcal',
    'image': 'https://i.ibb.co/5kC3LrC/carrot-salad-620x350-51517485756.jpg',
    //https://food.ndtv.com/recipe-carrot-salad-with-black-grape-dressing-344667
  },
  {
    'type': 'Veg Salad', 'name': 'Barley Salad Recipe', 'auth': 'NDTV Food ',
    'time': '30 mins', 'cal': '118kcal',
    'image':
        'https://i.ibb.co/pj5BxTM/jdd7l6a8-pav-bhaji-625x300-22-October-18.jpg',
    //https://food.ndtv.com/recipe-carrot-salad-with-black-grape-dressing-344667
  },
  {
    'type': 'Veg Salad', 'name': 'Green Bean Salad with Egg Topping',
    'auth': 'NDTV Food ',
    'time': '25 mins', 'cal': '118kcal',
    'image':
        'https://i.ibb.co/58tT1x4/85t6l16g-pav-bhaji-625x300-22-October-18.jpg',
    //https://food.ndtv.com/recipe-green-bean-salad-with-egg-topping-98992
  },
  {
    'type': 'Veg Salad', 'name': ' Leafy Salad with Walnuts',
    'auth': 'NDTV Food ',
    'time': '25 mins', 'cal': '118kcal',
    'image': 'https://i.ibb.co/DkDKqbx/salad-620x330-61525846627.jpg',
    //https://food.ndtv.com/recipe-leafy-salad-with-walnuts-106702
  },
  {
    'type': 'Veg Salad', 'name': ' Crunchy Ribbon Salad ', 'auth': 'NDTV Food ',
    'time': '25 mins', 'cal': '118kcal',
    'image': 'https://i.ibb.co/M1FvPrL/crunchy-ribbon-00.jpg',
    //https://food.ndtv.com/recipe-crunchy-ribbon-salad-359284
  },

  //chicken inasal
  {
    'type': 'Chicken Inasal', 'name': ' Chicken Inasal ',
    'auth': 'Lalaine Manalo ',
    'time': '50 mins', 'cal': '218kcal',
    'image': 'https://i.ibb.co/yX2QyjZ/authentic-chicken-inasal-9-730x973.jpg',
    //https://www.kawalingpinoy.com/chicken-inasal/
  },
  {
    'type': 'Chicken Inasal', 'name': ' Chicken Inasal ', 'auth': 'BEBS ',
    'time': '35 mins', 'cal': '218kcal',
    'image': 'https://i.ibb.co/rtcSrGZ/Chicken-Inasal-recipe-1.jpg',
    //https://www.foxyfolksy.com/chicken-inasal-filipino-barbecue-chicken/
  },
  {
    'type': 'Chicken Inasal', 'name': ' Chicken Inasal ',
    'auth': 'TOM CUNANAN ',
    'time': '35 mins', 'cal': '218kcal',
    'image': 'https://i.ibb.co/7z9cv8v/chicken-inasal-and-chile-vinegar.jpg',
    //https://www.bonappetit.com/recipe/chicken-inasal
  },

  // chiken soup
  {
    'type': 'Chicken Soup', 'name': ' Chicken Veggie Soup ',
    'auth': 'Amy Cheatham ',
    'time': '30 mins', 'cal': '218kcal',
    'image':
        'https://i.ibb.co/WBmq1LF/Chicken-Veggie-Soup-EXPS-SCBZ1806-41334-E06-28-4b-6.jpg',
    //https://www.tasteofhome.com/recipes/chicken-veggie-soup/
  },
  {
    'type': 'Chicken Soup', 'name': ' Grandma’s Chicken ‘n’ Dumpling Soup',
    'auth': 'Paulette Balda',
    'time': '30 mins', 'cal': '218kcal',
    'image': 'https://i.ibb.co/w6H3FQg/exps5165-HWS2321910-A06-082b-WEB-2.jpg',
    //https://www.tasteofhome.com/recipes/grandma-s-chicken-n-dumpling-soup/
  },
  {
    'type': 'Chicken Soup', 'name': 'Mexican Chicken Corn Chowder',
    'auth': 'Susan Garoutte',
    'time': '30 mins', 'cal': '218kcal',
    'image':
        'https://i.ibb.co/HFnCBvN/Mexican-Chicken-Corn-Chowder-EXPS-SSBZ18-2826-B04-10-3b-2.jpg',
    //https://www.tasteofhome.com/recipes/mexican-chicken-corn-chowder/
  },
  {
    'type': 'Chicken Soup', 'name': 'Creamy Chicken Rice Soup',
    'auth': 'Janice Mitchell',
    'time': '30 mins', 'cal': '318kcal',
    'image': 'https://i.ibb.co/WfzfBrd/OIP.jpg',
    //https://www.tasteofhome.com/recipes/creamy-chicken-rice-soup/
  },
  {
    'type': 'Chicken Soup', 'name': 'Asian Chicken Noodle Soup',
    'auth': 'Noelle Myers',
    'time': '40 mins', 'cal': '318kcal',
    'image':
        'https://i.ibb.co/pXkHG9V/Asian-Chicken-Noodle-Soup-EXPS-SSMZ20-49615-E10-08-6b-3.jpg',
    //https://www.tasteofhome.com/recipes/asian-chicken-noodle-soup/
  },
  {
    'type': 'Chicken Soup', 'name': 'Creamy Chicken Gnocchi Soup',
    'auth': 'Jaclynn Robinson',
    'time': '40 mins', 'cal': '318kcal',
    'image':
        'https://i.ibb.co/wLyhqbt/Creamy-Chicken-Gnocchi-Soup-EXPS-SSMZ18-55269-D03-09-2b-2.jpg',
    //https://www.tasteofhome.com/recipes/creamy-chicken-gnocchi-soup/
  },

  //beef soup
  {
    'type': 'Beef Soup', 'name': 'Hearty Beef Soup', 'auth': 'Marcia Severson',
    'time': '1hr 40 mins', 'cal': '318kcal',
    'image': 'https://i.ibb.co/12Ts7NF/th-id-OSK.jpg',
    //https://www.tasteofhome.com/recipes/hearty-beef-soup/
  },
  {
    'type': 'Beef Soup', 'name': 'Classic Beef Stew', 'auth': 'Betty Crocker',
    'time': '1hr 40 mins', 'cal': '318kcal',
    'image':
        'https://i.ibb.co/gdwRJKN/c7f2c529-02b9-4684-b271-c34f170aad4d.jpg',
    //https://www.tasteofhome.com/recipes/hearty-beef-soup/
  },
  {
    'type': 'Beef Soup', 'name': 'Bulalo', 'auth': 'Ed Joven',
    'time': '1hr 40 mins', 'cal': '318kcal',
    'image':
        'https://i.ibb.co/gdwRJKN/c7f2c529-02b9-4684-b271-c34f170aad4d.jpg',
    //https://www.pinoyrecipe.net/filipino-beef-bulalo-recipe-beef-bone-marrow-soup/
  },
  {
    'type': 'Beef Soup', 'name': 'Bulalo', 'auth': 'Ed Joven',
    'time': '1hr 40 mins', 'cal': '318kcal',
    'image':
        'https://i.ibb.co/gdwRJKN/c7f2c529-02b9-4684-b271-c34f170aad4d.jpg',
    //https://www.pinoyrecipe.net/filipino-beef-bulalo-recipe-beef-bone-marrow-soup/
  },
  {
    'type': 'Beef Soup', 'name': 'Sinigang na Baka', 'auth': 'Ed Joven',
    'time': '1hr 40 mins', 'cal': '318kcal',
    'image':
        'https://i.ibb.co/pvjFhP4/Getty-Images-480939965-sinigan-na-baka-photo-by-getty-images-2000-932ed0c6d7084f1380f2d849ec92d50f.webp',
    //https://www.pinoyrecipe.net/filipino-beef-bulalo-recipe-beef-bone-marrow-soup/
  },

  //mush room
  {
    'type': 'Beef Soup', 'name': ' Mushroom Soup', 'auth': 'Ashok Bijalwan',
    'time': '1hr 40 mins', 'cal': '318kcal',
    'image':
        'https://i.ibb.co/pvjFhP4/Getty-Images-480939965-sinigan-na-baka-photo-by-getty-images-2000-932ed0c6d7084f1380f2d849ec92d50f.webp',
    //https://www.pinoyrecipe.net/filipino-beef-bulalo-recipe-beef-bone-marrow-soup/
  },
  {
    'type': 'Beef Soup', 'name': '  Mushroom Soup', 'auth': 'Durgesh Tyagin',
    'time': '1hr 25 mins', 'cal': '318kcal',
    'image': 'https://i.ibb.co/gZFWyYD/fv912fh-soup-625x300-22-January-21.jpg',
    //https://food.ndtv.com/lists/10-best-vegetable-soup-recipes-1456682
  },

  //Seafoods
  {
    'type': 'Seafoods', 'name': '  Greaked  Soup', 'auth': 'Molly Seidel',
    'time': '45 mins', 'cal': '318kcal',
    'image': 'https://i.ibb.co/4N5LvHN/OIP.jpg',
    //https://www.tasteofhome.com/recipes/greek-shrimp-orzo/
  },
  {
    'type': '"Seafoods', 'name': '  Greek Shrimp Orzo', 'auth': 'Molly Seidel',
    'time': '45 mins', 'cal': '318kcal',
    'image':
        'https://i.ibb.co/mhpGwhm/Greek-Shrimp-Orzo-EXPS-SCMZ20-117626-B01-17-7b.jpg',
    //https://www.tasteofhome.com/recipes/greek-shrimp-orzo/
  },
  {
    'type': '"Seafoods', 'name': '  Shrimp and Octopus Soup',
    'auth': 'SCOOBYLADY',
    'time': '45 mins', 'cal': '318kcal',
    'image':
        'https://i.ibb.co/4MpDHjV/5026184-797229f5837e4f4db4202d5dbea8bd30.webp',
    //https://www.allrecipes.com/recipe/55856/shrimp-and-octopus-soup-caldo-de-camaron-y-pulpo/
  },

  //fS
  {
    'type': '"Fruit Salad', 'name': ' Perfect Summer Fruit Salad',
    'auth': 'Nicole Graham Holley ',
    'time': '25 mins', 'cal': '318kcal',
    'image':
        'https://i.ibb.co/tYPBP7c/image-url-https-public-assets-meredithcorp-io-6e71582561acb8d131eec829b05d657f-1652618346-FC94-C8-F1.jpg',
    //https://www.allrecipes.com/recipe/214947/perfect-summer-fruit-salad/
  },
  {
    'type': '"Fruit Salad', 'name': 'Tomato Watermelon Salad',
    'auth': ' 1insa ',
    'time': '25 mins', 'cal': '318kcal',
    'image':
        'https://i.ibb.co/TBsjc1r/1020663-f4488803c5c745ed967140f051d0adb3.webp',
    //https://www.allrecipes.com/recipe/228277/tomato-watermelon-salad/
  },
  {
    'type': '"Fruit Salad', 'name': 'Berry Fruit Salad', 'auth': ' faulknor  ',
    'time': '25 mins', 'cal': '318kcal',
    'image':
        'https://i.ibb.co/nQFVr0d/9155453-1bcd13cd17474504baaea2c3674c40df.webp',
    //https://www.allrecipes.com/recipe/215472/berry-fruit-salad/
  },
  {
    'type': '"Fruits', 'name': 'Berry Fruit Salad', 'auth': ' Sonja and Alex ',
    'time': '15 mins', 'cal': '318kcal',
    'image': 'https://i.ibb.co/XzDj8fd/Strawberry-Smoothie-002.jpg',
    //https://www.acouplecooks.com/perfect-strawberry-smoothie/
  },
  {
    'type': '"Fruits', 'name': 'Blueberry Smoothie', 'auth': ' Sonja and Alex ',
    'time': '15 mins', 'cal': '318kcal',
    'image': 'https://i.ibb.co/Hn8WNhS/Blueberry-Smoothie-008.jpg',
    //https://www.acouplecooks.com/perfect-strawberry-smoothie/
  },
  {
    'type': '"Fruits', 'name': 'Perfect Banana Smoothie',
    'auth': ' Sonja and Alex ',
    'time': '15 mins', 'cal': '318kcal',
    'image': 'https://i.ibb.co/31mCJQf/Banana-Smoothie-003.jpg',
    //https://www.acouplecooks.com/perfect-strawberry-smoothie/
  },
];

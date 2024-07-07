import 'package:flutter/material.dart';
import 'package:navigation/model/categories.dart';
import 'package:navigation/model/meal.dart';

const availableCategories = [
  Category(
    id: 'c1',
    title: 'İtalyan',
    color: Colors.purple,
  ),
  Category(
    id: 'c2',
    title: 'Hızlı ve Kolay',
    color: Colors.red,
  ),
  Category(
    id: 'c3',
    title: 'Hamburgerler',
    color: Colors.orange,
  ),
  Category(
    id: 'c4',
    title: 'Alman',
    color: Colors.amber,
  ),
  Category(
    id: 'c5',
    title: 'Hafif ve Leziz',
    color: Colors.blue,
  ),
  Category(
    id: 'c6',
    title: 'Egzotik',
    color: Colors.green,
  ),
  Category(
    id: 'c7',
    title: 'Kahvaltı',
    color: Colors.lightBlue,
  ),
  Category(
    id: 'c8',
    title: 'Asya',
    color: Colors.lightGreen,
  ),
  Category(
    id: 'c9',
    title: 'Fransız',
    color: Colors.pink,
  ),
  Category(
    id: 'c10',
    title: 'Yaz',
    color: Colors.teal,
  ),
];

const dummyMeals = [
  Meal(
    id: 'm1',
    categories: [
      'c1',
      'c2',
    ],
    title: 'Domates Soslu Spagetti',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
    duration: 20,
    ingredients: [
      '4 Domates',
      '1 Yemek Kaşığı Zeytinyağı',
      '1 Soğan',
      '250g Spagetti',
      'Baharatlar',
      'Peynir (isteğe bağlı)'
    ],
    steps: [
      'Domatesleri ve soğanı küçük parçalara kesin.',
      'Biraz su kaynatın - kaynadığında tuz ekleyin.',
      'Spagettiyi kaynar suya koyun - yaklaşık 10 ila 12 dakika içinde hazır olmalı.',
      'Bu arada, biraz zeytinyağı ısıtın ve doğranmış soğanı ekleyin.',
      '2 dakika sonra, domates parçalarını, tuz, biber ve diğer baharatlarınızı ekleyin.',
      'Sos spagetti ile birlikte hazır olacak.',
      'Hazır yemeğin üzerine biraz peynir eklemekten çekinmeyin.'
    ],
    isGlutenFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm2',
    categories: [
      'c2',
    ],
    title: 'Hawaii Tostu',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',
    duration: 10,
    ingredients: [
      '1 Dilim Beyaz Ekmek',
      '1 Dilim Jambon',
      '1 Dilim Ananas',
      '1-2 Dilim Peynir',
      'Tereyağı'
    ],
    steps: [
      'Beyaz ekmeğin bir tarafını tereyağı ile yağlayın',
      'Jambon, ananas ve peyniri beyaz ekmeğin üzerine dizin',
      'Tostu 200°C fırında yaklaşık 10 dakika pişirin'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm3',
    categories: [
      'c2',
      'c3',
    ],
    title: 'Klasik Hamburger',
    affordability: Affordability.pricey,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2014/10/23/18/05/burger-500054_1280.jpg',
    duration: 45,
    ingredients: [
      '300g Dana Kıyma',
      '1 Domates',
      '1 Salatalık',
      '1 Soğan',
      'Ketçap',
      '2 Hamburger Ekmeği'
    ],
    steps: [
      '2 köfte yapın',
      'Köfteleri her iki tarafını yaklaşık 4 dakika kızartın',
      'Ekmeğin her iki tarafını da yaklaşık 1 dakika kızartın',
      'Ekmeğe ketçap sürün',
      'Hamburgeri domates, salatalık ve soğan ile servis edin'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm4',
    categories: [
      'c4',
    ],
    title: 'Viyana Şnitzel',
    affordability: Affordability.luxurious,
    complexity: Complexity.challenging,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/03/31/19/29/schnitzel-3279045_1280.jpg',
    duration: 60,
    ingredients: [
      '8 Dana Bonfile',
      '4 Yumurta',
      '200g Ekmek Kırıntısı',
      '100g Un',
      '300ml Tereyağı',
      '100g Bitkisel Yağ',
      'Tuz',
      'Limon Dilimleri'
    ],
    steps: [
      'Dana etini yaklaşık 2–4mm inceltin ve her iki tarafını tuzlayın.',
      'Düz bir tabağa yumurtaları çatalla karıştırın.',
      'Bonfileleri hafifçe una bulayın, ardından yumurtaya batırın ve son olarak ekmek kırıntılarına bulayın.',
      'Büyük bir tavada tereyağı ve yağı ısıtın (yağın çok sıcak olmasına izin verin) ve şnitzelleri her iki tarafı altın rengi olana kadar kızartın.',
      'Tavayı düzenli olarak sallayın, böylece şnitzeller yağla çevrili olsun ve kaplama kabarık hale gelsin.',
      'Şnitzelleri alın ve mutfak kağıdında süzün. Kalan yağda maydanozu kızartın ve süzün.',
      'Şnitzelleri ısıtılmış bir tabağa yerleştirin ve maydanoz ve limon dilimleri ile süsleyerek servis yapın.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm5',
    categories: [
      'c2',
      'c5',
      'c10',
    ],
    title: 'Füme Somonlu Salata',
    affordability: Affordability.luxurious,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2016/10/25/13/29/smoked-salmon-salad-1768890_1280.jpg',
    duration: 15,
    ingredients: [
      'Roka',
      'Kuzu Kulağı',
      'Maydanoz',
      'Rezene',
      '200g Füme Somon',
      'Hardal',
      'Balsamik Sirke',
      'Zeytinyağı',
      'Tuz ve Karabiber'
    ],
    steps: [
      'Salata ve otları yıkayın ve doğrayın',
      'Somonu küp küp kesin',
      'Hardal, sirke ve zeytinyağı ile bir sos hazırlayın',
      'Salatayı hazırlayın',
      'Somon küplerini ve sosu ekleyin'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm6',
    categories: [
      'c6',
      'c10',
    ],
    title: 'Lezzetli Portakal Musu',
    affordability: Affordability.affordable,
    complexity: Complexity.hard,
    imageUrl:
        'https://cdn.pixabay.com/photo/2017/05/01/05/18/pastry-2274750_1280.jpg',
    duration: 240,
    ingredients: [
      '4 Yaprak Jelatin',
      '150ml Portakal Suyu',
      '80g Şeker',
      '300g Yoğurt',
      '200g Krema',
      'Portakal Kabuğu',
    ],
    steps: [
      'Jelatini bir tencerede eritin',
      'Portakal suyu ve şekeri ekleyin',
      'Tencereyi ocaktan alın',
      '2 yemek kaşığı yoğurt ekleyin',
      'Jelatini kalan yoğurtla karıştırın',
      'Her şeyi buzdolabında soğutun',
      'Kremayı çırpın ve portakal karışımına ekleyin',
      'En az 4 saat tekrar soğutun',
      'Portakal kabuğu ile servis edin',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm7',
    categories: [
      'c7',
    ],
    title: 'Krep',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/07/10/21/23/pancake-3529653_1280.jpg',
    duration: 20,
    ingredients: [
      '1 1/2 Su Bardağı Çok Amaçlı Un',
      '3 1/2 Çay Kaşığı Kabartma Tozu',
      '1 Çay Kaşığı Tuz',
      '1 Yemek Kaşığı Beyaz Şeker',
      '1 1/4 Su Bardağı Süt',
      '1 Yumurta',
      '3 Yemek Kaşığı Eritilmiş Tereyağı',
    ],
    steps: [
      'Büyük bir kapta, unu, kabartma tozunu, tuzu ve şekeri eleyin.',
      'Ortasında bir çukur açın ve sütü, yumurtayı ve eritilmiş tereyağını dökün; pürüzsüz olana kadar karıştırın.',
      'Orta yüksek ısıda hafif yağlanmış bir tava veya kızartma tavasını ısıtın.',
      'Her krep için yaklaşık 1/4 su bardağı hamur kullanarak hamuru tavaya dökün veya kepçeyle koyun. Her iki tarafını da kızartın ve sıcak servis yapın.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm8',
    categories: [
      'c8',
    ],
    title: 'Kremalı Hint Tavuk Körisi',
    affordability: Affordability.pricey,
    complexity: Complexity.challenging,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/06/18/16/05/indian-food-3482749_1280.jpg',
    duration: 35,
    ingredients: [
      '4 Tavuk Göğsü',
      '1 Soğan',
      '2 Diş Sarımsak',
      '1 Parça Zencefil',
      '4 Yemek Kaşığı Badem',
      '1 Çay Kaşığı Pul Biber',
      '500ml Hindistan Cevizi Sütü',
    ],
    steps: [
      'Tavuk göğsünü dilimleyin ve kızartın',
      'Soğan, sarımsak ve zencefili macun haline getirin ve her şeyi soteleyin',
      'Baharatları ekleyin ve karıştırarak kızartın',
      'Tavuk göğsünü + 250ml su ekleyin ve her şeyi 10 dakika pişirin',
      'Hindistan cevizi sütünü ekleyin',
      'Pirinç ile servis yapın'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm9',
    categories: [
      'c9',
    ],
    title: 'Çikolatalı Sufle',
    affordability: Affordability.affordable,
    complexity: Complexity.hard,
    imageUrl:
        'https://cdn.pixabay.com/photo/2014/08/07/21/07/souffle-412785_1280.jpg',
    duration: 45,
    ingredients: [
      '1 Çay Kaşığı Eritilmiş Tereyağı',
      '2 Yemek Kaşığı Beyaz Şeker',
      '2 Ons %70 Bitter Çikolata, parçalara ayrılmış',
      '1 Yemek Kaşığı Tereyağı',
      '1 Yemek Kaşığı Çok Amaçlı Un',
      '4 1/3 Yemek Kaşığı Soğuk Süt',
      '1 Tutam Tuz',
      '1 Tutam Pul Biber',
      '1 Büyük Yumurta Sarısı',
      '2 Büyük Yumurta Akı',
      '1 Tutam Tartarik Krem',
      '1 Yemek Kaşığı Beyaz Şeker',
    ],
    steps: [
      'Fırını 190°C ye ısıtın. Kenarlı bir fırın tepsisine parşömen kağıdı serin.',
      '2 sufle kabının altını ve kenarlarını 1 çay kaşığı eritilmiş tereyağı ile hafifçe yağlayın; alt ve kenarları tam olarak kaplayın.',
      '1 yemek kaşığı beyaz şeker ekleyin. Sufle kaplarını döndürerek şekeri tüm yüzeylere kaplayın.',
      'Çikolata parçalarını metal bir karıştırma kabına koyun.',
      'Kaseyi yaklaşık 3 su bardağı sıcak su içeren bir tencerenin üzerine düşük ısıda yerleştirin.',
      'Orta ateşte bir tavada 1 yemek kaşığı tereyağını eritin. Unu serpin. Un tereyağına karışana kadar ve karışım koyulaşana kadar çırpın.',
      'Soğuk sütü çırparak ekleyin ve karışım pürüzsüz ve koyulaşana kadar çırpın. Karışımı eritilmiş çikolata bulunan kaseye aktarın.',
      'Tuz ve pul biber ekleyin. İyice karıştırın. Yumurta sarısını ekleyin ve karıştırarak karışımı birleştirin.',
      'Çikolata sıcak kalması için kaseyi sıcak (kaynamayan) suyun üzerinde bırakın, bu sırada yumurta aklarını çırpın.',
      '2 yumurta akını bir karıştırma kabına koyun; tartarik krem ekleyin. Karışım kalınlaşmaya başlayana ve çırpma teli ile karıştırıldığında yaklaşık 1 saniye yüzeyde kalana kadar çırpın.',
      'Şekerin 1/3 ünü ekleyin ve çırpın. 15 saniye daha çırparak biraz daha şeker ekleyin.',
      'Kalan şekeri ekleyin ve çırpmaya devam edin. Karışım tıraş köpüğü kadar kalınlaşana ve yumuşak tepeler oluşturana kadar 3 ila 5 dakika çırpmaya devam edin.',
      'Yumurta aklarının biraz daha azını çikolataya ekleyin.',
      'Yumurta aklarının çikolataya tamamen karıştığından emin olana kadar karıştırın.',
      'Kalan yumurta aklarını ekleyin; bir spatula ile alttan kaldırarak nazikçe çikolataya karıştırın.',
      'Karıştırmayı yumurta akı kaybolduğunda durdurun. Karışımı hazırlanan 2 sufle kabına bölün. Sufle kaplarını hazırlanan fırın tepsisine yerleştirin.',
      'Önceden ısıtılmış fırında 12 ila 15 dakika pişirin, sufleler kabarana ve kenarlarının üzerine çıkana kadar pişirin.',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm10',
    categories: [
      'c2',
      'c5',
      'c10',
    ],
    title: 'Kiraz Domatesli Kuşkonmaz Salatası',
    affordability: Affordability.luxurious,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/04/09/18/26/asparagus-3304997_1280.jpg',
    duration: 30,
    ingredients: [
      'Beyaz ve Yeşil Kuşkonmaz',
      '30g Çam Fıstığı',
      '300g Kiraz Domates',
      'Salata',
      'Tuz, Karabiber ve Zeytinyağı'
    ],
    steps: [
      'Kuşkonmazı yıkayın, soyun ve kesin',
      'Tuzlu suda pişirin',
      'Kuşkonmazı tuz ve karabiberle tatlandırın',
      'Çam fıstıklarını kavurun',
      'Domatesleri ikiye bölün',
      'Kuşkonmaz, salata ve sos ile karıştırın',
      'Baget ekmeği ile servis yapın'
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
];
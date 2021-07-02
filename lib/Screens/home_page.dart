import 'package:flutter/material.dart';
import 'package:talabat/API/DBHelper.dart';
import 'package:talabat/Model/Product.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
  List<Product> list = [];
  List<Map<String, dynamic>> productData = [];
  DBHelper dbHelper = DBHelper();


  @override
  void initState() {
    super.initState();

      createObjects() {
        Product p01 = Product(
          //id: 1,
          pName:
          'Resident Evil Village Deluxe Edition, Capcom, PlayStation 5 [Physical]',
          price: 69.99,
          img: 'assets/images/game_1.jpeg',
          category: 'games',
          pDescription: '''
  Resident Evil Village Deluxe Edition includes the "Trauma Pack" with the following:
  Safe Room Music, Mr. Everywhere, Found Footage RE7 Filter, Max Difficulty, Save Device,
  Albert01 Chris, and The Tragedy of Ethan Winters.
  Experience survival horror like never before in Resident Evil Village.
  Elevate each desperate fight to survive by showcasing the most realistic and terrifying graphics to date.
  The all-new title is the eighth major installment in the storied Resident Evil franchise,
  which established the survival horror genre nearly 25 years ago.
  ''',
        );
        Product p02 = Product(
         // id: 2,
          pName: 'Sony PlayStation 5 Video Game Console',
          price: 1093.58,
          img: 'assets/images/game_2.jpeg',
          category: 'games',
          pDescription:
          '''
    Play Has No Limits™PlayStation®5 The PS5™console unleashes new gaming 
    possibilities that you never anticipated.
    Experience lightning fast loading with an ultra-high speed SSD, 
    deeper immersion with support for haptic feedback, adaptive triggers, 
    and 3D Audio*, and an all-new generation of incredible PlayStation® games. 
    ''',
        );
        Product p03 = Product(
          //id: 3,
          pName:
          'Sony PlayStation 4 1TB Slim Gaming Console',
          price: 413.97,
          img: 'assets/images/game_3.jpeg',
          category: 'games',
          pDescription: '''
    Includes a new slim 1TB PlayStation 4 system, a matching DualShock 4 Wireless Controller. Play online with your friends, get free games, save games online and more with PlayStation Plus membership (sold separately). All the greatest, games, TV, music and more. Connect with your friends to broadcast and celebrate your epic moments at the press of the Share button to Twitch, YouTube, Facebook and Twitter. Mount not included
  ''',
        );
        Product p04 = Product(
          //id: 4,
          pName:
          'Far Cry 6 PlayStation 4 Standard Edition with free upgrade to the digital PS5 version, Pre-order Bonus',
          price: 59.88,
          img: 'assets/images/game_4.jpeg',
          category: 'games',
          pDescription: '''
Pre-order now to get a deadly Discos Locos weapon and an outfit for Chorizo.
Upgrade to PlayStation 5 Version: Far Cry 6 PlayStation 4 game on Blu-Ray Disc must be kept inserted in a PlayStation 5 console to play the corresponding Far Cry 6 PlayStation 5 digital version at no additional cost, when available.
Requires a PlayStation 5, the game Blu-Ray Disc, a PlayStation Network registration, additional storage & Broadband internet connection. May incur bandwidth usage fees.
Welcome to Yara, a tropical paradise frozen in time. As the dictator of Yara, Anton Castillo is intent on restoring his nation back to its former glory by any means, with his son, Diego, following in his bloody footsteps. Their oppressive rule has ignited a revolution.
  ''',
        );
        Product p05 = Product(
          //id: 5,
          pName:
          'Returnal, Sony, Housemarque, Playstation 5, Physical Edition',
          price: 63.99,
          img: 'assets/images/game_5.jpeg',
          category: 'games',
          pDescription: '''

Break the cycle.
Through relentless roguelike gameplay, you'll discover that just as the planet changes with every cycle, so do the items at your disposal. Every loop offers new combinations, forcing you to push your boundaries and approach combat with a different strategy each time.
  ''',
        );
        Product p06 = Product(
         // id: 6,
          pName:
          'Refurbished Sony Playstation 3 PS3 500GB The Last of Us Bundle with Controller',
          price: 233.99,
          img: 'assets/images/game_6.jpeg',
          category: 'games',
          pDescription: '''
Fully tested, cleaned, and restored to factory settings. Works great! Includes 500GB PS3 Slim and "The Last of Us" game (Disc, original case, and cover art). Includes genuine Sony brand Dual Shock 3 controller, Mini USB, power, and HDMI cables. Console may have light scratching on the glossy panels. Original box and any downloaded materials are NOT included. Ships same business day!Refurbished Sony Playstation 3 PS3 500GB The Last of Us Bundle with Controller
  ''',
        );
        Product p07 = Product(
          //id: 7,
          pName:
          'Sony PlayStation Classic Console, Gray',
          price: 69.96,
          img: 'assets/images/game_7.jpeg',
          category: 'games',
          pDescription: '''
Introducing PlayStation® Classic A miniature recreation of the iconic PlayStation console, pre-loaded with 20 fan-favorite games along with two wired controllers for local multiplayer showdowns and a virtual memory card for vital game saves. PlayStation®Classic also features the same famous logo, button layout and outer packaging but this mini console is approximately 45% smaller than the original PlayStation® and includes a HDMI cable to connect directly to a TV.
  ''',
        );
        Product p08 = Product(
         // id: 8,
          pName:
          'Sony PlayStation 4 1TB Slim Days of Play Limited Edition Blue',
          price: 799.00,
          img: 'assets/images/game_8.jpeg',
          category: 'games',
          pDescription: '''

The Limited Edition Days of Play Blue PlayStation 4 system is complete with a 1TB hard drive and matching DUALSHOCK 4 wireless controller. Play incredible games, team up with friends online using PlayStation Plus1, watch live TV and movies, listen to your favorite music and more2. The possibilities are endless. Greatness Awaits.
  ''',
        );
        Product p09 = Product(
         // id: 9,
          pName:
          'Refurbished Sony PlayStation PS3 Slim 160GB Console',
          price: 229.89,
          img: 'assets/images/game_9.jpeg',
          category: 'games',
          pDescription: '''
Includes One Controller, AV Cable, HDMI Cable, Power Cable, 160GB Hard Drive, and System. No Original Box Included.Refurbished Sony PlayStation PS3 Slim 160GB Console
  ''',
        );
        Product p10 = Product(
         // id: 10,
          pName:
          'Bionik BNK-9007 Mantis Detachable On-Ear Headphones for PlayStation VR',
          price: 47.95,
          img: 'assets/images/game_10.jpeg',
          category: 'games',
          pDescription: '''
Take your virtual reality gaming to the next level with the bionik Mantis High Fidelity Detachable On-Ear Headphones for PlayStation VR, an innovative headset accessory that easily attaches to your PlayStation VR. The unique and revolutionary design makes for a seamlessly integrated experience. This patent pending design will immerse you in VR like no other.
  ''',
        );
        Product p11 = Product(
         // id: 11,
          pName:
          'PS4 Dualshock Dual Controller LED Charger Base',
          price: 17.98,
          img: 'assets/images/game_11.jpeg',
          category: 'games',
          pDescription: '''
TSV Dual Controller Charging Dock Station compatible with Sony PlayStation 4 PS4/PS4 Slim/PS4 Pro wireless controllers. Fast charging and securelykeep your controllers on gaming desk.
  ''',
        );
        Product p12 = Product(
         // id: 12,
          pName:
          'DualShock 4 Wireless Controller for PlayStation 4, Rose Gold',
          price: 69.95,
          img: 'assets/images/game_12.jpeg',
          category: 'games',
          pDescription: '''
Take control of the action with the Sony PlayStation 4 DualShock 4 Controller. It defines this generation of play, combining revolutionary features and comfort with intuitive, precision controls. The wireless design of the Sony PlayStation 4 controller allows for seamless connections with your PS4 game system, so you can get started playing right away. No wires mean no tangles and easy play wherever you are. The evolved analog sticks and trigger buttons allow for unparalleled accuracy with every move while innovative technologies such as the multi-touch, clickable touch pad, integrated light bar and internal speaker offer exciting new ways to experience and interact with your games. With the addition of the Share button, celebrate and upload your greatest gaming moments on PlayStation 4 with the touch of a button. This Sony PlayStation 4 DualShock 4 Controller is a good choice for owners of the console. Everything you need is at the touch of a button.
  ''',
        );
        Product p13 = Product(
         // id: 13,
          pName:
          'Sony \$50.00 PlayStation 4 Physical Gift Card',
          price: 50.00,
          img: 'assets/images/game_13.jpeg',
          category: 'games',
          pDescription: '''
    Sony PlayStation 4 Physical Gift Cards are the perfect gift of games to your friend or family member. You can purchase downloadable games, game add-ons, full-length movies, TV shows and more from the PlayStation Network. Choose from 80+ PlayStation Network exclusive downloadable games. Take advantage of a huge selection of HD full-length movies and your favorite TV shows for purchase or rental. Enhance your Blu-ray game experience through add-on content with more than 1,000 add-ons available now and more to come.Sony Playstation Network Card: \$50 Gift Card
  ''',
        );
        Product p14 = Product(
        //  id: 14,
          pName:
          'Sony \$100.00 PlayStation 4 Physical Gift Card',
          price: 100.00,
          img: 'assets/images/game_14.jpeg',
          category: 'games',
          pDescription: '''

Sony PlayStation 4 Physical Gift Cards are the perfect gift of games to your friend or family member. You can purchase downloadable games, game add-ons, full-length movies, TV shows and more from the PlayStation Network. Choose from 80+ PlayStation Network exclusive downloadable games. Take advantage of a huge selection of HD full-length movies and your favorite TV shows for purchase or rental. Enhance your Blu-ray game experience through add-on content with more than 1,000 add-ons available now and more to come.Sony PlayStation PS4 \$100 Gift Card
  ''',
        );
        Product p15 = Product(
         // id: 15,
          pName:
          'PlayStation Store \$20 Gift Card, Sony [Digital Download]',
          price: 20.00,
          img: 'assets/images/game_15.jpeg',
          category: 'games',
          pDescription: '''
    Show your favorite gamer how much you care with this PlayStation Store \$20 Gift Card. It gets delivered via email, so they can redeem it right away. This PlayStation Store gift card is redeemable for games. Use it to download expansion packs, purchase subscriptions to games or even buy music and movies.
If someone claims you should pay them in Walmart gift cards, please report it at  FTC Complaint Assistant. Read more at Gift Card Fraud Prevention
  ''',
        );
        Product p16 = Product(
        //  id: 16,
          pName:
          'Sony Playstation Network Card: \$10 Gift Card',
          price: 10.00,
          img: 'assets/images/game_16.jpeg',
          category: 'games',
          pDescription: '''
    Stay connected to the action with the Sony PlayStation Network Card \$10 Gift Card. It makes a fun choice for any avid gamer. A Sony PlayStation gift card can be used in the online store to make purchases towards new games. It can also be used to buy upgrades such as characters or accessories for in-game play. There are plenty of ways for a serious gamer to use this card. Let them get their head in the game with this gift.
  ''',
        );
        Product p17 = Product(
         // id: 17,
          pName:
          'Play Station VR Starter Bundle',
          price: 619.99,
          img: 'assets/images/game_17.jpeg',
          category: 'games',
          pDescription: '''
    Includes: VR headset, Processor unit, VR headset connection cable, HDMI cable, USB cable, Stereo headphones, AC power cord, AC adaptor, PlayStation VR Demo Disc, PlayStation Camera, 2 PlayStation Move motion controllers
Display: OLED 1920 X RGB X 1080,Screen Size: 5.7\",Refresh rate: 120 Hz, 90 Hz,Latency: Less than 18ms
Games Come First - With gamers in mind, PlayStation delivers a new world of unexpected gaming experiences through PlayStation VR.
Just Plug and Play - Getting into PlayStation VR couldn\'t be easier. Just plug the PlayStation VR headset and your PlayStation Camera into your PlayStation 4 system
  ''',
        );
        Product p18 = Product(
        //  id: 18,
          pName:
          'DualShock 4 Wireless Controller for PlayStation 4 - Red Camo',
          price: 75.99,
          img: 'assets/images/game_18.jpeg',
          category: 'games',
          pDescription: '''
    Take control of the action with the Sony PlayStation 4 DualShock 4 Controller. It defines this generation of play, combining revolutionary features and comfort with intuitive, precision controls. The wireless design of the Sony PlayStation 4 controller allows for seamless connections with your PS4 game system, so you can get started playing right away. No wires mean no tangles and easy play wherever you are. The evolved analog sticks and trigger buttons allow for unparalleled accuracy with every move while innovative technologies such as the multi-touch, clickable touch pad, integrated light bar and internal speaker offer exciting new ways to experience and interact with your games. With the addition of the Share button, celebrate and upload your greatest gaming moments on PlayStation 4 with the touch of a button. This Sony PlayStation 4 DualShock 4 Controller is a good choice for owners of the console. Everything you need is at the touch of a button.
  ''',
        );
        Product p19 = Product(
        //  id: 19,
          pName:
          'Stereo Wired Gaming Headsets Headphones with Mic for PS4 Sony PlayStation 4 / PC',
          price: 9.99,
          img: 'assets/images/game_19.jpeg',
          category: 'games',
          pDescription: '''
    We aim to show you accurate product information. Manufacturers, suppliers and others provide what you see here, and we have not verified it. See our disclaimer
Stereo Wired Gaming Headsets Headphones with Mic for PS4 Sony PlayStation 4 / PC Features 100% brand new. High quality microphone and ear piece. Lightweight design and adjustable boom microphone. Plugs directly into your controller. Volume control and mute switch. What's in the package One Headset With Microphone for PS4 Stereo Wired Gaming Headsets Headphones with Mic for PS4 Sony PlayStation 4 / PC
  ''',
        );
        Product p20 = Product(
         // id: 20,
          pName:
          'Sony Playstation 4 DualShock 4 Controller, Midnight Blue',
          price: 69.87,
          img: 'assets/images/game_20.jpeg',
          category: 'games',
          pDescription: '''
    Take control of the action with the Sony PlayStation 4 DualShock 4 Controller. It defines this generation of play, combining revolutionary features and comfort with intuitive, precision controls. The wireless design of the Sony PlayStation 4 controller allows for seamless connections with your PS4 game system, so you can get started playing right away. No wires mean no tangles and easy play wherever you are. The evolved analog sticks and trigger buttons allow for unparalleled accuracy with every move while innovative technologies such as the multi-touch, clickable touch pad, integrated light bar and internal speaker offer exciting new ways to experience and interact with your games. With the addition of the Share button, celebrate and upload your greatest gaming moments on PlayStation 4 with the touch of a button. This Sony PlayStation 4 DualShock 4 Controller is a good choice for owners of the console. Everything you need is at the touch of a button.
  ''',
        );
        /////////////////////////////////
        Product p21 = Product(
        //  id: 21,
          pName:
          'M&M\'S Milk Chocolate Candy Party Size - 38oz',
          price: 9.72,
          img: 'assets/images/food_21.jpeg',
          category: 'food',
          pDescription: '''
    Made with real milk chocolate and colorful candy shells, M&M’S Milk Chocolate Candies are a delicious classic and crowd favorite. Perfect for parties and celebrations of all kinds, this tasty treat is a great addition to candy buffets and party favor bags. Grab a bag for your next celebration, for the office, to bake with or to stock up your pantry. You’ll be glad to have M&M’S Milk Chocolate Candy on hand.
    ''',
        );
        Product p22 = Product(
         // id: 22,
          pName:
          '(12 Cans) Red Bull Energy Drink, 8.4 fl oz',
          price: 18.73,
          img: 'assets/images/food_22.jpeg',
          category: 'food',
          pDescription: '''
    Red Bull Energy Drink, 8.4 fl oz (12 pack) RED BULL GIVES YOU WINGS Inspired by functional drinks from the Far East, Dietrich Mateschitz founded Red Bull in the mid-1980s. He developed a new product and a unique marketing concept and launched Red Bull Energy Drink on April 1, 1987 in Austria.
    ''',
        );
        Product p23 = Product(
        //  id: 23,
          pName:
          '(18 Cans) Pepsi Zero Sugar Variety Pack, 12 fl oz',
          price: 11.50,
          img: 'assets/images/food_23.jpeg',
          category: 'food',
          pDescription: '''
    Pepsi Zero Sugar is the only soda with zero calories and maximum Pepsi taste! This variety pack includes Pepsi Zero Sugar and Pepsi Zero Sugar Mango flavors.
    ''',
        );
        Product p24 = Product(
         // id: 24,
          pName:
          'NESCAFE CLASICO Dark Roast Instant Coffee 7 oz. Jar',
          price: 5.22,
          img: 'assets/images/food_24.jpeg',
          category: 'food',
          pDescription: '''
    NESCAFÉ CLÁSICO Dark Roast delivers rich, bold flavor in every cup. Crafted with 100% real coffee, you can taste the quality instantly. We use only the highest quality, responsibly sourced Arabica and Robusta coffee beans and carefully roast them to capture each blend's full flavor and aroma. NESCAFÉ CLÁSICO instant coffee lets you savor a fresh cup of coffee, instantly.
    ''',
        );
        Product p25 = Product(
        //  id: 25,
          pName:
          'Nestle Coffee mate Hazelnut Powder Coffee Creamer 15 oz.',
          price: 3.42,
          img: 'assets/images/food_25.jpeg',
          category: 'food',
          pDescription: '''
    Nestle Coffee mate Hazelnut Powder Coffee Creamer is an ideal way to create a delicious cup of coffee perfection. Smooth and indulgent, this flavored hazelnut creamer creates a rich, velvety flavor. This Coffee mate creamer is a lactose free, gluten free and non dairy creamer. This affordable powdered creamer for coffee makes it easy to add the right amount of flavor every time, letting you easily transform your coffee into warm deliciousness. Whether it's your morning cup or afternoon pick-me-up, this powdered Coffee mate creamer wakes up your cup. Shelf stable flavored coffee creamer makes it easy to enjoy Coffee mate coffee creamer anytime.
    ''',
        );
        Product p26 = Product(
        //  id: 26,
          pName:
          'Coke Zero Sugar Diet Soda Soft Drink, 12 fl oz, 24 Pack',
          price: 7.88,
          img: 'assets/images/food_26.jpeg',
          category: 'food',
          pDescription: '''
    Soda. Pop. Soft drink. Sparkling beverage. Whatever you call it, nothing compares to the refreshing, crisp taste of Coca-Cola Zero Sugar. Enjoy with friends, on the go or with a meal.
    ''',
        );
        Product p27 = Product(
        //  id: 27,
          pName:
          'Mountain Dew, 12 oz Cans, 24 Count',
          price: 8.48,
          img: 'assets/images/food_27.jpeg',
          category: 'food',
          pDescription: '''
    The original, the one that started it all. .. Mtn Dew exhilarates and quenches with its one of a kind, bold taste. Enjoy its chuggable intense refreshment. Crack open a cold can of Mtn Dew and refresh your taste buds. Mountain Dew, the original instigator, refreshes with its great taste.
    ''',
        );
        Product p28 = Product(
        //  id: 28,
          pName:
          'Nutella Chocolate Hazelnut Spread, Perfect Topping, 33.5 oz Jar',
          price: 7.97,
          img: 'assets/images/food_28.jpeg',
          category: 'food',
          pDescription: '''
    Nutella hazelnut spread will bring a smile to their faces and make Saturday mornings a bit more special. For an unforgettable breakfast spread it on warm toast, bananas, or even pancakes.
    ''',
        );
        Product p29 = Product(
        //  id: 29,
          pName:
          'Heinz Tomato Ketchup, 32 oz Bottle',
          price: 3.17,
          img: 'assets/images/food_29.jpeg',
          category: 'food',
          pDescription: '''
    Heinz Tomato Ketchup is made only from sweet, juicy, red ripe tomatoes for the signature thick and rich taste of Americas Favorite Ketchup.
    ''',
        );
        Product p30 = Product(
        //  id: 30,
          pName:
          'Kraft Real Mayo Creamy & Smooth Mayonnaise, 22 fl oz Bottle',
          price: 3.28,
          img: 'assets/images/food_30.jpeg',
          category: 'food',
          pDescription: '''
    Kraft Real Mayo adds light flavor and creamy texture to all types of dishes. Made with cage free eggs, vinegar, lemon juice and the perfect blend of seasonings, our family favorite mayonnaise delivers delicious flavor to all your favorite summer foods.
    ''',
        );
        /////////////////////////////////
        Product p31 = Product(
          pName:
          'Zebco Slingshot Spincast Reel and Fishing Rod Combo',
          price: 9.88,
          img: 'assets/images/sports_31.jpeg',
          category: 'sport',
          pDescription: '''
    Cool colors. Hot spincast performance. All at a great price. These custom-matched Combos are great for all ages with easy-casting 202® reels and durable 2-piece Z-Glass rods.
    ''',
        );
        Product p32 = Product(
          pName:
          'Abu Garcia Black Max Low Profile Baitcasting Reel and Fishing Rod Combo',
          price: 75.71,
          img: 'assets/images/sports_32.jpeg',
          category: 'sport',
          pDescription: '''
    MAXIMUM PERFORMANCE AND VALUE The upgraded Black Max low profile baitcast combo is engineered with class-leading performance in a compact, lightweight design.
    ''',
        );
        Product p33 = Product(
          pName:
          'Abu Garcia Black Max Spinning Reel and Fishing Rod Combo',
          price: 73.53,
          img: 'assets/images/sports_33.jpeg',
          category: 'sport',
          pDescription: '''
    Black Max? proven value and reliability now in a spinning fishing combo. Featuring the Rocket Line Management system?, the Abu Garcia Black Max spinning reel and fishing rod combo family will cast farther with less wind knots. In addition to the smooth four bearing system, the lightweight graphite frame and rotor delivers serious performance at a great value.
    ''',
        );
        Product p34 = Product(
          pName:
          'Ready2Fish Inline Spinner Lure - Firetiger, Spinnerbaits',
          price: 1.00,
          img: 'assets/images/sports_34.jpeg',
          category: 'sport',
          pDescription: '''
    The South Bend R2F Inline Spinnerbait Freshwater Bass Fishing Lure, Fire Tiger will help you land more bass, trout and other freshwater fish. 
    ''',
        );
        Product p35 = Product(
          pName:
          'Ready2Fish Inline Spinner Lure - Rainbow Trout, Spinnerbaits',
          price: 1.00,
          img: 'assets/images/sports_35.jpeg',
          category: 'sport',
          pDescription: '''
    This Ready 2 Fish spinner lure features a high flash, easy spin blade and genuine hand tied colored hackle. Great for catching panfish, trout, bass, stripers and other gamefish.
    ''',
        );
        Product p36 = Product(
          pName:
          'Wilson NCAA Killer Crossover Basketball, Intermediate Size 7',
          price: 24.00,
          img: 'assets/images/sports_36.jpeg',
          category: 'sport',
          pDescription: '''
    Make your next big dunk using a Wilson NCAA Killer Crossover 28.5" Basketball. This piece of sports equipment will allow you to work on your skills on the court and off. The Wilson NCAA basketball is made with an Optima rubber cover, offering durability. 
    ''',
        );
        Product p37 = Product(
          pName:
          'Silverback Sb-54ig In-ground Basketball',
          price: 699.95,
          img: 'assets/images/sports_37.jpeg',
          category: 'sport',
          pDescription: '''
    Play like a pro with the break-away rim and the all steel actuator of the Silverback Basketball Goal for easy and precise goal. Don\'t worry about overrunning after your shot.
    ''',
        );
        Product p38 = Product(
          pName:
          'SereneLife SLTRA10PNK - Home Backyard Sports Trampoline',
          price: 425.00,
          img: 'assets/images/sports_38.jpeg',
          category: 'sport',
          pDescription: '''
    SereneLife SLTRA10PNK - Home Backyard Sports Trampoline - Large Outdoor Jumping Fun Trampoline for Kids / Children, Safety Net Cage (10? ft.)
    ''',
        );
        Product p39 = Product(
          pName:
          'ORCC 55/60" Trampoline for Kids, Mini Trampoline with Safety Net Pad',
          price: 129.99,
          img: 'assets/images/sports_39.jpeg',
          category: 'sport',
          pDescription: '''
    ORCC 55/60" Trampoline for Kids, Mini Trampoline with Safety Net Pad, Outdoor Indoor Small Trampolines for Kids Toddler, Supports up to 220 Pounds
    ''',
        );
        Product p40 = Product(
          pName:
          'Trampoline 10 FT with Safe Enclosure Net',
          price: 355.99,
          img: 'assets/images/sports_40.jpeg',
          category: 'sport',
          pDescription: '''
    Trampoline with enclosure net protects your kids all-round, they can play happily inside, and the family can not worry any more.
    ''',
        );
        /////////////////////////////////
        Product p41 = Product(
          pName: 'Love Beauty and Planet Blooming Color Conditioner',
          price:  6.98,
          img: 'assets/images/beauty_41.jpeg',
          category: 'beauty',
          pDescription: '''
    Surround your hair with the juicy freshness of Rose Petals, sourced ethically from the Rose Valley of Bulgaria. With Love Beauty and Planet Blooming Color Murumuru Butter and Rose Paraben Free Conditioner, you will keep your color-treated hair vibrant and nourished. Our color-safe conditioner is made with plant-based cleansers and infused with natural coconut oil. How to use? We recommend starting with Love Beauty and Planet Blooming Color Shampoo for color-treated hair. Simply squeeze, lather and rinse. After shampooing, spread Blooming Color Conditioner through your gorgeous wet locks. Remember to go easy on the tap. Avoid the roots, rinse. On days when your hair needs a “pick me up,” try our Blooming Strength and Shine 2-minute Miracle Masque. Don’t stop with beautiful hair. Envelop your skin in our Love Beauty and Planet Murumuru Butter and Rose Bountiful Moisture Body Wash to nourish dry skin leaving it petal soft. And, if your skin craves a scrub, try our Love Beauty and Planet Sugar and Rose Peace and Glow Creamy Body Scrub. At Love Beauty and Planet, we are committed to small acts of love that make you and our planet a little more beautiful, every day. Our goal is a carbon footprint so small, it's as if we weren't even here. We started our journey by loading our beauty products with goodness. Every one of our bottles is made from 100 percent recycled materials and are recyclable. We are starting a beautiful movement. 
    ''',
        );
        Product p42 = Product(
          pName: 'Suave Professionals Scalp and Hair Oil Castor Oil & Mango Butter, 6 oz',
          price:  4.98,
          img: 'assets/images/beauty_42.jpeg',
          category: 'beauty',
          pDescription: '''
    Get the soft-to-the-touch curls of your dreams! Suave Professionals for Natural Hair Nourish Hair and Scalp Oil with Castor Oil & Mango Butter is an oil for hair that locks in moisture for touchable curls. The results: nourished hair and scalp that are hydrated, beautiful and touchably soft. This Suave Professionals for Natural Hair product is a hair oil for dry hair infused with castor oil, known to promote the growth of longer, thicker hair, and mango butter to help seal in moisture to prevent breakage. Together, these ingredients in our hair serum are known to nourish, repair and strengthen hair and scalp for Optimal Length Retention. Natural hair approved and color safe, this nourishing oil serum for dry scalp is moisture rich and formulated without parabens or dyes. To create the right products for natural hair, Suave asked the experts. The Suave Professionals for Natural Hair collection was inspired by and made for women with natural hair. Collaborating with a community of over 5,000 natural haired women to craft, test and adapt formulas, Suave developed a collection of moisture rich products, like our hair oil for dry scalp, specifically designed for women with curls, coils and waves. Suave is proud to bring you these luxurious formulations, like our hair oil treatment, so your natural curls, coils and waves can look good, smell good and feel good every day.
    ''',
        );
        Product p43 = Product(
          pName: 'Rooted Rituals Ginger Root and Aloe Hydrating Conditioner, 8.4 Fl Oz',
          price:  10.17,
          img: 'assets/images/beauty_43.jpeg',
          category: 'beauty',
          pDescription: '''
    Even the most beautiful blossoms can't thrive with unhealthy roots. Care for your scalp like you care for your skin because beautiful hair starts at the root. Rooted Rituals Clean Rinse Conditioner has a silicone-free formula that rinses clean and does not weigh down hair. Made with scalp- and hair-loving ingredients like ginger root and aloe, this conditioner packs the perfect one-two punch for scalp and hair - nourishing your hair and restoring balance for a healthy shine. After shampooing with Rooted Rituals Clarifying Shampoo, apply conditioner generously to wet hair from root to tip. Rinse. Safe for color-treated hair.
    ''',
        );
        Product p44 = Product(
          pName: 'Suave Pink Shampoo Volumizing, 17 oz',
          price:  4.98,
          img: 'assets/images/beauty_44.jpeg',
          category: 'beauty',
          pDescription: '''
    Give your flat or fine hair some major flare. Suave Up The Volume Shampoo with Amino Acid Complex cleanses and volumizes for gorgeous, workable hair with volume. This sulfate free shampoo smooths hair by working on the inside of the hair fiber to help make it easy to style into your favorite look. Looking for workable, ready for anything hair? Say hello to our professional inspired 3-step haircare regime. This collection includes products to cleanse, condition and shape your hair into the perfect look, plus use our additional stylers depending on how you to style your hair. This shampoo was created to keep hair strong, more manageable and ready to style any look. Our shampoo and conditioner system is formulated with Amino Acid Complex to help improve hair’s manageability by working on both the inside and outside the hair fiber. This unique System, with Amino Acid Complex, penetrates the hair’s cortex to help strengthen, while also smoothing the cuticle for polished looking hair. The result is hair that’s more manageable and easy to style (aka the hair of your dreams). It’s time to transform your hair into manageable, ready-to-style locks. Follow this hair shampoo with Suave Up The Volume Conditioner for voluminous and workable hair that’s ready for anything.
    ''',
        );
        Product p45 = Product(
          pName: 'TRESemmé Moisture Rich Moisturizing Shampoo and Conditioner',
          price:  6.98,
          img: 'assets/images/beauty_45.jpeg',
          category: 'beauty',
          pDescription: '''
    When it comes to replenishing moisture to dry locks, use TRESemm Moisture Rich Shampoo and Conditioner for Dry Hair to restore natural vibrancy for a healthy look and eye-catching shine. TRESemm wants you to look and feel your best, which is why the TRESemm Moisture Rich System delivers optimized hydration that targets dryness and locks in moisture where your hair needs it mostevery day.Enriched with vitamin E, this shampoo and conditioner duo is designed to deliver optimum hydration that targets dryness and seals in moisture. The lightweight formulas mean you can turn dry, damaged hair into soft, manageable strands with beautiful shine. Its also safe for colored hair.How to use:Step 1: Coat hair with a liberal amount of TRESemm Moisture Rich Shampoo.Step 2: Gently massage the scalp and roots with fingertips to work into a lather.Step 3: Lightly squeeze the shampoo from roots to ends and rinse thoroughly.Step 4: Apply an adequate amount of Moisture Rich Conditioner from mid-shaft to ends.Step 5: Run a wide-tooth comb or fingers from roots to ends to detangle and fully coat hair. Leave for 2-3 minutes, then rinse thoroughly.Step 6: Finish with your favorite TRESemm styling products as desired.Are you looking for a moisturizing shampoo and conditioner for damaged hair? The clear choice is TRESemm. Use TRESemm Shampoo and Conditioner with TRESemm's salon-quality hair styling products to perfect your look. These professional, salon-quality hair care products are deep conditioning hair products for dry hair without the salon price tag. Hair feeling dull or dry? TRESemm Moisture Rich Detangling Spray is a conditioning, leave-in detangler that delivers intense nourishment and hydration, giving tresses a beautiful, healthy shine. Or Give your hair the deep-rooted moisture it craves. TRESemm Moisture Rich Deep Conditioning Mask works hard so you dont have to, delivering intense nourishment that leaves hair looking healthy and happy in just one use.Ever since our origin in salons, TRESemm has been driven by a simple truth: every woman deserves to look and feel their best, and that usually starts with a good hair day! TRESemm is dedicated to creating hair care and styling products that are professional quality and promoting the values that defined our inspirational founder, Edna L. Emme independence, self-reliance, and, most importantly, the confidence you need to step up and meet the next challenge. We believe in empowering women with quality products so that they can feel strong and confident. #WomenLeadTheWay. To learn more, visit our website: https://www.tresemme.com/
    ''',
        );
        Product p46 = Product(
          pName: 'WOW Apple Cider Vinegar Shampoo & Hair Conditioner',
          price:  29.94,
          img: 'assets/images/beauty_46.jpeg',
          category: 'beauty',
          pDescription: '''
    WOW Apple Cider Vinegar Shampoo and Coconut / Avocado Conditioner Set - Clean, Detox, Clarify, and Rejuvenate Your Hair, Because You Deserve It!The Apple Cider Vinegar Shampoo has DHT blockers to reduce hair loss and clean the scalp for hair growth. The combination set also relieves itchy scalp and reduces dandruff for dry, oil, or normal hair types.
    ''',
        );
        Product p47 = Product(
          pName: 'CHI Original Ceramic Hair Straightening Flat Iron',
          price: 51.91,
          img: 'assets/images/beauty_47.jpeg',
          category: 'beauty',
          pDescription: '''
    Get the style you want with the help of the CHI Hair Straightener. This handy item is designed to reduce frizz and static electricity and creates silky, shiny hair instantly. This CHI ceramic flat iron does everything from straightening to creating curls, flips and waves with an all-in-one, ergonomic design. It's ready in just 30 seconds and uses far infrared technology to get impressive results and an attractive look. It also features dual voltage and has a swivel cord for easy use and storage. Add this convenient tool to a beauty routine for a gorgeous hair-do every morning.
    ''',
        );
        Product p48 = Product(
          pName: 'TRESemmé TRES Two Extra Hold Hair Spray 11 oz 2 Count',
          price:  8.98,
          img: 'assets/images/beauty_48.jpeg',
          category: 'beauty',
          pDescription: '''
    Need a flexible, anti-frizz hairspray with a hold that really lasts? Try TRESemm TRES Two Extra Hold Hair Spray for extra flyaway control that gives you maximum hold on everything from elaborate to everyday hairstyles. It can take time to style your hair, so its essential to secure your looks in place with hair styling products that provide a strong but flexible hold. A water-free formula, Extra Hold hairspray is a humidity-resistant hair spray that provides frizz control with all the grip you need for a hairstyle that will last the whole day.For best results, create your style using your favorite TRESemm shampoo, conditioner, and hair styling products. With your style in place, finish with Extra Hold Hair Spray shake well, and hold the hairspray 10-12 inches away from hair. Spray section by section. For an even stronger hold, layer more hairspray exactly where you need more control. For maximum body and fullness, flip hair upside down and spray all over. If dispenser clogs, rinse in warm water.Ever since our origin in salons, TRESemm has been driven by a simple truth: every woman deserves to look and feel fabulous, like theyve just stepped out of the salon. TRESemm is dedicated to creating hair care and styling products that are salon quality without the salon price, promoting the values that defined our inspirational founder, Edna L. Emme independence, self-reliance, and, most importantly, the confidence you need to step up and meet the next challenge.
    ''',
        );
        Product p49 = Product(
          pName: 'CHI Spin n Curl Ceramic 1" Rotating Curler, Onyx Black',
          price:  110.00,
          img: 'assets/images/beauty_49.jpeg',
          category: 'beauty',
          pDescription: '''
    Create flawless curls and waves at the push of a button with the CHI Spin n Curl. Hair is drawn into the curl chamber where it is heated and timed to create perfect curls and waves every time! The digital temperature display offers easily adjustable temperature settings and a selection of preset temperature settings for each hair texture, creating a customizable styling experience while avoiding unnecessary heat damage. Ceramic heat technology produces far-infrared heat while the conditioning benefits of negative ions results in shinier, healthier and more beautiful hair. Curling hair has never been so effortless with the CHI Spin n Curl!
    ''',
        );
        Product p50 = Product(
          pName: 'Cantu Shea Butter Leave-In Conditioning Repair Cream',
          price:  5.70,
          img: 'assets/images/beauty_50.jpeg',
          category: 'beauty',
          pDescription: '''
    Repair, protect and style all in one with Cantu Shea Butter Leave-In Conditioning Repair Cream 16 oz. Daily styling, curl relaxing, heat tools, chemical processing, and product build-up can take a serious toll on your hair, resulting in split ends, frizzy, unmanageable strands, dryness, dullness, and more. This intensive leave-in treatment helps reverse the effects of chemical processing and regular styling, formulated to provide intense moisture, leaving hair soft and manageable. Cantu leave-in conditioning repair cream is rich in pure shea butter and other natural oils to help stop and mend breakage, repair split ends, tame frizzies, nourish parched strands, and add manageability and shine. It's specially formulated for damaged, dry, or coarse hair. When used daily, the shea butter hair cream helps promote stronger, healthier hair. To use, simply apply after shampooing to towel-dried hair; it can also be used as an intensive, overnight treatment. Each jar contains 16 oz.
    ''',
        );
        /////////////////////////////////
        list.add(p01);
        list.add(p02);
        list.add(p03);
        list.add(p04);
        list.add(p05);
        list.add(p06);
        list.add(p07);
        list.add(p08);
        list.add(p09);
        list.add(p10);
        list.add(p11);
        list.add(p12);
        list.add(p13);
        list.add(p14);
        list.add(p15);
        list.add(p16);
        list.add(p17);
        list.add(p18);
        list.add(p19);
        list.add(p20);
        list.add(p21);
        list.add(p22);
        list.add(p23);
        list.add(p24);
        list.add(p25);
        list.add(p26);
        list.add(p27);
        list.add(p28);
        list.add(p29);
        list.add(p30);
        list.add(p31);
        list.add(p32);
        list.add(p33);
        list.add(p34);
        list.add(p35);
        list.add(p36);
        list.add(p37);
        list.add(p38);
        list.add(p39);
        list.add(p40);
        list.add(p41);
        list.add(p42);
        list.add(p43);
        list.add(p44);
        list.add(p45);
        list.add(p46);
        list.add(p47);
        list.add(p48);
        list.add(p49);
        list.add(p50);

      }
      createObjects() ;
      Future<void> isEmpty() async{
       print('444444444444444444 start IN Function Length ${productData.length}');
       productData = await dbHelper.getAllProduct();
       print('555555555555555555 after getall IN Function Length ${productData.length}');

       if(productData.length != 0){
         print('66666666666666666 not zero IN Function Length ${productData.length}');
         productData = await dbHelper.getAllProduct();
       }
       else {
         print('77777777777777777 was zero after Function Length ${productData.length}');
         list.forEach((element) async {await dbHelper.insertProduct(element);});
         print('88888888888888888 was zero after insert Function Length ${productData.length}');
         productData = await dbHelper.getAllProduct();
         print('99999999999999999 was zero after getting Function Length ${productData.length}');
       }
      }

      isEmpty();
      print('99999999999999999 out Function');
      print('00000000000000000000 END Function');

  }


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(5),
            alignment: Alignment.topCenter,
            child: Text(
              'Categories',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),
          Container(
            // color: Colors.grey,
            height: 160,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 10, right: 10),
              children: [
                CategoryCard(
                  categoryName: 'Vide Games',
                  categoryImg: 'assets/images/gameLogo.jpg',
                  categoryView: 'game',
                  tap: () async {
                    productData = await dbHelper.getProductByCategory('games');
                    print('9999999999999999 Size is ${productData.length}');
                    print('Category is ${productData[5]['id'].toString()}');
                    print('Category is ${productData[5]['price'].toString()}');
                    print('Category is ${productData[5]['pName']}');
                    print('Category is ${productData[5]['pDescription']}');
                    print('Category is ${productData[5]['img']}');
                    print('Category is ${productData[5]['category']}');
                    setState(() {

                    });
                  },
                ),
                CategoryCard(
                  categoryName: 'Sports',
                  categoryImg: 'assets/images/sportLogo.jpg',
                  categoryView: 'sport',
                  tap: () async {
                    productData = await dbHelper.getProductByCategory('sport');
                    setState(() {

                    });
                  }
                ),
                CategoryCard(
                    categoryName: 'Beauty',
                    categoryImg: 'assets/images/beautyLogo.jpg',
                    categoryView: 'beauty',
                    tap: () async {
                      productData = await dbHelper.getProductByCategory('beauty');
                      setState(() {

                      });
                    }

                ),
                CategoryCard(
                    categoryName: 'Sweets',
                    categoryImg: 'assets/images/foodLogo.jpg',
                    categoryView: 'food',
                    tap: () async {
                    productData = await dbHelper.getProductByCategory('food');
                    setState(() {

                    });
                  }

                ),
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.all(10),
            height: size.height - 360,
           // color: Colors.blueGrey,
            child: ListView.builder(itemCount: productData.length,
              itemBuilder: (context, index) {
              return ProductCard(
                productImg: productData[index]['img'],
                productName: productData[index]['pName'],
                tap: () {
                  Navigator.of(context)
                      .pushNamed('details',arguments: productData[index]);
                },
              );
            },)
          ),
        ],
      ),
    );
  }

  Widget CategoryCard ({String categoryImg, String categoryName, String categoryView, Function tap}){
    return GestureDetector(
      child: Card(
        elevation: 5,
        shadowColor: Colors.deepOrange,
        margin: EdgeInsets.only(top: 5, right: 10),
        //color: Colors.green,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(
          children: [
            Container(
              width: 125,
              height: 125,
              // color: Colors.redAccent,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image(
                  image: AssetImage(categoryImg),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text(categoryName,
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
      onTap: tap,
    );
  }

  Widget ProductCard ({String productImg, String productName, Function tap}){
    return GestureDetector(
      child: Card(
          elevation: 5,
          shadowColor: Colors.deepOrange,
          margin: EdgeInsets.symmetric(horizontal: 6, vertical: 15),
          //color: Colors.green,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Column(
            children: [

              Hero(
                  tag: productImg,
                  child: Container(
                    width: 155,
                    height: 155,
                    // color: Colors.redAccent,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image(
                        image: AssetImage(productImg),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
              ),

              Container(
                width: 130,
                height: 50,
                alignment: Alignment.centerLeft,
                // margin: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                //color: Colors.green,
                child: Flex(
                  direction: Axis.horizontal,
                  children: [
                    Expanded(
                        child: Text(productName,
                          style: TextStyle(fontSize: 15),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ))
                  ],
                ),
              )

            ],
          )
      ),
      onTap: tap,
    );
}

}

import 'package:flutter/material.dart';


List<Image> cars_image=[
  Image.asset('asset/Unconfirmed 894054.crdownload',fit: BoxFit.cover,),
  Image.asset('asset/bugatti-chiron-pur-sport-106-1582836604.jpg',fit: BoxFit.cover,),
  Image.asset( 'asset/ford-mustang-boss-429-1970-by-simon-clay-news-photo-1598884238.jpg', fit: BoxFit.cover, ),
  Image.asset('asset/images.jpg', fit: BoxFit.cover,),
];



List<Image> logo_image= [
  Image.asset('asset/Mazda-Logo.png', fit: BoxFit.cover,),
  Image.asset('asset/car-logos-volkswagen.jpg', fit: BoxFit.cover,),
  Image.asset('asset/-ford-logo_new.jpg', fit: BoxFit.cover,),
  Image.asset('asset/car-logos-volkswagen.jpg', fit: BoxFit.cover,),
  Image.asset('asset/toyota-cars-logo-emblem.jpg', fit: BoxFit.cover,)
];

List<String> cars_name=[
  'wagon',
  'suv',
  'sedan',
  'Hatchback'
];


Widget Main_text( String txt){
  return Text(
    txt,
    style: TextStyle(
      color: Colors.black,
      fontSize: 14,
      fontWeight: FontWeight.w600,
    ) ,
    textDirection: TextDirection.rtl,
  );
}

Widget gener_Card( Widget child){
  return Container(
    width: 80,
    height: 80,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(15),
    ),
    child: child,
  );
}

Widget card_container( Widget child){
  return Container(
    padding: EdgeInsets.all(10),
    width: 200,
    height: 150,
    child: child ,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(25),
    ),
  );

}

Widget commenRow(){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      IconButton(
        icon: Icon(Icons.notifications , color: Colors.white,),
        onPressed: (){},
      ),
      IconButton(
        icon: Icon( Icons.filter_list , color: Colors.white,),
        onPressed: (){},
      )
    ],
  );
}




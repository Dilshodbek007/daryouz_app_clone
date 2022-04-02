
import 'package:flutter/material.dart';

class MyDrawerHeader extends StatefulWidget {
  const MyDrawerHeader({Key? key}) : super(key: key);

  @override
  State<MyDrawerHeader> createState() => _MyDrawerHeaderState();
}

class _MyDrawerHeaderState extends State<MyDrawerHeader> {
  List<bool> _isSelected=[
    false,
    true
  ];
  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Daryo',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),),
              selectLang()
            ],
          ),
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Toshkent',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),),
              Row(
                children: [
                  Icon(Icons.cloud_queue_outlined,color: Colors.white,),
                  SizedBox(width: 6),
                  Text('+12.0',style: TextStyle(
                    color: Colors.white
                  ),),
                ],
              ),
            ],
          ),
          const Divider(thickness: 1.0,color: Colors.white,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween ,
            children: [
              currencyRate(Icons.monetization_on_outlined, '11450'),
              currencyRate(Icons.euro_symbol_outlined, '12450'),
              currencyRate(Icons.currency_ruble_outlined, '145')
            ],
          )
        ],
      ),
    decoration: BoxDecoration(
      color: Colors.blue
    ),);
  }

  Widget currencyRate(IconData icon, String rate){
    return Row(
      children: [
        Icon(icon,color: Colors.white),
        Text(rate,style: const TextStyle(color: Colors.white),)
      ],
    );
  }

  Widget selectLang(){
    return Container(
      height: 30,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30)
      ),
      child:ToggleButtons(
        selectedBorderColor: Colors.transparent,
        borderColor: Colors.transparent,
        isSelected: _isSelected,
        children: [
          Container(
            alignment: Alignment.center,
            height: 30,
            width: 70,
            decoration: BoxDecoration(
                color: _isSelected[0]?Colors.white:Colors.blue,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(30),bottomLeft: Radius.circular(30)),
            ),
            child: Text('Lotincha',style: TextStyle(
              color: _isSelected[0]?Colors.blue:Colors.white
            ),),
          ),
          Container(
            alignment: Alignment.center,
            height: 30,
            width: 70,
            decoration: BoxDecoration(
                color: _isSelected[1]?Colors.white:Colors.blue,
              borderRadius: BorderRadius.only(topRight: Radius.circular(30),bottomRight: Radius.circular(30)),
            ),
            child: Text('Kirilcha',style: TextStyle(
                color: _isSelected[1]?Colors.blue:Colors.white
            ),),
          )
        ],
        onPressed: (index){
          setState(() {
            if(index==0){
              _isSelected[0]=true;
              _isSelected[1]=false;
            }else{
              _isSelected[1]=true;
              _isSelected[0]=false;
            }
          });
        },
      ),
    );
  }
}

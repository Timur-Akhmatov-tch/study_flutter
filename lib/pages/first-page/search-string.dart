import 'package:aforte/Res/custom_icons.dart';
import 'package:flutter/material.dart';

class SearchString extends StatelessWidget {
  const SearchString({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //Меню со строкой поиска
      decoration: const BoxDecoration(
          border:
          Border(bottom: BorderSide(width: 2, color: Colors.grey))),
      child: Row(
        //Элементы меню поиска
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        //Центрирование
        //Далее список элементов
        children: [
          Container(
            //Иконака бургер(меню)
            //color: Colors.grey,
              child: const IconButton(
                onPressed: null,
                icon: Icon(
                  CustomIcons.menu,
                  size: 25,
                ),
                iconSize: 40,
              )),
          Expanded(
            //Расятнуть на все свободеное расстояние между виджетами
            child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: Colors.grey,
                    ),
                    //color: Colors.yellow,
                    borderRadius: BorderRadius.circular(15)),
                padding: const EdgeInsets.all(8),
                child: const Text(
                  'Введите название товара',
                  style:
                  TextStyle(fontSize: 15, color: Colors.grey),
                )),
          ),
          Container(
            //Иконка поиска
            //color: Colors.grey,
              child: const IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.search,
                  size: 35,
                  //color: Colors.black,
                ),
                iconSize: 40,
              )),
        ],
      ),
    );
  }
}
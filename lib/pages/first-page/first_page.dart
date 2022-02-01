
import 'package:aforte/Res/custom_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      //
      //theme: ThemeData(primaryColor: Colors.black),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: SizedBox(
          height: 50,
          child: SvgPicture.network(
              'https://aforte.ru/upload/CMax/423/423b8d9fb250c3b62000c009a6c9fffa.svg'),
        ),
        centerTitle: true,
      ),
      body: Column(
        //Тело первой страницы матрица
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
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
                    //color: Colors.grey,
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
                          ))),
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
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(15),
                  //color: Colors.grey,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue[50],
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(width: 2, color: Colors.grey)),
                    height: 180,
                    width: 170,
                    child: Wrap(
                      alignment: WrapAlignment.spaceAround,
                      runAlignment: WrapAlignment.center,
                      runSpacing: 20,
                      children: [
                        const IconButton(
                          onPressed: null,
                          icon: Icon(
                            Icons.mark_chat_unread_rounded,
                            size: 25,
                            color: Colors.purple,
                          ),
                        ),
                        const SizedBox(
                          width: 90,
                        ),
                        Container(
                          width: 140,
                          //color: Colors.grey,
                          child: RichText(
                            text: const TextSpan(
                              text: 'Чат с формацевтом \n',
                              style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'Manrope', fontSize: 15, color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(text: 'Бесплатная консульация со специалистом', style: TextStyle(fontWeight: FontWeight.normal)),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('clicked!!!');
        },
        child: const Text('Add'),
        backgroundColor: Colors.green,
      ),
    );
  }
}
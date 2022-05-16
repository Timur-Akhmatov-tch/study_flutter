import 'package:aforte/Res/custom_icons.dart';
import 'package:aforte/pages/events/function_scroll_events.dart';
import 'package:aforte/pages/first-page/search-string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  final List<FunctionScrollEvents> events = const [
    FunctionScrollEvents(title: 'Chat'),
    FunctionScrollEvents(title: 'Go'),
  ];

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
        children: [
          const SearchString(),
          SizedBox(
              height: 600,
              width: double.infinity,
              child: GridView.count(
                // primary: false,
                // crossAxisSpacing: 10,
                //scrollDirection: Axis.horizontal,
                crossAxisCount: 1,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(15),
                    //color: Colors.grey,
                    child: Container(
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://pbs.twimg.com/media/Dx1ojeMW0AAJiQg.jpg:large')),
                          color: Colors.blue[50],
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(width: 2, color: Colors.grey)),
                      height: 200,
                      width: 170,
                      child: Wrap(
                        alignment: WrapAlignment.spaceAround,
                        runAlignment: WrapAlignment.center,
                        runSpacing: 5,
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
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Comfortaa',
                                    fontSize: 15,
                                    color: Colors.black),
                                children: <TextSpan>[
                                  TextSpan(
                                      text:
                                      'Бесплатная консульация со специалистом',
                                      style:
                                      TextStyle(fontWeight: FontWeight.normal)),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(15),
                    //color: Colors.grey,
                    child: Container(
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://sosyalgruplar.com/wp-content/uploads/2020/05/yandex-maps-2048x2048.jpg')),
                          color: Colors.blue[50],
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(width: 2, color: Colors.grey)),
                      height: 200,
                      width: 170,
                      child: Wrap(
                        alignment: WrapAlignment.center,
                        runAlignment: WrapAlignment.center,
                        runSpacing: 20,
                        children: [
                          const IconButton(
                            onPressed: null,
                            icon: Icon(
                              Icons.map,
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
                                text: 'Карта Аптек \n\n',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Comfortaa',
                                    fontSize: 15,
                                    color: Colors.black),
                                children: <TextSpan>[
                                  TextSpan(
                                      text:
                                      'Быстро и доступно',
                                      style:
                                      TextStyle(fontWeight: FontWeight.normal)),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(15),
                    //color: Colors.grey,
                    child: Container(
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://gruzprofit.ru/wp-content/uploads/2020/06/1024-gruzchik1.jpg')),
                          color: Colors.blue[50],
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(width: 2, color: Colors.grey)),
                      height: 200,
                      width: 170,
                      child: Wrap(
                        alignment: WrapAlignment.center,
                        runAlignment: WrapAlignment.center,
                        runSpacing: 20,
                        children: [
                          const IconButton(
                            onPressed: null,
                            icon: Icon(
                              Icons.airport_shuttle,
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
                                text: 'Доставка \n\n',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Comfortaa',
                                    fontSize: 15,
                                    color: Colors.white),
                                children: <TextSpan>[
                                  TextSpan(
                                      text:
                                      'Самовывоз и на дом',
                                      style:
                                      TextStyle(fontWeight: FontWeight.normal)),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),


                ],
              )),
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

import 'package:flutter/material.dart';
import 'package:pertemuan_empat/detail_page.dart';

import 'model/email.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: _createListCard(),
      ),
    );
  }

  Widget _createListCard() {
    var dataEmail = getData;

    return ListView.separated(
      itemBuilder: (context, index) {
        return _createCard(dataEmail[index], context);
      },
      itemCount: dataEmail.length,
      separatorBuilder: (context, index) {
        return Container(
          color: Colors.grey,
          height: 1,
          margin: EdgeInsets.symmetric(vertical: 4),
        );
      },
    );
  }

  // Widget _createGridCard() {
  //   return GridView.builder(
  //     gridDelegate:
  //         SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
  //     itemBuilder: (context, index){
  //       return _createCard();
  //     },
  //     itemCount: 20,
  //   );
  // }

  Widget _createCard(Email data, BuildContext context) {
    return Card(
      child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return DetailPage(inisial: data.inisial, subject: data.subject, message: data.message,);
          }));
        },
        child: Container(
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: CircleAvatar(
                  backgroundColor: Colors.brown.shade800,
                  child: const Text('AN'),
                )
              ),
              Expanded(
                flex: 11,
                child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 10,
                    ),
                    child: Text(data.subject)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

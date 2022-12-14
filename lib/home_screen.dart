import 'package:flutter/material.dart';
import 'package:untitled/hadeth_tab.dart';
import 'package:untitled/my_colors.dart';
import 'package:untitled/quran_tab.dart';
import 'package:untitled/radio_tab.dart';
import 'package:untitled/tasbeh_tab.dart';

class HomeScreen extends StatefulWidget {
static const String routName='home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/background.png'),
          fit: BoxFit.fill,
        )
      ),
      child: Scaffold(
        backgroundColor:Colors.transparent ,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Container(
            alignment: Alignment.center,
            child: Text('Islami',
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.w500,

            ),),
          ),
        ),
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: MyColors.promaryColor,
          ),
          child: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: (index){
              selectedIndex=index;
              setState(() {

              });
            },
            selectedIconTheme: IconThemeData(
              color: Colors.black,
            ),
            unselectedIconTheme: IconThemeData(
              color: Colors.white
            ),
            selectedLabelStyle: TextStyle(
              color: Colors.black
            ),
            selectedItemColor: Colors.brown,
            unselectedItemColor: Colors.white,
            items: [
              BottomNavigationBarItem(icon: ImageIcon(
                AssetImage('assets/images/ic_quran.png'),
              ),label: 'Quran'),
              BottomNavigationBarItem(icon: ImageIcon(
                AssetImage('assets/images/ic_hadeth.png'),
              ),label: 'Hadeth'),
              BottomNavigationBarItem(icon: ImageIcon(
                AssetImage('assets/images/ic_sebha.png'),
              ),label: 'Sebha'),
              BottomNavigationBarItem(icon: ImageIcon(
                AssetImage('assets/images/ic_radio.png'),
              ),label: 'Radio')

            ],
          ),
        ),
        body:tabs[selectedIndex] ,
      ),
    );
  }
  List<Widget>tabs=[QuranTab(),HadethTab(),RadioTab(),TasbehTab()];
}

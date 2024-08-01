import 'package:flutter/material.dart';
import 'package:smart_conseil_app/widgets/CustomerAppBar.dart';

class DashboardView extends StatefulWidget {
  @override
  _DashboardViewState createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  final ScrollController _dashboardScrollController = ScrollController();
  final ScrollController _alertsScrollController = ScrollController();
  final ScrollController _mentalStateScrollController = ScrollController();

  int _selectedIndex = 0;
  int _toggleIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Dashboard',
        actions: [
          Icon(Icons.person, color: Colors.white), // Exemple d'action
        ],
      ),
      body: Container(
        color: Color(0xFF3F63A9),
        child: SingleChildScrollView(
          controller: _dashboardScrollController,
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                        image: AssetImage('assets/images/Bleu.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    alignment: Alignment.center,
                  ),
                ],
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('First name Last name', style: TextStyle(fontSize: 26, color: Colors.white)),
                      Text('AGE', style: TextStyle(color: Colors.grey[300])),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 16),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF3F63A9),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: ToggleButtons(
                    isSelected: [0 == _toggleIndex, 1 == _toggleIndex, 2 == _toggleIndex],
                    onPressed: (int index) {
                      setState(() {
                        _toggleIndex = index;
                      });
                    },
                    borderRadius: BorderRadius.circular(16),
                    fillColor: Colors.white,
                    selectedColor: Colors.blue,
                    color: Colors.white,
                    borderColor: Colors.blue,
                    selectedBorderColor: Colors.blue,
                    borderWidth: 1,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Day'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Week'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Month'),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16),
              GridView.builder(
                physics: NeverScrollableScrollPhysics(), // Prevent internal scroll
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 10,
                  childAspectRatio: 2,
                ),
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Card(
                    color: Colors.white,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            index == 0
                                ? 'Danger Level'
                                : index == 1
                                ? 'Last night Sleep \nduration'
                                : index == 2
                                ? 'Device usage'
                                : 'Phone call duration',
                            style: TextStyle(color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            index == 0
                                ? 'High'
                                : index == 1
                                ? '8h'
                                : index == 2
                                ? '4h'
                                : '4h',
                            style: TextStyle(color: Colors.red),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              SizedBox(height: 16),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Last Alerts', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
                    SizedBox(height: 8),
                    SizedBox(
                      height: 150,
                      child: ScrollbarTheme(
                        data: ScrollbarThemeData(
                          thumbColor: MaterialStateProperty.all<Color>(Color(0xFF00BFFF)),
                          thickness: MaterialStateProperty.all<double>(6.0),
                          radius: Radius.circular(8),
                        ),
                        child: Scrollbar(
                          thumbVisibility: true,
                          child: ListView(
                            controller: _alertsScrollController,
                            children: [
                              ListTile(
                                title: Text('Toxic comment!', style: TextStyle(color: Colors.red)),
                                subtitle: Text('Mama always said life was like a box of chocolates. You never know what...'),
                                trailing: Text('12:34 PM'),
                              ),
                              ListTile(
                                title: Text('Sleep deprivation!', style: TextStyle(color: Colors.red)),
                                subtitle: Text('Mama always said life was like a box of chocolates. You never know what...'),
                                trailing: Text('12:34 PM'),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 230,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage('assets/images/background.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 4,
                    left: 6,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.white10.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        'Mental State',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Last social media activites', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
                    SizedBox(height: 8),
                    SizedBox(
                      height: 150,
                      child: ScrollbarTheme(
                        data: ScrollbarThemeData(
                          thumbColor: MaterialStateProperty.all<Color>(Color(0xFF00BFFF)),
                          thickness: MaterialStateProperty.all<double>(6.0),
                          radius: Radius.circular(8),
                        ),
                        child: Scrollbar(
                          thumbVisibility: true,
                          child: ListView(
                            controller: _mentalStateScrollController,
                            children: [
                              ListTile(
                                leading: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.blue,
                                    image: DecorationImage(
                                      image: AssetImage('assets/images/profilepic.png'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                title: Text('Rebecca Morgan', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
                                subtitle: Text('Mama always said life was like a box of chocolates. You never know what…', style: TextStyle(color: Colors.grey[600])),
                              ),
                              ListTile(
                                leading: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.blue,
                                    image: DecorationImage(
                                      image: AssetImage('assets/images/profilepic1.png'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                title: Text('Justin Holmes', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
                                subtitle: Text('You don\'t understand! I coulda had class. I coulda been a contender. I could\'ve…', style: TextStyle(color: Colors.grey[600])),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 230,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage('assets/images/background1.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 4,
                    left: 6,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.white10.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        'Sleep Duration',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _dashboardScrollController.dispose();
    _alertsScrollController.dispose();
    _mentalStateScrollController.dispose();
    super.dispose();
  }
}

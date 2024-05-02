
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class AnalyticsScreen extends StatefulWidget {
  @override
  _AnalyticsScreenState createState() => _AnalyticsScreenState();
}

class _AnalyticsScreenState extends State<AnalyticsScreen> {
  // Sample data for the pie chart
  Map<String, double> dataMap = {
    "Flutter": 5,
    "React Native": 3,
    "Xamarin": 2,
    "Ionic": 2,
  };

  List<Color> colorList = [
    Colors.blue,
    Colors.green,
    Colors.orange,
    Colors.red,
  ];


  List<bool> _isToggled = [false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Analytics'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Text('Pie Chart Options'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 16), // Add spacing
            ListTile(
              title: Text(
                'Pie Chart Type:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _isToggled[0] = true;
                      _isToggled[1] = false;
                    });
                  },
                  child: Text('Disc'),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      _isToggled[0] ? Colors.blue : Colors.grey,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _isToggled[0] = false;
                      _isToggled[1] = true;
                    });
                  },
                  child: Text('Ring'),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      _isToggled[1] ? Colors.blue : Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            ListTile(
              title: Text(
                'Gradient Colors:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            ToggleButtons(
              isSelected: _isToggled,
              onPressed: (index) {
                setState(() {
                  _isToggled[index] = !_isToggled[index];
                });
              },
              children: [
                Text('Yes'),
                Text('No'),
              ],
            ),
          ],
        ),
      ),
      body: Center(
        child: PieChart(
          dataMap: dataMap,
          animationDuration: Duration(milliseconds: 800),
          chartLegendSpacing: 32,
          chartRadius: MediaQuery.of(context).size.width / 3.2,
          colorList: colorList,
          initialAngleInDegree: 0,
          chartType: _isToggled[0] ? ChartType.disc : ChartType.ring, // Toggle between chart types
          ringStrokeWidth: 32,
          centerText: "HYBRID",
          legendOptions: LegendOptions(
            showLegendsInRow: false,
            legendPosition: LegendPosition.right,
            showLegends: true,
            legendShape: BoxShape.circle,
            legendTextStyle: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          chartValuesOptions: ChartValuesOptions(
            showChartValueBackground: true,
            showChartValues: true,
            showChartValuesInPercentage: false,
            showChartValuesOutside: false,
            decimalPlaces: 1,
          ),
        ),
      ),
    );
  }
}

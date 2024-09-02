import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart'; 
import 'package:percent_indicator/percent_indicator.dart';

void main() => runApp(MaterialApp(
  home: fitness(),
));

class fitness extends StatefulWidget {
  const fitness({super.key});

  @override
  State<fitness> createState() => _fitnessState();
}

class _fitnessState extends State<fitness> {
  double calories=0, protein=0, fibre=0;
  final TextEditingController _controller = TextEditingController();
  final TextEditingController _calories = TextEditingController();
  final TextEditingController _protein = TextEditingController();
  final TextEditingController _fibre = TextEditingController();
  List ls =["milk","Egg","Chicken"];


  Widget autobutton(keyword){
    return Padding(
      padding: const EdgeInsets.fromLTRB(4,4,0,0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(width: 5,),
          Expanded(
            child: ElevatedButton(onPressed: (){
              setState(() {
                calories+=fooditems[keyword]?['calories']??0;
                protein+=fooditems[keyword]?['protein']??0;
                fibre+=fooditems[keyword]?['fibre']??0;
              });
            }, child: Text(keyword),
                style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.blue[900])),
            ),
          ),
          IconButton(onPressed: (){ 
            setState(() {
            fooditems.remove(keyword);
            });
          }, 
          icon: Icon(Icons.delete,color: Colors.black54,),
          ),
        ],
      ),
    );
  }

  void addItem(){
    String food = _controller.text.trim();
    double? cval = double.tryParse(_calories.text.trim());
    double? pval = double.tryParse(_protein.text.trim());
    double? fval = double.tryParse(_fibre.text.trim());
    if(food.isNotEmpty && cval != null && pval != null && fval != null){
      setState(() {
      fooditems[food]={'calories':cval,'protein': pval, 'fibre': fval};
      _controller.clear();
      _calories.clear();
      _protein.clear();
      _fibre.clear();
      });
    }
  }


  Map<String,Map<String,double>> fooditems={
  'Milk': {'calories': 42, 'protein': 3, 'fibre': 0},
  'Egg': {'calories': 155, 'protein': 13, 'fibre': 0},
  'Chicken': {'calories': 165, 'protein': 31, 'fibre': 0},
  'Rice': {'calories': 111, 'protein': 2.6, 'fibre': 1.8},
  'Apple': {'calories': 52, 'protein': 0.3, 'fibre': 2.4},
  'Banana': {'calories': 89, 'protein': 1.1, 'fibre': 2.6},
  'Broccoli': {'calories': 55, 'protein': 3.7, 'fibre': 3.3}
  };


//  ********************************** Main Starting Point *******************************

  @override
  Widget build(BuildContext context) {
    // final datamap = {'calories':calories.toDouble(), 'protein': protein.toDouble(),'fibre':fibre.toDouble()};
    double caloriePercentage = calories / 2500;
    double proteinPercentage = protein / 70;
    double fibrePercentage = fibre / 30;
    
    if(caloriePercentage>1.0){
      caloriePercentage=1.0;
    }
    if(proteinPercentage>1.0){
      proteinPercentage=1.0;
    }
    if(fibrePercentage>1.0){
      fibrePercentage=1.0;
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('Fuel Count'),
        centerTitle: true,
        actions: [IconButton(onPressed: (){}, icon: Icon(Icons.edit_attributes_sharp))],
        backgroundColor: Colors.blue[900],
      ),
      backgroundColor: Colors.grey[200],
      body:
       Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10,),
          Row(
            children: [
              SizedBox(width: 40,),
              CircularPercentIndicator(
                radius: 45,
                lineWidth: 4,
                percent: caloriePercentage,
                center: Text('${(caloriePercentage * 100).toStringAsFixed(1)}%'),
                progressColor: Colors.limeAccent[400],
              
              ),
              SizedBox(width: 30,),
              CircularPercentIndicator(
                radius: 45,
                lineWidth: 4,
                percent: proteinPercentage,
                center: Text('${(proteinPercentage * 100).toStringAsFixed(1)}%'),
                progressColor: Colors.orange,
                ),
              SizedBox(width: 20,),
              CircularPercentIndicator(
                radius: 45,
                lineWidth: 4,
                percent: fibrePercentage,
                center: Text('${(fibrePercentage * 100).toStringAsFixed(1)}%'),
                progressColor: Colors.blueAccent[700],
              )
            ],
          ),
          // PieChart(
          //   dataMap: datamap ,
          //   chartRadius: MediaQuery.of(context).size.width / 2.2,
          //   legendOptions: LegendOptions(
          //     showLegends: true,
          //   ),
          //   chartValuesOptions: ChartValuesOptions(
          //     showChartValuesInPercentage: true,
          //   ),
          //   totalValue: 2000,
          // ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
               Text('Calories: ${calories.toStringAsFixed(1)}'),
               Text('Protein: ${protein.toStringAsFixed(1)}'),
               Text('Fibre: ${fibre.toStringAsFixed(1)}'),
            ],
          ),
          Divider(height: 40,),

          ...fooditems.keys.map((keyword) => autobutton(keyword)),
          // ...ls.map((keyword) => autobutton(keyword))
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                SizedBox(
                  height: 30,
                  width: 90,
                  child: Expanded(
                    child: TextField(
                      controller: _controller,
                      decoration: InputDecoration(
                        labelText: "Item",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 8),
                SizedBox(
                  height: 30,
                  width: 85,
                  child: Expanded(
                    child: TextField(
                      controller: _calories,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: "Calories",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 8),
                SizedBox(
                  height: 30,
                  width: 80,
                  child: Expanded(
                    child: TextField(
                      controller: _protein,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: "Protein",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 8),
                SizedBox(
                  height: 30,
                  width: 60,
                  child: Expanded(
                    child: TextField(
                      controller: _fibre,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: "Fibre",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ),
        ]
        ),
      ), 
      Center(
        child: TextButton(
          child: Text('Add',style: TextStyle(color: Colors.white),),
          style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.blue[900])),
          onPressed: addItem,)
      ),
      ],
    ),
        
        floatingActionButton: FloatingActionButton(onPressed: (){
          setState(() {
            calories=0;
            protein=0;
            fibre=0;
          });
        },
        child: Icon(Icons.clear_all,color: Colors.white,),
        backgroundColor: Colors.blue[900],
        ),
    );
  }
}
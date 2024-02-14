
import 'package:flutter/material.dart';
import 'package:receipefood_app/filtered%20recipes.dart';

class filter extends StatefulWidget {
  const filter({super.key});

  @override
  State<filter> createState() => _filterState();
}

class _filterState extends State<filter> {
  @override
  Widget build(BuildContext context) {
   double _value=20;
    double _startValue=5;
    double _endValue=50;
    return Scaffold(
        body:Column(
          children: [
            Row(
              children: [
                Text("Filter",style: TextStyle(fontSize: 25),),
                SizedBox(width: 250,),
                Text("reset",style: TextStyle(fontSize: 18),),
              ],
            ),
            Text("meal",style: TextStyle(fontSize: 25),),

            GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(

                    maxCrossAxisExtent: 200,
                    childAspectRatio: 3 / 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20),
                itemCount: 4,
                itemBuilder: (BuildContext ctx, index) {
                  return  GestureDetector(
                  onTap: (){

                 },
               child:
                  Container(
                  width: 100,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.orangeAccent,
                        borderRadius: BorderRadius.circular(15)),
                       child:Text("Breakfast"),
                  ),
                  );
                }),


            Row(
              children: [
                Column(
                  children: [
                    Text("serving",style: TextStyle(fontSize: 20),),
                    Slider(
                      min: 0.0,
                      max: 100.0,
                      value: _value,
                      onChanged: (value) {
                        setState(() {
                          _value = value;
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),

            Row(
              children: [
                Column(
                  children: [
                    Text("prepration time",style: TextStyle(fontSize: 20),),
                    Slider(
                      min: 0.0,
                      max: 100.0,
                      value: _value,
                      onChanged: (value) {
                        setState(() {
                          _value = value;
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),

            Row(
              children: [
                Column(
                  children: [
                    Text("calories",style: TextStyle(fontSize: 20),),
                    RangeSlider(
                      min: 0.0,
                      max: 100.0,
                      values: RangeValues(_startValue, _endValue),
                      onChanged: (values) {
                        setState(() {
                          _startValue = values.start;
                          _endValue = values.end;
                        });
                      },
                    )
                  ],
                ),
              ],
            ),



            ElevatedButton(

              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => filteredRecipes()));
              },
              child: const Text('apply'),
            ),

          ],
        )
    );
  }
}

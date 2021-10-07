import 'package:flutter/material.dart';
import 'package:mvvm_example/core/viewmodels/counter_app_model.dart';
import 'package:stacked/stacked.dart';

class CounterAppExample extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CounterAppModel>.reactive(
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              child: Icon(Icons.play_arrow),
                onPressed: (){
                model.decrement();
                }),
            SizedBox(height: 10,),
            FloatingActionButton(
              child: Icon(Icons.stop),
                onPressed: (){
                model.increment();
                })
          ],
        ),
        body: Container(
          child: Center(
            child: Text(model.getCounter.toString()),
          ),
        ),
      ),
          viewModelBuilder: () => CounterAppModel());


  }
}
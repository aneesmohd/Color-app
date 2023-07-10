import 'package:bloc_example/bloc/color_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/color_bloc.dart';




class ColorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final colorBloc = BlocProvider.of<ColorBloc>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Color App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){
        context.read<ColorBloc>().add(ColorEvent.red);
              },
              child: Text('Red'),
            ),
            ElevatedButton(
              onPressed: (){
                        context.read<ColorBloc>().add(ColorEvent.green);

              },
              child: Text('Green'),
            ),
            ElevatedButton(
              onPressed: (){
                        context.read<ColorBloc>().add(ColorEvent.blue);

              },
              child: Text('Blue'),
            ),
            SizedBox(height: 20),
            BlocBuilder<ColorBloc, ColorState>(
              builder: (context, state) {
                return Container(
                  width: 200,
                  height: 200,
                  color: state.color,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

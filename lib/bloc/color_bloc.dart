import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'color_event.dart';
part 'color_state.dart';

class ColorBloc extends Bloc<ColorEvent, ColorState> {
  ColorBloc() : super(ColorState(Colors.white)) {
    // Register an event handler for all color events
    on<ColorEvent>((event, emit) {
      // Use a switch case statement to handle different events
      switch (event) {
        case ColorEvent.red:
          // Emit a new state with red color
          emit(ColorState(Colors.red));
          break;
        case ColorEvent.green:
          // Emit a new state with green color
          emit(ColorState(Colors.green));
          break;
        // Handle other color events
        case ColorEvent.blue:
          emit(ColorState(Colors.blue));
          // TODO: Handle this case.
          break;
      }
    });
  }
}

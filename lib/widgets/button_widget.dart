// import 'package:counter_app/bloc/counter_bloc.dart';
import 'package:counter_bloc/bloc/counter_bloc.dart';
import 'package:counter_bloc/pages/second_page.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ButtonsWidget extends StatelessWidget {
  const ButtonsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        FloatingActionButton(
          onPressed: () {
            BlocProvider.of<CounterBloc>(context).add(IncreamentEvent());
          },
          child: const Icon(Icons.add),
        ),
        const SizedBox(
          height: 10,
        ),
        FloatingActionButton(
          onPressed: () {
            BlocProvider.of<CounterBloc>(context).add(ResetEvent());
          },
          child: const Icon(Icons.exposure_zero),
        ),
        const SizedBox(
          height: 10,
        ),
        FloatingActionButton(
          onPressed: () {
            //  BlocProvider.of<CounterBloc>(context).add(DecreamentEvent());
            context.read<CounterBloc>().add(DecreamentEvent());
          },
          child: const Icon(Icons.remove),
        ),
        const SizedBox(
          height: 10,
        ),
        FloatingActionButton(
          onPressed: () {
            //  BlocProvider.of<CounterBloc>(context).add(DecreamentEvent());
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => BlocProvider.value(
                    value: BlocProvider.of<CounterBloc>(context),
                    child: SecondPage()),
              ),
            );
          },
          child: const Icon(Icons.send),
        )
      ],
    );
  }
}

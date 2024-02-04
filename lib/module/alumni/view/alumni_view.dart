import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../controller/alumni_controller.dart';
import '../state/alumni_state.dart';
import 'package:get_it/get_it.dart';

class AlumniView extends StatefulWidget {
  const AlumniView({Key? key}) : super(key: key);

  @override
  State<AlumniView> createState() => _AlumniViewState();
}

class _AlumniViewState extends State<AlumniView> {
  AlumniController controller = AlumniController();

  @override
  void initState() {
    if (GetIt.I.isRegistered<AlumniController>()) {
      GetIt.I.unregister<AlumniController>();
    }
    GetIt.I.registerSingleton(controller);
    controller.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => controller.ready(),
    );
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => controller,
      child: BlocListener<AlumniController, AlumniState>(
        listener: (context, state) {},
        child: BlocBuilder<AlumniController, AlumniState>(
          builder: (context, state) {
            final bloc = context.read<AlumniController>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    AlumniController controller,
    AlumniState state,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alumni'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Counter: ${state.counter}',
            style: const TextStyle(fontSize: 24),
          ),
          IconButton(
            onPressed: () => controller.increment(),
            icon: const Icon(
              Icons.add,
              size: 24.0,
            ),
          ),
        ],
      ),
    );
  }
}

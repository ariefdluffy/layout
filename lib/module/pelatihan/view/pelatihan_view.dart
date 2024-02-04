import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../controller/pelatihan_controller.dart';
import '../state/pelatihan_state.dart';
import 'package:get_it/get_it.dart';

class PelatihanView extends StatefulWidget {
  const PelatihanView({Key? key}) : super(key: key);

  @override
  State<PelatihanView> createState() => _PelatihanViewState();
}

class _PelatihanViewState extends State<PelatihanView> {
  PelatihanController controller = PelatihanController();

  @override
  void initState() {
    if (GetIt.I.isRegistered<PelatihanController>()) {
      GetIt.I.unregister<PelatihanController>();
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
      child: BlocListener<PelatihanController, PelatihanState>(
        listener: (context, state) {},
        child: BlocBuilder<PelatihanController, PelatihanState>(
          builder: (context, state) {
            final bloc = context.read<PelatihanController>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    PelatihanController controller,
    PelatihanState state,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pelatihan'),
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

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:layout/shared/util/validator/validator.dart';
import 'package:layout/shared/widget/form/category_picker/category_picker.dart';
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 6.0,
                  horizontal: 12.0,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(12.0),
                  ),
                  border: Border.all(
                    width: 1.0,
                    color: Colors.grey[400]!,
                  ),
                ),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.search),
                    ),
                    Expanded(
                      child: TextFormField(
                        initialValue: null,
                        decoration: const InputDecoration.collapsed(
                          filled: true,
                          fillColor: Colors.transparent,
                          hintText: "Search",
                          hoverColor: Colors.transparent,
                        ),
                        onFieldSubmitted: (value) {},
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.sort,
                          size: 20.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              QCategoryPicker(
                items: [
                  {
                    "label": "PKA",
                    "value": "PKA",
                  },
                  {
                    "label": "PKP",
                    "value": "PKP",
                  },
                  {
                    "label": "LATSAR",
                    "value": "LATSAR",
                  },
                  {
                    "label": "PPPK",
                    "value": "PPPK",
                  },
                  {
                    "label": "Pelatihan Teknis",
                    "value": "Teknis",
                  },
                  {
                    "label": "Sharing Season",
                    "value": "sSeason",
                  }
                ],
                validator: Validator.required,
                onChanged: (index, label, value, item) {},
              ),
              Column(
                children: [
                  ListView.builder(
                    itemCount: 30,
                    shrinkWrap: true,
                    physics: const ScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.grey[200],
                            backgroundImage: const NetworkImage(
                              "https://i.ibb.co/QrTHd59/woman.jpg",
                            ),
                          ),
                          title: const Text("Jessica Doe"),
                          subtitle: const Text("Programmer"),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

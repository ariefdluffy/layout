import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:layout/shared/theme/theme_config.dart';
import '../controller/dashboard_controller.dart';
import '../state/dashboard_state.dart';
import 'package:get_it/get_it.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  DashboardController controller = DashboardController();

  @override
  void initState() {
    if (GetIt.I.isRegistered<DashboardController>()) {
      GetIt.I.unregister<DashboardController>();
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
      child: BlocListener<DashboardController, DashboardState>(
        listener: (context, state) {},
        child: BlocBuilder<DashboardController, DashboardState>(
          builder: (context, state) {
            final bloc = context.read<DashboardController>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    DashboardController controller,
    DashboardState state,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Builder(builder: (context) {
                    List images = [
                      "https://ik.imagekit.io/4x8ncuvuzb/WhatsApp%20Image%202024-03-06%20at%2014.25.37.jpeg?updatedAt=1710054126144",
                      "https://ik.imagekit.io/4x8ncuvuzb/WhatsApp%20Image%202024-03-06%20at%2014.25.39.jpeg?updatedAt=1710054126209",
                      "https://ik.imagekit.io/4x8ncuvuzb/WhatsApp%20Image%202024-02-28%20at%2016.51.35.jpeg?updatedAt=1710054126123",
                      "https://ik.imagekit.io/4x8ncuvuzb/WhatsApp%20Image%202024-02-28%20at%2016.51.34.jpeg?updatedAt=1710054126085",
                      "https://images.unsplash.com/photo-1482049016688-2d3e1b311543?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=710&q=80",
                    ];

                    return Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              child: CarouselSlider(
                                carouselController:
                                    controller.carouselController,
                                options: CarouselOptions(
                                  height: 220.0,
                                  autoPlay: true,
                                  enlargeCenterPage: false,
                                  viewportFraction: 1.0,
                                  onPageChanged: (index, reason) {
                                    controller.state.currentIndex = index;
                                    // controller.state.setState(() {});
                                  },
                                ),
                                items: images.map((imageUrl) {
                                  return Builder(
                                    builder: (BuildContext context) {
                                      return Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        margin: const EdgeInsets.symmetric(
                                            horizontal: 5.0),
                                        decoration: BoxDecoration(
                                          color: Colors.amber,
                                          borderRadius: const BorderRadius.all(
                                            Radius.circular(6.0),
                                          ),
                                          image: DecorationImage(
                                            image: NetworkImage(
                                              imageUrl,
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                }).toList(),
                              )
                                  .animate()
                                  .shake(duration: 800.ms)
                                  .fadeIn(duration: 800.ms),
                            ),
                            Positioned(
                              left: 20.0,
                              top: 110.0,
                              bottom: 0.0,
                              child: SizedBox(
                                width: 150.0,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Kegiatan",
                                      style: GoogleFonts.oswald(
                                        fontSize: 25.0,
                                        color: Colors.grey[200],
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "Hari Ini...",
                                      style: GoogleFonts.oswald(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                )
                                    .animate()
                                    .shake(duration: 800.ms)
                                    .fadeIn(duration: 800.ms),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: images.asMap().entries.map((entry) {
                            bool isSelected =
                                controller.state.currentIndex == entry.key;
                            return GestureDetector(
                              onTap: () => controller.carouselController
                                  .animateToPage(entry.key),
                              child: Container(
                                width: isSelected ? 40 : 6.0,
                                height: 6.0,
                                margin: const EdgeInsets.only(
                                  right: 6.0,
                                  top: 12.0,
                                ),
                                decoration: BoxDecoration(
                                  color: isSelected
                                      ? primaryColor
                                      : primaryColor.withOpacity(0.6),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(12.0),
                                  ),
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                      ],
                    );
                  }),
                ],
              ),
            ),
            GridView.builder(
              padding: EdgeInsets.all(12),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 1.0,
                crossAxisCount: 2,
                mainAxisSpacing: 6,
                crossAxisSpacing: 6,
              ),
              itemCount: state.products.length,
              shrinkWrap: true,
              physics: ScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                var item = state.products[index];
                return Container(
                  // color: Colors.orange,
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          height: 160.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                item["photo"] ??
                                    "https://i.ibb.co/S32HNjD/no-image.jpg",
                              ),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                16.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(
                              item["name_menu"],
                              style: TextStyle(
                                fontSize: 14.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
                    .animate()
                    .moveX(
                      begin: index % 2 == 0 ? -100 : 100,
                      duration: ((index * 300) + 800).ms,
                    )
                    .fadeIn(
                      duration: ((index * 300) + 800).ms,
                    );
              },
            ),
          ],
        ),
      ),
    );
  }
}

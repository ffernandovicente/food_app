import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_app/counter/counter.dart';
import 'package:food_app/util/util.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: brackgroudHighlight,
      body: SafeArea(
        child: CustomScrollView(
          shrinkWrap: true,
          slivers: [
            SliverAppBar(
              automaticallyImplyLeading: false,
              flexibleSpace: FlexibleSpaceBar(
                // background: Image.network(
                //   companyLogo(),
                //   fit: BoxFit.cover,
                // ),
                background: Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 15,
                  ),
                  color: backgroundColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Food Delivery',
                        style: GoogleFonts.roboto(
                          fontSize: 48,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'Ward Gateway Apt. 908',
                        style: GoogleFonts.roboto(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        height: 130,
                        child: ListView.builder(
                          itemCount: 5,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(15),
                              child: Container(
                                width: 100,
                                height: 100,
                                margin: const EdgeInsets.only(right: 5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: index == 0
                                      ? const Color.fromRGBO(241, 240, 237, 1)
                                      : null,
                                  boxShadow: index == 0
                                      ? [
                                          BoxShadow(
                                            color: Colors.grey.shade400,
                                            blurRadius: 12,
                                            spreadRadius: 0.1,
                                          ),
                                        ]
                                      : null,
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    const FaIcon(FontAwesomeIcons.burger),
                                    Text(
                                      index == 0 ? 'Todos' : 'Categoria $index',
                                      style: GoogleFonts.roboto(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
              expandedHeight: 300,
              backgroundColor: backgroundColor,
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(10),
                child: Container(
                  height: 20,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: brackgroudHighlight,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(70),
                      topRight: Radius.circular(70),
                    ),
                  ),
                ),
              ),
            ),
            SliverList.separated(
              itemCount: 20,
              itemBuilder: (context, index) {
                return ListTile(
                  tileColor: brackgroudHighlight,
                  leading: Container(
                    height: 50,
                    width: 50,
                    color: Colors.redAccent,
                  ),
                  title: Text('Produto ${index + 1}'),
                  subtitle: const Text(
                    'Ingredientes, Ingredientes, Ingredientes, Ingredientes',
                  ),
                  trailing: const Badge(
                    backgroundColor: Colors.green,
                    label: Text(
                      r' R$ 10,00',
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CounterPage(),
                      ),
                    );
                  },
                );
              },
              separatorBuilder: (context, index) => const Divider(
                height: 20,
                thickness: 1,
                indent: 25,
                endIndent: 25,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

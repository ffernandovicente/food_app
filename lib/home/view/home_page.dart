import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            backgroundColor: Colors.redAccent,
            centerTitle: false,
            pinned: true,
            stretch: true,
            expandedHeight: 140,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: false,
              titlePadding: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 15,
              ),
              title: Text(
                'Nome da Loja aqui',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // background: Image.network(
              //   'https://s7d1.scene7.com/is/image/mcdonalds/2_Pub_Commitment_574x384:2-column-desktop?resmode=sharp2',
              //   fit: BoxFit.fill,
              // ),
            ),
          ),
          SliverList.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Container(
                  height: 100,
                  width: 100,
                  color: Colors.redAccent,
                ),
                title: Text('Produto ${index + 1}'),
                subtitle: const Text(
                  'Ingredientes, Ingredientes, Ingredientes, Ingredientes',
                ),
                trailing: const Badge(
                  backgroundColor: Colors.green,
                  label: Text(r' R$ 10,00'),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:relic_tracker/widgets/left_drawer.dart';


class RelicDetailPage extends StatelessWidget {
  final String name;
  final String amount;
  final String description;
  final String bestRarity;
  final String idealMainStat;
  final String idealVariantAmount;

  const RelicDetailPage(this.name, this.amount, this.description, this.bestRarity,
                        this.idealMainStat, this.idealVariantAmount, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Relic Details'),
      ),
      drawer: const LeftDrawer(),
      body: Container(
          // Container untuk menyimpan Icon dan Text
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
                Text(
                  amount,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
                Text(
                  description,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
                Text(
                  bestRarity,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
                Text(
                  idealMainStat,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
                Text(
                  idealVariantAmount,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      "Detail",
                      style: TextStyle(color: Colors.white),
                    ),
                ),
              ],
            ),
          ),
        ),
      );
  }
}
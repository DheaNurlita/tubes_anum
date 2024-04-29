import 'package:flutter/material.dart';
import 'package:tubes_anum/kalkulator/data.dart';

class Calculate extends StatefulWidget {
  const Calculate({super.key});

  @override
  State<Calculate> createState() => _CalculateState();
}

class _CalculateState extends State<Calculate> {
  // final TextEditingController ctrlFungsi = TextEditingController();
  // final TextEditingController ctrlX0 = TextEditingController();
  // final TextEditingController ctrlX1 = TextEditingController();
  // final TextEditingController ctrlError = TextEditingController();

  bool isShowClearA = false;
  bool isShowClearB = false;
  bool isShowClearC = false;
  bool isShowClearD = false;

  void calculateBisection() {
    String fungsi = dc.ctrlFungsi.text;
    double x0 = double.parse(dc.ctrlX0.text);
    double x1 = double.parse(dc.ctrlX1.text);
    double error = double.parse(dc.ctrlError.text);

    double y0 = _evaluateFunction(fungsi, x0);
    double y1 = _evaluateFunction(fungsi, x1);

    if (y0 * y1 > 0) {
      ScaffoldMessenger.of(context).showSnackBar(
        // ignore: prefer_const_constructors
        SnackBar(content: Text('Tanda fungsi pada x0 dan x1 harus berbeda')),
      );
      return;
    }

    double xn = x0;
    double yn = y0;
    double errorApprox = double.infinity;

    while (errorApprox > error) {
      xn = (x0 + x1) / 2;
      yn = _evaluateFunction(fungsi, xn);

      if (yn * y0 < 0) {
        x1 = xn;
        y1 = yn;
      } else {
        x0 = xn;
        y0 = yn;
      }

      errorApprox = (x1 - x0).abs() / 2;

      if (yn == 0) {
        break;
      }
    }

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Solusi: $xn')),
    );
  }

  double _evaluateFunction(String function, double x) {
    // Implementasi evaluasi fungsi sesuai kebutuhan
    // Contoh untuk fungsi sederhana x^2
    // return pow(x, 2);
    return 0.0; // Gantikan dengan implementasi yang sesuai
  }

  @override
  Widget build(BuildContext context) {
    return

        // Container(
        //   width: 50,
        //   height: 200,
        //   color: Colors.amber,
        // );

        Container(
      // width: double.infinity,
      // height: 500,
      color: const Color(0xffFFFAD7),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: dc.ctrlFungsi,
            onChanged: (value) {
              setState(() {
                isShowClearA = value.isNotEmpty;
              });
            },
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              hintText: 'Fungsi',
              suffixIcon: isShowClearA
                  ? IconButton(
                      onPressed: () {
                        dc.ctrlFungsi.clear();
                        setState(() {
                          isShowClearA = false;
                        });
                      },
                      icon: const Icon(Icons.clear),
                    )
                  : null,
            ),
          ),
          const SizedBox(height: 10),
          TextField(
            controller: dc.ctrlX0,
            onChanged: (value) {
              setState(() {
                isShowClearB = value.isNotEmpty;
              });
            },
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              hintText: 'Nilai Awal x0',
              suffixIcon: isShowClearB
                  ? IconButton(
                      onPressed: () {
                        dc.ctrlX0.clear();
                        setState(() {
                          isShowClearB = false;
                        });
                      },
                      icon: const Icon(Icons.clear),
                    )
                  : null,
            ),
          ),
          const SizedBox(height: 10),
          TextField(
            controller: dc.ctrlX1,
            onChanged: (value) {
              setState(() {
                isShowClearC = value.isNotEmpty;
              });
            },
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              hintText: 'Nilai Awal x1',
              suffixIcon: isShowClearC
                  ? IconButton(
                      onPressed: () {
                        dc.ctrlX1.clear();
                        setState(() {
                          isShowClearC = false;
                        });
                      },
                      icon: const Icon(Icons.clear),
                    )
                  : null,
            ),
          ),
          const SizedBox(height: 10),
          TextField(
            controller: dc.ctrlError,
            onChanged: (value) {
              setState(() {
                isShowClearD = value.isNotEmpty;
              });
            },
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              hintText: 'Tolerasi Error',
              suffixIcon: isShowClearD
                  ? IconButton(
                      onPressed: () {
                        dc.ctrlError.clear();
                        setState(() {
                          isShowClearD = false;
                        });
                      },
                      icon: const Icon(Icons.clear),
                    )
                  : null,
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}

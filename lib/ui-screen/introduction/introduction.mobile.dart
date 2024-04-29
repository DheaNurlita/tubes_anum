part of '_index.dart';

class IntroMobile extends StatelessWidget {
  const IntroMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: const Text(''),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // const Background(),
              Container(
                width: 1000,
                height: null,
                color: const Color.fromARGB(255, 223, 220, 188),
                child: const Column(
                  children: [
                    Background(),
                  ],
                ),
              ),

              Container(
                width: double.infinity,
                height: width > 900 ? 400 : null,
                color: Colors.white,
                child: const Column(
                  children: [
                    Judul(),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: width > 900 ? 400 : null,
                color: Colors.white,
                child: const Column(
                  children: [
                    SizedBox(width: 20),
                    KalkulatorMobile(),
                  ],
                ),
              ),
              const SizedBox(width: 50),
              Container(
                width: double.infinity,
                height: width > 900 ? 400 : null,
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Hasil Perhitungan'),
                    const SizedBox(width: 20),
                    Container(
                      width: 500,
                      height: 500,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 500,
                          color: Colors.transparent,
                          child: const Column(
                            children: [
                              Algorithm(),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: width > 100 ? 100 : null,
                color: Colors.black,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Give Me Back'),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

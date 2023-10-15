import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catlog.dart';
import 'package:flutter_application_1/widgets/themes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;
  const HomeDetailPage({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.lightCreamColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: const EdgeInsets.all(20),
          children: [
            Text(
              "\$${catalog.price.toString()}",
              textScaleFactor: 1.5,
              style: const TextStyle(
                color: Color.fromARGB(255, 160, 47, 38),
                fontWeight: FontWeight.bold,
                // fontSize: 25,
              ),
            ),
            SizedBox(
              height: 50,
              width: 130,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    const StadiumBorder(),
                  ),
                  backgroundColor: MaterialStateProperty.all(
                    MyTheme.darkBluishColor,
                  ),
                ),
                child: const Text(
                  "Add to cart",
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            SizedBox(
              height: 200,
              child: Hero(
                tag: Key(
                  catalog.id.toString(),
                ),
                child: Image.network(
                  catalog.image,
                ),
              ),
            ),
            Expanded(
              child: VxArc(
                height: 40,
                edge: VxEdge.top,
                arcType: VxArcType.convey,
                child: Container(
                  width: context.screenHeight,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 64.0,
                    ),
                    child: Column(
                      children: [
                        Text(
                          catalog.name,
                          style: TextStyle(
                            color: MyTheme.darkBluishColor,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            fontFamily: GoogleFonts.poppins().fontFamily,
                          ),
                        ),
                        Text(
                          catalog.desc,
                          style: Theme.of(context).textTheme.bodySmall?.merge(
                                TextStyle(
                                  fontSize: 20,
                                  fontFamily: GoogleFonts.poppins().fontFamily,
                                ),
                              ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: Text(
                            "I still desolate back surcease nothing surcease. The and but and lenore late while quaff thee his, this in usby lie name no forgiveness sitting tell, raven in yore door i at. And i that plainly said, radiant i that bore lore, in marvelled and as and wretch as, evilprophet.",
                            style: Theme.of(context).textTheme.bodySmall?.merge(
                                  TextStyle(
                                    fontSize: 15,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                  ),
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

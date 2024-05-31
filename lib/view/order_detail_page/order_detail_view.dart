import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderDetailView extends StatefulWidget {
  const OrderDetailView({super.key});

  @override
  _OrderDetailViewState createState() => _OrderDetailViewState();
}

class _OrderDetailViewState extends State<OrderDetailView> {
  final List<String> deliveryOptions = [
    "Packaging",
    "On The Road",
    "Completed"
  ];
  String? selectedOption;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.all(27),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/img/angle-circle-right 1.png"),
                Text(
                  "Order Detail",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: Color(0xFF7EC1EB),
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                Container(
                  width: 30,
                )
              ],
            ),
            SizedBox(
              height: 48,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Center(
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Container(
                      width: 259,
                      height: 370,
                      decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 5,
                            offset: Offset(0, 1),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20, left: 27),
                              child: Row(
                                children: [
                                  Stack(
                                    children: [
                                      Card(
                                        elevation: 4,
                                        color: Colors.white,
                                        child: Container(
                                          width: 80,
                                          height: 80,
                                          child: Image.asset(
                                            'assets/img/shoes-icon2.png',
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 10),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Expanded(
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 5),
                                                child: Text(
                                                  'Regular Clean',
                                                  style: GoogleFonts.poppins(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w600,
                                                    color: Color(0xFF000000),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          'x2',
                                          style: GoogleFonts.poppins(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xFF000000),
                                          ),
                                        ),
                                        Text(
                                          '50.000',
                                          style: GoogleFonts.poppins(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xFF7EC1EB),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Container(
                                  width: 230,
                                  height: 1,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFD9D9D9),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20, left: 27),
                              child: Text(
                                'Ordered By',
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF000000),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10, left: 27),
                              child: Row(
                                children: [
                                  Container(
                                    width: 49,
                                    height: 49,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "assets/img/profile-icon.png"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Fawwaz Topekkk',
                                        style: GoogleFonts.poppins(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF000000),
                                        ),
                                      ),
                                      Text(
                                        '@bawwazKeras',
                                        style: GoogleFonts.poppins(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF000000),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Container(
                                  width: 230,
                                  height: 1,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFD9D9D9),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20, left: 27),
                              child: Text(
                                'Delivery option',
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF000000),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10, left: 27),
                              child: Container(
                                width: 209,
                                height: 45,
                                child: DropdownButtonFormField<String>(
                                  value: selectedOption,
                                  icon: Icon(Icons.arrow_downward),
                                  iconSize: 20,
                                  elevation: 10,
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                    ),
                                  ),
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 8.0, horizontal: 12.0),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFFB8BBC2),
                                        width: 1.3,
                                      ),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFFB8BBC2),
                                        width: 1.3,
                                      ),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                  hint: Text(
                                    "Select delivery option",
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      selectedOption = newValue!;
                                    });
                                  },
                                  items: deliveryOptions
                                      .map<DropdownMenuItem<String>>(
                                          (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

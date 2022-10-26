import 'package:flutter/material.dart';
import 'package:primer_exa/pages/avatar_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Color.fromARGB(255, 93, 119, 139),
          body: Center(
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(46)),
              color: Color.fromARGB(255, 159, 173, 194),
              margin: EdgeInsets.only(top: 20),
              child: SizedBox(
                width: 390.2,
                height: 1630,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 90.0,
                      child: ClipRRect(
                        child: Image.asset('assets/images/login.jpg'),
                        borderRadius: BorderRadius.circular(180.0),
                      ),
                    ),
                    Divider(
                      thickness: 1.5,
                      color: Colors.white12,
                      height: 100,
                    ),
                    Card(
                        margin: EdgeInsets.all(15.0),
                        elevation: 55.0,
                        child: Column(
                          children: [
                            Text(
                              "Email",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xFF001d3d)),
                            ),
                            TextField(
                              decoration: InputDecoration(
                                hintText: 'Correo@example.com',
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide:
                                        BorderSide(color: Colors.black)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide:
                                        BorderSide(color: Colors.black)),
                                prefixIcon: Icon(Icons.email),
                              ),
                              keyboardType: TextInputType.emailAddress,
                              textInputAction: TextInputAction.next,
                              obscureText: false,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Password",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xFF001d3d)),
                            ),
                            TextField(
                              decoration: InputDecoration(
                                hintText: 'Password',
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide:
                                        BorderSide(color: Colors.black)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide:
                                        BorderSide(color: Colors.black)),
                                prefixIcon: Icon(Icons.lock),
                                suffixIcon: Icon(Icons.visibility_off),
                              ),
                              keyboardType: TextInputType.emailAddress,
                              textInputAction: TextInputAction.next,
                              obscureText: true,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                                margin: const EdgeInsets.all(10),
                                child: ElevatedButton(
                                  onPressed: () {Navigator.push(context, MaterialPageRoute(builder: ((context) => AvatarPage()))},
                                  child: Text("LOGIN"),
                                  style: ElevatedButton.styleFrom(
                                      minimumSize: Size(350, 40)),
                                )),
                          ],
                        ))
                  ],
                ),
              ),
            ),
          )),
    );
  }
}

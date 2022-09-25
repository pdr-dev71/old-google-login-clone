import 'package:flutter/material.dart';

class HomeLoginGoogle extends StatefulWidget {
  const HomeLoginGoogle({Key? key}) : super(key: key);

  @override
  State<HomeLoginGoogle> createState() => _HomeLoginGoogleState();
}

class _HomeLoginGoogleState extends State<HomeLoginGoogle> {
  bool rememberMe = false;

  void _onRememberMeChanged(bool? newValue) => setState(() {
        rememberMe = newValue!;

        if (rememberMe) {
        } else {}
      });
  @override
  Widget build(BuildContext context) {
    double withScreen = MediaQuery.of(context).size.width;
    double heightScreen = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Image.asset(
                  'assets/images/google-logo.jpg',
                  width: withScreen * .4,
                  height: heightScreen * .1,
                ),
                const Text(
                  'Sign in with your Google Account',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Card(
                  child: Container(
                    margin: const EdgeInsets.only(top: 10),
                    color: Colors.grey.withOpacity(0.1),
                    width: withScreen * .9,
                    height: heightScreen * .5,
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/avatar.png',
                          width: withScreen * .3,
                          height: heightScreen * .2,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              hintText: 'Email',
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              hintText: 'Password',
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 14),
                          child: Column(
                            children: [
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary:
                                      const Color.fromRGBO(81, 147, 242, 1),
                                  fixedSize: Size(
                                    withScreen * .756,
                                    heightScreen * .060,
                                  ),
                                ),
                                onPressed: () {},
                                child: const Text(
                                  'Sign in',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 19,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Checkbox(
                                          value: rememberMe,
                                          onChanged: _onRememberMeChanged,
                                        ),
                                        const Text(
                                          'Stay signed in',
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        )
                                      ],
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(right: 14),
                                      child: Text(
                                        'Need help?',
                                        style: TextStyle(
                                          color:
                                              Color.fromRGBO(81, 147, 242, 1),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

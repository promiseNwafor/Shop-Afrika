// import 'package:ShopAfrika/components/fetch_data.dart';
import 'package:flutter/material.dart';

class MessageScreen extends StatefulWidget {
  @override
  _MessageScreenState createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  // final HttpService _httpService = HttpService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white10,
        title: Center(
            child: Text(
          'Messages',
          style: TextStyle(color: Colors.black),
        )),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              alignment: Alignment.center,
              height: 50.0,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[500].withOpacity(0.3),
                    blurRadius: 20,
                    spreadRadius: 1,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: Form(
                child: TextFormField(
                  // validator: (value) {
                  //   if (value.isEmpty) {
                  //     return "Please enter the product name";
                  //   }
                  //   return null;
                  // },
                  onChanged: (String value) {},
                  // controller: _searchController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    filled: true,
                    contentPadding: EdgeInsets.only(top: 0.0, left: 10.0),
                    fillColor: Colors.white,
                    hintText: "Vendor Name",
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0),
                    suffixIcon: Container(
                      width: MediaQuery.of(context).size.width / 6,
                      // alignment: Alignment.topCenter,
                      margin: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(25.0)),
                        color: const Color(0xffe61d1d),
                      ),
                      child: IconButton(
                        icon: Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 18.0,
                        ),
                        onPressed: () {},
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.all(Radius.circular(50.0))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey[600]),
                        borderRadius: BorderRadius.all(Radius.circular(50.0))),
                  ),
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              margin: const EdgeInsets.only(top: 20.0),
              child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, i) {
                    return InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/chat');
                      },
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 15),
                            child: Row(
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.red[600],
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(
                                    Icons.person,
                                    color: Colors.white,
                                  ),
                                ),
                                Expanded(
                                  child: ListTile(
                                    title: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Name Surname',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Divider(
                                          color: Colors.white,
                                        ),
                                        Text(
                                          'Hello',
                                          style: TextStyle(
                                              color: Colors.grey[700]),
                                        ),
                                      ],
                                    ),
                                    trailing: Text('5m'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider()
                        ],
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}

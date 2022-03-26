import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:serede/screens/home/widgets/headerWidget.dart';
import 'package:slide_popup_dialog/slide_popup_dialog.dart' as slideDialog;
// import 'package:url_launcher/url_launcher.dart';

class HomeScreenPage extends StatefulWidget {
  @override
  _HomeScreenPageState createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreenPage> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  void _showDialog() {
    slideDialog.showSlideDialog(
        context: context,
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.80,
              width: double.infinity,
              child: WebviewScaffold(
                url:
                    'https://workforce.brasiltelecom.com.br/cgi-bin/DetalhesBAs.pl?UsErLoGiN=&imprimir=true&bas=${_controller.text}&tipo=todos',
                withZoom: true,
                withLocalStorage: true,
              ),
            )
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
      },
      child: Scaffold(
          floatingActionButton: FloatingActionButton(
              onPressed: _showDialog,
              tooltip: 'Seu BA',
              child: Icon(Icons.search)),
          body: SafeArea(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              HeaderWidget(),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 28),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                          controller: _controller,
                          keyboardType: TextInputType.number,
                          style: TextStyle(
                              color: Color(0xFFF234253),
                              fontWeight: FontWeight.bold),
                          decoration: InputDecoration(
                              labelText: "Digite seu BA",
                              labelStyle: TextStyle(
                                  color: Colors.grey[400],
                                  fontWeight: FontWeight.w500),
                              prefixIcon: Icon(
                                Icons.search,
                                size: 28,
                                color: Colors.grey,
                              ),
                              fillColor: Color(0xFFFEAF2F4),
                              filled: true,
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              suffixIcon: IconButton(
                                  icon: Icon(
                                    Icons.clear,
                                    color: Colors.grey,
                                  ),
                                  onPressed: () {
                                    _controller.clear();
                                  }))),
                    )
                  ],
                ),
              ),
            ],
          ))),
    );
  }
}

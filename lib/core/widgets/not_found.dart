import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_app/routing/app_routes.dart';

class NotFoundPage extends StatefulWidget {
  const NotFoundPage({super.key});

  @override
  State<NotFoundPage> createState() => _NotFoundPageState();
}

class _NotFoundPageState extends State<NotFoundPage> {
  final ValueKey<int> _key =
      ValueKey<int>(DateTime.now().millisecondsSinceEpoch);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
        decoration: BoxDecoration(color: Colors.redAccent),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AnimatedSwitcher(
                  duration: Duration(seconds: 1),
                  child: Icon(
                    Icons.error_outline,
                    key: _key,
                    size: 100,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  'Página não encontrada',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 1.2,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 15),
                Text(
                  'A página que você está tentando acessar não existe ou foi movida.',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 40),
                ElevatedButton(
                  onPressed: () {
                    GoRouter.of(context).go(Routes.home);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.redAccent,
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    textStyle:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    elevation: 5,
                  ),
                  child: Text("Voltar para Home"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

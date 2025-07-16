import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meditation_app/widgets/breeze_app_bar.dart';
import 'package:meditation_app/widgets/breathing_configuration.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:localization/localization.dart'; 

class BreathingSettingsScreen extends StatefulWidget {
  BreathingSettingsScreen({super.key});

  @override
  State<BreathingSettingsScreen> createState() => _BreathingSettingsScreenState();
}

Future<void> resetData() async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.clear();
}

class _BreathingSettingsScreenState extends State<BreathingSettingsScreen> {
  var tempo = 2.0;
  var round = 1;
  var volume = 80.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BreezeAppBar(title: 'breathing_circle'.i18n()),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                width: 480,
                child: BreathingConfiguration(),
              ),
              OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    minimumSize: Size(140, 50),
                  ),
                  child: Text(
                    'close_button'.i18n(),
                    style: TextStyle(fontSize: 20.0),
                  ),
                  onPressed: () {
                    context.go('/settings');
                  },
                ),
            ],
          ),
        ),
      ),
    );
  }
}

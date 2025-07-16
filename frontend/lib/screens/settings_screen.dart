import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meditation_app/widgets/breeze_bottom_nav.dart';
import 'package:meditation_app/widgets/breeze_app_bar.dart';
import 'package:meditation_app/widgets/language_selector.dart';
import 'package:localization/localization.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:meditation_app/providers/user_provider.dart';
import 'package:provider/provider.dart';
import 'package:meditation_app/models/preferences.dart';


class SettingsScreen extends StatefulWidget {
  SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _screenAlwaysOn = true;
  bool isLoading = false;


  @override
  void initState() {
    super.initState();
    _loadScreenAlwaysOnPreference();
  }

  void handleLanguageChange(String languageCode) async {
    setState(() => isLoading = true);
    await Future.delayed(Duration(seconds: 1)); // Wait for 1 second
    setState(() => isLoading = false);
  }


  Future<void> _loadScreenAlwaysOnPreference() async {
    final userProvider = Provider.of<UserProvider>(context, listen: false);
    final preferences =
        await userProvider.loadUserPreferences(['screenAlwaysOn']);
    setState(() {
      _screenAlwaysOn = preferences.screenAlwaysOn;
    });
  }

  Future<void> _updateScreenAlwaysOnPreference(bool value) async {
    final userProvider = Provider.of<UserProvider>(context, listen: false);
    final preferences = Preferences(
      screenAlwaysOn: value,
    );
    userProvider.saveUserPreferences(preferences);

    setState(() {
      _screenAlwaysOn = value;
    });
  }

  Future<void> _resetData() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }

  void _showResetConfirmation() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('confirm_reset'.i18n()),
          content: Text('reset_data_warning'.i18n()),
          actions: <Widget>[
            TextButton(
              child: Text('cancel'.i18n()),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('reset_data'.i18n(),
                  style: TextStyle(color: Colors.red)),
              onPressed: () {
                _resetData();
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return Center(
        child: SizedBox(
          width: 128.0,
          height: 128.0,
          child: CircularProgressIndicator(),
        ),
      );
    }
    return Scaffold(
      appBar: BreezeAppBar(title: 'settings_title'.i18n()),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: SizedBox(
            width: 480,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    minimumSize: Size(140, 50),
                  ),
                  child: Text(
                    'show_tutorial_button'.i18n(),
                    style: TextStyle(fontSize: 20.0),
                  ),
                  onPressed: () {
                    context.go('/guide/welcome');
                  },
                ),
                SizedBox(height: 20),
                OutlinedButton(
                  child: Text(
                    'breathing_circle_button'.i18n(),
                    style: TextStyle(fontSize: 18.0),
                  ),
                  onPressed: () {
                    context.go('/breathing');
                  },
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    children: [
                      Text('language_title'.i18n(),
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold)),
                      LanguageSelector(onLanguageChanged: handleLanguageChange),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                SwitchListTile(
                  title: Text('keep_screen_on_label'.i18n()),
                  value: _screenAlwaysOn,
                  onChanged: (bool value) {
                    _updateScreenAlwaysOnPreference(value);
                  },
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Text('data_management_title'.i18n(),
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                ),

                SizedBox(height: 20),
                TextButton(
                  onPressed: _showResetConfirmation,
                  child: Text("reset_data_button".i18n(),
                      style: TextStyle(color: Colors.red)),
                ),
                SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BreezeBottomNav(),
    );
  }
}

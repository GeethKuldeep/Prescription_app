import 'package:flutter/material.dart';
import 'auth/PatientLogin.dart';
import 'auth/DoctorLogin.dart';
import 'package:amplify_analytics_pinpoint/amplify_analytics_pinpoint.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_storage_s3/amplify_storage_s3.dart';


import 'amplifyconfiguration.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Amplify amplifyInstance = Amplify();
  @override
  void initState() {
    // We have an initial state and we configure it
    super.initState();

    configureAmplify();


  }
  void configureAmplify() async {
    if (!mounted) return;

    try {
      AmplifyAnalyticsPinpoint analyticsPlugin = AmplifyAnalyticsPinpoint();
      AmplifyAuthCognito authPlugin = AmplifyAuthCognito();
      AmplifyStorageS3 storage = AmplifyStorageS3();

      // Authentication -> AWS Cognito
      // Analytics -> AWS Pinpoint
      // Storage -> AWS S3
      amplifyInstance.addPlugin(
          authPlugins: [authPlugin],
          analyticsPlugins: [analyticsPlugin],
          storagePlugins: [storage]);

      await amplifyInstance.configure(amplifyconfig);
    } catch (e) {
      print(e.toString());
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Safety is number one"),
      ),
      body: Center(
        child: Container(
            child: Column(
                children: [
                  Center(
                    child: RaisedButton(
                        onPressed:(){
                      Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (_) => Login()));
                    },
                      child: Text("Patient"),
                    ),
                  ),
                  Center(
                    child: RaisedButton(
                      onPressed:(){
                        Navigator.pushReplacement(
                            context, MaterialPageRoute(builder: (_) => DoctorLogin()));
                      },
                      child: Text("Doctor"),
                    ),
                  ),
                ],
              ),
        ),
      ),
    );
  }
}

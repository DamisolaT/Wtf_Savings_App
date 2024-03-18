
import 'package:flutter/material.dart';
import 'package:wtf_savings_app/features/signup/pages/registration_page.dart';
import 'package:wtf_savings_app/shared/widgets/custom_textfield.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(16),
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                  onPressed: (){},
                  icon:Icon(Icons.cancel_outlined,
                    size: 45,)
              ),
            ),
            SizedBox(height: 40,),
            Text("Login",
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor
              ),),
            Text("Securely login to your PiggyVest"),

            CustomTextField(
              label: "Phone Number",
              onchanged: (newText){},
            ),
            CustomTextField(
              label: "Password",
              onchanged: (newText){},
            ),
            SizedBox(height: 24,),
            ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16),
                            topRight: Radius.circular(16),
                            bottomRight:Radius.circular(16)
                        )
                    ),
                    backgroundColor: Theme.of(context).primaryColor,
                    foregroundColor: Colors.white
                ),
                child: Text("LOG IN")
            ),
            TextButton(
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context){
                        return RegistrationPage();
                      }));
                },
                child: Text("Don't have an account? Register")
            ),
            TextButton(
                onPressed: (){},
                child: Text("Forget your password")
            )




          ],
        ),
      ),
    );
  }
}

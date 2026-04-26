import 'package:flutter/material.dart';
import 'package:talabat_like_app/features/loginscreen/view/login_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:talabat_like_app/features/registerscreen/controllers/registercubit.dart';
import 'package:talabat_like_app/features/registerscreen/controllers/registerstate.dart';
import 'package:talabat_like_app/widgets/route_screen.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<Registercubit, Registerstate>(
        listener: (context, state) {
          if (State is registersuccess) {
            Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) => HomePage()),
              (route) => false,
            );
          }
          if (state is registererror) {
            showAboutDialog(
              context: (context),
              barrierDismissible: true,
              children: [Text(state.message)],
            );
          }
        },
        builder: (context, State) {
          final Cubit = context.read<Registercubit>();
          return Padding(
            padding: const EdgeInsets.all(16),
            child: Form(
              child: Column(
                spacing: 16,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "login screen",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  TextFormField(
                    controller: Cubit.emailcontroller,

                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),

                      labelText: 'email',
                    ),
                    validator: (value) =>
                        value!.isEmpty ? "email is requires" : null,
                  ),
                  TextFormField(
                    controller: Cubit.passwordcontroller,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      suffixIcon: IconButton(
                        onPressed: Cubit.changepasswordvisible,
                        icon: Icon(
                          Cubit.ispasswordvisible
                              ? Icons.visibility_off
                              : Icons.visibility_off,
                        ),
                      ),
                      labelText: 'password',
                    ),
                    obscureText: Cubit.ispasswordvisible,
                    validator: (value) =>
                        value!.isEmpty ? "password is requires" : null,
                  ),
                  TextFormField(
                    controller: Cubit.confirmpasswordcontroller,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      suffixIcon: IconButton(
                        onPressed: Cubit.changeconfirmpasswordvisible,
                        icon: Icon(
                          Cubit.isconfirmpasswordvissible
                              ? Icons.visibility_off
                              : Icons.visibility,
                        ),
                      ),
                      labelText: 'confirm password',
                    ),
                    obscureText: Cubit.isconfirmpasswordvissible,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "confirm password is required";
                      } else if (value != Cubit.confirmpasswordcontroller) {
                        return "password is not match";
                      } else {
                        return null;
                      }
                    },
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      padding: WidgetStatePropertyAll(
                        EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                      ),
                      backgroundColor: WidgetStatePropertyAll(Colors.lightBlue),
                    ),
                    onPressed: () {
                      (State is registerloading)
                          ? null
                          : () {
                              if (Cubit.formkey.currentState!.validate()) {
                                Cubit.register();
                              }
                            };
                    },
                    child: (State is registerloading)
                        ? CircularProgressIndicator(color: Colors.white)
                        : Text(
                            "Register",
                            style: TextStyle(color: Colors.white),
                          ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("dont have account"),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => login()),
                          );
                        },
                        child: Text(
                          "login",
                          style: TextStyle(color: Colors.blueAccent),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

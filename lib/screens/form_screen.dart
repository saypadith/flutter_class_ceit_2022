import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  final _formKey = GlobalKey<FormState>();
  bool? _passwordVisible;
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form'),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  TextFormField(
                    controller: _nameController,
                    decoration: const InputDecoration(
                      labelText: 'Name',
                      hintText: 'Enter your name',
                      prefixIcon: Icon(Icons.person),
                    ),
                    keyboardType: TextInputType.name,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your name';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: _emailController,
                    decoration: const InputDecoration(
                      labelText: 'Email',
                      hintText: 'Enter your email',
                      prefixIcon: Icon(Icons.email),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your email';
                      } else if (!value.contains('@')) {
                        return 'Please enter a valid email';
                      } else if (!value.contains('.')) {
                        return 'Please enter a valid email';
                      }
                      return null;
                    },
                  ),
                  // phone form
                  TextFormField(
                    controller: _phoneController,
                    decoration: const InputDecoration(
                      labelText: 'Phone',
                      hintText: 'Enter your phone',
                      prefixIcon: Icon(Icons.phone),
                    ),
                    keyboardType: TextInputType.phone,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your phone';
                      } else if (value.length < 8) {
                        return 'ເບີໂທລະສັບຕ້ອງມີຢູ່ຢ່າງນ້ອຍ 8 ຕົວ';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: 'Enter your password',
                      // Here is key idea
                      prefixIcon: const Icon(Icons.lock),
                      suffixIcon: IconButton(
                        icon: Icon(
                          // Based on passwordVisible state choose the icon
                          _passwordVisible!
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Theme.of(context).primaryColorDark,
                        ),
                        onPressed: () {
                          // Update the state i.e. toogle the state of passwordVisible variable
                          setState(() {
                            _passwordVisible = !_passwordVisible!;
                          });
                        },
                      ),
                    ),
                    keyboardType: TextInputType.visiblePassword,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your password';
                      } else if (value.length < 10) {
                        return 'ລະຫັດຜ່ານຕ້ອງມີຢູ່ຢ່າງນ້ອຍ 10 ຕົວ';
                      } else if (!value.contains(RegExp(r'[A-Z]'))) {
                        return 'ລະຫັດຜ່ານຕ້ອງມີຢູ່ຢ່າງນ້ອຍ 1 ຕົວພິມໃຫຍ່';
                      } else if (!value.contains(RegExp(r'[a-z]'))) {
                        return 'ລະຫັດຜ່ານຕ້ອງມີຢູ່ຢ່າງນ້ອຍ 1 ຕົວພິມນ້ອຍ';
                      } else if (!value.contains(RegExp(r'[0-9]'))) {
                        return 'ລະຫັດຜ່ານຕ້ອງມີຢູ່ຢ່າງນ້ອຍ 1 ຕົວເລກ';
                      }
                      return null;
                    },
                    obscureText: !_passwordVisible!,
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text(
                                  'Name: ${_nameController.text} Email: ${_emailController.text} Phone: ${_phoneController.text} Password: ${_passwordController.text}')));
                        }
                      },
                      child: Text("Submit"))
                ],
              )),
        ),
      ),
    );
  }
}

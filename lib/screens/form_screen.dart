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
  TextEditingController nameController = TextEditingController();
  String _email = "";
  bool passwordVisible = false;

  @override
  void initState() {
    // passwordVisible = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Form")),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                TextFormField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    labelText: "Name",
                    hintText: "ກະລຸນາປ້ອນຊື່ຂອງທ່ານ",
                    prefixIcon: Icon(Icons.person),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "ກະລຸນາປ້ອນຊື່ຂອງທ່ານ";
                    } else if (value.length < 5) {
                      return "ຊື່ຂອງທ່ານບໍ່ຖືກຕ້ອງ";
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "ອີເມວ",
                    hintText: "ກະລຸນາປ້ອນອີເມວຂອງທ່ານ",
                    prefixIcon: Icon(Icons.email),
                  ),
                  initialValue: _email,
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (value) {
                    setState(() {
                      _email = value;
                    });
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "ກະລຸນາປ້ອນອີເມວຂອງທ່ານ";
                    } else if (!value.contains("@")) {
                      return "ອີເມວຂອງທ່ານບໍ່ຖືກຕ້ອງ";
                    } else if (!value.contains(".")) {
                      return "ອີເມວຂອງທ່ານບໍ່ຖືກຕ້ອງ";
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "ເບີໂທ",
                    hintText: "ກະລຸນາປ້ອນເບີໂທຂອງທ່ານ",
                    prefixIcon: Icon(Icons.phone),
                  ),
                  keyboardType: TextInputType.phone,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "ກະລຸນາປ້ອນເບີໂທຂອງທ່ານ";
                    } else if (value.length < 8) {
                      return "ເບີໂທຂອງທ່ານບໍ່ຖືກຕ້ອງ";
                    }
                    return null;
                  },
                ),
                TextFormField(
                  // create decoration with password visible icon on suffix
                  decoration: InputDecoration(
                    labelText: "ລະຫັດຜ່ານ",
                    hintText: "ກະລຸນາປ້ອນລະຫັດຜ່ານຂອງທ່ານ",
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: IconButton(
                      icon: Icon(
                        // Based on passwordVisible state choose the icon
                        passwordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: Theme.of(context).primaryColorDark,
                      ),
                      onPressed: () {
                        // Update the state i.e. toogle the state of passwordVisible variable
                        setState(() {
                          passwordVisible = !passwordVisible;
                        });
                      },
                    ),
                  ),
                  obscureText: !passwordVisible,
                  // obscuringCharacter: "*",
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "ກະລຸນາປ້ອນລະຫັດຜ່ານຂອງທ່ານ";
                    } else if (value.length < 8) {
                      return "ລະຫັດຜ່ານຂອງທ່ານຢ່າງນ້ອຍຕ້ອງ 8 ຕົວອັກສອນ";
                    } else if (!value.contains(RegExp(r'[A-Z]'))) {
                      return "ລະຫັດຜ່ານຂອງທ່ານຕ້ອງມີຕົວອັກສອນທີ່ເປັນຕົວອັກສອນໃຫຍ່ກ່ວາຫນຶ່ງ";
                    } else if (!value.contains(RegExp(r'[0-9]'))) {
                      return "ລະຫັດຜ່ານຂອງທ່ານຕ້ອງມີຕົວອັກສອນທີ່ເປັນຕົວເລກ";
                    }
                    return null;
                  },
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                              "Name: ${nameController.text} and Email: $_email"),
                        ),
                      );
                    }
                  },
                  child: const Text("ສົ່ງຂໍ້ມູນ"),
                ),
                // create text widget to show name and email from textfield
                Text(
                  "Name: ${nameController.text} and Email: $_email",
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

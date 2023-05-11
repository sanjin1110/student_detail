import 'package:flutter/material.dart';

import '../model/student.dart';

// enum Gender { male, female }

class AddStudent extends StatefulWidget {
  const AddStudent({super.key});

  @override
  State<AddStudent> createState() => _AddStudentState();
}

class _AddStudentState extends State<AddStudent> {
  // Gender selectedGender = Gender.male;
  String? selectedCity;
  String? gender;

  final List<String> cities = [
    "Kathmandu",
    "Lalitpur",
    "Bhaktapur",
    "Pokhara",
  ];
    List<Student> lstStudent = [];

  final fnameController = TextEditingController();
  final lnameController = TextEditingController();
  final ageController = TextEditingController();
  final addressController = TextEditingController();

  var gap = const SizedBox(height: 10);

  final meroKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Student Details"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Form(
            key: meroKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                gap,
                TextFormField(
                  controller: fnameController,
                  decoration: const InputDecoration(
                    labelText: "First Name",
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'please enter first name';
                    }
                    return null;
                  },
                ),
                gap,
                TextFormField(
                  controller: lnameController,
                  decoration: const InputDecoration(
                    labelText: "Last Name",
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'please enter second name';
                    }
                    return null;
                  },
                ),
                gap,
                TextFormField(
                  keyboardType: TextInputType.number,
                  controller: ageController,
                  decoration: const InputDecoration(
                    labelText: "Age",
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'please enter your age';
                    }
                    return null;
                  },
                ),
                gap,
                const Text('Select Gender'),
                RadioListTile(
                  title: const Text('Female'),
                  value: 'Female',
                  groupValue: gender,
                  onChanged: (value) {
                    setState(() {
                      gender = value;
                    });
                  },
                ),
                RadioListTile(
                  title: const Text('Others'),
                  value: 'Others',
                  groupValue: gender,
                  onChanged: (value) {
                    setState(() {
                      gender = value;
                    });
                  },
                ),
                RadioListTile(
                  title: const Text('Others'),
                  value: 'Others',
                  groupValue: gender,
                  onChanged: (value) {
                    setState(() {
                      gender = value;
                    });
                  },
                ),
                // ListTile(
                //   title: const Text('Male'),
                //   leading: Radio(
                //     value: Gender.male,
                //     groupValue: selectedGender,
                //     onChanged: (Gender? value) {
                //       setState(() {
                //         selectedGender = value!;
                //       });
                //     },
                //   ),
                // ),
                // ListTile(
                //   title: const Text('Female'),
                //   leading: Radio(
                //     value: Gender.female,
                //     groupValue: selectedGender,
                //     onChanged: (Gender? value) {
                //       setState(() {
                //         selectedGender = value!;
                //       });
                //     },
                //   ),
                // ),
                TextFormField(
                  minLines: 5, // Set the minimum number of lines to 5
                  maxLines: null,
                  controller: addressController,
                  decoration: const InputDecoration(
                    labelText: "Address",
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'please enter your age';
                    }
                    return null;
                  },
                ),
                gap,
                DropdownButtonFormField<String>(
                  value: selectedCity,
                  items: cities.map((String option) {
                    return DropdownMenuItem<String>(
                      value: option,
                      child: Text(option),
                    );
                  }).toList(),
                  onChanged: ( newValue) {
                    setState(() {
                      selectedCity = newValue;
                    });
                  },
                  decoration: const InputDecoration(
                    hintText: 'Select your city',
                    border: OutlineInputBorder(),
                  ),
                ),
                gap,
                ElevatedButton(
                  onPressed: () {
                    if (meroKey.currentState!.validate()) {
                      Navigator.pushNamed(context, '/addRoute');
                    }
                  },
                  child: const Text("Add Student"),
                ),
                gap,
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/addRoute');
                  },
                  child: const Text("Display Student"),
                ),

                // Radio(value: value, groupValue: groupValue, onChanged: onChanged)
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    fnameController.dispose();
    lnameController.dispose();
    addressController.dispose();
    ageController.dispose();

    super.dispose();
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class RegestionPage extends StatelessWidget {
  RegestionPage({super.key});
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('RegestionPage'),
        ),
        body: FormBuilder(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                FormBuilderTextField(
                  name: 'name',
                  decoration: const InputDecoration(labelText: 'Name'),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(
                      errorText: 'Name is required',
                    ),
                    FormBuilderValidators.firstName(),
                  ]),
                ),
                const SizedBox(height: 20),
                FormBuilderTextField(
                  name: 'email',
                  decoration: const InputDecoration(labelText: 'Email'),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(
                      errorText: 'Email is required',
                    ),
                    FormBuilderValidators.email(),
                  ]),
                ),
                const SizedBox(height: 20),
                FormBuilderTextField(
                  name: 'password',
                  decoration: const InputDecoration(labelText: 'password'),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(
                      errorText: 'password is required',
                    ),
                    FormBuilderValidators.numeric(),
                  ]),
                ),
                const SizedBox(height: 20),
                FormBuilderTextField(
                  name: 'PhoneNumber',
                  decoration: const InputDecoration(labelText: 'Phone number'),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(
                      errorText: 'Phone number is required',
                    ),
                    FormBuilderValidators.numeric(),
                  ]),
                ),
                const SizedBox(height: 50),
                ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState?.saveAndValidate() ?? false) {
      // Form is valid
      final formData = _formKey.currentState?.value;
      print("Form Data: $formData");
    } else {
      // Form is invalid
      print("Validation failed");
    }
                    }, child: const Text("Regestion ")),
              ],
            ),
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:form_velvet_plugin/form_velvet_plugin.dart';
import 'package:velvet_basic_app/pages/form/hooks/use_email_input.dart';
import 'package:velvet_basic_app/pages/form/hooks/use_name_input.dart';
import 'package:velvet_framework/velvet_framework.dart';

class FormPage extends HookWidget {
  const FormPage({super.key});

  @override
  Widget build(BuildContext context) {
    final nameInput = useNameInput();
    final emailInput = useEmailInput();

    final form = useForm(
      [nameInput, emailInput],
      () async {
        throw const FormatException('Error');
      },
      onFailure: (exception) => throw exception,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(translate('pages.form.title')),
      ),
      body: Center(
        child: Form(
          child: Column(
            children: [
              TextFormField(
                focusNode: nameInput.focusNode,
                controller: nameInput.controller,
                decoration: InputDecoration(
                  errorText: nameInput.error.value,
                  labelText: translate('pages.form.name'),
                ),
              ),
              TextFormField(
                focusNode: emailInput.focusNode,
                controller: emailInput.controller,
                decoration: InputDecoration(
                  errorText: emailInput.error.value,
                  labelText: translate('pages.form.email'),
                ),
              ),
              ElevatedButton(
                onPressed: form.submit,
                // onPressed: () => throw ExampleException('Error'),
                child: Text(translate('pages.form.submit')),
              ),
              Text(
                form.isSubmitting.value
                    ? translate('pages.form.is_submitting')
                    : '',
              ),
              Text(
                form.isValid.value ? '' : translate('pages.form.is_invalid'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

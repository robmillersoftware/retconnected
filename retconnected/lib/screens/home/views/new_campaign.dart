import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../../../models/character.dart';
import '../../../services/character_service.dart';

class NewCampaignWizard extends StatefulWidget {
  const NewCampaignWizard({Key? key}) : super(key: key);

  @override
  State<NewCampaignWizard> createState() => _NewCampaignWizardState();
}

class _NewCampaignWizardState extends State<NewCampaignWizard> {
  final _formKey = GlobalKey<FormState>();
  final characterService = GetIt.instance.get<CharacterService>();
  int _index = 0;
  bool _isNpc = false;
  String _characterName = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('RetConnected'),
        ),
        body: Form(
            key: _formKey,
            child: Stepper(
                type: StepperType.vertical,
                currentStep: _index,
                onStepCancel: () {
                  if (_index > 0) {
                    setState(() {
                      _index -= 1;
                    });
                  } else {
                    Navigator.pop(context);
                  }
                },
                onStepContinue: () {
                  if (_index <= 0) {
                    setState(() {
                      _index += 1;
                    });
                  } else {
                    if (_formKey.currentState!.validate()) {
                      _submitForm(context);
                    }
                  }
                },
                onStepTapped: (int index) {
                  setState(() {
                    _index = index;
                  });
                },
                steps: <Step>[
                  _buildCharacterTypeStep(),
                  _buildCharacterDetailsStep(),
                ])));
  }

  void _submitForm(BuildContext context) {
    _formKey.currentState!.save();
    characterService.createNewCharacter(Character(_characterName, _isNpc, ''));
    Navigator.pop(context);
  }

  Step _buildCharacterTypeStep() {
    return Step(
        title: const Text('Choose Character Type'),
        content: Column(
          children: <Widget>[
            ListTile(
              title: const Text('Player'),
              leading: Radio<bool>(
                value: false,
                groupValue: _isNpc,
                onChanged: (bool? value) {
                  setState(() {
                    _isNpc = value!;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text('NPC'),
              leading: Radio<bool>(
                value: true,
                groupValue: _isNpc,
                onChanged: (bool? value) {
                  setState(() {
                    _isNpc = value!;
                  });
                },
              ),
            ),
          ],
        ));
  }

  Step _buildCharacterDetailsStep() {
    return Step(
        title: const Text('Character Details'),
        content: Container(
            padding: const EdgeInsets.all(5.0),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              TextFormField(
                decoration: const InputDecoration(labelText: 'Character Name'),
                onSaved: (newValue) {
                  newValue != null && newValue.isNotEmpty
                      ? _characterName = newValue
                      : _formKey.currentState!.validate();
                },

                // The validator receives the text that the user has entered.
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              const Spacer(),
              Container(
                constraints: const BoxConstraints(maxHeight: 400),
                child: const SingleChildScrollView(
                  child: TextField(
                    maxLines: null,
                  ),
                ),
              ),
            ])));
  }
}

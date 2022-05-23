import 'package:flutter/material.dart';
import 'package:retconnected/common/components/grid_button.dart';
import 'package:retconnected/screens/home/views/new_campaign.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            color: Theme.of(context).disabledColor,
            width: double.infinity,
            height: double.infinity,
            padding: const EdgeInsets.all(8),
            child: Column(children: [
              const Spacer(),
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: _buildBoxDecoration(context),
                child: Row(children: [
                  Column(children: const [
                    Text('Campaigns',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24))
                  ]),
                  const Spacer(),
                  Column(children: [
                    Row(children: [
                      GridButton(
                          () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const NewCampaignWizard())),
                          'Join')
                    ]),
                    Row(children: [
                      GridButton(() => print('CREATE NEW CAMPAIGN'), 'New')
                    ]),
                    Row(children: [
                      GridButton(() => print('LOAD CAMPAIGN'), 'Load')
                    ])
                  ]),
                ]),
              ),
              const Spacer(),
              Container(
                  padding: const EdgeInsets.all(16.0),
                  decoration: _buildBoxDecoration(context),
                  child: Row(children: [
                    Column(children: const [
                      Text('Characters',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24))
                    ]),
                    const Spacer(),
                    Column(children: [
                      Row(children: [
                        GridButton(() => print('CREATE CHARACTER'), 'New')
                      ]),
                      Row(children: [
                        GridButton(() => print('EDIT CHARACTER'), 'Edit')
                      ])
                    ])
                  ])),
              const Spacer(),
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: _buildBoxDecoration(context),
                child: Row(children: [
                  Column(children: const [
                    Text('Locations',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24))
                  ]),
                  const Spacer(),
                  Column(children: [
                    Row(children: [
                      GridButton(() => print('CREATE LOCATION'), 'New')
                    ]),
                    Row(children: [
                      GridButton(() => print('EDIT LOCATION'), 'Edit')
                    ])
                  ])
                ]),
              ),
              const Spacer()
            ])));
  }

  BoxDecoration _buildBoxDecoration(BuildContext context) {
    return BoxDecoration(
        color: Theme.of(context).backgroundColor,
        border: Border.all(
            width: 5, color: Theme.of(context).colorScheme.secondaryContainer),
        borderRadius: const BorderRadius.all(Radius.circular(5)));
  }
}

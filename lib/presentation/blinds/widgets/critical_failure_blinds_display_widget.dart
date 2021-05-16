import 'package:cybear_jinni/domain/devices/devices_failures.dart';
import 'package:flutter/material.dart';

class CriticalFailureBlindsDisplay extends StatelessWidget {
  final DevicesFailure failure;

  const CriticalFailureBlindsDisplay({
    Key key,
    @required this.failure,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const Text(
            '😱',
            style: TextStyle(fontSize: 100),
          ),
          Text(
            'Unexpected error. \nPlease, contact support',
            // failure.maybeMap(
            //   insufficientPermission: (_) => 'Insufficient permissions',
            //   orElse: () => 'Unexpected error. \nPlease, contact support.',
            // ),
            style: const TextStyle(fontSize: 24),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: () {
              print('Sending email!');
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: const <Widget>[
                Icon(Icons.mail),
                SizedBox(width: 4),
                Text('I NEED HELP'),
              ],
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class InternetExceptionWidget extends StatelessWidget {
  final VoidCallback onPress;
  const InternetExceptionWidget({super.key, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: MediaQuery.sizeOf(context).height * 0.15),
        Icon(Icons.cloud_off, size: 60),
        SizedBox(height: MediaQuery.sizeOf(context).height * 0.05),
        Center(
          child: Text(
            'Unable to load.\nPlease Check your Internet\nConnection and retry',
            textAlign: TextAlign.center,
            style: Theme.of(
              context,
            ).textTheme.displayMedium?.copyWith(fontSize: 20),
          ),
        ),
        SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),
        IconButton(onPressed: onPress, icon: Icon(Icons.refresh)),
      ],
    );
  }
}

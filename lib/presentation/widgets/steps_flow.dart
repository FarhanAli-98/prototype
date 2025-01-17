import 'package:flutter/material.dart';
import 'package:prototype/presentation/widgets/foreground.dart';
import 'package:prototype/presentation/widgets/steps.dart';

class StepsFlowSection extends StatelessWidget {
  const StepsFlowSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        // Background waves and connecting paths
        FlowBackground(),

        // Steps content
        Column(
          children: [
            StepOne(),
            StepTwo(),
            StepThree(),
          ],
        ),
      ],
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:prototype/presentation/widgets/gradient_button.dart';
import 'package:prototype/presentation/widgets/steps_flow.dart';
import 'package:prototype/presentation/widgets/wave_section.dart';

class JobWebsite extends StatelessWidget {
  const JobWebsite({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HeaderSection(),
            WaveSection(),
            StepsFlowSection(),
          ],
        ),
      ),
    );
  }
}

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isDesktop = screenWidth > 768;

    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: isDesktop ? screenWidth * 0.1 : 20,
        vertical: isDesktop ? 60 : 40,
      ),
      color: const Color(0xFFE6F3FF),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Deine Job\nwebsite',
                  style: TextStyle(
                    fontSize: isDesktop ? 48 : 32,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF2D3748),
                  ),
                ),
                const SizedBox(height: 30),
                if (isDesktop)
                  GradientButton(
                    width: 320,
                    text: 'Kostenlos Registrieren',
                    onPressed: () {
                      // Define your action here
                    },
                  ),
                if (!isDesktop)
                  SvgPicture.asset(
                    'assets/images/undraw_agreement_aajr.svg',
                    height: 300,
                  ),
              ],
            ),
          ),
          if (isDesktop)
            Expanded(
              flex: 3,
              child: Container(
                width: 350,
                height: 350,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                clipBehavior: Clip.hardEdge, // Ensures the image is clipped to the circle
                child: SvgPicture.asset(
                  'assets/images/undraw_agreement_aajr.svg',
                  width: isDesktop ? 350 : 150,
                  height: 350,
                ),
              ),
            ),
        ],
      ),
    );
  }
}

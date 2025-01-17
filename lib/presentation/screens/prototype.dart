import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:prototype/presentation/widgets/gradient_button.dart';
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

class FlowBackground extends StatelessWidget {
  const FlowBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: FlowPainter(),
      size: const Size(double.infinity, 1000), // Adjust height as needed
    );
  }
}

class FlowPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color(0xFFE6F3FF)
      ..style = PaintingStyle.fill;

    final pathPaint = Paint()
      ..color = Colors.grey.withOpacity(0.3)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;

    // Draw background waves
    final path1 = Path();
    path1.moveTo(0, size.height * 0.3);
    path1.quadraticBezierTo(
      size.width * 0.5,
      size.height * 0.35,
      size.width,
      size.height * 0.3,
    );
    path1.lineTo(size.width, size.height * 0.5);
    path1.quadraticBezierTo(
      size.width * 0.5,
      size.height * 0.45,
      0,
      size.height * 0.5,
    );
    path1.close();
    canvas.drawPath(path1, paint);

    // Draw connecting paths between steps
    final connectionPath = Path();
    // Path from step 1 to 2
    connectionPath.moveTo(size.width * 0.2, size.height * 0.2);
    connectionPath.quadraticBezierTo(
      size.width * 0.4,
      size.height * 0.3,
      size.width * 0.6,
      size.height * 0.4,
    );
    // Path from step 2 to 3
    connectionPath.moveTo(size.width * 0.6, size.height * 0.4);
    connectionPath.quadraticBezierTo(
      size.width * 0.4,
      size.height * 0.6,
      size.width * 0.2,
      size.height * 0.8,
    );
    canvas.drawPath(connectionPath, pathPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class StepOne extends StatelessWidget {
  const StepOne({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = MediaQuery.of(context).size.width > 768;

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: isDesktop ? 80 : 20,
        vertical: 40,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                '1.',
                style: TextStyle(
                  fontSize: isDesktop ? 60 : 36,
                  color: const Color(0xFF718096),
                  fontWeight: FontWeight.normal,
                  fontFamily: 'Lato',
                ),
              ),
              const SizedBox(width: 10),
              Text(
                'Erstellen dein Lebenslauf',
                style: TextStyle(
                  fontSize: isDesktop ? 16 : 12,
                  color: const Color(0xFF718096),
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Lato',
                ),
              ),
            ],
          ),
          SizedBox(
            width: 100,
          ),
          if (isDesktop)
            SvgPicture.asset(
              'assets/images/undraw_Profile_data_re_v81r.svg',
              width: 300,
            ),
        ],
      ),
    );
  }
}

class StepTwo extends StatelessWidget {
  const StepTwo({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = MediaQuery.of(context).size.width > 768;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: isDesktop ? 80 : 20,
        vertical: 40,
      ),
      color: const Color(0xFFE6F3FF).withOpacity(0.3),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (isDesktop)
            SvgPicture.asset(
              'assets/images/undraw_task_31wc.svg',
              width: 300,
            ),
          SizedBox(
            width: 100,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                '2.',
                style: TextStyle(
                  fontSize: isDesktop ? 60 : 36,
                  color: const Color(0xFF718096),
                  fontWeight: FontWeight.normal,
                  fontFamily: 'Lato',
                ),
              ),
              const SizedBox(width: 10),
              Text(
                'Erstellen dein Lebenslauf',
                style: TextStyle(
                  fontSize: isDesktop ? 16 : 12,
                  color: const Color(0xFF718096),
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Lato',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class StepThree extends StatelessWidget {
  const StepThree({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = MediaQuery.of(context).size.width > 768;

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: isDesktop ? 80 : 20,
        vertical: 40,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end, // Aligns content to the top
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    '3.',
                    style: TextStyle(
                      fontSize: isDesktop ? 60 : 36,
                      color: const Color(0xFF718096),
                      fontWeight: FontWeight.normal,
                      fontFamily: 'Lato',
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 10),
              SizedBox(
                width: 150,
                height: 60,
                child: Text(
                  'Mit nur einem Klick bewerben',
                  style: TextStyle(
                    fontSize: isDesktop ? 16 : 12,
                    color: const Color(0xFF718096),
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Lato',
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            width: 100,
          ),
          if (isDesktop)
            SvgPicture.asset(
              'assets/images/undraw_personal_file_222m.svg',
              width: 300,
            ),
        ],
      ),
    );
  }
}

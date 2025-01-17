import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:prototype/presentation/widgets/gradient_button.dart';

class StepOne extends StatelessWidget {
  const StepOne({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = MediaQuery.of(context).size.width > 768;

    return Column(
      children: [
        if (!isDesktop)
          GradientButton(
            width: 320,
            text: 'Kostenlos Registrieren',
            onPressed: () {
              // Define your action here
            },
          ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: isDesktop ? 80 : 20,
            vertical: 40,
          ),
          child: Flex(
            direction: isDesktop ? Axis.horizontal : Axis.vertical,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (isDesktop) ...{
                rowOne(isDesktop),
                const SizedBox(
                  width: 100,
                ),
              },
              // if (isDesktop)
              SvgPicture.asset(
                'assets/images/undraw_Profile_data_re_v81r.svg',
                width: isDesktop ? 300 : 250,
              ),
              if (!isDesktop) ...{
                const SizedBox(
                  height: 10,
                ),
                rowOne(isDesktop),
              },
            ],
          ),
        ),
      ],
    );
  }

  Row rowOne(bool isDesktop) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      mainAxisAlignment: isDesktop ? MainAxisAlignment.start : MainAxisAlignment.center,
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
      child: Flex(
        direction: isDesktop ? Axis.horizontal : Axis.vertical,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // if (isDesktop)
          if (!isDesktop) ...{
            rowTwo(isDesktop),
            const SizedBox(
              height: 10,
            ),
          },
          SvgPicture.asset(
            'assets/images/undraw_task_31wc.svg',
            width: isDesktop ? 300 : 250,
          ),
          if (isDesktop) ...{
            const SizedBox(
              width: 100,
            ),
            rowTwo(isDesktop),
          },
        ],
      ),
    );
  }

  Row rowTwo(bool isDesktop) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      mainAxisAlignment: isDesktop ? MainAxisAlignment.start : MainAxisAlignment.center,
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
      child: Flex(
        direction: isDesktop ? Axis.horizontal : Axis.vertical,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          rowThree(isDesktop),
          SizedBox(
            height: isDesktop ? 0 : 10,
            width: isDesktop ? 100 : 0,
          ),
          SvgPicture.asset(
            'assets/images/undraw_personal_file_222m.svg',
            width: isDesktop ? 300 : 250,
          ),
          /* if (isDesktop) ...{
            const SizedBox(
              width: 100,
            ),
            rowThree(isDesktop),
          },*/
        ],
      ),
    );
  }

  Row rowThree(bool isDesktop) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: isDesktop ? MainAxisAlignment.start : MainAxisAlignment.center,
      // Aligns content to the top
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
          height: isDesktop ? 60 : 40,
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
    );
  }
}

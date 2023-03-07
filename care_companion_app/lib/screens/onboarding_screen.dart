import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late PageController _pageController;

  int _pageIndex = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  itemCount: slidesList.length,
                  controller: _pageController,
                  onPageChanged: (index) {
                    setState(() {
                      _pageIndex = index;
                    });
                  },
                  itemBuilder: (context, index) {
                    return OnboardContent(
                      image: slidesList[index].image,
                      title: slidesList[index].title,
                      description: slidesList[index].description,
                    );
                  },
                ),
              ),
              Row(
                children: [
                  ...List.generate(
                    slidesList.length,
                    (index) => Padding(
                      padding: EdgeInsets.only(right: 4.0),
                      child: DotIndicator(isActive: index == _pageIndex),
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: ElevatedButton(
                      onPressed: () {
                        _pageController.nextPage(
                            curve: Curves.ease,
                            duration: const Duration(milliseconds: 300));
                      },
                      style: ElevatedButton.styleFrom(
                        shape: const CircleBorder(),
                      ),
                      child: const Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DotIndicator extends StatelessWidget {
  const DotIndicator({
    super.key,
    this.isActive = false,
  });

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: isActive ? 12 : 4,
      width: 4,
      decoration: BoxDecoration(
        color: isActive ? Colors.blue : Colors.grey,
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
    );
  }
}

class Onboard {
  final String image, title, description;

  Onboard({
    required this.image,
    required this.title,
    required this.description,
  });
}

final List<Onboard> slidesList = [
  Onboard(
    image: 'assets/images/beatrizHeadshot.png',
    title: 'Hola! My name is Beatriz',
    description:
        'I’m part of a family of virtual caregivers at Embodied Labs, where we’re transforming the way you care.',
  ),
  Onboard(
    image: 'assets/images/alfredHeadshot.png',
    title: 'We’re here to connect',
    description:
        'Speaking with you and your loved ones to help answer questions during periods of transitional care.',
  ),
  Onboard(
    image: 'assets/images/dimaHeadshot.png',
    title: 'Join our growing family',
    description:
        'We cover an ever-expanding range of topics from healthcare to government services.',
  ),
  Onboard(
    image: 'assets/images/clayHeadshot.png',
    title: 'We’re here to connect',
    description:
        'Speaking with you and your loved ones to help answer questions you may have around periods of transitional care.',
  ),
];

class OnboardContent extends StatelessWidget {
  const OnboardContent({
    super.key,
    required this.image,
    required this.title,
    required this.description,
  });

  final String image, title, description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
      child: Column(
        children: [
          const Spacer(),
          Image.asset(
            image,
            width: 180,
          ),
          const Spacer(),
          Text(
            title,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  fontWeight: FontWeight.w500,
                ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(description,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontWeight: FontWeight.w400,
                  )),
          const Spacer(),
        ],
      ),
    );
  }
}

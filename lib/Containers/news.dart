import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class NewsBanner extends StatefulWidget {
  const NewsBanner({super.key});

  @override
  State<NewsBanner> createState() => _NewsBannerState();
}

class _NewsBannerState extends State<NewsBanner> {
  // 👇 your same list of images
  final List<Map<String, String>> imageList = [
    {"id": "1", "image_path": 'assets/img1.png'},
    {"id": "2", "image_path": 'assets/img2.png'},
    {"id": "3", "image_path": 'assets/img3.png'},
    {"id": "4", "image_path": 'assets/img4.png'},
  ];

  // 👇 Use CarouselSliderController in version 5+
  final CarouselSliderController carouselController =
      CarouselSliderController();

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "News for you",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          const SizedBox(height: 20),

          // 👇 Carousel
          Stack(
            children: [
              CarouselSlider(
                carouselController: carouselController,
                items: imageList.map((item) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      item['image_path']!,
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  );
                }).toList(),
                options: CarouselOptions(
                  height: 180,
                  scrollPhysics: const BouncingScrollPhysics(),
                  autoPlay: true,
                  aspectRatio: 2,
                  viewportFraction: 1,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                ),
              ),

              // 👇 Indicator Dots
              Positioned(
                bottom: 10,
                left: 0,
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: imageList.asMap().entries.map((entry) {
                    return GestureDetector(
                      onTap: () =>
                          carouselController.animateToPage(entry.key), // ✅ works in v5
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        width: currentIndex == entry.key ? 12 : 6,
                        height: 6,
                        margin: const EdgeInsets.symmetric(horizontal: 3),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: currentIndex == entry.key
                              ? Colors.black
                              : Colors.grey.shade400,
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

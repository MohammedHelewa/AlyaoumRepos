import '../../../common/app_libraries.dart';

class WeatherComponent extends StatefulWidget {
  const WeatherComponent({Key? key}) : super(key: key);

  @override
  State<WeatherComponent> createState() => _WeatherComponentState();
}

class _WeatherComponentState extends State<WeatherComponent> {
  int _selectedIndex = 0;

  final List<String> _weatherImage = [
    'assets/images/cloudy.png',
    'assets/images/rainy.png',
    'assets/images/sunny.png',
    'assets/images/sunny_cloudy.png',
    'assets/images/rainy.png',
    'assets/images/sunny_cloudy.png',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Sizes.height_100,
      child: ListView.separated(
        itemCount: _weatherImage.length,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: Sizes.horizontal_10, vertical: Sizes.height_8),
        separatorBuilder: (BuildContext context, int index) => SizedBox(width: Sizes.width_10),
        itemBuilder: (context, index) => InkWell(
          onTap: ()=> setState(() => _selectedIndex = index),
          splashFactory: NoSplash.splashFactory,
          child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText('اليوم',
                      fontWeight: _selectedIndex == index
                          ? FontWeight.bold
                          : FontWeight.w500,
                      fontColor: _selectedIndex == index
                          ? kPrimaryColor
                          : kLightGrayColor),
                  CustomText('24°',
                      fontSize: _selectedIndex == index ? 18 : 16,
                      fontWeight: FontWeight.bold,
                      fontColor: _selectedIndex == index
                          ? kBlackColor
                          : kBlackColor.withOpacity(0.6)),
                  CustomText('15°',
                      fontSize: _selectedIndex == index ? 16 : 12,
                      fontWeight: FontWeight.bold,
                      fontColor: _selectedIndex == index
                          ? kGrayColor
                          : kLightGrayColor),
                ],
              ),
              SizedBox(width: Sizes.width_5),
              Image.asset(_weatherImage[index], scale: _selectedIndex == index ? 1.5 : 2),
            ],
          ),
        ),
      ),
    );
  }
}

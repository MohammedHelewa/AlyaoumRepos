import '../../../common/app_libraries.dart';

class HotMenuComponent extends StatefulWidget {
  final int selectedMenuItemIndex;
  final String text;
   const HotMenuComponent({required this.selectedMenuItemIndex, required this.text, Key? key}) : super(key: key);

  @override
  State<HotMenuComponent> createState() => _HotMenuComponentState();
}

class _HotMenuComponentState extends State<HotMenuComponent> {

  late int selectedMenuItemIndex;

  @override
  void initState(){
    selectedMenuItemIndex = widget.selectedMenuItemIndex;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Sizes.height_50,
      child: ListView.separated(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: Sizes.horizontal_10, vertical: Sizes.height_8),
        separatorBuilder: (BuildContext context, int index) => SizedBox(width: Sizes.width_10),
        itemBuilder: (context, index) => ChoiceChip(
          selected: selectedMenuItemIndex == index,
          onSelected: (val)=> setState(()=> selectedMenuItemIndex = index),
          backgroundColor: kWhiteColor,
          selectedColor: kLightBlueColor,
          side:  BorderSide(color: selectedMenuItemIndex == index? kBlackColor : kLightGrayColor),
          label: CustomText(widget.text,
            fontSize: 14,
            fontWeight: selectedMenuItemIndex == index? FontWeight.w600 : FontWeight.w500,
            fontColor: selectedMenuItemIndex == index? kPrimaryColor : kLightGrayColor,
          ),
        ),
      ),
    );
  }
}
import 'package:alyaoum/common/app_libraries.dart';

class UpcomingMatchesComponent extends StatefulWidget {
  const UpcomingMatchesComponent({Key? key}) : super(key: key);

  @override
  State<UpcomingMatchesComponent> createState() =>
      _UpcomingMatchesComponentState();
}

class _UpcomingMatchesComponentState extends State<UpcomingMatchesComponent> {

  bool initiallyExpanded = true;

  final List<String> _columnTitles = [
    'الدوري',
    'الفرق',
    'الميعاد',
    'التذكير',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Sizes.horizontal_10, vertical: Sizes.height_5),
      child: Theme(
        data: ThemeData(dividerColor: Colors.transparent),
        child: ListTileTheme(
          dense: true,
          horizontalTitleGap: 0.0,
          minLeadingWidth: 0,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Sizes.radius_10),
              border: Border.all(color: kPrimaryColor.withOpacity(0.2), width: 1.5),
              gradient: initiallyExpanded == true? const LinearGradient(
                end: AlignmentDirectional.centerEnd,
                begin: AlignmentDirectional.centerStart,
                colors: [
                  kLightBlueColor,
                  kLightBlueColor,
                  kWhiteColor,
                ],
              ) : null,
            ),
            child: ExpansionTile(
              onExpansionChanged: (value) {
                initiallyExpanded = value;
                setState((){});
              },
              collapsedIconColor: initiallyExpanded? null : AppTheme.isLightTheme(context)? kBlackColor : kLightBlueColor,
              title: CustomText('المبارايات القادمة',
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  alignment: AlignmentDirectional.centerStart,
                  fontColor: initiallyExpanded? kBlackColor : AppTheme.isLightTheme(context)? kBlackColor : kLightBlueColor,
              ),
              tilePadding: EdgeInsets.symmetric(horizontal: Sizes.horizontal_10),
              childrenPadding: EdgeInsetsDirectional.only(start: Sizes.horizontal_10,end: Sizes.horizontal_10,bottom: Sizes.height_8),
              initiallyExpanded: initiallyExpanded,
              children: [
                Table(
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  children: [
                    TableRow(
                      children: List.generate(
                        _columnTitles.length,
                        (index) => Padding(
                          padding: EdgeInsetsDirectional.only(bottom: Sizes.height_10),
                          child: CustomText(
                            _columnTitles[index],
                            alignment: index == 3? AlignmentDirectional.center : AlignmentDirectional.centerStart,
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            fontColor: kGrayColor,
                          ),
                        ),
                      ),
                    ),
                    TableRow(
                      children: [
                        const CustomText(
                          'المصري',
                          alignment: AlignmentDirectional.centerStart,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          fontColor: kPrimaryColor,
                        ),
                        Column(
                          children: List.generate(
                            1,
                                (index) => const CustomText(
                              'الاهلي',
                              alignment: AlignmentDirectional.centerStart,
                              fontWeight: FontWeight.w500,
                              fontColor: kBlackColor,
                            ),
                          ),
                        ),
                        const CustomText(
                          '5:45 ص',
                          alignment: AlignmentDirectional.centerStart,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          fontColor: kPrimaryColor,
                        ),
                        const Align(
                          alignment: AlignmentDirectional.center,
                          child: Icon(
                            Icons.notifications_rounded,
                            color: kPrimaryColor,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

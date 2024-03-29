import 'package:flutter/material.dart';
import 'package:msp_ainshams/data/shared/cubit/app_cubit.dart';
import 'package:msp_ainshams/data/shared/network/web_view/web_view.dart';
import 'package:msp_ainshams/modules/about_us_screen/about_us_screen.dart';
import 'package:msp_ainshams/modules/crew_screen/crew_screen.dart';
import 'package:msp_ainshams/modules/events_screen/events_screen.dart';
import 'package:msp_ainshams/modules/projects_screen/projects_screen.dart';



/*List of screens that will be shown on the layout*/
const List<Widget> screens = [
    EventsScreen(),
    ProjectsScreen(),
    CrewScreen(),
    AboutUsScreen()
];

/*List of Titles that will be shown on the appBar*/
const List<String>titles = [
    "Events",
    "Projects",
    "Crew",
    "About Us",
];

/*Selected Item Color in bottom Nav Bar*/
const List<Color> selectedItemColors=[
    Colors.teal,
    Colors.blue,
    Colors.red,
    Colors.pinkAccent,
];

List<Color>committeesColor =[
  Colors.blueAccent.shade400,
  Colors.lightGreen.shade900,
  Colors.blueAccent.shade700,
  Colors.black,
  Colors.cyan.shade400,
  Colors.blueGrey.shade100,
  Colors.blueAccent.shade100,
  Colors.tealAccent.shade400,
  Colors.black,
  Colors.black,
  Colors.black,
];

/*Const Committees names and images from assets*/
const List<String> committeesName=[
    "Flutter",
    "Android",
    "Machine Learning",
    "Cyber Security",
    "Game",
    "Web",
    "Data Science",
    "Software Testing",
    "PR&Marketing",
    "HR",
    "Graphic&Media"
];

const List<String>committeesImages=[
    "assets/logos/Flutter-Logo.png",
    "assets/logos/android-logo.png",
    "assets/logos/ml-logo.png",
    "assets/logos/Security-logo.png",
    "assets/logos/Game-logo.png",
    "assets/logos/web-logo.png",
    "assets/logos/DataScience-logo.png",
    "assets/logos/testing-logo.jpg",
    "assets/logos/PR logo.png",
    "assets/logos/Hr logo.png",
    "assets/logos/Graphic and media logo.png"

];


/*Constant social apps images*/
const List<String> socialNetworkImages =[
    "https://m1.pagewizcdn.com/Media/2019-06-01-09-53-22-704lcmliulzbeezmzkqjpaqbtqgo_UserMedia.png",
    "https://www.looplink.me/public/uploads/social_icons/icon7.png",
    "https://drive.uqu.edu.sa/_/smqarni/images/youtube.png",
];

const List<String> socialMediaLinks = [
    "https://www.facebook.com/ASUTC",
    "https://www.linkedin.com/company/msp-tech-club-asu/",
    "https://www.youtube.com/channel/UCx4RR5PPCwfU_Om_9pAwaCA/featured",
];

/*Constant Functions*/

String getMonthName({required int month}){
    switch(month){
        case 1:
            return "Jan";
        case 2:
            return "Feb";
        case 3:
            return "Mar";
        case 4:
            return "Apr";
        case 5:
            return "May";
        case 6:
            return "Jun";
        case 7:
            return "Jul";
        case 8:
            return "Aug";
        case 9:
            return "Sep";
        case 10:
            return "Oct";
        case 11:
            return "Nov";
        case 12:
            return "Dec";
        default:
            return "00";
    }
}

Color getCommitteeColor({required String committee}){
    switch(committee.toLowerCase()){
        case "flutter":
            return committeesColor[0];
        case "android":
            return committeesColor[1];
        case "machine learning":
            return committeesColor[2];
        case  "cyber security":
            return committeesColor[3];
        case  "game":
            return committeesColor[4];
        case "web":
            return committeesColor[5];
        case "data science":
            return committeesColor[6];
        case  "software testing":
            return committeesColor[7];
        case "pr&marketing":
            return committeesColor[8];
        case "hr":
            return committeesColor[9];
        case "graphic&media":
            return committeesColor[10];
        default:
            return Colors.red;
    }
}

/*Constant Widgets*/
Widget customLoadingData({required Color color})=> Center(
    child: CircularProgressIndicator(
        color: color,
    ),
);

Widget getErrorFromServer({
    required context
})=> Center(
    child: Column
        (
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            Icon(
                Icons.system_update_alt_sharp,
                size: 32.0,
                color: AppCubit.get(context).isDark!?Colors.white:Colors.black,
            ),
            const SizedBox(
                height: 20.0,
            ),
            Text(
                'Failed To Get Data From Sever Please Try Again Later',
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    color: AppCubit.get(context).isDark!?Colors.white:Colors.black,
                ),
            ),
        ],
    ),
);

Widget buildSocialMediaButtons({
    required String imageLink,
    required String  url,
    required context
})=> InkWell(
    onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>WebViewHelper(
            url: url,
        )));
    },
    child: CircleAvatar(
        backgroundImage: NetworkImage(imageLink),
        radius: 24.0,
        backgroundColor: Colors.transparent,
    ),
);

Widget buildSlogan({required context})=> Column(
    children: [
        const CircleAvatar(
            radius: 50.0,
            backgroundImage: AssetImage("assets/images/MSP LOGO bright.png"),
            backgroundColor: Colors.transparent,
        ),
        verticalDivider(),
        Text(
            'Knowledge Shared is Knowledge²',
            style: Theme.of(context).textTheme.bodyText1,
        ),
        verticalDivider(),
        Text(
            "MSP Tech Club - ASU",
            style: Theme.of(context).textTheme.subtitle1,
        ),
        verticalDivider(),

    ],
);


Widget verticalDivider()=>const SizedBox(height: 10.0,);

Widget horizontalDivider()=>const SizedBox(width: 10.0,);
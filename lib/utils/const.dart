import 'package:flutter/material.dart';
import 'package:instagram_clone/models/post_model.dart';

class Colorss {
  static const backgroundColor = Color(0xff272833);
  static const forebackground = Color(0xff0D0C0C);
  static const darkBackground = Color(0xff000000);
}

class Styles {
  static TextStyle get smallTextStyle => const TextStyle(fontSize: 10, color: Colors.white);
  static TextStyle get bigTitleNonStyle => const TextStyle(fontSize: 12, color: Colors.white);
  static TextStyle get bigTitleStyle => const TextStyle(
      fontSize: 20, letterSpacing: 1.6, fontWeight: FontWeight.w500, color: Colors.white, fontFamily: "instagramTitle");
}

class Stories {
  static const storiesList = [
    {
      "id": 0,
      "name": "Mehmet arda",
      "img":
          "https://media.licdn.com/dms/image/D4D03AQHtZ_FTfRujYw/profile-displayphoto-shrink_800_800/0/1686668347763?e=1695859200&v=beta&t=5mMzkNa4E5zHOQwLmPBm5f-1Zd2cTMuGMu0rg-LrI3A"
    },
    {
      "id": 1,
      "name": "lisa",
      "img":
          "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60"
    },
    {
      "id": 2,
      "name": "anastasia",
      "img":
          "https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cGVyc29ufGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60"
    },
    {
      "id": 3,
      "name": "ahmad",
      "img":
          "https://images.unsplash.com/photo-1552058544-f2b08422138a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8cGVyc29ufGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60"
    },
    {
      "id": 4,
      "name": "Robin",
      "img":
          "https://images.unsplash.com/photo-1500048993953-d23a436266cf?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1169&q=80"
    },
    {
      "id": 5,
      "name": "Mark",
      "img":
          "https://images.unsplash.com/photo-1599566150163-29194dcaad36?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80"
    },
    {
      "id": 6,
      "name": "Slvie",
      "img":
          "https://images.unsplash.com/photo-1593104547489-5cfb3839a3b5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1153&q=80"
    }
  ];
}

class Posts {
  final postList = <PostModel>[
    PostModel(
        profileImg:
            "https://media.licdn.com/dms/image/D4D03AQHtZ_FTfRujYw/profile-displayphoto-shrink_800_800/0/1686668347763?e=1695859200&v=beta&t=5mMzkNa4E5zHOQwLmPBm5f-1Zd2cTMuGMu0rg-LrI3A",
        userName: "Synarda",
        imgUrl: "https://images.asiahighlights.com/allpicture/2020/04/9d6810479be2400da29b1534_cut_600x800_10.jpg",
        like: 54.852,
        description: "this summer is great man, the sea sand sun everything is great..."),
    PostModel(
        profileImg:
            "https://www.si.com/.image/ar_4:3%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cq_auto:good%2Cw_1200/MTk0NDcwNTgyOTUwMDQ1MTg5/derrick-rose.jpg",
        userName: "DerrickRosse",
        imgUrl: "https://static01.nyt.com/images/2012/04/29/sports/YNBA/YNBA-superJumbo.jpg",
        like: 254.852,
        description: "back to the great old days, if only I hadn't had that injury..."),
    PostModel(
        profileImg: "https://upload.wikimedia.org/wikipedia/commons/3/34/Elon_Musk_Royal_Society_%28crop2%29.jpg",
        userName: "ElonTusk",
        imgUrl:
            "https://www.thelist.com/img/gallery/body-language-expert-reveals-the-one-thing-elon-musk-did-on-snl-that-showed-a-totally-different-side/intro-1620542330.webp",
        like: 254.852,
        description:
            "hey guys how am i doing. i messed up twitter and now it's tesla's turn.... don't worry i'm just kidding.")
  ];
}

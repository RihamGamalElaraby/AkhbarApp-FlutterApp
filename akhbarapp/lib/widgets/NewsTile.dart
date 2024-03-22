import 'package:akhbarapp/models/articleModel.dart';
import 'package:flutter/material.dart';

class NewsTile extends StatelessWidget {
  NewsTile({super.key, required this.articleModel});
  ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 22.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              articleModel.image ??
                  'https://scontent.fcai22-2.fna.fbcdn.net/v/t39.30808-6/433449683_425386093216287_31845489102274022_n.jpg?_nc_cat=1&ccb=1-7&_nc_sid=5f2048&_nc_ohc=nmM4XcSdmskAX__VUy3&_nc_ht=scontent.fcai22-2.fna&oh=00_AfDsvaX_sh7hGK7r-lxSl5yrumZWwto-pFTS3ILK0aiJ_w&oe=66010119',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            '${articleModel.title}' ?? 'no tilte',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 3,
          ),
          Text(
            '${articleModel.subTitle}' ?? 'no describtion',
            maxLines: 2,
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}

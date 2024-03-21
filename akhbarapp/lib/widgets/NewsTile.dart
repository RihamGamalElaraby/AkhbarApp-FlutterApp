import 'package:flutter/material.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key});

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
              'https://scontent.fcai22-4.fna.fbcdn.net/v/t39.30808-6/433402382_751722967154029_5069778735517966482_n.jpg?_nc_cat=1&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeEa6CDnJzm8RWinuZ_7TJI2ugTzd6PkvjK6BPN3o-S-MpG7tLCZ_70llBymNdPSyhx7C-ZbyixPaX_0ip7ATIPf&_nc_ohc=XkE0BVoJ_RkAX-UESPf&_nc_ht=scontent.fcai22-4.fna&oh=00_AfAnT59eCjYsQ5VxYLD97B_NNT0HH7QgI-51-wjdXqRG_A&oe=65FFABF1',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'fsfdsgfdgfdgggggggggggggggggggggggggggfggggggggggggggggggggggggggggggggg',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 3,
          ),
          const Text(
            'fsfdsgfdgfdgggggggggggggggggggggggggggfggggggggggggggggggggggggggggggggg',
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

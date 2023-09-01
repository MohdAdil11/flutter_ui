import 'package:flutter/material.dart';

class Content extends StatelessWidget {
  final String title;
  final Widget subtitle;
  final Color color;
  final String text;
  const Content({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.color,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Card(
          elevation: 0,
          child: Container(
             margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
              color: color,
              borderRadius: const BorderRadius.all(Radius.circular(22)),
            ),
             padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 28),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.circle,
                          color: Colors.white,
                          size: 12,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          text,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                    const Text("10 min. ago"),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const CircleAvatar(
                      maxRadius: 34,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage('assets/johncena.png'),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Flexible(
                      child: Text(
                        title,
                        style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.black54),
                        maxLines: 4,
                      ),
                    )
                  ],
                ),
                subtitle
              ],
            ),
          ),
        ),
      ],
    );
  }
}

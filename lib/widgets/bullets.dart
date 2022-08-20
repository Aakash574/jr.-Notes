import 'package:flutter/material.dart';

class BulletPointCard extends StatefulWidget {
  const BulletPointCard({
    Key? key,
  }) : super(key: key);

  @override
  State<BulletPointCard> createState() => _BulletPointCardState();
}

class _BulletPointCardState extends State<BulletPointCard> {
  bool onTapExpand = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      width: MediaQuery.of(context).size.width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
              color: Colors.orange,
              border: Border.all(color: Colors.black, width: 2),
              borderRadius: BorderRadius.circular(11),
            ),
          ),
          Expanded(
            child: Container(
              // color: Colors.grey,
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const FittedBox(
                          child: Text(
                            '10-06-2022',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        onTapExpand == true
                            ? const FittedBox(
                                child: Text(
                                  'Topic adfsdf asdfasd \n sfasdf \n adsfasd sdfs',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.black),
                                ),
                              )
                            : const Text(
                                '',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: FittedBox(
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              if (onTapExpand == false) {
                                setState(() {
                                  onTapExpand = true;
                                });
                                print(onTapExpand);
                              } else if (onTapExpand == true) {
                                setState(() {
                                  onTapExpand = false;
                                });
                              }
                            },
                            child: const FittedBox(
                              child: Text(
                                'Highlight',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 5),
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, "/detailsadd");
                            },
                            child: const Icon(Icons.add),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

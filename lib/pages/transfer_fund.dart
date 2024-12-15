import 'package:flutter/material.dart';
import 'package:hackthon/pages/transfer_friend.dart';

class TransferFund extends StatefulWidget {
  const TransferFund({super.key});

  @override
  State<TransferFund> createState() => _TransferFundState();
}

class _TransferFundState extends State<TransferFund> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
                const Spacer(),
                const Text(
                  'Transfer',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                const Icon(
                  Icons.help,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 30),
                    Row(
                      children: [
                        const SizedBox(width: 38),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const TransferFriend(),
                              ),
                            );
                          },
                          child: Container(
                            width: 200,
                            height: 130,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const SizedBox(height: 20),
                                Image.asset('assets/images/icon-friends.png'),
                                const SizedBox(height: 20),
                                const Text(
                                  'Transfer to Friends',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 20),
                        Container(
                          width: 200,
                          height: 130,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const SizedBox(height: 20),
                              Image.asset('assets/images/icon-bank.png'),
                              const SizedBox(height: 20),
                              const Text(
                                'Transfer to Bank',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    const Row(
                      children: [
                        SizedBox(width: 20),
                        Text(
                          'Latest Transfer',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    customListTile(
                      'assets/images/wa.jpg',
                      'Alexandria',
                      'Yesterday 19:13',
                      'Rp 600.000',
                    ),
                    customListTile(
                      'assets/images/girldp.jpg',
                      'Bisma Bano',
                      'Today 01:39',
                      'Rp 700.000',
                    ),
                    const SizedBox(height: 10),
                    customListTile(
                      'assets/images/jas.webp',
                      'Hamza Naeem',
                      '12/23/2024',
                      'Rp 700.000',
                    ),
                    const SizedBox(height: 10),
                    customListTile(
                      'assets/images/myone.webp',
                      'Tanveer Abbas',
                      '01/09/2024',
                      'Rp 80.000',
                    ),
                    const SizedBox(height: 10),
                    customListTile(
                      'assets/images/photo.jpeg',
                      'Wazir Tatheer',
                      '11/30/2024',
                      'Rp 120.000',
                    ),
                    const SizedBox(height: 10),
                    customListTile(
                      'assets/images/pro.jpeg',
                      'Mohsin Uni',
                      '10/03/2024',
                      'Rp 700.000',
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget customListTile(
  String image,
  String title,
  String subtitle,
  String amount,
) {
  return ListTile(
    leading: CircleAvatar(
      maxRadius: 30,
      backgroundImage: AssetImage(image),
    ),
    title: Text(
      title,
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    ),
    subtitle: Text(subtitle),
    trailing: Text(
      amount,
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

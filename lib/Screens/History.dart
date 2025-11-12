import 'package:flutter/material.dart';

class Historypage extends StatelessWidget {
  const Historypage({super.key});

  @override
  Widget build(BuildContext context) {
    // Dummy transaction data
    final List<Map<String, dynamic>> transactions = [
      {
        "name": "Joy Jio",
        "date": "10 Nov 2025",
        "amount": "₹20",
        "via": "GPay",
        "status": "Received from",
        "avatar": "assets/user1.jpg",
      },
      {
        "name": "Sanya",
        "date": "17 Oct 2025",
        "amount": "₹70",
        "via": "GPay",
        "status": "Received from",
        "avatar": "assets/user2.jpg",
      },
      {
        "name": "Bharat Bhushan Balichowk",
        "date": "20 Sep 2025",
        "amount": "₹250",
        "via": "GPay",
        "status": "Received from",
        "avatar": "assets/user3.jpg",
      },
      {
        "name": "Joy Jio",
        "date": "10 Nov 2025",
        "amount": "₹20",
        "via": "GPay",
        "status": "Received from",
        "avatar": "assets/user1.jpg",
      },
      {
        "name": "Sanya",
        "date": "17 Oct 2025",
        "amount": "₹70",
        "via": "GPay",
        "status": "Received from",
        "avatar": "assets/user2.jpg",
      },
      {
        "name": "Bharat Bhushan Balichowk",
        "date": "20 Sep 2025",
        "amount": "₹250",
        "via": "GPay",
        "status": "Received from",
        "avatar": "assets/user3.jpg",
      },
      {
        "name": "Joy Jio",
        "date": "10 Nov 2025",
        "amount": "₹20",
        "via": "GPay",
        "status": "Received from",
        "avatar": "assets/user1.jpg",
      },
      {
        "name": "Sanya",
        "date": "17 Oct 2025",
        "amount": "₹70",
        "via": "GPay",
        "status": "Received from",
        "avatar": "assets/user2.jpg",
      },
      {
        "name": "Bharat Bhushan Balichowk",
        "date": "20 Sep 2025",
        "amount": "₹250",
        "via": "GPay",
        "status": "Received from",
        "avatar": "assets/user3.jpg",
      },
      {
        "name": "Joy Jio",
        "date": "10 Nov 2025",
        "amount": "₹20",
        "via": "GPay",
        "status": "Received from",
        "avatar": "assets/user1.jpg",
      },
      {
        "name": "Sanya",
        "date": "17 Oct 2025",
        "amount": "₹70",
        "via": "GPay",
        "status": "Received from",
        "avatar": "assets/user2.jpg",
      },
      {
        "name": "Bharat Bhushan Balichowk",
        "date": "20 Sep 2025",
        "amount": "₹250",
        "via": "GPay",
        "status": "Received from",
        "avatar": "assets/user3.jpg",
      },
      {
        "name": "Joy Jio",
        "date": "10 Nov 2025",
        "amount": "₹20",
        "via": "GPay",
        "status": "Received from",
        "avatar": "assets/user1.jpg",
      },
      {
        "name": "Sanya",
        "date": "17 Oct 2025",
        "amount": "₹70",
        "via": "GPay",
        "status": "Received from",
        "avatar": "assets/user2.jpg",
      },
      {
        "name": "Bharat Bhushan Balichowk",
        "date": "20 Sep 2025",
        "amount": "₹250",
        "via": "GPay",
        "status": "Received from",
        "avatar": "assets/user3.jpg",
      },
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "History",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(Icons.help_outline, color: Colors.black),
          ),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: Column(
          children: [
            // 🔍 Search Bar
            TextField(
              style: const TextStyle(color: Colors.black87, fontSize: 16),
              cursorColor: Colors.deepPurple,
              decoration: InputDecoration(
                prefixIcon: const Icon(
                  Icons.search,
                  color: Colors.black54,
                  size: 24,
                ),
                suffixIcon: const Icon(
                  Icons.tune,
                  color: Colors.black54,
                  size: 22,
                ),
                hintText: "Search transactions",
                hintStyle: const TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w500,
                ),
                filled: true,
                fillColor: const Color(0xFFF3F0FF),
                contentPadding: const EdgeInsets.symmetric(vertical: 14),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
              ),
            ),

            const SizedBox(height: 20),

            // 🧾 Transaction List
            Expanded(
              child: ListView.builder(
                itemCount: transactions.length,
                itemBuilder: (context, index) {
                  final tx = transactions[index];
                  return Container(
                    margin: const EdgeInsets.symmetric(vertical: 6),
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // 👤 Profile Image
                        CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.transparent,
                          backgroundImage: AssetImage(tx['avatar']),
                        ),
                        const SizedBox(width: 12),

                        // 📄 Details
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                tx['status'],
                                style: const TextStyle(
                                    color: Colors.grey, fontSize: 13),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                tx['name'],
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              const SizedBox(height: 6),
                              Text(
                                tx['date'],
                                style: const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                        ),

                        // 💸 Amount & Credited Info
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              tx['amount'],
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Text(
                                  "Credited to ",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                  ),
                                ),
                                Text(
                                  tx['via'],
                                  style: const TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

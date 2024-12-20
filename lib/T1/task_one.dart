import 'package:flutter/material.dart';
import '/widgits/app_bar.dart';

class Taskone extends StatelessWidget {
  const Taskone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(barTitle: 'Task one'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    child:
                        places('Lorem ipsum\ndolor sit amet', 'images/1.jpeg')),
                Expanded(
                    child:
                        places('Lorem ipsum\ndolor sit amet', 'images/2.jpg')),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child:
                        places('Lorem ipsum\ndolor sit amet', 'images/3.jpg')),
                Expanded(
                    child:
                        places('Lorem ipsum\ndolor sit amet', 'images/4.jpeg')),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child:
                        places('Lorem ipsum\ndolor sit amet', 'images/5.webp')),
                Expanded(
                    child:
                        places('Lorem ipsum\ndolor sit amet', 'images/6.jpg')),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child:
                        places('Lorem ipsum\ndolor sit amet', 'images/1.jpeg')),
                Expanded(
                    child:
                        places('Lorem ipsum\ndolor sit amet', 'images/2.jpg')),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child:
                        places('Lorem ipsum\ndolor sit amet', 'images/3.jpg')),
                Expanded(
                    child:
                        places('Lorem ipsum\ndolor sit amet', 'images/4.jpeg')),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child:
                        places('Lorem ipsum\ndolor sit amet', 'images/5.webp')),
                Expanded(
                    child:
                        places('Lorem ipsum\ndolor sit amet', 'images/6.jpg')),
              ],
            ),
          ],
        ),
      ),
    );
  }

  

  places(String title, String path) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      height: 200,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.asset(
              path,
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
          ),
          Positioned(
            bottom: 1,
            left: 1,
            right: 1,
            child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Container(
                  color: Colors.black,
                  child: Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                )),
          ),
        ],
      ),
    );
  }
}

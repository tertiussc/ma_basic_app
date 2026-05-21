import 'package:flutter/material.dart';
import 'package:ma_base_app/constants/colors.dart';
import 'package:ma_base_app/constants/image_strings.dart';
import 'package:ma_base_app/constants/sizes.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    // Shorthand variables
    final txtTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('Meliorate Dashboard'),
        centerTitle: true,
        actions: [
          Container(
            margin: EdgeInsets.only(right: 20, top: 7),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: Colors.white70),
            child: Image(image: AssetImage(tSwim)),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(tDashboardPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Let us help you.', style: txtTheme.bodyLarge?.apply(color: tMeliorateLightRed)),
              Text('Explore our services', style: txtTheme.headlineLarge),
              SizedBox(height: 20),
              // Fake search (to be replaced)
              Container(
                decoration: BoxDecoration(border: Border(left: BorderSide(width: 4))),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Search...', style: txtTheme.headlineLarge?.apply(color: Colors.grey.shade300)),
                    Icon(Icons.mic, size: 25),
                  ],
                ),
              ),
              SizedBox(height: 15),
              // Categories
              SizedBox(
                height: 45,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: [
                    SizedBox(
                      width: 170,
                      height: 50,
                      child: Row(
                        children: [
                          Container(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.black87),
                            child: Center(
                              child: Text('BA', style: txtTheme.bodyLarge?.apply(color: Colors.white)),
                            ),
                          ),
                          SizedBox(width: 5),
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Business Analysis', style: txtTheme.bodyMedium, overflow: TextOverflow.ellipsis),
                                Text('Solution Analysis', style: txtTheme.bodyMedium, overflow: TextOverflow.ellipsis),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    SizedBox(
                      width: 170,
                      height: 50,
                      child: Row(
                        children: [
                          Container(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.black87),
                            child: Center(
                              child: Text('PM', style: txtTheme.bodyLarge?.apply(color: Colors.white)),
                            ),
                          ),
                          SizedBox(width: 5),
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Agile Scrum ', style: txtTheme.bodyMedium, overflow: TextOverflow.ellipsis),
                                Text('Traditional Waterfall', style: txtTheme.bodyMedium, overflow: TextOverflow.ellipsis),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    SizedBox(
                      width: 170,
                      height: 50,
                      child: Row(
                        children: [
                          Container(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.black87),
                            child: Center(
                              child: Text('DEV', style: txtTheme.bodyLarge?.apply(color: Colors.white)),
                            ),
                          ),
                          SizedBox(width: 5),
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Android/IOS', style: txtTheme.bodyMedium, overflow: TextOverflow.ellipsis),
                                Text('Windows/Mac', style: txtTheme.bodyMedium, overflow: TextOverflow.ellipsis),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              IntrinsicHeight(
                child: Row(
                  children: [
                    Flexible(
                      child: Container(
                        margin: EdgeInsets.all(5),
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: tMeliorateLightYellow),
                        child: Column(
                          children: [
                            Image.asset(tProfile),
                            Text('Digital Transformation', style: txtTheme.bodyLarge),
                            Text('Analyse → Manage → Develop → Implement', style: txtTheme.bodyMedium),
                          ],
                        ),
                      ),
                    ),
                    Flexible(
                      child: Container(
                        margin: EdgeInsets.all(5),
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: tMeliorateLightYellow),
                        child: Column(
                          children: [
                            Image.asset(tPoint),
                            Text('Innovation Dash', style: txtTheme.bodyLarge),
                            Text('Design Thinking → Lean Start-up', style: txtTheme.bodyMedium),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

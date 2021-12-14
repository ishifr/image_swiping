import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class MySwiper extends StatelessWidget {
  const MySwiper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    List<Widget> pages = [
      page(image: 'https://images.unsplash.com/photo-1639330949420-e2dabdfcb6f8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80', size: size),
      page(image: 'https://images.unsplash.com/photo-1639330949099-e2c06a3280c9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDN8Ym84alFLVGFFMFl8fGVufDB8fHx8&auto=format&fit=crop&w=600&q=60', size: size),
      page(image: 'https://images.unsplash.com/photo-1639488031986-779a8708fbed?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80', size: size),
      page(image: 'https://images.unsplash.com/photo-1639353014154-8b9da8815d84?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80', size: size),
      page(image: 'https://images.unsplash.com/photo-1639327977443-661d52507f8a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=626&q=80', size: size),
      
    ];

    return Scaffold(
      body: LiquidSwipe(
        pages: pages,
        fullTransitionValue: 500,
        enableLoop: true,
        waveType: WaveType.circularReveal,

      ),
    );
  }

  page({required String image, required Size size}) {
    return SizedBox(
      height: size.height,
      width: size.width,
      child: Image(
        fit: BoxFit.cover,
        image: NetworkImage(image),
      ),
    );
  }
}

import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/firebase_auth/auth_util.dart';

String randImg(int randimg) {
  switch (randimg) {
    case 1:
      return "https://www.linkpicture.com/q/dog1_2.png";
    case 2:
      return "https://www.linkpicture.com/q/dog2_2.png";
    case 3:
      return "https://www.linkpicture.com/q/dog3.png";
    case 4:
      return "https://www.linkpicture.com/q/dog4.png";
    case 5:
      return "https://www.linkpicture.com/q/dog5.png";
    case 6:
      return "https://www.linkpicture.com/q/dog6_1.webp";
    case 7:
      return "https://www.linkpicture.com/q/dog7.png";
    case 8:
      return "https://www.linkpicture.com/q/dog9.png";
    case 9:
      return "https://www.linkpicture.com/q/dog10_1.webp";
    case 10:
      return "https://www.linkpicture.com/q/dog11.jpg";
    default:
      return "https://www.linkpicture.com/q/dog3.png";
  }
}

int getchatnumberN(String userid) {
  int chatCount = 0;
  FirebaseFirestore.instance
      .collection('chats')
      .where('uid', isEqualTo: userid)
      .get()
      .then((snapshot) {
    chatCount = snapshot.docs.length;
  }).catchError((error) {
    print('Error getting chat count: $error');
  });

  // Wait for the asynchronous operation to complete
  Future.delayed(Duration(milliseconds: 500), () {});

  return chatCount;
}

int getimagenumber(String userid) {
  int chatCount = 0;
  FirebaseFirestore.instance
      .collection('chats')
      .where('uid', isEqualTo: userid)
      .get()
      .then((snapshot) {
    chatCount = snapshot.docs.length;
  }).catchError((error) {
    print('Error getting chat count: $error');
  });

  // Wait for the asynchronous operation to complete
  Future.delayed(Duration(milliseconds: 500), () {});

  return chatCount;
}

bool genCartNum(String userid) {
  int chatCount = 0;
  FirebaseFirestore.instance
      .collection('cart')
      .where('uid', isEqualTo: userid)
      .get()
      .then((QuerySnapshot snapshot) {
    chatCount = snapshot.docs.length;
    return chatCount;
  });
  return chatCount > 0 ? true : false;
}

int genAddSaves(
  int add1,
  int add2,
  int add3,
  int add4,
  int add5,
  int add6,
  int add7,
  int add8,
  int add9,
) {
  int result = (add1 * 1) +
      (add2 * 3) +
      (add3 * 5) +
      (add4 * 10) +
      (add5 * 20) +
      (add6 * 50) +
      (add7 * 100) +
      (add8 * 200) +
      (add9 * 500);
  return result;
}

String randAuthimage(int randNum) {
  switch (randNum) {
    case 1:
      return "https://www.linkpicture.com/q/basset-hound-dog-looking-up-19077967-transformed-removebg-preview.png";
    case 2:
      return "https://www.linkpicture.com/q/black-cute-dog-looking-camera-isolated-white-background-36701880-transformed-removebg-preview.png";
    case 3:
      return "https://www.linkpicture.com/q/crossbreed-dog-looking-laptop-27272047-transformed-removebg-preview.png";
    case 4:
      return "https://www.linkpicture.com/q/dog-looking-you-26053168-transformed-removebg-preview.png";
    case 5:
      return "https://www.linkpicture.com/q/dog-looking-you-jack-russell-staring-lying-ground-floor-isolated-white-background-51843490-transformed-removebg-preview.png";
    case 6:
      return "https://www.linkpicture.com/q/lovely-labrador-retriever-dog-red-bandana-looking-down-white-background-wearing-sticking-out-tongue-panting-sitting-211913087-transformed-removebg-preview.png";
    default:
      return "https://www.linkpicture.com/q/black-cute-dog-looking-camera-isolated-white-background-36701880-transformed-removebg-preview.png";
  }
}

String randTextAuth(int randnumb) {
  switch (randnumb) {
    case 1:
      return "White Woof AI is a revolutionary system that employs AI to decipher dog barking patterns and provide accurate answers to your queries. Although it may be intimidating to get started, it is a valuable tool for dog owners.";
    case 2:
      return "If you're a dog owner, the White Woof AI system is a game-changer. This innovative tool uses artificial intelligence to analyze barking behavior and answer your queries with accuracy. Additionally, you receive 25 free cookies to try out the system.";
    case 3:
      return "White Woof AI is a cutting-edge technology that employs AI to analyze dog barking patterns and provide precise answers to your questions. While it may be difficult to get started, the system is a valuable asset for dog owners, complete with a 25 free cookie offer.";
    case 4:
      return "White Woof AI is an advanced system that uses artificial intelligence to decipher and forecast dog barking patterns, providing accurate responses to your inquiries. Although the tool may be daunting to utilize, it is a worthwhile investment for dog owners, accompanied by a 25 free cookie offer.";
    case 5:
      return "White Woof AI is a sophisticated system designed for dog owners, powered by artificial intelligence to evaluate and predict barking behavior accurately. While it may take some time to get accustomed to, the system is a valuable asset, complete with a 25 free cookie offer to try it out.";
    default:
      return "White Woof AI is an cutting-edge technology that employs AI to analyze dog barking patterns and provide precise answers to your questions. While it may be difficult to get started, the system is a valuable asset for dog owners, complete with a 25 free cookie offer.";
  }
}

bool answerIsCode(String answer) {
  final regex = RegExp(r'[^\w\s]|(\d+\s*[.)])');
  return regex.hasMatch(answer);
}

dynamic chatNotRemJSONcompile(String message) {
  final messageList = [
    {'role': 'user', 'content': message}
  ];
  return messageList;
}

dynamic jsonCopmileRem(
  List<ChatMessagesRecord> messages,
  String newmessage,
) {
  List<Map<String, String>> msgs = [];
  messages.forEach((element) {
    msgs.add({
      "role": element.user == "OpenAI" ? "assistant" : "user",
      "content": element.message!
    });
  });

  msgs.add({"role": "user", "content": newmessage});

  return msgs;
}

int checkthecookieNumber(String numberofcookies) {
  // Split the input string into two parts using the dot as a delimiter
  List<String> parts = numberofcookies.split('.');

  // Get the first part of the input string
  String firstPart = parts[0];

  // Parse the first part as a double
  double doubleValue = double.parse(firstPart);

  // Round down the double to an integer
  int integerValue = doubleValue.floor();

  // Return the integer value
  return integerValue;
}

int genAddSavesPrice(
  int add1,
  int add2,
  int add3,
  int add4,
  int add5,
  int add6,
  int add7,
  int add8,
  int add9,
) {
  int result = (add1 * 2) +
      (add2 * 3) +
      (add3 * 5) +
      (add4 * 8) +
      (add5 * 13) +
      (add6 * 29) +
      (add7 * 50) +
      (add8 * 88) +
      (add9 * 215);
  return result;
}

String dogGreetingGen(int randNum) {
  switch (randNum) {
    case 1:
      return "Woof! Welcome to White Woof, where every dog is a star!";
    case 2:
      return "Hi there, furry friend! Let's get your tail wagging with some pawsome activities!";
    case 3:
      return "Woof, woof! Welcome to White Woof, where the treats are plenty and the tail wags never end!";
    case 4:
      return "Hi there, bark-tastic buddy!";
    case 5:
      return "Hello, I hope you are having a woof-tastic day";
    case 6:
      return "What's up, hot dog?";
    case 7:
      return "Welcome to the bark side!";
    case 8:
      return "Welcome to White Woof, where the treats are endless!";
    case 9:
      return "Welcome to the doghouse!";
    case 10:
      return " Hello, let's paw-ty!";
    default:
      return "Bark, bark, bark, woof, woof, woof! (Translation: Hello, welcome to White Woof!)";
  }
}

bool codeCheck(
  int code,
  String codetext,
) {
  if (codetext == null) {
    return false;
  }
  return code == int.tryParse(codetext);
}

bool emailValid(String email) {
  final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
  return emailRegex.hasMatch(email);
}

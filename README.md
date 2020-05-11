# iAttended

##Software function

iAttended is a GPS enabled realtime attendance taking app. The app enables students to take attendance by either scanning the QR Code or Authenticating their fingerprint. It has a mobile version which supports all student functionalities and a web version which is for faculty. 


#Data Structures

arrays - widgets
trees - storage of student details


#Technology & Justification

Flutter Based Mobile App - Flutter allows the concurrent development of cross platform applications.

Firebase (Firestore) Database - Realtime Database that can be accessed by both the Web & Mobile Apps

GPS API - to ascertain the location of students ie determine whether or not attendance was taken within the demarcated radius (minimizes situations where people take attendance even when not in class).

Flutter's local auth library - to uniquely identify students.

FI QR Generator using google Chart API in order to enable students to scan the QR Code to proceed with the attendance process 

QR Scanner - alternative for fingerprint attendance taking

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

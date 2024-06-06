import 'dart:async';
import 'dart:io';

import 'package:all_fixs/Views/Invitation/invite_friend.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:page_transition/page_transition.dart';
import 'package:path_provider/path_provider.dart';
import 'package:rounded_loading_button_plus/rounded_loading_button.dart';
import 'package:all_fixs/Views/Widgets/Auth/auth_text_field.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:image/image.dart' as Im;
import 'package:uuid/uuid.dart';
import 'package:firebase_storage/firebase_storage.dart';

class ProfileSetup extends StatefulWidget {
  const ProfileSetup({super.key});
  @override
  State<ProfileSetup> createState() => _ProfileSetupState();
}

class _ProfileSetupState extends State<ProfileSetup> {
  final RoundedLoadingButtonController _profileSetupbtnController =
      RoundedLoadingButtonController();

  bool ismale = true;
  File? file;
  bool isUploading = false;
  ImagePicker img = ImagePicker();
  String postId = Uuid().v4();

  handleChooseFromGallery() async {
    var pickImage = await img.pickImage(
        source: ImageSource.gallery, maxHeight: 1080, maxWidth: 1920);
    File inputoutput = File(pickImage!.path);
    setState(() {
      file = inputoutput;
    });
    if (file != null) {
      uploadToStorage();
    }
  }

  uploadToStorage() async {
    setState(() {
      isUploading = true;
    });
    await compressImage();
    String mediaUrl =await uploadImage();
  }

  uploadImage() {
    UploadTask uploadTask = FirebaseStorage.instance
        .ref()
        .child("profilePictures/$postId.jpg")
        .putFile(file!);
  }

  compressImage() async {
    final tempDir = await getTemporaryDirectory();
    final path = tempDir.path;
    Im.Image? imageFile = Im.decodeImage(file!.readAsBytesSync());
    final compressedImageFile = File("$path/image_$postId.jpg")
      ..writeAsBytesSync(Im.encodeJpg(imageFile!, quality: 90));
    setState(() {
      file = compressedImageFile;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: SizedBox(
          width: 100,
          height: 100,
          child: Image.asset(
            'assets/images/logo.png',
            filterQuality: FilterQuality.high,
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/images/2.png",
                ),
                filterQuality: FilterQuality.high,
                fit: BoxFit.cover),
          ),
          child: Column(children: [
            Container(
              alignment: Alignment.center,
              height: 50,
              width: double.infinity,
              decoration: const BoxDecoration(color: Color(0xFFE65100)),
              child: Text(
                "Profile Setup",
                style: GoogleFonts.poppins(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                    textStyle: const TextStyle(color: Colors.white)),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            CircularProfileAvatar(
              '',
              onTap: () {
                print("TAPPED");
              },
              radius: 50,
              backgroundColor: Colors.grey,
              borderWidth: 10,
              initialsText: Text(
                "+",
                style: GoogleFonts.poppins(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                  textStyle: const TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: AuthTextField(
                icon: Icons.alternate_email,
                keyboardType: TextInputType.name,
                labelText: "Enter Name",
                obscureText: false,
                fontSize: 16.sp,
                iconsize: 16.sp,
                labelSize: 16.sp,
                controller: TextEditingController(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: AuthTextField(
                icon: Icons.password,
                keyboardType: TextInputType.none,
                labelText: "Username",
                obscureText: false,
                fontSize: 16.sp,
                iconsize: 16.sp,
                labelSize: 16.sp,
                controller: TextEditingController(),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      ismale = true;
                    });
                  },
                  child: Container(
                    height: 10.h,
                    width: 40.w,
                    decoration: BoxDecoration(
                        color: ismale ? Colors.blue : Colors.grey,
                        shape: BoxShape.circle,
                        // ignore: prefer_const_literals_to_create_immutables
                        boxShadow: [
                          const BoxShadow(
                            color: Colors.black45,
                            offset: Offset(1.0, 8.5),
                            blurRadius: 10,
                          )
                        ]),
                    child: const Icon(
                      Icons.male,
                      color: Colors.white,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      ismale = false;
                    });
                  },
                  child: Container(
                    height: 10.h,
                    width: 40.w,
                    decoration: BoxDecoration(
                        color: !ismale ? Colors.pink[300] : Colors.grey,
                        shape: BoxShape.circle,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black45,
                            offset: Offset(1.0, 8.5),
                            blurRadius: 10,
                          )
                        ]),
                    child: const Icon(
                      Icons.female,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              width: 250,
              child: Hero(
                tag: "Auth",
                child: RoundedLoadingButton(
                  controller: _profileSetupbtnController,
                  onPressed: () {
                    Timer(Duration(seconds: 3), () {
                      _profileSetupbtnController.success();
                      Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.fade,
                              child: InviteFriend()));
                    });
                  },
                  child: Text(
                    "Next",
                    style: GoogleFonts.poppins(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  color: Colors.orange[900],
                  width: 2000.w,
                  borderRadius: 10,
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
          ]),
        ),
      ),
    );
  }
}

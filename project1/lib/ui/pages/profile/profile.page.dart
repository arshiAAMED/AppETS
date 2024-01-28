import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';


class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  File? imageFile;
  ImageCropper imageCropper = ImageCropper();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orangeAccent[200],title: Text("Profile"),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10, bottom: 3),
              child: CircleAvatar(
                  radius:30,
                  backgroundImage: imageFile != null
                  ? FileImage(imageFile!) as ImageProvider<Object>
                  : AssetImage("images/profile.png") as ImageProvider<Object>
              ),
            )
          ],
        ),
        body: Container(
          padding: EdgeInsets.only(top: 10),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 450,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    elevation: 4,
                    margin: EdgeInsets.only(left: 10.0, right: 10.0),
                    child: imageFile != null
                        ? Image.file(
                      imageFile!,
                      fit: BoxFit.cover,
                    )
                        : Image.asset(
                      'images/gallery.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Container(
                      width: double.infinity,
                       padding: const EdgeInsets.only(left: 30, right: 30, bottom: 10),
                      child: MaterialButton(
                        shape: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                            borderSide: BorderSide(color: Colors.blueGrey.shade600)
                        ),
                        color: Colors.blueGrey[700],
                        onPressed: () {
                          _pickImage(ImageSource.camera);
                        },
                        child:  Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('Pick Image(Camera)', style: TextStyle(color: Colors.white, fontSize: 22),),
                            Icon(Icons.camera_alt, color: Colors.white,)
                          ],
                        ),

                      ),
                    ),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.only(left: 30, right: 30, bottom: 50),
                      child: MaterialButton(
                        shape: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            borderSide: BorderSide(color: Colors.blueGrey.shade600)
                        ),
                        color: Colors.blueGrey[700],
                        onPressed: () {
                          _pickImage(ImageSource.gallery);
                        },
                        child:  Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('Pick Image(Gallery)', style: TextStyle(color: Colors.white, fontSize: 22),),
                            Icon(Icons.camera, color: Colors.white,)
                          ],
                        ),

                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        )
    );
  }

  void openDialog(BuildContext context) async {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Pick Image Source"),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                GestureDetector(
                  child: Text("Camera"),
                  onTap: () {
                    Navigator.of(context).pop();
                    _pickImage(ImageSource.camera);
                  },
                ),
                Padding(padding: EdgeInsets.all(8.0)),
                GestureDetector(
                  child: Text("Gallery"),
                  onTap: () {
                    Navigator.of(context).pop();
                    _pickImage(ImageSource.gallery);
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }



  Future<void> _pickImage(ImageSource source) async {
    final pickedFile = await ImagePicker().pickImage(source: source);

    if (pickedFile != null) {
      // Utilisez pickedFile pour accéder au chemin de l'image sélectionnée.
      // Vous pouvez également utiliser ImageCropper pour recadrer l'image si nécessaire.

      // Exemple d'utilisation d'ImageCropper (vous devez ajouter image_cropper à vos dépendances)
      final croppedFile = await imageCropper.cropImage(
        sourcePath: pickedFile.path,
        aspectRatioPresets: [
          CropAspectRatioPreset.square,
          CropAspectRatioPreset.ratio3x2,
          CropAspectRatioPreset.original,
          CropAspectRatioPreset.ratio4x3,
          CropAspectRatioPreset.ratio16x9,
        ],
        androidUiSettings: const AndroidUiSettings(
          toolbarTitle: 'Cropper',
          toolbarColor: Colors.deepOrange,
          toolbarWidgetColor: Colors.white,
          initAspectRatio: CropAspectRatioPreset.original,
          lockAspectRatio: false,
        ),
        iosUiSettings: const IOSUiSettings(
          minimumAspectRatio: 1.0,
        ),
      );

      // Mettez à jour l'état avec le nouveau chemin de l'image
      if (croppedFile != null && croppedFile.path.isNotEmpty) {
        setState(() {
          imageFile = File(croppedFile.path);
        });
      }
    }
  }
}

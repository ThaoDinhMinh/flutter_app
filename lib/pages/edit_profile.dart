import 'package:flutter/material.dart';
import 'package:flutter_list_detail/components/text_field.dart';
import 'package:flutter_list_detail/components/tool_appbar.dart';
import 'package:flutter_list_detail/components/user_avatar.dart';
import 'package:flutter_list_detail/styles/app_colors.dart';
import 'package:flutter_list_detail/styles/app_text.dart';

enum Gender { male, female, other, none }

class EditProfilePage extends StatefulWidget {
  EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  var gender = Gender.none;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ToolAppBar(title: 'Edit profile'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child:
                        UserAvatar(size: 120, avatar: 'assets/temp/user1.jpg'),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      padding: EdgeInsets.all(7),
                      decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                      ),
                      child: Icon(
                        Icons.edit,
                        size: 20,
                        color: AppColors.black,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 48,
              ),
              TextFieldComponent(hint: 'Fisrt name'),
              SizedBox(
                height: 16,
              ),
              TextFieldComponent(hint: 'Last name'),
              SizedBox(
                height: 16,
              ),
              TextFieldComponent(hint: 'Email'),
              SizedBox(
                height: 16,
              ),
              TextFieldComponent(hint: 'Birthday'),
              SizedBox(
                height: 16,
              ),
              TextFieldComponent(hint: 'Location'),
              SizedBox(
                height: 16,
              ),
              Container(
                decoration: BoxDecoration(
                    color: AppColors.white.withOpacity(0.4),
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                child: Column(
                  children: [
                    Text(
                      'Gender',
                      style: AppText.subtitle2,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: RadioListTile(
                            title: Text('Male'),
                            value: Gender.male,
                            contentPadding: EdgeInsets.zero,
                            visualDensity: VisualDensity(
                                horizontal: VisualDensity.minimumDensity,
                                vertical: VisualDensity.minimumDensity),
                            groupValue: gender,
                            onChanged: (value) {
                              setState(() {
                                gender = Gender.male;
                              });
                            },
                          ),
                        ),
                        Expanded(
                          child: RadioListTile(
                            title: Text('Female'),
                            value: Gender.female,
                            groupValue: gender,
                            visualDensity: VisualDensity(
                                horizontal: VisualDensity.minimumDensity,
                                vertical: VisualDensity.minimumDensity),
                            contentPadding: EdgeInsets.zero,
                            onChanged: (value) {
                              setState(() {
                                gender = Gender.female;
                              });
                            },
                          ),
                        ),
                        Expanded(
                          child: RadioListTile(
                            title: Text('Other'),
                            value: Gender.other,
                            groupValue: gender,
                            visualDensity: VisualDensity(
                                horizontal: VisualDensity.minimumDensity,
                                vertical: VisualDensity.minimumDensity),
                            contentPadding: EdgeInsets.zero,
                            onChanged: (value) {
                              setState(() {
                                gender = Gender.other;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test_project_dimata_it/widgets/custom_appbar.dart';
import 'package:test_project_dimata_it/widgets/custom_button.dart';

import '../../widgets/custom_dropdown.dart';
import '../../widgets/custom_textformfield.dart';

class FormDetailHelpingScreen extends StatefulWidget {
  const FormDetailHelpingScreen({super.key});

  @override
  State<FormDetailHelpingScreen> createState() => _FormDetailHelpingScreenState();
}

class _FormDetailHelpingScreenState extends State<FormDetailHelpingScreen> {
    List listHelpingCatergory = ['Ambulans', 'Kebakaran', 'Kecelakaan', 'Banjir'];
    String helpingCategory = 'Ambulans';

    TextEditingController nameController = TextEditingController();
    TextEditingController numberController = TextEditingController();
    TextEditingController locationController = TextEditingController();
    TextEditingController detailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(115),
        child: AppBar(
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Color(0XFFFF2828)
          ),
          backgroundColor: Colors.white,
          elevation: 4,
          shadowColor: Colors.grey.withOpacity(0.2),
          flexibleSpace: const SafeArea(
            child: CustomAppBar()
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 12, right: 12, top: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                CustomDropDown(
                  title: 'Jenis Pertolongan', 
                  value: helpingCategory,
                  onChanged: (value) {
                    setState(() {
                      helpingCategory = value;
                    });
                  }, 
                  items: listHelpingCatergory.map<DropdownMenuItem<String>>((value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
                CustomTextFormField(
                  title: 'Nama', 
                  controller: nameController
                ),
                CustomTextFormField(
                  title: 'No. Telp', 
                  controller: numberController
                ),
                CustomTextFormField(
                  title: 'Lokasi', 
                  controller: locationController
                ),
                CustomTextFormField(
                  title: 'Keterangan', 
                  controller: detailController
                ),
                const SizedBox(height: 30),
                CustomButton(
                onTap: () {
                  
                }, 
                text: 'TOLONG', 
                icon: 'assets/icons/peringatan.svg', 
                iconSize: 26.67,
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.w600
                ),
              ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
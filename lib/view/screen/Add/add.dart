import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:new_appp_1_0/modal/modal.dart'; // Ensure your ModalClass is imported
import 'package:new_appp_1_0/routes/routes.dart';
import 'package:toastification/toastification.dart';

File? carImage;

// Text Editing Controllers
TextEditingController regController = TextEditingController();
TextEditingController makerController = TextEditingController();
TextEditingController modelController = TextEditingController();
TextEditingController versionController = TextEditingController();
TextEditingController yearController = TextEditingController();
TextEditingController fuelController = TextEditingController();
TextEditingController kilometerController = TextEditingController();
TextEditingController colourController = TextEditingController();
TextEditingController ownershipController = TextEditingController();
TextEditingController insuranceController = TextEditingController();
TextEditingController askingPriceController = TextEditingController();

List carList = [];

// Form Key
GlobalKey<FormState> formKey = GlobalKey();

class AddCarPage extends StatefulWidget {
  const AddCarPage({super.key});

  @override
  State<AddCarPage> createState() => _AddCarPageState();
}

class _AddCarPageState extends State<AddCarPage> {
  ImagePicker picker = ImagePicker();

  Future<void> pickImage({required ImageSource source}) async {
    XFile? xFile = await picker.pickImage(source: source);
    if (xFile != null) {
      carImage = File(xFile.path);
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Add Car Details"),
            centerTitle: true,
            backgroundColor: Colors.teal,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(16)),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(16),
            child: SingleChildScrollView(
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        CircleAvatar(
                          radius: 65,
                          backgroundImage: (carImage != null)
                              ? FileImage(carImage!)
                              : const NetworkImage(
                                      "https://tse2.mm.bing.net/th?id=OIP.tXKGs73UYjBEZSclUWLSMAHaHa&pid=Api&P=0&h=180")
                                  as ImageProvider,
                          backgroundColor: Colors.grey.shade200,
                        ),
                        FloatingActionButton.small(
                          backgroundColor: Colors.teal,
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                title: const Text("Pick Image"),
                                content: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    ElevatedButton.icon(
                                      onPressed: () {
                                        pickImage(source: ImageSource.camera);
                                        Navigator.pop(context);
                                      },
                                      icon: const Icon(Icons.camera),
                                      label: const Text("Camera"),
                                    ),
                                    ElevatedButton.icon(
                                      onPressed: () {
                                        pickImage(source: ImageSource.gallery);
                                        Navigator.pop(context);
                                      },
                                      icon: const Icon(Icons.photo),
                                      label: const Text("Gallery"),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                          child: const Icon(Icons.add),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    _buildTextFormField(
                      keyboardType: TextInputType.number,
                      controller: regController,
                      hintText: "Registration Number",
                      validator: (value) => value!.isEmpty
                          ? 'Registration cannot be empty'
                          : null,
                    ),
                    _buildTextFormField(
                      controller: makerController,
                      hintText: "Maker",
                      validator: (value) =>
                          value!.isEmpty ? 'Maker cannot be empty' : null,
                    ),
                    _buildTextFormField(
                      controller: modelController,
                      hintText: "Model",
                      validator: (value) =>
                          value!.isEmpty ? 'Model cannot be empty' : null,
                    ),
                    _buildTextFormField(
                      controller: versionController,
                      hintText: "Version",
                      validator: (value) =>
                          value!.isEmpty ? 'Version cannot be empty' : null,
                    ),
                    _buildTextFormField(
                      controller: yearController,
                      hintText: "Year",
                      keyboardType: TextInputType.number,
                      maxLength: 4,
                      validator: (value) {
                        if (value!.isEmpty) return 'Year cannot be empty';
                        if (int.tryParse(value) == null || value.length != 4) {
                          return 'Enter a valid 4-digit year';
                        }
                        return null;
                      },
                    ),
                    _buildTextFormField(
                      controller: fuelController,
                      hintText: "Fuel Type",
                      validator: (value) =>
                          value!.isEmpty ? 'Fuel type cannot be empty' : null,
                    ),
                    _buildTextFormField(
                      controller: kilometerController,
                      hintText: "Kilometers",
                      keyboardType: TextInputType.number,
                      validator: (value) =>
                          value!.isEmpty || double.tryParse(value!) == null
                              ? 'Enter a valid number for kilometers'
                              : null,
                    ),
                    _buildTextFormField(
                      controller: colourController,
                      hintText: "Colour",
                      validator: (value) =>
                          value!.isEmpty ? 'Colour cannot be empty' : null,
                    ),
                    _buildTextFormField(
                      controller: ownershipController,
                      hintText: "Ownership",
                      keyboardType: TextInputType.number,
                      validator: (value) =>
                          value!.isEmpty || int.tryParse(value!) == null
                              ? 'Enter a valid number for ownership'
                              : null,
                    ),
                    _buildTextFormField(
                      controller: insuranceController,
                      hintText: "Insurance",
                      validator: (value) =>
                          value!.isEmpty ? 'Insurance cannot be empty' : null,
                    ),
                    _buildTextFormField(
                      controller: askingPriceController,
                      hintText: "Asking Price",
                      keyboardType: TextInputType.number,
                      validator: (value) =>
                          value!.isEmpty || double.tryParse(value!) == null
                              ? 'Enter a valid number for asking price'
                              : null,
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        if (formKey.currentState?.validate() == true) {
                          ModalClass car = ModalClass(
                            registration: regController.text,
                            maker: makerController.text,
                            model: modelController.text,
                            version: versionController.text,
                            year: int.tryParse(yearController.text),
                            fuel: fuelController.text,
                            km: double.parse(kilometerController.text),
                            colour: colourController.text,
                            ownership: int.parse(ownershipController.text),
                            insurance: insuranceController.text,
                            askingPrice:
                                double.parse(askingPriceController.text),
                          );

                          carList.add(car);

                          // Clear the TextEditingController values
                          regController.clear();
                          makerController.clear();
                          modelController.clear();
                          versionController.clear();
                          yearController.clear();
                          fuelController.clear();
                          kilometerController.clear();
                          colourController.clear();
                          ownershipController.clear();
                          insuranceController.clear();
                          askingPriceController.clear();

                          toastification.show(
                            context: context,
                            backgroundColor: Colors.green.shade50,
                            title: const Text(
                              'Data added successfully',
                            ),
                            autoCloseDuration: const Duration(
                              seconds: 5,
                            ),
                          );

                          Navigator.pushReplacementNamed(
                              context, Routes.Userinterface);
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.teal,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16)),
                        padding: const EdgeInsets.symmetric(vertical: 16),
                      ),
                      child: const Text(
                        "Save",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Helper method to build text form fields
  Widget _buildTextFormField({
    required TextEditingController controller,
    required String hintText,
    TextInputType keyboardType = TextInputType.text,
    int? maxLength,
    required String? Function(String?) validator,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
          focusedBorder:
              OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
        ),
        keyboardType: keyboardType,
        maxLength: maxLength,
        validator: validator,
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/add_peminjaman_controller.dart';

class AddPeminjamanView extends GetView<AddPeminjamanController> {
  const AddPeminjamanView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${Get.parameters['judul']}'),
        centerTitle: true,
      ),
      body: Center(
        child: Form(
        key: controller.formKey,
        child: Column(
          children: [
            TextFormField( controller: controller.judulController,
            decoration: InputDecoration(hintText: "Masukkan Judul Buku"),validator: (value) {
              if (value!.length < 2) {
              return "judul buku tidak boleh kosong";}
              return null;
              },
    ),
    ]
    ),
    )));
  }
}

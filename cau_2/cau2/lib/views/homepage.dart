import 'package:cau2/utils/validator.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  TextEditingController name = TextEditingController();
  List<String> ds = ['thuan','thuan123','thuan234'];
  String thongBao ='';
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              controller: name,
              validator: Validator.usernameValidate,
            ),
            Text(thongBao),
            ElevatedButton(onPressed: (){
              if(_formKey.currentState!.validate() ?? true)
              {
                String inputName = name.text;
                bool isFound = false;
                for (int i = 0; i < ds.length; i++) {
                  if (inputName == ds[i]) {
                    isFound = true;
                    break;
                  }
                }
                if(!isFound)
                {
                  setState(() {
                    thongBao = 'Khong tim thay nguoi dung';
                  });
                  return;
                }
                Navigator.pop(context);
                Navigator.pushNamed(context, '/profile', arguments: name.text);
                thongBao = '';
              }
            }, child: Text('Xem profile-6451071076'))
            
          ],
        )
      ),
    );
  }
}
import 'package:contact_app/contactmodel.dart';
import 'package:flutter/material.dart';


class ContactDetailsPage extends StatelessWidget {
  const ContactDetailsPage({Key? key, required this.contact}) : super(key: key);

  final Contact contact;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation:0,
        centerTitle: true,
        iconTheme: const IconThemeData(
          color: Colors.black
        ),
        title: const Text('Contact', 
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600,
        color: Colors.black),),

        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert),),
        ]
      ),

      body: ListView(
        children: [
        const  CircleAvatar(
            radius: 70,
            backgroundImage: AssetImage('assets/abena.jpg'),
          ),

         const SizedBox(height: 25,),
         Center(
            child: Text(contact.name,
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w600,),),
          ),

        Center(child: Text('${contact.region}, ${contact.country}', 
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.normal,),)),
        const  SizedBox(height: 30,),

          Container(
            color: const Color(0xffebf3e6),
            child: Column(
              children: [

                ListTile (
                  title: const Text('Mobile',style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600,),),
                  subtitle: Text(contact.phone, 
                  style: const  TextStyle(fontSize: 16, fontWeight: FontWeight.normal, color: Color(0xff333333)),),

                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,

                    children: [
                      TextButton(onPressed: (){}, child: const Icon(Icons.message, color: Colors.black,),
                      style: TextButton.styleFrom(backgroundColor: Colors.white,
                      shape: const CircleBorder())),
                      
                      TextButton(onPressed: (){}, child: const Icon(Icons.call, color: Colors.black,),
                      style: TextButton.styleFrom(backgroundColor: Colors.white,
                      shape: const CircleBorder())),
                    ],
                  ),
                ),

                ListTile (
                  title: const Text('Email', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600,),),
                  subtitle: Text(contact.email, 
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.normal, color: Color(0xff333333)),),

                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,

                    children: [
                      TextButton(onPressed: (){}, child: const Icon(Icons.email, color: Colors.black,),
                      style: TextButton.styleFrom(backgroundColor: Colors.white,
                      shape: const CircleBorder())),
                    ],
                  ),
                ),

              const ListTile (
                  title:  Text('Group', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600,),),
                  subtitle:  Text('Family', 
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal, color: Color(0xff333333)),),),
              ],
            ),
          ),

        const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text('Account Linked', 
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),),
          ),

          Container(
            color: const Color(0xffebf3e6),
            child: Column(children: [
              ListTile(
                title: const Text('Telegram', style: TextStyle(fontSize: 18),),
                trailing: Image.asset('assets/telegram.png'),),
              
              ListTile(
                title: const Text('WhatsApp', style: TextStyle(fontSize: 18),),
                trailing: Image.asset('assets/whatsapp.png'),),
            ],)
          ),

        const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text('More Options', 
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),),
          ),

         Container(
          color: const Color(0xffebf3e6),
          child: Column(children: const [

            ListTile(
              title: Text('Share Contact', style: TextStyle(fontSize: 18),),),
          
            ListTile(
              title: Text('QR COde', style: TextStyle(fontSize: 18),),),
          
          ],)
        ) 
        ],
      ),
    );
  }
}
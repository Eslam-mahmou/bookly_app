import 'package:bookly_app_test/Core/Models/book_models/book_models.dart';
import 'package:bookly_app_test/Core/functions/CustomLauncherUrl.dart';
import 'package:bookly_app_test/Core/widget/CustomButton.dart';
import 'package:flutter/material.dart';

class ButtonAction extends StatelessWidget {
  const ButtonAction({super.key,required this.bookModels});
 final BookModels bookModels;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:const EdgeInsets.symmetric(horizontal: 12),
      child: SizedBox(
        height: 50,
        child: Row(
          children: [
          const  Expanded(
              child: CustomButton(
                  textColor: Colors.black,
                  backgroundColor: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      bottomLeft: Radius.circular(16)),
                  text: 'Free'),
            ),
            Expanded(
              child: CustomButton(
                onPressed: (){
                customLauncgerUrl(context, bookModels.volumeInfo.previewLink);
                },
                  textColor: Colors.white,
                  backgroundColor:const Color(0xffEF8262),
                  borderRadius:const BorderRadius.only(
                      topRight: Radius.circular(16),
                      bottomRight: Radius.circular(16)),
                  text: getText(
                    bookModels
                  )),
            )
          ],
        ),
      ),
    );
  }

  String getText(BookModels bookModels) {
    if(bookModels.volumeInfo.previewLink==null){
      return 'Not Avaliable';
    }
    else{
      return 'Preview';
    }
  }
}

import 'package:bookly_app_test/Core/Models/book_models/book_models.dart';
import 'package:bookly_app_test/Core/Utils/Styles.dart';
import 'package:bookly_app_test/Features/Home/presentation/View/widget/BookDetailsAppBar.dart';
import 'package:bookly_app_test/Features/Home/presentation/View/widget/BookRating.dart';
import 'package:bookly_app_test/Features/Home/presentation/View/widget/ButtonAction.dart';
import 'package:bookly_app_test/Features/Home/presentation/View/widget/CustomBookImage.dart';
import 'package:bookly_app_test/Features/Home/presentation/View/widget/SimilarBooksListView.dart';
import 'package:flutter/material.dart';

class DetalisViewBody extends StatelessWidget {
  const DetalisViewBody({super.key,required this.bookModels});
final BookModels bookModels;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          const BookDetalisAppBar(),
          const SizedBox(
            height: 12,
          ),
           CustomBookImage(
            imageUrl: bookModels.volumeInfo.imageLinks?.thumbnail??'',
          ),
          const SizedBox(
            height: 45,
          ),
           Text(
            
            bookModels.volumeInfo.title!,
            style: Style.textStyle30,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            maxLines: 3,
          ),
          const SizedBox(
            height: 3,
          ),
          Text(
            bookModels.volumeInfo.authors![0],
            style:
                Style.textStyle18.copyWith(color: Colors.white.withOpacity(.5)),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(
            height: 16,
          ),
           BookRating(
            count: bookModels.volumeInfo.pageCount ??0,
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          const SizedBox(
            height: 16,
          ),
           ButtonAction(
            bookModels: bookModels,
          ),
          const Expanded(
            child: SizedBox(
              height: 50,
            ),
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'You can also like',
              style: Style.textStyle16,
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          const SimilarBooksListView()
        ],
      ),
    );
  }
}

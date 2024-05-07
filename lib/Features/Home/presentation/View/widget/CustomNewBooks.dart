import 'package:bookly_app_test/Core/Models/book_models/book_models.dart';
import 'package:bookly_app_test/Core/Utils/AppRouter.dart';
import 'package:bookly_app_test/Core/Utils/Styles.dart';
import 'package:bookly_app_test/Features/Home/presentation/View/widget/BookRating.dart';
import 'package:bookly_app_test/Features/Home/presentation/View/widget/CustomBookImage.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomNewBooks extends StatelessWidget {
  const CustomNewBooks({super.key, required this.bookModels});
  final BookModels bookModels;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
       GoRouter.of(context).push(AppRouter.kDetalisView,extra: bookModels);
      },
      child: SizedBox(
        height: 120,
        child: Row(
          children: [
            CustomBookImage(
              imageUrl: bookModels.volumeInfo.imageLinks?.thumbnail??'',
            ),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      bookModels.volumeInfo.title!,
                      overflow: TextOverflow.ellipsis,
                      style: Style.textStyle20,
                      maxLines: 1,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    bookModels.volumeInfo.authors![0],
                    style: Style.textStyle20.copyWith(
                      color: Colors.white.withOpacity(.5)
                    ),
                    maxLines: 1,
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                     const Text(
                        'Free',
                        style: Style.textStyle18,
                      ),
                      BookRating(
                        count: bookModels.volumeInfo.pageCount ?? 0,
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

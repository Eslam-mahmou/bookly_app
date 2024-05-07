import 'package:bookly_app_test/Core/Models/book_models/book_models.dart';
import 'package:bookly_app_test/Core/Utils/AppRouter.dart';
import 'package:bookly_app_test/Core/Utils/Styles.dart';
import 'package:bookly_app_test/Features/Home/presentation/View/widget/BookImageListView.dart';
import 'package:bookly_app_test/Features/Home/presentation/View/widget/CustomAppBar.dart';
import 'package:bookly_app_test/Features/Home/presentation/View/widget/CustomListViewNewBooks.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key, this.bookModels});
final BookModels? bookModels;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const NeverScrollableScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppBar(),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: (){
                 GoRouter.of(context).push(AppRouter.kDetalisView,extra: bookModels);
                },
                child: BookImageListView(
                  
                  height: MediaQuery.of(context).size.height * .25,
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      'Newest Books',
                      style: Style.textStyle18,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        const SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: CustomListViewNewBooks(),
          ),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 5,
          ),
        )
      ],
    );
  }
}

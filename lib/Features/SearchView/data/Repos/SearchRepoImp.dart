
import 'package:bookly_app_test/Core/Models/book_models/book_models.dart';
import 'package:bookly_app_test/Features/SearchView/data/Repos/SearchRepo.dart';


class SearchRepoImp extends SearchRepo{
  SearchRepoImp(this.bookModels);
  final BookModels bookModels;
 
  @override
  getBooks() {
 var searchText=bookModels.searchInfo!.textSnippet;
  var word;
if(word.contains(searchText)){
   word==searchText;
}

    
  }
   
  }


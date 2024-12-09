class NewsItemModel {
  final int id;
  final String title;
  final String imgUrl;
  final String outher;
  final String category;
  final String time;

  NewsItemModel({
    this.time = '9 minute age',
    required this.id,
    required this.title,
    required this.imgUrl,
    required this.outher,
    required this.category,
  });
}
 

List<NewsItemModel> news = [
  NewsItemModel(id: 1, title: 'this is the good news', imgUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjc5DzEVspRXsj-fZ9PuZWVMiUgUBTxGC8zw&s', outher: 'CNN', category: 'Sports'),
  NewsItemModel(id: 2, title: 'this is very good medical', imgUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRM9Xxa9myf-0lhlx7KUc3VaCZyJBmv6eDB5w&s', outher: 'National', category: 'soical'),
  NewsItemModel(id: 3, title: 'this is the  lol', imgUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQnj-jILJTjyZacESTQ1MshAhybg5AxTC0FMA&s', outher: 'Emm', category: 'all'),
  NewsItemModel(id: 4, title: 'this is anything of sport', imgUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQnj-jILJTjyZacESTQ1MshAhybg5AxTC0FMA&s', outher: 'CNN', category: 'Medical'),
];

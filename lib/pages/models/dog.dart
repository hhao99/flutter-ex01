import 'dart:io';
import 'dart:convert';

class Dog {
  final String name;
  final String breeding;
  final String description;
  String imageUrl;
  int rate = 10;

  Dog(this.name,this.breeding,this.description);

  @override
  toString() => '[DOG]: $name';

  Future getImageUrl() async {
    if( imageUrl == null ) {
      HttpClient http = HttpClient();
      try {
        var uri = Uri.http('dog.ceo','/api/breeds/image/random/');
        var req = await http.getUrl(uri);
        var resp = await req.close();
        var body = await resp.transform(utf8.decoder).join();
        imageUrl = json.decode(body)['message'];

      } catch (e)
      {
        print(e);
      }
    }
  }
}
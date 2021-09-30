import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';

class DynamicLinkService {

  Future<Uri> createDynamicLink() async {
    //FirebaseApp .initializeApp(Context)
    final DynamicLinkParameters parameters = DynamicLinkParameters(
      uriPrefix: 'https://schoolvi.page.link',
      link: Uri.parse('https://legends-life.com'),
      androidParameters: AndroidParameters(
        packageName: 'com.example.bookshelf_app',
        minimumVersion: 1,
      ),
      iosParameters: IosParameters(
        bundleId: 'your_ios_bundle_identifier',
        minimumVersion: '1',
        appStoreId: 'your_app_store_id',
      ),
    );
    var shortDynamicLink = await parameters.buildShortLink();
    final Uri shortUrl = shortDynamicLink.shortUrl;
    return shortUrl;
  }

}
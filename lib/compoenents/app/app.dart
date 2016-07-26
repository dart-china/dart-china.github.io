import 'package:angular2/core.dart';

import '../../model.dart';
import '../sdk_download/sdk_download.dart';

@Component(
    selector: 'dartlang-china',
    templateUrl: './app.html',
    directives: const [SdkDownload])
class AppComponent {
  String appTitle;
  final List<App> appList = [new App('Dart SDK 下载')];
  App selectedApp;

  void onSelect(App app) {
    selectedApp = app;
    appTitle = app.name;
  }
}

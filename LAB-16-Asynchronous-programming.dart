import 'dart:io';
import 'package:http/http.dart' as http;

void main() async {
  final String fileUrl = 'https://example.com/path/to/file.txt';

  final String localFilePath = 'downloaded_file.txt';

  await downloadFile(fileUrl, localFilePath);

  print('File downloaded successfully. Local path: $localFilePath');
}

Future<void> downloadFile(String fileUrl, String localFilePath) async {
  final response = await http.get(Uri.parse(fileUrl));

  if (response.statusCode == 200) {
    File localFile = File(localFilePath);
    await localFile.writeAsBytes(response.bodyBytes);
  } else {
    print('Error downloading file. Status code: ${response.statusCode}');
  }
}

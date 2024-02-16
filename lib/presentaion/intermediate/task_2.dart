/// Integrate API from :[url]
library;

import 'dart:convert';
import 'dart:io';

class Job {
  Job(this.company, this.title);

  final String company;
  final String title;

  /// solution
  /// add fromJson to model
  Job.fromJson(Map<String, dynamic> json)
      : company = json['company'],
        title = json['title'];
}

/// add [http] or [Dio] or local [httpclient] no need for an external package
/// get the data

Future<List<Job>> fetchJobs() async {
  String host = 'jobs.github.com';
  String path = 'positions.json';
  final queryParameters = {'location': 'remote'};
  final headers = {'Accept': 'application/json'};
  final uri = Uri.https(host, path, queryParameters);
  final result = await HttpClient()
      .getUrl(uri)
      .then((req) => req.close())
      .then((res) => res.transform(utf8.decoder).join());
  // final results = await http.get(uri, headers: headers);
  final jsonList = json.decode(result) as List;
  return jsonList.map((job) => Job.fromJson(job)).toList();
}

/// call the future function and integrate with ui
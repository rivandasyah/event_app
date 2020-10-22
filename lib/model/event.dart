import 'package:event_app/model/data.dart';

class Event {

  bool success;
  List<Data> data;

	Event.fromJsonMap(Map<String, dynamic> map): 
		success = map["success"],
		data = List<Data>.from(map["data"].map((it) => Data.fromJsonMap(it)));

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['success'] = success;
		data['data'] = data != null ? 
			this.data.map((v) => v.toJson()).toList()
			: null;
		return data;
	}
}

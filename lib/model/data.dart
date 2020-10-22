
class Data {

  int id;
  int owner_id;
  String name;
  String summary;
  String description;
  int city_id;
  String address;
  String begin_time;
  String end_time;
  int quota;
  int point;
  String image_path;
  String header_image;
  String status;
  String created_at;
  String updated_at;
  Object deleted_at;
  String sponsored;
  String finished;
  String locked;
  String wait_list;
  String listed;
  int category_id;
  String media_cover;
  String category;
  String owner_display_name;
  String owner_name;
  String city_name;
  int registrants;
  int attenders;
  String link;

	Data.fromJsonMap(Map<String, dynamic> map): 
		id = map["id"],
		owner_id = map["owner_id"],
		name = map["name"],
		summary = map["summary"],
		description = map["description"],
		city_id = map["city_id"],
		address = map["address"],
		begin_time = map["begin_time"],
		end_time = map["end_time"],
		quota = map["quota"],
		point = map["point"],
		image_path = map["image_path"],
		header_image = map["header_image"],
		status = map["status"],
		created_at = map["created_at"],
		updated_at = map["updated_at"],
		deleted_at = map["deleted_at"],
		sponsored = map["sponsored"],
		finished = map["finished"],
		locked = map["locked"],
		wait_list = map["wait_list"],
		listed = map["listed"],
		category_id = map["category_id"],
		media_cover = map["media_cover"],
		category = map["category"],
		owner_display_name = map["owner_display_name"],
		owner_name = map["owner_name"],
		city_name = map["city_name"],
		registrants = map["registrants"],
		attenders = map["attenders"],
		link = map["link"];

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['id'] = id;
		data['owner_id'] = owner_id;
		data['name'] = name;
		data['summary'] = summary;
		data['description'] = description;
		data['city_id'] = city_id;
		data['address'] = address;
		data['begin_time'] = begin_time;
		data['end_time'] = end_time;
		data['quota'] = quota;
		data['point'] = point;
		data['image_path'] = image_path;
		data['header_image'] = header_image;
		data['status'] = status;
		data['created_at'] = created_at;
		data['updated_at'] = updated_at;
		data['deleted_at'] = deleted_at;
		data['sponsored'] = sponsored;
		data['finished'] = finished;
		data['locked'] = locked;
		data['wait_list'] = wait_list;
		data['listed'] = listed;
		data['category_id'] = category_id;
		data['media_cover'] = media_cover;
		data['category'] = category;
		data['owner_display_name'] = owner_display_name;
		data['owner_name'] = owner_name;
		data['city_name'] = city_name;
		data['registrants'] = registrants;
		data['attenders'] = attenders;
		data['link'] = link;
		return data;
	}
}

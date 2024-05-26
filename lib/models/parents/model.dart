abstract class Model {
  String? id;

  bool get hasData => id !=  null;


  void fromJson(Map<String, dynamic> json){
    id = stringFromJson(json, id);
  }

  @override
  bool operator == (dynamic other){
    return other.id == this.id;
  }











  



  String stringFromJson(Map<String, dynamic> json, String attribute, {String defaultValue = ''}) {
    try {
      if (json != null) {
        if (json[attribute] != null) {
          return json[attribute].toString();
        } else {
          return defaultValue;
        }
      } else {
        return defaultValue;
      }
    } catch (e) {
      throw Exception('Error while parsing ' + attribute + '[' + e.toString() + ']');
    }
  }


}
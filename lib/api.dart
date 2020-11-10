import 'dart:async';
import 'package:http/http.dart' as http;

const baseUrl = "http://creativeitem.com/demo/test2/api/user/userdata?auth_token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJtZXNzYWdlIjoiTG9nZ2VkaW4gc3VjY2Vzc2Z1bGx5IiwidXNlcl9pZCI6IjEiLCJuYW1lIjoiSm9obiBEb2UiLCJlbWFpbCI6ImFkbWluQGV4YW1wbGUuY29tIiwidXNlcl90eXBlIjoiYWRtaW4iLCJhZGRyZXNzIjpudWxsLCJwaG9uZSI6bnVsbCwiZ2VuZGVyIjpudWxsLCJzdGF0dXMiOiIxIiwidmFsaWRpdHkiOnRydWV9.fk5OWOPPuiU8O5bs082Q7vEAUbCO5-2JQPYW5pL-uJ4&fbclid=IwAR2-y1KotUVe3irZQR-dv1vBWsFlOA4iCpxiOh7FJ33cXB0ZLvAvhfcayqc";

class API {
  static Future getUsers() {
    var url = baseUrl;
    print('success');
    return http.get(url);
  }
}
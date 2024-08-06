import 'package:dio/dio.dart';
import 'package:state_management/data/core/api_constants.dart';

class ApiClient{
    final Dio _dio;
    ApiClient(this._dio);
    dynamic get(String path,{Map<String,dynamic>? queryParams}) async{
        final response = await _dio.get('${ApiConstants.BASE_URL}$path?api_key=${ApiConstants.API_KEY}',options:Options(
            headers:{
                'content-type':'application/json'
            }
        ),
        queryParameters: queryParams
        );
        if(response.statusCode == 200){
            return response.data;
        }else{
            throw Exception(response.statusMessage);
        }
    }
}
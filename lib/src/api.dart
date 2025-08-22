//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';
import 'package:openapi/src/serializers.dart';
import 'package:openapi/src/auth/api_key_auth.dart';
import 'package:openapi/src/auth/basic_auth.dart';
import 'package:openapi/src/auth/bearer_auth.dart';
import 'package:openapi/src/auth/oauth.dart';
import 'package:openapi/src/api/analysis_data_model_and_implementation_guide_ada_m_and_ada_mig_api.dart';
import 'package:openapi/src/api/cdash_implementation_guide_cdashig_api.dart';
import 'package:openapi/src/api/clinical_data_acquisition_standards_harmonization_cdash_api.dart';
import 'package:openapi/src/api/controlled_terminology_ct_api.dart';
import 'package:openapi/src/api/default_api.dart';
import 'package:openapi/src/api/measures_api.dart';
import 'package:openapi/src/api/sdtm_implementation_guide_sdtmig_api.dart';
import 'package:openapi/src/api/send_implementation_guide_sendig_api.dart';
import 'package:openapi/src/api/searches_api.dart';
import 'package:openapi/src/api/statuses_api.dart';
import 'package:openapi/src/api/study_data_tabulation_model_sdtm_api.dart';

class Openapi {
  static const String basePath = r'https://library.cdisc.org/api';

  final Dio dio;
  final Serializers serializers;

  Openapi({
    Dio? dio,
    Serializers? serializers,
    String? basePathOverride,
    List<Interceptor>? interceptors,
  })  : this.serializers = serializers ?? standardSerializers,
        this.dio = dio ??
            Dio(BaseOptions(
              baseUrl: basePathOverride ?? basePath,
              connectTimeout: const Duration(milliseconds: 5000),
              receiveTimeout: const Duration(milliseconds: 3000),
            )) {
    if (interceptors == null) {
      this.dio.interceptors.addAll([
        OAuthInterceptor(),
        BasicAuthInterceptor(),
        BearerAuthInterceptor(),
        ApiKeyAuthInterceptor(),
      ]);
    } else {
      this.dio.interceptors.addAll(interceptors);
    }
  }

  void setOAuthToken(String name, String token) {
    if (this.dio.interceptors.any((i) => i is OAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is OAuthInterceptor) as OAuthInterceptor).tokens[name] = token;
    }
  }

  void setBearerAuth(String name, String token) {
    if (this.dio.interceptors.any((i) => i is BearerAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BearerAuthInterceptor) as BearerAuthInterceptor).tokens[name] = token;
    }
  }

  void setBasicAuth(String name, String username, String password) {
    if (this.dio.interceptors.any((i) => i is BasicAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BasicAuthInterceptor) as BasicAuthInterceptor).authInfo[name] = BasicAuthInfo(username, password);
    }
  }

  void setApiKey(String name, String apiKey) {
    if (this.dio.interceptors.any((i) => i is ApiKeyAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((element) => element is ApiKeyAuthInterceptor) as ApiKeyAuthInterceptor).apiKeys[name] = apiKey;
    }
  }

  /// Get AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi getAnalysisDataModelAndImplementationGuideADaMAndADaMIGApi() {
    return AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi(dio, serializers);
  }

  /// Get CDASHImplementationGuideCDASHIGApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  CDASHImplementationGuideCDASHIGApi getCDASHImplementationGuideCDASHIGApi() {
    return CDASHImplementationGuideCDASHIGApi(dio, serializers);
  }

  /// Get ClinicalDataAcquisitionStandardsHarmonizationCDASHApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ClinicalDataAcquisitionStandardsHarmonizationCDASHApi getClinicalDataAcquisitionStandardsHarmonizationCDASHApi() {
    return ClinicalDataAcquisitionStandardsHarmonizationCDASHApi(dio, serializers);
  }

  /// Get ControlledTerminologyCTApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ControlledTerminologyCTApi getControlledTerminologyCTApi() {
    return ControlledTerminologyCTApi(dio, serializers);
  }

  /// Get DefaultApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  DefaultApi getDefaultApi() {
    return DefaultApi(dio, serializers);
  }

  /// Get MeasuresApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  MeasuresApi getMeasuresApi() {
    return MeasuresApi(dio, serializers);
  }

  /// Get SDTMImplementationGuideSDTMIGApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  SDTMImplementationGuideSDTMIGApi getSDTMImplementationGuideSDTMIGApi() {
    return SDTMImplementationGuideSDTMIGApi(dio, serializers);
  }

  /// Get SENDImplementationGuideSENDIGApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  SENDImplementationGuideSENDIGApi getSENDImplementationGuideSENDIGApi() {
    return SENDImplementationGuideSENDIGApi(dio, serializers);
  }

  /// Get SearchesApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  SearchesApi getSearchesApi() {
    return SearchesApi(dio, serializers);
  }

  /// Get StatusesApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  StatusesApi getStatusesApi() {
    return StatusesApi(dio, serializers);
  }

  /// Get StudyDataTabulationModelSDTMApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  StudyDataTabulationModelSDTMApi getStudyDataTabulationModelSDTMApi() {
    return StudyDataTabulationModelSDTMApi(dio, serializers);
  }
}

#import "OAIStudyDataTabulationModelSDTMApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIDefaultErrorResponse.h"
#import "OAIExportSdtmDatasetsTable.h"
#import "OAIExportSdtmVariablesTable.h"
#import "OAIExportSdtmWorkbook.h"
#import "OAIRootSdtmClassVariable.h"
#import "OAIRootSdtmDatasetVariable.h"
#import "OAISdtmClass.h"
#import "OAISdtmClassDatasets.h"
#import "OAISdtmClassVariable.h"
#import "OAISdtmClassVariables.h"
#import "OAISdtmClasses.h"
#import "OAISdtmDataset.h"
#import "OAISdtmDatasetVariable.h"
#import "OAISdtmDatasetVariables.h"
#import "OAISdtmDatasets.h"
#import "OAISdtmProduct.h"
#import "OAIXmlRootSdtmClassVariable.h"
#import "OAIXmlRootSdtmDatasetVariable.h"
#import "OAIXmlSdtmClass.h"
#import "OAIXmlSdtmClassDatasets.h"
#import "OAIXmlSdtmClassVariable.h"
#import "OAIXmlSdtmClassVariables.h"
#import "OAIXmlSdtmClasses.h"
#import "OAIXmlSdtmDataset.h"
#import "OAIXmlSdtmDatasetVariable.h"
#import "OAIXmlSdtmDatasetVariables.h"
#import "OAIXmlSdtmDatasets.h"
#import "OAIXmlSdtmProduct.h"


@interface OAIStudyDataTabulationModelSDTMApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIStudyDataTabulationModelSDTMApi

NSString* kOAIStudyDataTabulationModelSDTMApiErrorDomain = @"OAIStudyDataTabulationModelSDTMApiErrorDomain";
NSInteger kOAIStudyDataTabulationModelSDTMApiMissingParamErrorCode = 234513;

@synthesize apiClient = _apiClient;

#pragma mark - Initialize methods

- (instancetype) init {
    return [self initWithApiClient:[OAIApiClient sharedClient]];
}


-(instancetype) initWithApiClient:(OAIApiClient *)apiClient {
    self = [super init];
    if (self) {
        _apiClient = apiClient;
        _mutableDefaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

#pragma mark -

-(NSString*) defaultHeaderForKey:(NSString*)key {
    return self.mutableDefaultHeaders[key];
}

-(void) setDefaultHeaderValue:(NSString*) value forKey:(NSString*)key {
    [self.mutableDefaultHeaders setValue:value forKey:key];
}

-(NSDictionary *)defaultHeaders {
    return self.mutableDefaultHeaders;
}

#pragma mark - Api Methods

///
/// 
/// Get Root of SDTM Class Variable
///  @param _class SDTM Class Identifier 
///
///  @param var SDTM Variable Identifier 
///
///  @returns OAIRootSdtmClassVariable*
///
-(NSURLSessionTask*) mdrRootSdtmClassesClassVariablesVarGetWithClass: (NSString*) _class
    var: (NSString*) var
    completionHandler: (void (^)(OAIRootSdtmClassVariable* output, NSError* error)) handler {
    // verify the required parameter '_class' is set
    if (_class == nil) {
        NSParameterAssert(_class);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_class"] };
            NSError* error = [NSError errorWithDomain:kOAIStudyDataTabulationModelSDTMApiErrorDomain code:kOAIStudyDataTabulationModelSDTMApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'var' is set
    if (var == nil) {
        NSParameterAssert(var);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"var"] };
            NSError* error = [NSError errorWithDomain:kOAIStudyDataTabulationModelSDTMApiErrorDomain code:kOAIStudyDataTabulationModelSDTMApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mdr/root/sdtm/classes/{class}/variables/{var}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_class != nil) {
        pathParams[@"class"] = _class;
    }
    if (var != nil) {
        pathParams[@"var"] = var;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json", @"application/xml"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"basicAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIRootSdtmClassVariable*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIRootSdtmClassVariable*)data, error);
                                }
                            }];
}

///
/// 
/// Get Root SDTM Dataset Variable
///  @param dataset SDTM Dataset Identifier 
///
///  @param var SDTM Variable Identifier 
///
///  @returns OAIRootSdtmDatasetVariable*
///
-(NSURLSessionTask*) mdrRootSdtmDatasetsDatasetVariablesVarGetWithDataset: (NSString*) dataset
    var: (NSString*) var
    completionHandler: (void (^)(OAIRootSdtmDatasetVariable* output, NSError* error)) handler {
    // verify the required parameter 'dataset' is set
    if (dataset == nil) {
        NSParameterAssert(dataset);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"dataset"] };
            NSError* error = [NSError errorWithDomain:kOAIStudyDataTabulationModelSDTMApiErrorDomain code:kOAIStudyDataTabulationModelSDTMApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'var' is set
    if (var == nil) {
        NSParameterAssert(var);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"var"] };
            NSError* error = [NSError errorWithDomain:kOAIStudyDataTabulationModelSDTMApiErrorDomain code:kOAIStudyDataTabulationModelSDTMApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mdr/root/sdtm/datasets/{dataset}/variables/{var}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (dataset != nil) {
        pathParams[@"dataset"] = dataset;
    }
    if (var != nil) {
        pathParams[@"var"] = var;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json", @"application/xml"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"basicAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIRootSdtmDatasetVariable*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIRootSdtmDatasetVariable*)data, error);
                                }
                            }];
}

///
/// 
/// Get SDTM Class Dataset List
///  @param version CDISC Library Product Version 
///
///  @param _class SDTM Class Identifier 
///
///  @returns OAISdtmClassDatasets*
///
-(NSURLSessionTask*) mdrSdtmVersionClassesClassDatasetsGetWithVersion: (NSString*) version
    _class: (NSString*) _class
    completionHandler: (void (^)(OAISdtmClassDatasets* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIStudyDataTabulationModelSDTMApiErrorDomain code:kOAIStudyDataTabulationModelSDTMApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter '_class' is set
    if (_class == nil) {
        NSParameterAssert(_class);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_class"] };
            NSError* error = [NSError errorWithDomain:kOAIStudyDataTabulationModelSDTMApiErrorDomain code:kOAIStudyDataTabulationModelSDTMApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mdr/sdtm/{version}/classes/{class}/datasets"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }
    if (_class != nil) {
        pathParams[@"class"] = _class;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json", @"application/xml"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"basicAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAISdtmClassDatasets*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAISdtmClassDatasets*)data, error);
                                }
                            }];
}

///
/// 
/// Get SDTM Class
///  @param version CDISC Library Product Version 
///
///  @param _class SDTM Class Identifier 
///
///  @returns OAISdtmClass*
///
-(NSURLSessionTask*) mdrSdtmVersionClassesClassGetWithVersion: (NSString*) version
    _class: (NSString*) _class
    completionHandler: (void (^)(OAISdtmClass* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIStudyDataTabulationModelSDTMApiErrorDomain code:kOAIStudyDataTabulationModelSDTMApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter '_class' is set
    if (_class == nil) {
        NSParameterAssert(_class);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_class"] };
            NSError* error = [NSError errorWithDomain:kOAIStudyDataTabulationModelSDTMApiErrorDomain code:kOAIStudyDataTabulationModelSDTMApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mdr/sdtm/{version}/classes/{class}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }
    if (_class != nil) {
        pathParams[@"class"] = _class;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json", @"application/xml"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"basicAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAISdtmClass*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAISdtmClass*)data, error);
                                }
                            }];
}

///
/// 
/// Get SDTM Class Variable List
///  @param version CDISC Library Product Version 
///
///  @param _class SDTM Class Identifier 
///
///  @returns OAISdtmClassVariables*
///
-(NSURLSessionTask*) mdrSdtmVersionClassesClassVariablesGetWithVersion: (NSString*) version
    _class: (NSString*) _class
    completionHandler: (void (^)(OAISdtmClassVariables* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIStudyDataTabulationModelSDTMApiErrorDomain code:kOAIStudyDataTabulationModelSDTMApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter '_class' is set
    if (_class == nil) {
        NSParameterAssert(_class);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_class"] };
            NSError* error = [NSError errorWithDomain:kOAIStudyDataTabulationModelSDTMApiErrorDomain code:kOAIStudyDataTabulationModelSDTMApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mdr/sdtm/{version}/classes/{class}/variables"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }
    if (_class != nil) {
        pathParams[@"class"] = _class;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json", @"application/xml"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"basicAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAISdtmClassVariables*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAISdtmClassVariables*)data, error);
                                }
                            }];
}

///
/// 
/// Get SDTM Class Variable
///  @param version CDISC Library Product Version 
///
///  @param _class SDTM Class Identifier 
///
///  @param var SDTM Variable Identifier 
///
///  @returns OAISdtmClassVariable*
///
-(NSURLSessionTask*) mdrSdtmVersionClassesClassVariablesVarGetWithVersion: (NSString*) version
    _class: (NSString*) _class
    var: (NSString*) var
    completionHandler: (void (^)(OAISdtmClassVariable* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIStudyDataTabulationModelSDTMApiErrorDomain code:kOAIStudyDataTabulationModelSDTMApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter '_class' is set
    if (_class == nil) {
        NSParameterAssert(_class);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_class"] };
            NSError* error = [NSError errorWithDomain:kOAIStudyDataTabulationModelSDTMApiErrorDomain code:kOAIStudyDataTabulationModelSDTMApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'var' is set
    if (var == nil) {
        NSParameterAssert(var);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"var"] };
            NSError* error = [NSError errorWithDomain:kOAIStudyDataTabulationModelSDTMApiErrorDomain code:kOAIStudyDataTabulationModelSDTMApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mdr/sdtm/{version}/classes/{class}/variables/{var}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }
    if (_class != nil) {
        pathParams[@"class"] = _class;
    }
    if (var != nil) {
        pathParams[@"var"] = var;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json", @"application/xml"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"basicAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAISdtmClassVariable*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAISdtmClassVariable*)data, error);
                                }
                            }];
}

///
/// 
/// Get SDTM Class List
///  @param version CDISC Library Product Version 
///
///  @returns OAISdtmClasses*
///
-(NSURLSessionTask*) mdrSdtmVersionClassesGetWithVersion: (NSString*) version
    completionHandler: (void (^)(OAISdtmClasses* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIStudyDataTabulationModelSDTMApiErrorDomain code:kOAIStudyDataTabulationModelSDTMApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mdr/sdtm/{version}/classes"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json", @"application/xml"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"basicAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAISdtmClasses*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAISdtmClasses*)data, error);
                                }
                            }];
}

///
/// 
/// Get SDTM Dataset
///  @param version CDISC Library Product Version 
///
///  @param dataset SDTM Dataset Identifier 
///
///  @returns OAISdtmDataset*
///
-(NSURLSessionTask*) mdrSdtmVersionDatasetsDatasetGetWithVersion: (NSString*) version
    dataset: (NSString*) dataset
    completionHandler: (void (^)(OAISdtmDataset* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIStudyDataTabulationModelSDTMApiErrorDomain code:kOAIStudyDataTabulationModelSDTMApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'dataset' is set
    if (dataset == nil) {
        NSParameterAssert(dataset);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"dataset"] };
            NSError* error = [NSError errorWithDomain:kOAIStudyDataTabulationModelSDTMApiErrorDomain code:kOAIStudyDataTabulationModelSDTMApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mdr/sdtm/{version}/datasets/{dataset}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }
    if (dataset != nil) {
        pathParams[@"dataset"] = dataset;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json", @"application/xml"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"basicAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAISdtmDataset*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAISdtmDataset*)data, error);
                                }
                            }];
}

///
/// 
/// Get SDTM Dataset Variable List
///  @param version CDISC Library Product Version 
///
///  @param dataset SDTM Dataset Identifier 
///
///  @returns OAISdtmDatasetVariables*
///
-(NSURLSessionTask*) mdrSdtmVersionDatasetsDatasetVariablesGetWithVersion: (NSString*) version
    dataset: (NSString*) dataset
    completionHandler: (void (^)(OAISdtmDatasetVariables* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIStudyDataTabulationModelSDTMApiErrorDomain code:kOAIStudyDataTabulationModelSDTMApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'dataset' is set
    if (dataset == nil) {
        NSParameterAssert(dataset);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"dataset"] };
            NSError* error = [NSError errorWithDomain:kOAIStudyDataTabulationModelSDTMApiErrorDomain code:kOAIStudyDataTabulationModelSDTMApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mdr/sdtm/{version}/datasets/{dataset}/variables"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }
    if (dataset != nil) {
        pathParams[@"dataset"] = dataset;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json", @"application/xml"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"basicAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAISdtmDatasetVariables*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAISdtmDatasetVariables*)data, error);
                                }
                            }];
}

///
/// 
/// Get SDTM Dataset Variable
///  @param version CDISC Library Product Version 
///
///  @param dataset SDTM Dataset Identifier 
///
///  @param var SDTM Variable Identifier 
///
///  @returns OAISdtmDatasetVariable*
///
-(NSURLSessionTask*) mdrSdtmVersionDatasetsDatasetVariablesVarGetWithVersion: (NSString*) version
    dataset: (NSString*) dataset
    var: (NSString*) var
    completionHandler: (void (^)(OAISdtmDatasetVariable* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIStudyDataTabulationModelSDTMApiErrorDomain code:kOAIStudyDataTabulationModelSDTMApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'dataset' is set
    if (dataset == nil) {
        NSParameterAssert(dataset);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"dataset"] };
            NSError* error = [NSError errorWithDomain:kOAIStudyDataTabulationModelSDTMApiErrorDomain code:kOAIStudyDataTabulationModelSDTMApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'var' is set
    if (var == nil) {
        NSParameterAssert(var);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"var"] };
            NSError* error = [NSError errorWithDomain:kOAIStudyDataTabulationModelSDTMApiErrorDomain code:kOAIStudyDataTabulationModelSDTMApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mdr/sdtm/{version}/datasets/{dataset}/variables/{var}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }
    if (dataset != nil) {
        pathParams[@"dataset"] = dataset;
    }
    if (var != nil) {
        pathParams[@"var"] = var;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json", @"application/xml"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"basicAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAISdtmDatasetVariable*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAISdtmDatasetVariable*)data, error);
                                }
                            }];
}

///
/// 
/// Get SDTM Dataset List
///  @param version CDISC Library Product Version 
///
///  @returns OAISdtmDatasets*
///
-(NSURLSessionTask*) mdrSdtmVersionDatasetsGetWithVersion: (NSString*) version
    completionHandler: (void (^)(OAISdtmDatasets* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIStudyDataTabulationModelSDTMApiErrorDomain code:kOAIStudyDataTabulationModelSDTMApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mdr/sdtm/{version}/datasets"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json", @"application/xml", @"text/csv"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"basicAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAISdtmDatasets*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAISdtmDatasets*)data, error);
                                }
                            }];
}

///
/// 
/// Get SDTM product
///  @param version CDISC Library Product Version 
///
///  @returns OAISdtmProduct*
///
-(NSURLSessionTask*) mdrSdtmVersionGetWithVersion: (NSString*) version
    completionHandler: (void (^)(OAISdtmProduct* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIStudyDataTabulationModelSDTMApiErrorDomain code:kOAIStudyDataTabulationModelSDTMApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mdr/sdtm/{version}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json", @"application/xml", @"text/csv", @"application/vnd.ms-excel", @"application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"basicAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAISdtmProduct*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAISdtmProduct*)data, error);
                                }
                            }];
}



@end

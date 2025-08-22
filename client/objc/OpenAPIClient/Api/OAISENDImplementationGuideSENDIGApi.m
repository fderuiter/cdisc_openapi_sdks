#import "OAISENDImplementationGuideSENDIGApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIDefaultErrorResponse.h"
#import "OAIExportSendigDatasetsTable.h"
#import "OAIExportSendigVariablesTable.h"
#import "OAIExportSendigWorkbook.h"
#import "OAIRootSendigDatasetVariable.h"
#import "OAISendigClass.h"
#import "OAISendigClassDatasets.h"
#import "OAISendigClasses.h"
#import "OAISendigDataset.h"
#import "OAISendigDatasetVariable.h"
#import "OAISendigDatasetVariables.h"
#import "OAISendigDatasets.h"
#import "OAISendigProduct.h"
#import "OAIXmlRootSendigDatasetVariable.h"
#import "OAIXmlSendigClass.h"
#import "OAIXmlSendigClassDatasets.h"
#import "OAIXmlSendigClasses.h"
#import "OAIXmlSendigDataset.h"
#import "OAIXmlSendigDatasetVariable.h"
#import "OAIXmlSendigDatasetVariables.h"
#import "OAIXmlSendigDatasets.h"
#import "OAIXmlSendigProduct.h"


@interface OAISENDImplementationGuideSENDIGApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAISENDImplementationGuideSENDIGApi

NSString* kOAISENDImplementationGuideSENDIGApiErrorDomain = @"OAISENDImplementationGuideSENDIGApiErrorDomain";
NSInteger kOAISENDImplementationGuideSENDIGApiMissingParamErrorCode = 234513;

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
/// Get Root SENDIG Dataset Variable
///  @param dataset SENDIG Dataset Identifier 
///
///  @param var SENDIG Variable Identifier 
///
///  @returns OAIRootSendigDatasetVariable*
///
-(NSURLSessionTask*) mdrRootSendigDatasetsDatasetVariablesVarGetWithDataset: (NSString*) dataset
    var: (NSString*) var
    completionHandler: (void (^)(OAIRootSendigDatasetVariable* output, NSError* error)) handler {
    // verify the required parameter 'dataset' is set
    if (dataset == nil) {
        NSParameterAssert(dataset);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"dataset"] };
            NSError* error = [NSError errorWithDomain:kOAISENDImplementationGuideSENDIGApiErrorDomain code:kOAISENDImplementationGuideSENDIGApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'var' is set
    if (var == nil) {
        NSParameterAssert(var);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"var"] };
            NSError* error = [NSError errorWithDomain:kOAISENDImplementationGuideSENDIGApiErrorDomain code:kOAISENDImplementationGuideSENDIGApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mdr/root/sendig/datasets/{dataset}/variables/{var}"];

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
                              responseType: @"OAIRootSendigDatasetVariable*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIRootSendigDatasetVariable*)data, error);
                                }
                            }];
}

///
/// 
/// Get SENDIG Class Dataset List
///  @param version CDISC Library Product Version 
///
///  @param _class SENDIG Class Identifier 
///
///  @returns OAISendigClassDatasets*
///
-(NSURLSessionTask*) mdrSendigVersionClassesClassDatasetsGetWithVersion: (NSString*) version
    _class: (NSString*) _class
    completionHandler: (void (^)(OAISendigClassDatasets* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAISENDImplementationGuideSENDIGApiErrorDomain code:kOAISENDImplementationGuideSENDIGApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter '_class' is set
    if (_class == nil) {
        NSParameterAssert(_class);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_class"] };
            NSError* error = [NSError errorWithDomain:kOAISENDImplementationGuideSENDIGApiErrorDomain code:kOAISENDImplementationGuideSENDIGApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mdr/sendig/{version}/classes/{class}/datasets"];

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
                              responseType: @"OAISendigClassDatasets*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAISendigClassDatasets*)data, error);
                                }
                            }];
}

///
/// 
/// Get SENDIG Class
///  @param version CDISC Library Product Version 
///
///  @param _class SENDIG Class Identifier 
///
///  @returns OAISendigClass*
///
-(NSURLSessionTask*) mdrSendigVersionClassesClassGetWithVersion: (NSString*) version
    _class: (NSString*) _class
    completionHandler: (void (^)(OAISendigClass* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAISENDImplementationGuideSENDIGApiErrorDomain code:kOAISENDImplementationGuideSENDIGApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter '_class' is set
    if (_class == nil) {
        NSParameterAssert(_class);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_class"] };
            NSError* error = [NSError errorWithDomain:kOAISENDImplementationGuideSENDIGApiErrorDomain code:kOAISENDImplementationGuideSENDIGApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mdr/sendig/{version}/classes/{class}"];

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
                              responseType: @"OAISendigClass*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAISendigClass*)data, error);
                                }
                            }];
}

///
/// 
/// Get SENDIG Class List
///  @param version CDISC Library Product Version 
///
///  @returns OAISendigClasses*
///
-(NSURLSessionTask*) mdrSendigVersionClassesGetWithVersion: (NSString*) version
    completionHandler: (void (^)(OAISendigClasses* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAISENDImplementationGuideSENDIGApiErrorDomain code:kOAISENDImplementationGuideSENDIGApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mdr/sendig/{version}/classes"];

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
                              responseType: @"OAISendigClasses*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAISendigClasses*)data, error);
                                }
                            }];
}

///
/// 
/// Get SENDIG Dataset
///  @param version CDISC Library Product Version 
///
///  @param dataset SENDIG Class Identifier 
///
///  @returns OAISendigDataset*
///
-(NSURLSessionTask*) mdrSendigVersionDatasetsDatasetGetWithVersion: (NSString*) version
    dataset: (NSString*) dataset
    completionHandler: (void (^)(OAISendigDataset* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAISENDImplementationGuideSENDIGApiErrorDomain code:kOAISENDImplementationGuideSENDIGApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'dataset' is set
    if (dataset == nil) {
        NSParameterAssert(dataset);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"dataset"] };
            NSError* error = [NSError errorWithDomain:kOAISENDImplementationGuideSENDIGApiErrorDomain code:kOAISENDImplementationGuideSENDIGApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mdr/sendig/{version}/datasets/{dataset}"];

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
                              responseType: @"OAISendigDataset*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAISendigDataset*)data, error);
                                }
                            }];
}

///
/// 
/// Get SENDIG Dataset Variable List
///  @param version CDISC Library Product Version 
///
///  @param dataset SENDIG Class Identifier 
///
///  @returns OAISendigDatasetVariables*
///
-(NSURLSessionTask*) mdrSendigVersionDatasetsDatasetVariablesGetWithVersion: (NSString*) version
    dataset: (NSString*) dataset
    completionHandler: (void (^)(OAISendigDatasetVariables* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAISENDImplementationGuideSENDIGApiErrorDomain code:kOAISENDImplementationGuideSENDIGApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'dataset' is set
    if (dataset == nil) {
        NSParameterAssert(dataset);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"dataset"] };
            NSError* error = [NSError errorWithDomain:kOAISENDImplementationGuideSENDIGApiErrorDomain code:kOAISENDImplementationGuideSENDIGApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mdr/sendig/{version}/datasets/{dataset}/variables"];

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
                              responseType: @"OAISendigDatasetVariables*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAISendigDatasetVariables*)data, error);
                                }
                            }];
}

///
/// 
/// Get SENDIG Dataset Variable
///  @param version CDISC Library Product Version 
///
///  @param dataset SENDIG Class Identifier 
///
///  @param var SENDIG Variable Identifier 
///
///  @returns OAISendigDatasetVariable*
///
-(NSURLSessionTask*) mdrSendigVersionDatasetsDatasetVariablesVarGetWithVersion: (NSString*) version
    dataset: (NSString*) dataset
    var: (NSString*) var
    completionHandler: (void (^)(OAISendigDatasetVariable* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAISENDImplementationGuideSENDIGApiErrorDomain code:kOAISENDImplementationGuideSENDIGApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'dataset' is set
    if (dataset == nil) {
        NSParameterAssert(dataset);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"dataset"] };
            NSError* error = [NSError errorWithDomain:kOAISENDImplementationGuideSENDIGApiErrorDomain code:kOAISENDImplementationGuideSENDIGApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'var' is set
    if (var == nil) {
        NSParameterAssert(var);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"var"] };
            NSError* error = [NSError errorWithDomain:kOAISENDImplementationGuideSENDIGApiErrorDomain code:kOAISENDImplementationGuideSENDIGApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mdr/sendig/{version}/datasets/{dataset}/variables/{var}"];

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
                              responseType: @"OAISendigDatasetVariable*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAISendigDatasetVariable*)data, error);
                                }
                            }];
}

///
/// 
/// Get SENDIG Dataset List
///  @param version CDISC Library Product Version 
///
///  @returns OAISendigDatasets*
///
-(NSURLSessionTask*) mdrSendigVersionDatasetsGetWithVersion: (NSString*) version
    completionHandler: (void (^)(OAISendigDatasets* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAISENDImplementationGuideSENDIGApiErrorDomain code:kOAISENDImplementationGuideSENDIGApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mdr/sendig/{version}/datasets"];

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
                              responseType: @"OAISendigDatasets*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAISendigDatasets*)data, error);
                                }
                            }];
}

///
/// 
/// Get SENDIG product
///  @param version CDISC Library Product Version 
///
///  @returns OAISendigProduct*
///
-(NSURLSessionTask*) mdrSendigVersionGetWithVersion: (NSString*) version
    completionHandler: (void (^)(OAISendigProduct* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAISENDImplementationGuideSENDIGApiErrorDomain code:kOAISENDImplementationGuideSENDIGApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mdr/sendig/{version}"];

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
                              responseType: @"OAISendigProduct*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAISendigProduct*)data, error);
                                }
                            }];
}



@end

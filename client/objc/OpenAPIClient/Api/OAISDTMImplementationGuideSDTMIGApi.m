#import "OAISDTMImplementationGuideSDTMIGApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIDefaultErrorResponse.h"
#import "OAIExportSdtmigDatasetsTable.h"
#import "OAIExportSdtmigVariablesTable.h"
#import "OAIExportSdtmigWorkbook.h"
#import "OAIRootSdtmigDatasetVariable.h"
#import "OAISdtmigClass.h"
#import "OAISdtmigClassDatasets.h"
#import "OAISdtmigClasses.h"
#import "OAISdtmigDataset.h"
#import "OAISdtmigDatasetVariable.h"
#import "OAISdtmigDatasetVariables.h"
#import "OAISdtmigDatasets.h"
#import "OAISdtmigProduct.h"
#import "OAIXmlRootSdtmigDatasetVariable.h"
#import "OAIXmlSdtmigClass.h"
#import "OAIXmlSdtmigClassDatasets.h"
#import "OAIXmlSdtmigClasses.h"
#import "OAIXmlSdtmigDataset.h"
#import "OAIXmlSdtmigDatasetVariable.h"
#import "OAIXmlSdtmigDatasetVariables.h"
#import "OAIXmlSdtmigDatasets.h"
#import "OAIXmlSdtmigProduct.h"


@interface OAISDTMImplementationGuideSDTMIGApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAISDTMImplementationGuideSDTMIGApi

NSString* kOAISDTMImplementationGuideSDTMIGApiErrorDomain = @"OAISDTMImplementationGuideSDTMIGApiErrorDomain";
NSInteger kOAISDTMImplementationGuideSDTMIGApiMissingParamErrorCode = 234513;

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
/// Get Root SDTMIG Dataset Variable
///  @param dataset SDTMIG Dataset Identifier 
///
///  @param var SDTMIG Variable Identifier 
///
///  @returns OAIRootSdtmigDatasetVariable*
///
-(NSURLSessionTask*) mdrRootSdtmigDatasetsDatasetVariablesVarGetWithDataset: (NSString*) dataset
    var: (NSString*) var
    completionHandler: (void (^)(OAIRootSdtmigDatasetVariable* output, NSError* error)) handler {
    // verify the required parameter 'dataset' is set
    if (dataset == nil) {
        NSParameterAssert(dataset);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"dataset"] };
            NSError* error = [NSError errorWithDomain:kOAISDTMImplementationGuideSDTMIGApiErrorDomain code:kOAISDTMImplementationGuideSDTMIGApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'var' is set
    if (var == nil) {
        NSParameterAssert(var);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"var"] };
            NSError* error = [NSError errorWithDomain:kOAISDTMImplementationGuideSDTMIGApiErrorDomain code:kOAISDTMImplementationGuideSDTMIGApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mdr/root/sdtmig/datasets/{dataset}/variables/{var}"];

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
                              responseType: @"OAIRootSdtmigDatasetVariable*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIRootSdtmigDatasetVariable*)data, error);
                                }
                            }];
}

///
/// 
/// Get SDTMIG Class Dataset List
///  @param version CDISC Library Product Version 
///
///  @param _class SDTMIG Class Identifier 
///
///  @returns OAISdtmigClassDatasets*
///
-(NSURLSessionTask*) mdrSdtmigVersionClassesClassDatasetsGetWithVersion: (NSString*) version
    _class: (NSString*) _class
    completionHandler: (void (^)(OAISdtmigClassDatasets* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAISDTMImplementationGuideSDTMIGApiErrorDomain code:kOAISDTMImplementationGuideSDTMIGApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter '_class' is set
    if (_class == nil) {
        NSParameterAssert(_class);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_class"] };
            NSError* error = [NSError errorWithDomain:kOAISDTMImplementationGuideSDTMIGApiErrorDomain code:kOAISDTMImplementationGuideSDTMIGApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mdr/sdtmig/{version}/classes/{class}/datasets"];

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
                              responseType: @"OAISdtmigClassDatasets*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAISdtmigClassDatasets*)data, error);
                                }
                            }];
}

///
/// 
/// Get SDTMIG Class
///  @param version CDISC Library Product Version 
///
///  @param _class SDTMIG Class Identifier 
///
///  @returns OAISdtmigClass*
///
-(NSURLSessionTask*) mdrSdtmigVersionClassesClassGetWithVersion: (NSString*) version
    _class: (NSString*) _class
    completionHandler: (void (^)(OAISdtmigClass* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAISDTMImplementationGuideSDTMIGApiErrorDomain code:kOAISDTMImplementationGuideSDTMIGApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter '_class' is set
    if (_class == nil) {
        NSParameterAssert(_class);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_class"] };
            NSError* error = [NSError errorWithDomain:kOAISDTMImplementationGuideSDTMIGApiErrorDomain code:kOAISDTMImplementationGuideSDTMIGApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mdr/sdtmig/{version}/classes/{class}"];

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
                              responseType: @"OAISdtmigClass*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAISdtmigClass*)data, error);
                                }
                            }];
}

///
/// 
/// Get SDTMIG Class List
///  @param version CDISC Library Product Version 
///
///  @returns OAISdtmigClasses*
///
-(NSURLSessionTask*) mdrSdtmigVersionClassesGetWithVersion: (NSString*) version
    completionHandler: (void (^)(OAISdtmigClasses* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAISDTMImplementationGuideSDTMIGApiErrorDomain code:kOAISDTMImplementationGuideSDTMIGApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mdr/sdtmig/{version}/classes"];

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
                              responseType: @"OAISdtmigClasses*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAISdtmigClasses*)data, error);
                                }
                            }];
}

///
/// 
/// Get SDTMIG Dataset
///  @param version CDISC Library Product Version 
///
///  @param dataset SDTMIG Dataset Identifier 
///
///  @returns OAISdtmigDataset*
///
-(NSURLSessionTask*) mdrSdtmigVersionDatasetsDatasetGetWithVersion: (NSString*) version
    dataset: (NSString*) dataset
    completionHandler: (void (^)(OAISdtmigDataset* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAISDTMImplementationGuideSDTMIGApiErrorDomain code:kOAISDTMImplementationGuideSDTMIGApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'dataset' is set
    if (dataset == nil) {
        NSParameterAssert(dataset);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"dataset"] };
            NSError* error = [NSError errorWithDomain:kOAISDTMImplementationGuideSDTMIGApiErrorDomain code:kOAISDTMImplementationGuideSDTMIGApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mdr/sdtmig/{version}/datasets/{dataset}"];

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
                              responseType: @"OAISdtmigDataset*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAISdtmigDataset*)data, error);
                                }
                            }];
}

///
/// 
/// Get SDTMIG Dataset Variable List
///  @param version CDISC Library Product Version 
///
///  @param dataset SDTMIG Dataset Identifier 
///
///  @returns OAISdtmigDatasetVariables*
///
-(NSURLSessionTask*) mdrSdtmigVersionDatasetsDatasetVariablesGetWithVersion: (NSString*) version
    dataset: (NSString*) dataset
    completionHandler: (void (^)(OAISdtmigDatasetVariables* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAISDTMImplementationGuideSDTMIGApiErrorDomain code:kOAISDTMImplementationGuideSDTMIGApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'dataset' is set
    if (dataset == nil) {
        NSParameterAssert(dataset);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"dataset"] };
            NSError* error = [NSError errorWithDomain:kOAISDTMImplementationGuideSDTMIGApiErrorDomain code:kOAISDTMImplementationGuideSDTMIGApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mdr/sdtmig/{version}/datasets/{dataset}/variables"];

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
                              responseType: @"OAISdtmigDatasetVariables*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAISdtmigDatasetVariables*)data, error);
                                }
                            }];
}

///
/// 
/// Get SDTMIG Dataset Variable
///  @param version CDISC Library Product Version 
///
///  @param dataset SDTMIG Dataset Identifier 
///
///  @param var SDTMIG Variable Identifier 
///
///  @returns OAISdtmigDatasetVariable*
///
-(NSURLSessionTask*) mdrSdtmigVersionDatasetsDatasetVariablesVarGetWithVersion: (NSString*) version
    dataset: (NSString*) dataset
    var: (NSString*) var
    completionHandler: (void (^)(OAISdtmigDatasetVariable* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAISDTMImplementationGuideSDTMIGApiErrorDomain code:kOAISDTMImplementationGuideSDTMIGApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'dataset' is set
    if (dataset == nil) {
        NSParameterAssert(dataset);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"dataset"] };
            NSError* error = [NSError errorWithDomain:kOAISDTMImplementationGuideSDTMIGApiErrorDomain code:kOAISDTMImplementationGuideSDTMIGApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'var' is set
    if (var == nil) {
        NSParameterAssert(var);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"var"] };
            NSError* error = [NSError errorWithDomain:kOAISDTMImplementationGuideSDTMIGApiErrorDomain code:kOAISDTMImplementationGuideSDTMIGApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mdr/sdtmig/{version}/datasets/{dataset}/variables/{var}"];

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
                              responseType: @"OAISdtmigDatasetVariable*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAISdtmigDatasetVariable*)data, error);
                                }
                            }];
}

///
/// 
/// Get SDTMIG Dataset List
///  @param version CDISC Library Product Version 
///
///  @returns OAISdtmigDatasets*
///
-(NSURLSessionTask*) mdrSdtmigVersionDatasetsGetWithVersion: (NSString*) version
    completionHandler: (void (^)(OAISdtmigDatasets* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAISDTMImplementationGuideSDTMIGApiErrorDomain code:kOAISDTMImplementationGuideSDTMIGApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mdr/sdtmig/{version}/datasets"];

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
                              responseType: @"OAISdtmigDatasets*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAISdtmigDatasets*)data, error);
                                }
                            }];
}

///
/// 
/// Get SDTMIG product
///  @param version CDISC Library Product Version 
///
///  @returns OAISdtmigProduct*
///
-(NSURLSessionTask*) mdrSdtmigVersionGetWithVersion: (NSString*) version
    completionHandler: (void (^)(OAISdtmigProduct* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAISDTMImplementationGuideSDTMIGApiErrorDomain code:kOAISDTMImplementationGuideSDTMIGApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mdr/sdtmig/{version}"];

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
                              responseType: @"OAISdtmigProduct*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAISdtmigProduct*)data, error);
                                }
                            }];
}



@end

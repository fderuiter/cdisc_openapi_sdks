#import "OAICDASHImplementationGuideCDASHIGApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAICdashigClass.h"
#import "OAICdashigClassDomains.h"
#import "OAICdashigClassScenarios.h"
#import "OAICdashigDomain.h"
#import "OAICdashigDomainField.h"
#import "OAICdashigDomainFields.h"
#import "OAICdashigProduct.h"
#import "OAICdashigProductClasses.h"
#import "OAICdashigProductDomains.h"
#import "OAICdashigProductScenarios.h"
#import "OAICdashigScenario.h"
#import "OAICdashigScenarioField.h"
#import "OAICdashigScenarioFields.h"
#import "OAIDefaultErrorResponse.h"
#import "OAIExportCdashigTable.h"
#import "OAIRootCdashigDomainField.h"
#import "OAIRootCdashigScenarioField.h"
#import "OAIXmlCdashigClass.h"
#import "OAIXmlCdashigClassDomains.h"
#import "OAIXmlCdashigClassScenarios.h"
#import "OAIXmlCdashigDomain.h"
#import "OAIXmlCdashigDomainField.h"
#import "OAIXmlCdashigDomainFields.h"
#import "OAIXmlCdashigProduct.h"
#import "OAIXmlCdashigProductClasses.h"
#import "OAIXmlCdashigProductDomains.h"
#import "OAIXmlCdashigProductScenarios.h"
#import "OAIXmlCdashigScenario.h"
#import "OAIXmlCdashigScenarioField.h"
#import "OAIXmlCdashigScenarioFields.h"
#import "OAIXmlRootCdashigDomainField.h"
#import "OAIXmlRootCdashigScenarioField.h"


@interface OAICDASHImplementationGuideCDASHIGApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAICDASHImplementationGuideCDASHIGApi

NSString* kOAICDASHImplementationGuideCDASHIGApiErrorDomain = @"OAICDASHImplementationGuideCDASHIGApiErrorDomain";
NSInteger kOAICDASHImplementationGuideCDASHIGApiMissingParamErrorCode = 234513;

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
/// Get CDASHIG Class Domain List
///  @param version CDISC Library Product Version 
///
///  @param _class CDASHIG Class Identifier 
///
///  @returns OAICdashigClassDomains*
///
-(NSURLSessionTask*) mdrCdashigVersionClassesClassDomainsGetWithVersion: (NSString*) version
    _class: (NSString*) _class
    completionHandler: (void (^)(OAICdashigClassDomains* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAICDASHImplementationGuideCDASHIGApiErrorDomain code:kOAICDASHImplementationGuideCDASHIGApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter '_class' is set
    if (_class == nil) {
        NSParameterAssert(_class);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_class"] };
            NSError* error = [NSError errorWithDomain:kOAICDASHImplementationGuideCDASHIGApiErrorDomain code:kOAICDASHImplementationGuideCDASHIGApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mdr/cdashig/{version}/classes/{class}/domains"];

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
                              responseType: @"OAICdashigClassDomains*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAICdashigClassDomains*)data, error);
                                }
                            }];
}

///
/// 
/// Get CDASHIG Class
///  @param version CDISC Library Product Version 
///
///  @param _class CDASHIG Class Identifier 
///
///  @returns OAICdashigClass*
///
-(NSURLSessionTask*) mdrCdashigVersionClassesClassGetWithVersion: (NSString*) version
    _class: (NSString*) _class
    completionHandler: (void (^)(OAICdashigClass* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAICDASHImplementationGuideCDASHIGApiErrorDomain code:kOAICDASHImplementationGuideCDASHIGApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter '_class' is set
    if (_class == nil) {
        NSParameterAssert(_class);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_class"] };
            NSError* error = [NSError errorWithDomain:kOAICDASHImplementationGuideCDASHIGApiErrorDomain code:kOAICDASHImplementationGuideCDASHIGApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mdr/cdashig/{version}/classes/{class}"];

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
                              responseType: @"OAICdashigClass*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAICdashigClass*)data, error);
                                }
                            }];
}

///
/// 
/// Get CDASHIG Class Scenario List
///  @param version CDISC Library Product Version 
///
///  @param _class CDASHIG Class Identifier 
///
///  @returns OAICdashigClassScenarios*
///
-(NSURLSessionTask*) mdrCdashigVersionClassesClassScenariosGetWithVersion: (NSString*) version
    _class: (NSString*) _class
    completionHandler: (void (^)(OAICdashigClassScenarios* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAICDASHImplementationGuideCDASHIGApiErrorDomain code:kOAICDASHImplementationGuideCDASHIGApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter '_class' is set
    if (_class == nil) {
        NSParameterAssert(_class);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_class"] };
            NSError* error = [NSError errorWithDomain:kOAICDASHImplementationGuideCDASHIGApiErrorDomain code:kOAICDASHImplementationGuideCDASHIGApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mdr/cdashig/{version}/classes/{class}/scenarios"];

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
                              responseType: @"OAICdashigClassScenarios*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAICdashigClassScenarios*)data, error);
                                }
                            }];
}

///
/// 
/// Get CDASHIG Class List
///  @param version CDISC Library Product Version 
///
///  @returns OAICdashigProductClasses*
///
-(NSURLSessionTask*) mdrCdashigVersionClassesGetWithVersion: (NSString*) version
    completionHandler: (void (^)(OAICdashigProductClasses* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAICDASHImplementationGuideCDASHIGApiErrorDomain code:kOAICDASHImplementationGuideCDASHIGApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mdr/cdashig/{version}/classes"];

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
                              responseType: @"OAICdashigProductClasses*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAICdashigProductClasses*)data, error);
                                }
                            }];
}

///
/// 
/// Get CDASHIG Domain Field
///  @param version CDISC Library Product Version 
///
///  @param domain CDASHIG Domain Identifier 
///
///  @param field CDASHIG Field Identifier 
///
///  @returns OAICdashigDomainField*
///
-(NSURLSessionTask*) mdrCdashigVersionDomainsDomainFieldsFieldGetWithVersion: (NSString*) version
    domain: (NSString*) domain
    field: (NSString*) field
    completionHandler: (void (^)(OAICdashigDomainField* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAICDASHImplementationGuideCDASHIGApiErrorDomain code:kOAICDASHImplementationGuideCDASHIGApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'domain' is set
    if (domain == nil) {
        NSParameterAssert(domain);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"domain"] };
            NSError* error = [NSError errorWithDomain:kOAICDASHImplementationGuideCDASHIGApiErrorDomain code:kOAICDASHImplementationGuideCDASHIGApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'field' is set
    if (field == nil) {
        NSParameterAssert(field);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"field"] };
            NSError* error = [NSError errorWithDomain:kOAICDASHImplementationGuideCDASHIGApiErrorDomain code:kOAICDASHImplementationGuideCDASHIGApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mdr/cdashig/{version}/domains/{domain}/fields/{field}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }
    if (domain != nil) {
        pathParams[@"domain"] = domain;
    }
    if (field != nil) {
        pathParams[@"field"] = field;
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
                              responseType: @"OAICdashigDomainField*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAICdashigDomainField*)data, error);
                                }
                            }];
}

///
/// 
/// Get CDASHIG Domain Field List
///  @param version CDISC Library Product Version 
///
///  @param domain CDASHIG Domain Identifier 
///
///  @returns OAICdashigDomainFields*
///
-(NSURLSessionTask*) mdrCdashigVersionDomainsDomainFieldsGetWithVersion: (NSString*) version
    domain: (NSString*) domain
    completionHandler: (void (^)(OAICdashigDomainFields* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAICDASHImplementationGuideCDASHIGApiErrorDomain code:kOAICDASHImplementationGuideCDASHIGApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'domain' is set
    if (domain == nil) {
        NSParameterAssert(domain);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"domain"] };
            NSError* error = [NSError errorWithDomain:kOAICDASHImplementationGuideCDASHIGApiErrorDomain code:kOAICDASHImplementationGuideCDASHIGApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mdr/cdashig/{version}/domains/{domain}/fields"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }
    if (domain != nil) {
        pathParams[@"domain"] = domain;
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
                              responseType: @"OAICdashigDomainFields*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAICdashigDomainFields*)data, error);
                                }
                            }];
}

///
/// 
/// Get CDASHIG Domain
///  @param version CDISC Library Product Version 
///
///  @param domain CDASHIG Domain Identifier 
///
///  @returns OAICdashigDomain*
///
-(NSURLSessionTask*) mdrCdashigVersionDomainsDomainGetWithVersion: (NSString*) version
    domain: (NSString*) domain
    completionHandler: (void (^)(OAICdashigDomain* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAICDASHImplementationGuideCDASHIGApiErrorDomain code:kOAICDASHImplementationGuideCDASHIGApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'domain' is set
    if (domain == nil) {
        NSParameterAssert(domain);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"domain"] };
            NSError* error = [NSError errorWithDomain:kOAICDASHImplementationGuideCDASHIGApiErrorDomain code:kOAICDASHImplementationGuideCDASHIGApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mdr/cdashig/{version}/domains/{domain}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }
    if (domain != nil) {
        pathParams[@"domain"] = domain;
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
                              responseType: @"OAICdashigDomain*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAICdashigDomain*)data, error);
                                }
                            }];
}

///
/// 
/// Get CDASHIG Domain List
///  @param version CDISC Library Product Version 
///
///  @returns OAICdashigProductDomains*
///
-(NSURLSessionTask*) mdrCdashigVersionDomainsGetWithVersion: (NSString*) version
    completionHandler: (void (^)(OAICdashigProductDomains* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAICDASHImplementationGuideCDASHIGApiErrorDomain code:kOAICDASHImplementationGuideCDASHIGApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mdr/cdashig/{version}/domains"];

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
                              responseType: @"OAICdashigProductDomains*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAICdashigProductDomains*)data, error);
                                }
                            }];
}

///
/// 
/// Get CDASHIG Product
///  @param version CDISC Library Product Version 
///
///  @returns OAICdashigProduct*
///
-(NSURLSessionTask*) mdrCdashigVersionGetWithVersion: (NSString*) version
    completionHandler: (void (^)(OAICdashigProduct* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAICDASHImplementationGuideCDASHIGApiErrorDomain code:kOAICDASHImplementationGuideCDASHIGApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mdr/cdashig/{version}"];

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
                              responseType: @"OAICdashigProduct*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAICdashigProduct*)data, error);
                                }
                            }];
}

///
/// 
/// Get CDASHIG Scenario Field
///  @param version CDISC Library Product Version 
///
///  @param domain CDASHIG Domain Identifier 
///
///  @param scenario CDASHIG Scenario Identifier 
///
///  @param field CDASHIG Field Identifier 
///
///  @returns OAICdashigScenarioField*
///
-(NSURLSessionTask*) mdrCdashigVersionScenariosDomainScenarioFieldsFieldGetWithVersion: (NSString*) version
    domain: (NSString*) domain
    scenario: (NSString*) scenario
    field: (NSString*) field
    completionHandler: (void (^)(OAICdashigScenarioField* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAICDASHImplementationGuideCDASHIGApiErrorDomain code:kOAICDASHImplementationGuideCDASHIGApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'domain' is set
    if (domain == nil) {
        NSParameterAssert(domain);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"domain"] };
            NSError* error = [NSError errorWithDomain:kOAICDASHImplementationGuideCDASHIGApiErrorDomain code:kOAICDASHImplementationGuideCDASHIGApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'scenario' is set
    if (scenario == nil) {
        NSParameterAssert(scenario);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"scenario"] };
            NSError* error = [NSError errorWithDomain:kOAICDASHImplementationGuideCDASHIGApiErrorDomain code:kOAICDASHImplementationGuideCDASHIGApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'field' is set
    if (field == nil) {
        NSParameterAssert(field);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"field"] };
            NSError* error = [NSError errorWithDomain:kOAICDASHImplementationGuideCDASHIGApiErrorDomain code:kOAICDASHImplementationGuideCDASHIGApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mdr/cdashig/{version}/scenarios/{domain}.{scenario}/fields/{field}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }
    if (domain != nil) {
        pathParams[@"domain"] = domain;
    }
    if (scenario != nil) {
        pathParams[@"scenario"] = scenario;
    }
    if (field != nil) {
        pathParams[@"field"] = field;
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
                              responseType: @"OAICdashigScenarioField*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAICdashigScenarioField*)data, error);
                                }
                            }];
}

///
/// 
/// Get CDASHIG Scenario Field List
///  @param version CDISC Library Product Version 
///
///  @param domain CDASHIG Domain Identifier 
///
///  @param scenario CDASHIG Scenario Identifier 
///
///  @returns OAICdashigScenarioFields*
///
-(NSURLSessionTask*) mdrCdashigVersionScenariosDomainScenarioFieldsGetWithVersion: (NSString*) version
    domain: (NSString*) domain
    scenario: (NSString*) scenario
    completionHandler: (void (^)(OAICdashigScenarioFields* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAICDASHImplementationGuideCDASHIGApiErrorDomain code:kOAICDASHImplementationGuideCDASHIGApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'domain' is set
    if (domain == nil) {
        NSParameterAssert(domain);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"domain"] };
            NSError* error = [NSError errorWithDomain:kOAICDASHImplementationGuideCDASHIGApiErrorDomain code:kOAICDASHImplementationGuideCDASHIGApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'scenario' is set
    if (scenario == nil) {
        NSParameterAssert(scenario);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"scenario"] };
            NSError* error = [NSError errorWithDomain:kOAICDASHImplementationGuideCDASHIGApiErrorDomain code:kOAICDASHImplementationGuideCDASHIGApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mdr/cdashig/{version}/scenarios/{domain}.{scenario}/fields"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }
    if (domain != nil) {
        pathParams[@"domain"] = domain;
    }
    if (scenario != nil) {
        pathParams[@"scenario"] = scenario;
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
                              responseType: @"OAICdashigScenarioFields*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAICdashigScenarioFields*)data, error);
                                }
                            }];
}

///
/// 
/// Get CDASHIG Scenario
///  @param version CDISC Library Product Version 
///
///  @param domain CDASHIG Domain Identifier 
///
///  @param scenario CDASHIG Scenario Identifier 
///
///  @returns OAICdashigScenario*
///
-(NSURLSessionTask*) mdrCdashigVersionScenariosDomainScenarioGetWithVersion: (NSString*) version
    domain: (NSString*) domain
    scenario: (NSString*) scenario
    completionHandler: (void (^)(OAICdashigScenario* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAICDASHImplementationGuideCDASHIGApiErrorDomain code:kOAICDASHImplementationGuideCDASHIGApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'domain' is set
    if (domain == nil) {
        NSParameterAssert(domain);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"domain"] };
            NSError* error = [NSError errorWithDomain:kOAICDASHImplementationGuideCDASHIGApiErrorDomain code:kOAICDASHImplementationGuideCDASHIGApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'scenario' is set
    if (scenario == nil) {
        NSParameterAssert(scenario);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"scenario"] };
            NSError* error = [NSError errorWithDomain:kOAICDASHImplementationGuideCDASHIGApiErrorDomain code:kOAICDASHImplementationGuideCDASHIGApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mdr/cdashig/{version}/scenarios/{domain}.{scenario}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }
    if (domain != nil) {
        pathParams[@"domain"] = domain;
    }
    if (scenario != nil) {
        pathParams[@"scenario"] = scenario;
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
                              responseType: @"OAICdashigScenario*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAICdashigScenario*)data, error);
                                }
                            }];
}

///
/// 
/// Get CDASHIG Scenario List
///  @param version CDISC Library Product Version 
///
///  @returns OAICdashigProductScenarios*
///
-(NSURLSessionTask*) mdrCdashigVersionScenariosGetWithVersion: (NSString*) version
    completionHandler: (void (^)(OAICdashigProductScenarios* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAICDASHImplementationGuideCDASHIGApiErrorDomain code:kOAICDASHImplementationGuideCDASHIGApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mdr/cdashig/{version}/scenarios"];

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
                              responseType: @"OAICdashigProductScenarios*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAICdashigProductScenarios*)data, error);
                                }
                            }];
}

///
/// 
/// Get Root CDASHIG Domain Field
///  @param domain CDASHIG Domain Identifier 
///
///  @param field CDASHIG Field Identifier 
///
///  @returns OAIRootCdashigDomainField*
///
-(NSURLSessionTask*) mdrRootCdashigDomainsDomainFieldsFieldGetWithDomain: (NSString*) domain
    field: (NSString*) field
    completionHandler: (void (^)(OAIRootCdashigDomainField* output, NSError* error)) handler {
    // verify the required parameter 'domain' is set
    if (domain == nil) {
        NSParameterAssert(domain);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"domain"] };
            NSError* error = [NSError errorWithDomain:kOAICDASHImplementationGuideCDASHIGApiErrorDomain code:kOAICDASHImplementationGuideCDASHIGApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'field' is set
    if (field == nil) {
        NSParameterAssert(field);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"field"] };
            NSError* error = [NSError errorWithDomain:kOAICDASHImplementationGuideCDASHIGApiErrorDomain code:kOAICDASHImplementationGuideCDASHIGApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mdr/root/cdashig/domains/{domain}/fields/{field}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (domain != nil) {
        pathParams[@"domain"] = domain;
    }
    if (field != nil) {
        pathParams[@"field"] = field;
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
                              responseType: @"OAIRootCdashigDomainField*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIRootCdashigDomainField*)data, error);
                                }
                            }];
}

///
/// 
/// Get Root CDASHIG Scenario Field
///  @param domain CDASHIG Domain Identifier 
///
///  @param scenario CDASHIG Scenario Identifier 
///
///  @param field CDASHIG Field Identifier 
///
///  @returns OAIRootCdashigScenarioField*
///
-(NSURLSessionTask*) mdrRootCdashigScenariosDomainScenarioFieldsFieldGetWithDomain: (NSString*) domain
    scenario: (NSString*) scenario
    field: (NSString*) field
    completionHandler: (void (^)(OAIRootCdashigScenarioField* output, NSError* error)) handler {
    // verify the required parameter 'domain' is set
    if (domain == nil) {
        NSParameterAssert(domain);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"domain"] };
            NSError* error = [NSError errorWithDomain:kOAICDASHImplementationGuideCDASHIGApiErrorDomain code:kOAICDASHImplementationGuideCDASHIGApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'scenario' is set
    if (scenario == nil) {
        NSParameterAssert(scenario);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"scenario"] };
            NSError* error = [NSError errorWithDomain:kOAICDASHImplementationGuideCDASHIGApiErrorDomain code:kOAICDASHImplementationGuideCDASHIGApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'field' is set
    if (field == nil) {
        NSParameterAssert(field);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"field"] };
            NSError* error = [NSError errorWithDomain:kOAICDASHImplementationGuideCDASHIGApiErrorDomain code:kOAICDASHImplementationGuideCDASHIGApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mdr/root/cdashig/scenarios/{domain}.{scenario}/fields/{field}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (domain != nil) {
        pathParams[@"domain"] = domain;
    }
    if (scenario != nil) {
        pathParams[@"scenario"] = scenario;
    }
    if (field != nil) {
        pathParams[@"field"] = field;
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
                              responseType: @"OAIRootCdashigScenarioField*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIRootCdashigScenarioField*)data, error);
                                }
                            }];
}



@end

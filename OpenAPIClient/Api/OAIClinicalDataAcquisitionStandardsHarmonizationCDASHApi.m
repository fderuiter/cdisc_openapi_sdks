#import "OAIClinicalDataAcquisitionStandardsHarmonizationCDASHApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAICdashClass.h"
#import "OAICdashClassDomains.h"
#import "OAICdashClassField.h"
#import "OAICdashDomain.h"
#import "OAICdashDomainField.h"
#import "OAICdashDomainFields.h"
#import "OAICdashProduct.h"
#import "OAICdashProductClasses.h"
#import "OAICdashProductDomains.h"
#import "OAIDefaultErrorResponse.h"
#import "OAIExportCdashTable.h"
#import "OAIRootCdashClassField.h"
#import "OAIRootCdashDomainField.h"
#import "OAIXmlCdashClass.h"
#import "OAIXmlCdashClassDomains.h"
#import "OAIXmlCdashClassField.h"
#import "OAIXmlCdashDomain.h"
#import "OAIXmlCdashDomainField.h"
#import "OAIXmlCdashDomainFields.h"
#import "OAIXmlCdashProduct.h"
#import "OAIXmlCdashProductClasses.h"
#import "OAIXmlCdashProductDomains.h"
#import "OAIXmlRootCdashClassField.h"
#import "OAIXmlRootCdashDomainField.h"


@interface OAIClinicalDataAcquisitionStandardsHarmonizationCDASHApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIClinicalDataAcquisitionStandardsHarmonizationCDASHApi

NSString* kOAIClinicalDataAcquisitionStandardsHarmonizationCDASHApiErrorDomain = @"OAIClinicalDataAcquisitionStandardsHarmonizationCDASHApiErrorDomain";
NSInteger kOAIClinicalDataAcquisitionStandardsHarmonizationCDASHApiMissingParamErrorCode = 234513;

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
/// Get CDASH Class Domain List
///  @param version CDISC Library Product Version 
///
///  @param _class CDASH Class Identifier 
///
///  @returns OAICdashClassDomains*
///
-(NSURLSessionTask*) mdrCdashVersionClassesClassDomainsGetWithVersion: (NSString*) version
    _class: (NSString*) _class
    completionHandler: (void (^)(OAICdashClassDomains* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIClinicalDataAcquisitionStandardsHarmonizationCDASHApiErrorDomain code:kOAIClinicalDataAcquisitionStandardsHarmonizationCDASHApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter '_class' is set
    if (_class == nil) {
        NSParameterAssert(_class);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_class"] };
            NSError* error = [NSError errorWithDomain:kOAIClinicalDataAcquisitionStandardsHarmonizationCDASHApiErrorDomain code:kOAIClinicalDataAcquisitionStandardsHarmonizationCDASHApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mdr/cdash/{version}/classes/{class}/domains"];

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
                              responseType: @"OAICdashClassDomains*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAICdashClassDomains*)data, error);
                                }
                            }];
}

///
/// 
/// Get CDASH Class Field
///  @param version CDISC Library Product Version 
///
///  @param _class CDASH Class Identifier 
///
///  @param field CDASH Field Identifier 
///
///  @returns OAICdashClassField*
///
-(NSURLSessionTask*) mdrCdashVersionClassesClassFieldsFieldGetWithVersion: (NSString*) version
    _class: (NSString*) _class
    field: (NSString*) field
    completionHandler: (void (^)(OAICdashClassField* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIClinicalDataAcquisitionStandardsHarmonizationCDASHApiErrorDomain code:kOAIClinicalDataAcquisitionStandardsHarmonizationCDASHApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter '_class' is set
    if (_class == nil) {
        NSParameterAssert(_class);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_class"] };
            NSError* error = [NSError errorWithDomain:kOAIClinicalDataAcquisitionStandardsHarmonizationCDASHApiErrorDomain code:kOAIClinicalDataAcquisitionStandardsHarmonizationCDASHApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'field' is set
    if (field == nil) {
        NSParameterAssert(field);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"field"] };
            NSError* error = [NSError errorWithDomain:kOAIClinicalDataAcquisitionStandardsHarmonizationCDASHApiErrorDomain code:kOAIClinicalDataAcquisitionStandardsHarmonizationCDASHApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mdr/cdash/{version}/classes/{class}/fields/{field}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }
    if (_class != nil) {
        pathParams[@"class"] = _class;
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
                              responseType: @"OAICdashClassField*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAICdashClassField*)data, error);
                                }
                            }];
}

///
/// 
/// Get CDASH Class
///  @param version CDISC Library Product Version 
///
///  @param _class CDASH Class Identifier 
///
///  @returns OAICdashClass*
///
-(NSURLSessionTask*) mdrCdashVersionClassesClassGetWithVersion: (NSString*) version
    _class: (NSString*) _class
    completionHandler: (void (^)(OAICdashClass* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIClinicalDataAcquisitionStandardsHarmonizationCDASHApiErrorDomain code:kOAIClinicalDataAcquisitionStandardsHarmonizationCDASHApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter '_class' is set
    if (_class == nil) {
        NSParameterAssert(_class);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_class"] };
            NSError* error = [NSError errorWithDomain:kOAIClinicalDataAcquisitionStandardsHarmonizationCDASHApiErrorDomain code:kOAIClinicalDataAcquisitionStandardsHarmonizationCDASHApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mdr/cdash/{version}/classes/{class}"];

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
                              responseType: @"OAICdashClass*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAICdashClass*)data, error);
                                }
                            }];
}

///
/// 
/// Get CDASH Class List
///  @param version CDISC Library Product Version 
///
///  @returns OAICdashProductClasses*
///
-(NSURLSessionTask*) mdrCdashVersionClassesGetWithVersion: (NSString*) version
    completionHandler: (void (^)(OAICdashProductClasses* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIClinicalDataAcquisitionStandardsHarmonizationCDASHApiErrorDomain code:kOAIClinicalDataAcquisitionStandardsHarmonizationCDASHApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mdr/cdash/{version}/classes"];

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
                              responseType: @"OAICdashProductClasses*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAICdashProductClasses*)data, error);
                                }
                            }];
}

///
/// 
/// Get CDASH Domain Field
///  @param version CDISC Library Product Version 
///
///  @param domain CDASH Domain Identifier 
///
///  @param field CDASH Field Identifier 
///
///  @returns OAICdashDomainField*
///
-(NSURLSessionTask*) mdrCdashVersionDomainsDomainFieldsFieldGetWithVersion: (NSString*) version
    domain: (NSString*) domain
    field: (NSString*) field
    completionHandler: (void (^)(OAICdashDomainField* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIClinicalDataAcquisitionStandardsHarmonizationCDASHApiErrorDomain code:kOAIClinicalDataAcquisitionStandardsHarmonizationCDASHApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'domain' is set
    if (domain == nil) {
        NSParameterAssert(domain);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"domain"] };
            NSError* error = [NSError errorWithDomain:kOAIClinicalDataAcquisitionStandardsHarmonizationCDASHApiErrorDomain code:kOAIClinicalDataAcquisitionStandardsHarmonizationCDASHApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'field' is set
    if (field == nil) {
        NSParameterAssert(field);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"field"] };
            NSError* error = [NSError errorWithDomain:kOAIClinicalDataAcquisitionStandardsHarmonizationCDASHApiErrorDomain code:kOAIClinicalDataAcquisitionStandardsHarmonizationCDASHApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mdr/cdash/{version}/domains/{domain}/fields/{field}"];

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
                              responseType: @"OAICdashDomainField*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAICdashDomainField*)data, error);
                                }
                            }];
}

///
/// 
/// Get CDASH Domain Field List
///  @param version CDISC Library Product Version 
///
///  @param domain CDASH Domain Identifier 
///
///  @returns OAICdashDomainFields*
///
-(NSURLSessionTask*) mdrCdashVersionDomainsDomainFieldsGetWithVersion: (NSString*) version
    domain: (NSString*) domain
    completionHandler: (void (^)(OAICdashDomainFields* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIClinicalDataAcquisitionStandardsHarmonizationCDASHApiErrorDomain code:kOAIClinicalDataAcquisitionStandardsHarmonizationCDASHApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'domain' is set
    if (domain == nil) {
        NSParameterAssert(domain);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"domain"] };
            NSError* error = [NSError errorWithDomain:kOAIClinicalDataAcquisitionStandardsHarmonizationCDASHApiErrorDomain code:kOAIClinicalDataAcquisitionStandardsHarmonizationCDASHApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mdr/cdash/{version}/domains/{domain}/fields"];

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
                              responseType: @"OAICdashDomainFields*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAICdashDomainFields*)data, error);
                                }
                            }];
}

///
/// 
/// Get CDASH Domain
///  @param version CDISC Library Product Version 
///
///  @param domain CDASH Domain Identifier 
///
///  @returns OAICdashDomain*
///
-(NSURLSessionTask*) mdrCdashVersionDomainsDomainGetWithVersion: (NSString*) version
    domain: (NSString*) domain
    completionHandler: (void (^)(OAICdashDomain* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIClinicalDataAcquisitionStandardsHarmonizationCDASHApiErrorDomain code:kOAIClinicalDataAcquisitionStandardsHarmonizationCDASHApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'domain' is set
    if (domain == nil) {
        NSParameterAssert(domain);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"domain"] };
            NSError* error = [NSError errorWithDomain:kOAIClinicalDataAcquisitionStandardsHarmonizationCDASHApiErrorDomain code:kOAIClinicalDataAcquisitionStandardsHarmonizationCDASHApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mdr/cdash/{version}/domains/{domain}"];

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
                              responseType: @"OAICdashDomain*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAICdashDomain*)data, error);
                                }
                            }];
}

///
/// 
/// Get CDASH Domain List
///  @param version CDISC Library Product Version 
///
///  @returns OAICdashProductDomains*
///
-(NSURLSessionTask*) mdrCdashVersionDomainsGetWithVersion: (NSString*) version
    completionHandler: (void (^)(OAICdashProductDomains* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIClinicalDataAcquisitionStandardsHarmonizationCDASHApiErrorDomain code:kOAIClinicalDataAcquisitionStandardsHarmonizationCDASHApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mdr/cdash/{version}/domains"];

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
                              responseType: @"OAICdashProductDomains*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAICdashProductDomains*)data, error);
                                }
                            }];
}

///
/// 
/// Get CDASH Product
///  @param version CDISC Library Product Version 
///
///  @returns OAICdashProduct*
///
-(NSURLSessionTask*) mdrCdashVersionGetWithVersion: (NSString*) version
    completionHandler: (void (^)(OAICdashProduct* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIClinicalDataAcquisitionStandardsHarmonizationCDASHApiErrorDomain code:kOAIClinicalDataAcquisitionStandardsHarmonizationCDASHApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mdr/cdash/{version}"];

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
                              responseType: @"OAICdashProduct*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAICdashProduct*)data, error);
                                }
                            }];
}

///
/// 
/// Get Root CDASH Class Field
///  @param _class CDASH Class Identifier 
///
///  @param field CDASH Field Identifier 
///
///  @returns OAIRootCdashClassField*
///
-(NSURLSessionTask*) mdrRootCdashClassesClassFieldsFieldGetWithClass: (NSString*) _class
    field: (NSString*) field
    completionHandler: (void (^)(OAIRootCdashClassField* output, NSError* error)) handler {
    // verify the required parameter '_class' is set
    if (_class == nil) {
        NSParameterAssert(_class);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_class"] };
            NSError* error = [NSError errorWithDomain:kOAIClinicalDataAcquisitionStandardsHarmonizationCDASHApiErrorDomain code:kOAIClinicalDataAcquisitionStandardsHarmonizationCDASHApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'field' is set
    if (field == nil) {
        NSParameterAssert(field);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"field"] };
            NSError* error = [NSError errorWithDomain:kOAIClinicalDataAcquisitionStandardsHarmonizationCDASHApiErrorDomain code:kOAIClinicalDataAcquisitionStandardsHarmonizationCDASHApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mdr/root/cdash/classes/{class}/fields/{field}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_class != nil) {
        pathParams[@"class"] = _class;
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
                              responseType: @"OAIRootCdashClassField*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIRootCdashClassField*)data, error);
                                }
                            }];
}

///
/// 
/// Get Root CDASH Domain Field
///  @param domain CDASH Domain Identifier 
///
///  @param field CDASH Field Identifier 
///
///  @returns OAIRootCdashDomainField*
///
-(NSURLSessionTask*) mdrRootCdashDomainsDomainFieldsFieldGetWithDomain: (NSString*) domain
    field: (NSString*) field
    completionHandler: (void (^)(OAIRootCdashDomainField* output, NSError* error)) handler {
    // verify the required parameter 'domain' is set
    if (domain == nil) {
        NSParameterAssert(domain);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"domain"] };
            NSError* error = [NSError errorWithDomain:kOAIClinicalDataAcquisitionStandardsHarmonizationCDASHApiErrorDomain code:kOAIClinicalDataAcquisitionStandardsHarmonizationCDASHApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'field' is set
    if (field == nil) {
        NSParameterAssert(field);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"field"] };
            NSError* error = [NSError errorWithDomain:kOAIClinicalDataAcquisitionStandardsHarmonizationCDASHApiErrorDomain code:kOAIClinicalDataAcquisitionStandardsHarmonizationCDASHApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mdr/root/cdash/domains/{domain}/fields/{field}"];

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
                              responseType: @"OAIRootCdashDomainField*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIRootCdashDomainField*)data, error);
                                }
                            }];
}



@end

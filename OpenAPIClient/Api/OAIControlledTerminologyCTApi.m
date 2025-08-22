#import "OAIControlledTerminologyCTApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAICtCodelist.h"
#import "OAICtCodelistTerms.h"
#import "OAICtPackage.h"
#import "OAICtPackageCodelists.h"
#import "OAICtPackages.h"
#import "OAICtTerm.h"
#import "OAIDefaultErrorResponse.h"
#import "OAIExportCtTable.h"
#import "OAIRootCtCodelist.h"
#import "OAIRootCtTerm.h"
#import "OAIXmlCtCodelist.h"
#import "OAIXmlCtCodelistTerms.h"
#import "OAIXmlCtPackage.h"
#import "OAIXmlCtPackageCodelists.h"
#import "OAIXmlCtPackages.h"
#import "OAIXmlCtTerm.h"
#import "OAIXmlRootCtCodelist.h"
#import "OAIXmlRootCtTerm.h"


@interface OAIControlledTerminologyCTApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIControlledTerminologyCTApi

NSString* kOAIControlledTerminologyCTApiErrorDomain = @"OAIControlledTerminologyCTApiErrorDomain";
NSInteger kOAIControlledTerminologyCTApiMissingParamErrorCode = 234513;

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
/// Get CDISC Library CT Package List
///  @returns OAICtPackages*
///
-(NSURLSessionTask*) mdrCtPackagesGetWithCompletionHandler: 
    (void (^)(OAICtPackages* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mdr/ct/packages"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

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
                              responseType: @"OAICtPackages*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAICtPackages*)data, error);
                                }
                            }];
}

///
/// 
/// Get CDISC Library CT Package Codelist
///  @param package CT Package Identifier 
///
///  @param codelist CT Codelist Identifier 
///
///  @returns OAICtCodelist*
///
-(NSURLSessionTask*) mdrCtPackagesPackageCodelistsCodelistGetWithPackage: (NSString*) package
    codelist: (NSString*) codelist
    completionHandler: (void (^)(OAICtCodelist* output, NSError* error)) handler {
    // verify the required parameter 'package' is set
    if (package == nil) {
        NSParameterAssert(package);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"package"] };
            NSError* error = [NSError errorWithDomain:kOAIControlledTerminologyCTApiErrorDomain code:kOAIControlledTerminologyCTApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'codelist' is set
    if (codelist == nil) {
        NSParameterAssert(codelist);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"codelist"] };
            NSError* error = [NSError errorWithDomain:kOAIControlledTerminologyCTApiErrorDomain code:kOAIControlledTerminologyCTApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mdr/ct/packages/{package}/codelists/{codelist}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (package != nil) {
        pathParams[@"package"] = package;
    }
    if (codelist != nil) {
        pathParams[@"codelist"] = codelist;
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
                              responseType: @"OAICtCodelist*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAICtCodelist*)data, error);
                                }
                            }];
}

///
/// 
/// Get CDISC Library CT Package Codelist Term List
///  @param package CT Package Identifier 
///
///  @param codelist CT Codelist Identifier 
///
///  @returns OAICtCodelistTerms*
///
-(NSURLSessionTask*) mdrCtPackagesPackageCodelistsCodelistTermsGetWithPackage: (NSString*) package
    codelist: (NSString*) codelist
    completionHandler: (void (^)(OAICtCodelistTerms* output, NSError* error)) handler {
    // verify the required parameter 'package' is set
    if (package == nil) {
        NSParameterAssert(package);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"package"] };
            NSError* error = [NSError errorWithDomain:kOAIControlledTerminologyCTApiErrorDomain code:kOAIControlledTerminologyCTApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'codelist' is set
    if (codelist == nil) {
        NSParameterAssert(codelist);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"codelist"] };
            NSError* error = [NSError errorWithDomain:kOAIControlledTerminologyCTApiErrorDomain code:kOAIControlledTerminologyCTApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mdr/ct/packages/{package}/codelists/{codelist}/terms"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (package != nil) {
        pathParams[@"package"] = package;
    }
    if (codelist != nil) {
        pathParams[@"codelist"] = codelist;
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
                              responseType: @"OAICtCodelistTerms*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAICtCodelistTerms*)data, error);
                                }
                            }];
}

///
/// 
/// Get CDISC Library CT Package Codelist Term
///  @param package CT Package Product Identifier 
///
///  @param codelist CT Codelist Identifier 
///
///  @param term CT Codelist Term Identifier 
///
///  @returns OAICtTerm*
///
-(NSURLSessionTask*) mdrCtPackagesPackageCodelistsCodelistTermsTermGetWithPackage: (NSString*) package
    codelist: (NSString*) codelist
    term: (NSString*) term
    completionHandler: (void (^)(OAICtTerm* output, NSError* error)) handler {
    // verify the required parameter 'package' is set
    if (package == nil) {
        NSParameterAssert(package);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"package"] };
            NSError* error = [NSError errorWithDomain:kOAIControlledTerminologyCTApiErrorDomain code:kOAIControlledTerminologyCTApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'codelist' is set
    if (codelist == nil) {
        NSParameterAssert(codelist);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"codelist"] };
            NSError* error = [NSError errorWithDomain:kOAIControlledTerminologyCTApiErrorDomain code:kOAIControlledTerminologyCTApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'term' is set
    if (term == nil) {
        NSParameterAssert(term);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"term"] };
            NSError* error = [NSError errorWithDomain:kOAIControlledTerminologyCTApiErrorDomain code:kOAIControlledTerminologyCTApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mdr/ct/packages/{package}/codelists/{codelist}/terms/{term}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (package != nil) {
        pathParams[@"package"] = package;
    }
    if (codelist != nil) {
        pathParams[@"codelist"] = codelist;
    }
    if (term != nil) {
        pathParams[@"term"] = term;
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
                              responseType: @"OAICtTerm*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAICtTerm*)data, error);
                                }
                            }];
}

///
/// 
/// Get CDISC Library CT Package Codelist List
///  @param package CT Package Identifier 
///
///  @returns OAICtPackageCodelists*
///
-(NSURLSessionTask*) mdrCtPackagesPackageCodelistsGetWithPackage: (NSString*) package
    completionHandler: (void (^)(OAICtPackageCodelists* output, NSError* error)) handler {
    // verify the required parameter 'package' is set
    if (package == nil) {
        NSParameterAssert(package);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"package"] };
            NSError* error = [NSError errorWithDomain:kOAIControlledTerminologyCTApiErrorDomain code:kOAIControlledTerminologyCTApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mdr/ct/packages/{package}/codelists"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (package != nil) {
        pathParams[@"package"] = package;
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
                              responseType: @"OAICtPackageCodelists*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAICtPackageCodelists*)data, error);
                                }
                            }];
}

///
/// 
/// Get CDISC Library CT Package
///  @param product CT Package Product Identifier 
///
///  @returns OAICtPackage*
///
-(NSURLSessionTask*) mdrCtPackagesProductGetWithProduct: (NSString*) product
    completionHandler: (void (^)(OAICtPackage* output, NSError* error)) handler {
    // verify the required parameter 'product' is set
    if (product == nil) {
        NSParameterAssert(product);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"product"] };
            NSError* error = [NSError errorWithDomain:kOAIControlledTerminologyCTApiErrorDomain code:kOAIControlledTerminologyCTApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mdr/ct/packages/{product}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (product != nil) {
        pathParams[@"product"] = product;
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
                              responseType: @"OAICtPackage*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAICtPackage*)data, error);
                                }
                            }];
}

///
/// 
/// Get CDISC Library Root CT Codelist
///  @param productGroup CT Product Group Identifier 
///
///  @param codelist CT Codelist Identifier 
///
///  @returns OAIRootCtCodelist*
///
-(NSURLSessionTask*) mdrRootCtProductGroupCodelistsCodelistGetWithProductGroup: (NSString*) productGroup
    codelist: (NSString*) codelist
    completionHandler: (void (^)(OAIRootCtCodelist* output, NSError* error)) handler {
    // verify the required parameter 'productGroup' is set
    if (productGroup == nil) {
        NSParameterAssert(productGroup);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"productGroup"] };
            NSError* error = [NSError errorWithDomain:kOAIControlledTerminologyCTApiErrorDomain code:kOAIControlledTerminologyCTApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'codelist' is set
    if (codelist == nil) {
        NSParameterAssert(codelist);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"codelist"] };
            NSError* error = [NSError errorWithDomain:kOAIControlledTerminologyCTApiErrorDomain code:kOAIControlledTerminologyCTApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mdr/root/ct/{productGroup}/codelists/{codelist}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (productGroup != nil) {
        pathParams[@"productGroup"] = productGroup;
    }
    if (codelist != nil) {
        pathParams[@"codelist"] = codelist;
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
                              responseType: @"OAIRootCtCodelist*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIRootCtCodelist*)data, error);
                                }
                            }];
}

///
/// 
/// Get CDISC Library Root CT Term
///  @param productGroup CT Product Group Identifier 
///
///  @param codelist CT Codelist Identifier 
///
///  @param term CT Codelist Term Identifier 
///
///  @returns OAIRootCtTerm*
///
-(NSURLSessionTask*) mdrRootCtProductGroupCodelistsCodelistTermsTermGetWithProductGroup: (NSString*) productGroup
    codelist: (NSString*) codelist
    term: (NSString*) term
    completionHandler: (void (^)(OAIRootCtTerm* output, NSError* error)) handler {
    // verify the required parameter 'productGroup' is set
    if (productGroup == nil) {
        NSParameterAssert(productGroup);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"productGroup"] };
            NSError* error = [NSError errorWithDomain:kOAIControlledTerminologyCTApiErrorDomain code:kOAIControlledTerminologyCTApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'codelist' is set
    if (codelist == nil) {
        NSParameterAssert(codelist);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"codelist"] };
            NSError* error = [NSError errorWithDomain:kOAIControlledTerminologyCTApiErrorDomain code:kOAIControlledTerminologyCTApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'term' is set
    if (term == nil) {
        NSParameterAssert(term);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"term"] };
            NSError* error = [NSError errorWithDomain:kOAIControlledTerminologyCTApiErrorDomain code:kOAIControlledTerminologyCTApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mdr/root/ct/{productGroup}/codelists/{codelist}/terms/{term}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (productGroup != nil) {
        pathParams[@"productGroup"] = productGroup;
    }
    if (codelist != nil) {
        pathParams[@"codelist"] = codelist;
    }
    if (term != nil) {
        pathParams[@"term"] = term;
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
                              responseType: @"OAIRootCtTerm*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIRootCtTerm*)data, error);
                                }
                            }];
}



@end

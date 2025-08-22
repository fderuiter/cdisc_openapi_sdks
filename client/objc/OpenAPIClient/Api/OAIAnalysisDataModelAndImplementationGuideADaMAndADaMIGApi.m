#import "OAIAnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIAdamDatastructure.h"
#import "OAIAdamDatastructureVariables.h"
#import "OAIAdamDatastructureVarsets.h"
#import "OAIAdamProduct.h"
#import "OAIAdamProductDatastructures.h"
#import "OAIAdamVariable.h"
#import "OAIAdamVarset.h"
#import "OAIDefaultErrorResponse.h"
#import "OAIExportAdamDatastructuresTable.h"
#import "OAIExportAdamVariablesTable.h"
#import "OAIExportAdamWorkbook.h"
#import "OAIXmlAdamDatastructure.h"
#import "OAIXmlAdamDatastructureVariables.h"
#import "OAIXmlAdamDatastructureVarsets.h"
#import "OAIXmlAdamProduct.h"
#import "OAIXmlAdamProductDatastructures.h"
#import "OAIXmlAdamVariable.h"
#import "OAIXmlAdamVarset.h"


@interface OAIAnalysisDataModelAndImplementationGuideADaMAndADaMIGApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIAnalysisDataModelAndImplementationGuideADaMAndADaMIGApi

NSString* kOAIAnalysisDataModelAndImplementationGuideADaMAndADaMIGApiErrorDomain = @"OAIAnalysisDataModelAndImplementationGuideADaMAndADaMIGApiErrorDomain";
NSInteger kOAIAnalysisDataModelAndImplementationGuideADaMAndADaMIGApiMissingParamErrorCode = 234513;

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
/// Get ADaM Data Structure List
///  @param product CDISC Library Product 
///
///  @returns OAIAdamProductDatastructures*
///
-(NSURLSessionTask*) mdrAdamProductDatastructuresGetWithProduct: (NSString*) product
    completionHandler: (void (^)(OAIAdamProductDatastructures* output, NSError* error)) handler {
    // verify the required parameter 'product' is set
    if (product == nil) {
        NSParameterAssert(product);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"product"] };
            NSError* error = [NSError errorWithDomain:kOAIAnalysisDataModelAndImplementationGuideADaMAndADaMIGApiErrorDomain code:kOAIAnalysisDataModelAndImplementationGuideADaMAndADaMIGApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mdr/adam/{product}/datastructures"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (product != nil) {
        pathParams[@"product"] = product;
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
                              responseType: @"OAIAdamProductDatastructures*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIAdamProductDatastructures*)data, error);
                                }
                            }];
}

///
/// 
/// Get ADaM Data Structure
///  @param product CDISC Library Product 
///
///  @param structure Data structure Identifier 
///
///  @returns OAIAdamDatastructure*
///
-(NSURLSessionTask*) mdrAdamProductDatastructuresStructureGetWithProduct: (NSString*) product
    structure: (NSString*) structure
    completionHandler: (void (^)(OAIAdamDatastructure* output, NSError* error)) handler {
    // verify the required parameter 'product' is set
    if (product == nil) {
        NSParameterAssert(product);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"product"] };
            NSError* error = [NSError errorWithDomain:kOAIAnalysisDataModelAndImplementationGuideADaMAndADaMIGApiErrorDomain code:kOAIAnalysisDataModelAndImplementationGuideADaMAndADaMIGApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'structure' is set
    if (structure == nil) {
        NSParameterAssert(structure);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"structure"] };
            NSError* error = [NSError errorWithDomain:kOAIAnalysisDataModelAndImplementationGuideADaMAndADaMIGApiErrorDomain code:kOAIAnalysisDataModelAndImplementationGuideADaMAndADaMIGApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mdr/adam/{product}/datastructures/{structure}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (product != nil) {
        pathParams[@"product"] = product;
    }
    if (structure != nil) {
        pathParams[@"structure"] = structure;
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
                              responseType: @"OAIAdamDatastructure*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIAdamDatastructure*)data, error);
                                }
                            }];
}

///
/// 
/// Get ADaM Variable List
///  @param product CDISC Library Product 
///
///  @param structure ADaM Data Structure Identifier 
///
///  @returns OAIAdamDatastructureVariables*
///
-(NSURLSessionTask*) mdrAdamProductDatastructuresStructureVariablesGetWithProduct: (NSString*) product
    structure: (NSString*) structure
    completionHandler: (void (^)(OAIAdamDatastructureVariables* output, NSError* error)) handler {
    // verify the required parameter 'product' is set
    if (product == nil) {
        NSParameterAssert(product);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"product"] };
            NSError* error = [NSError errorWithDomain:kOAIAnalysisDataModelAndImplementationGuideADaMAndADaMIGApiErrorDomain code:kOAIAnalysisDataModelAndImplementationGuideADaMAndADaMIGApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'structure' is set
    if (structure == nil) {
        NSParameterAssert(structure);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"structure"] };
            NSError* error = [NSError errorWithDomain:kOAIAnalysisDataModelAndImplementationGuideADaMAndADaMIGApiErrorDomain code:kOAIAnalysisDataModelAndImplementationGuideADaMAndADaMIGApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mdr/adam/{product}/datastructures/{structure}/variables"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (product != nil) {
        pathParams[@"product"] = product;
    }
    if (structure != nil) {
        pathParams[@"structure"] = structure;
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
                              responseType: @"OAIAdamDatastructureVariables*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIAdamDatastructureVariables*)data, error);
                                }
                            }];
}

///
/// 
/// Get ADaM Variable
///  @param product CDISC Library Product 
///
///  @param structure ADaM Data Structure Identifier 
///
///  @param var ADaM Variable Identifier 
///
///  @returns OAIAdamVariable*
///
-(NSURLSessionTask*) mdrAdamProductDatastructuresStructureVariablesVarGetWithProduct: (NSString*) product
    structure: (NSString*) structure
    var: (NSString*) var
    completionHandler: (void (^)(OAIAdamVariable* output, NSError* error)) handler {
    // verify the required parameter 'product' is set
    if (product == nil) {
        NSParameterAssert(product);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"product"] };
            NSError* error = [NSError errorWithDomain:kOAIAnalysisDataModelAndImplementationGuideADaMAndADaMIGApiErrorDomain code:kOAIAnalysisDataModelAndImplementationGuideADaMAndADaMIGApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'structure' is set
    if (structure == nil) {
        NSParameterAssert(structure);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"structure"] };
            NSError* error = [NSError errorWithDomain:kOAIAnalysisDataModelAndImplementationGuideADaMAndADaMIGApiErrorDomain code:kOAIAnalysisDataModelAndImplementationGuideADaMAndADaMIGApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'var' is set
    if (var == nil) {
        NSParameterAssert(var);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"var"] };
            NSError* error = [NSError errorWithDomain:kOAIAnalysisDataModelAndImplementationGuideADaMAndADaMIGApiErrorDomain code:kOAIAnalysisDataModelAndImplementationGuideADaMAndADaMIGApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mdr/adam/{product}/datastructures/{structure}/variables/{var}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (product != nil) {
        pathParams[@"product"] = product;
    }
    if (structure != nil) {
        pathParams[@"structure"] = structure;
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
                              responseType: @"OAIAdamVariable*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIAdamVariable*)data, error);
                                }
                            }];
}

///
/// 
/// Get ADaM Variable Set List
///  @param product CDISC Library Product 
///
///  @param structure ADaM Data Structure Identifier 
///
///  @returns OAIAdamDatastructureVarsets*
///
-(NSURLSessionTask*) mdrAdamProductDatastructuresStructureVarsetsGetWithProduct: (NSString*) product
    structure: (NSString*) structure
    completionHandler: (void (^)(OAIAdamDatastructureVarsets* output, NSError* error)) handler {
    // verify the required parameter 'product' is set
    if (product == nil) {
        NSParameterAssert(product);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"product"] };
            NSError* error = [NSError errorWithDomain:kOAIAnalysisDataModelAndImplementationGuideADaMAndADaMIGApiErrorDomain code:kOAIAnalysisDataModelAndImplementationGuideADaMAndADaMIGApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'structure' is set
    if (structure == nil) {
        NSParameterAssert(structure);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"structure"] };
            NSError* error = [NSError errorWithDomain:kOAIAnalysisDataModelAndImplementationGuideADaMAndADaMIGApiErrorDomain code:kOAIAnalysisDataModelAndImplementationGuideADaMAndADaMIGApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mdr/adam/{product}/datastructures/{structure}/varsets"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (product != nil) {
        pathParams[@"product"] = product;
    }
    if (structure != nil) {
        pathParams[@"structure"] = structure;
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
                              responseType: @"OAIAdamDatastructureVarsets*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIAdamDatastructureVarsets*)data, error);
                                }
                            }];
}

///
/// 
/// Get ADaM Variable Set
///  @param product CDISC Library Product 
///
///  @param structure ADaM Data Structure Identifier 
///
///  @param varset ADaM Variable Set Identifier 
///
///  @returns OAIAdamVarset*
///
-(NSURLSessionTask*) mdrAdamProductDatastructuresStructureVarsetsVarsetGetWithProduct: (NSString*) product
    structure: (NSString*) structure
    varset: (NSString*) varset
    completionHandler: (void (^)(OAIAdamVarset* output, NSError* error)) handler {
    // verify the required parameter 'product' is set
    if (product == nil) {
        NSParameterAssert(product);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"product"] };
            NSError* error = [NSError errorWithDomain:kOAIAnalysisDataModelAndImplementationGuideADaMAndADaMIGApiErrorDomain code:kOAIAnalysisDataModelAndImplementationGuideADaMAndADaMIGApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'structure' is set
    if (structure == nil) {
        NSParameterAssert(structure);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"structure"] };
            NSError* error = [NSError errorWithDomain:kOAIAnalysisDataModelAndImplementationGuideADaMAndADaMIGApiErrorDomain code:kOAIAnalysisDataModelAndImplementationGuideADaMAndADaMIGApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'varset' is set
    if (varset == nil) {
        NSParameterAssert(varset);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"varset"] };
            NSError* error = [NSError errorWithDomain:kOAIAnalysisDataModelAndImplementationGuideADaMAndADaMIGApiErrorDomain code:kOAIAnalysisDataModelAndImplementationGuideADaMAndADaMIGApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mdr/adam/{product}/datastructures/{structure}/varsets/{varset}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (product != nil) {
        pathParams[@"product"] = product;
    }
    if (structure != nil) {
        pathParams[@"structure"] = structure;
    }
    if (varset != nil) {
        pathParams[@"varset"] = varset;
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
                              responseType: @"OAIAdamVarset*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIAdamVarset*)data, error);
                                }
                            }];
}

///
/// 
/// Get ADaM Product
///  @param product CDISC Library Product 
///
///  @returns OAIAdamProduct*
///
-(NSURLSessionTask*) mdrAdamProductGetWithProduct: (NSString*) product
    completionHandler: (void (^)(OAIAdamProduct* output, NSError* error)) handler {
    // verify the required parameter 'product' is set
    if (product == nil) {
        NSParameterAssert(product);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"product"] };
            NSError* error = [NSError errorWithDomain:kOAIAnalysisDataModelAndImplementationGuideADaMAndADaMIGApiErrorDomain code:kOAIAnalysisDataModelAndImplementationGuideADaMAndADaMIGApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mdr/adam/{product}"];

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
                              responseType: @"OAIAdamProduct*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIAdamProduct*)data, error);
                                }
                            }];
}



@end

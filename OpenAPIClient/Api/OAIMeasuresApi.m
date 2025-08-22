#import "OAIMeasuresApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIDefaultErrorResponse.h"
#import "OAIExportQrsItemsTable.h"
#import "OAIExportQrsWorkbook.h"
#import "OAIQrsItem.h"
#import "OAIQrsItems.h"
#import "OAIQrsProduct.h"
#import "OAIQrsResponsegroup.h"
#import "OAIQrsResponsegroups.h"
#import "OAIXmlQrsItem.h"
#import "OAIXmlQrsItems.h"
#import "OAIXmlQrsProduct.h"
#import "OAIXmlQrsResponsegroup.h"
#import "OAIXmlQrsResponsegroups.h"


@interface OAIMeasuresApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIMeasuresApi

NSString* kOAIMeasuresApiErrorDomain = @"OAIMeasuresApiErrorDomain";
NSInteger kOAIMeasuresApiMissingParamErrorCode = 234513;

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
/// Get QRS Product
///  @param measure QRS Measure Identifier 
///
///  @param version CDISC Library Product Version 
///
///  @returns OAIQrsProduct*
///
-(NSURLSessionTask*) mdrQrsMeasureVersionGetWithMeasure: (NSString*) measure
    version: (NSString*) version
    completionHandler: (void (^)(OAIQrsProduct* output, NSError* error)) handler {
    // verify the required parameter 'measure' is set
    if (measure == nil) {
        NSParameterAssert(measure);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"measure"] };
            NSError* error = [NSError errorWithDomain:kOAIMeasuresApiErrorDomain code:kOAIMeasuresApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIMeasuresApiErrorDomain code:kOAIMeasuresApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mdr/qrs/{measure}/{version}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (measure != nil) {
        pathParams[@"measure"] = measure;
    }
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json", @"application/xml", @"text/csv", @"application/vnd.ms-excel"]];
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
                              responseType: @"OAIQrsProduct*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIQrsProduct*)data, error);
                                }
                            }];
}

///
/// 
/// Get QRS Item List
///  @param measure QRS Measure Identifier 
///
///  @param version CDISC Library Product Version 
///
///  @returns OAIQrsItems*
///
-(NSURLSessionTask*) mdrQrsMeasureVersionItemsGetWithMeasure: (NSString*) measure
    version: (NSString*) version
    completionHandler: (void (^)(OAIQrsItems* output, NSError* error)) handler {
    // verify the required parameter 'measure' is set
    if (measure == nil) {
        NSParameterAssert(measure);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"measure"] };
            NSError* error = [NSError errorWithDomain:kOAIMeasuresApiErrorDomain code:kOAIMeasuresApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIMeasuresApiErrorDomain code:kOAIMeasuresApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mdr/qrs/{measure}/{version}/items"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (measure != nil) {
        pathParams[@"measure"] = measure;
    }
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
                              responseType: @"OAIQrsItems*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIQrsItems*)data, error);
                                }
                            }];
}

///
/// 
/// Get QRS Item
///  @param measure QRS Measure Identifier 
///
///  @param version CDISC Library Product Version 
///
///  @param item QRS Measure Item Identifier 
///
///  @returns OAIQrsItem*
///
-(NSURLSessionTask*) mdrQrsMeasureVersionItemsItemGetWithMeasure: (NSString*) measure
    version: (NSString*) version
    item: (NSString*) item
    completionHandler: (void (^)(OAIQrsItem* output, NSError* error)) handler {
    // verify the required parameter 'measure' is set
    if (measure == nil) {
        NSParameterAssert(measure);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"measure"] };
            NSError* error = [NSError errorWithDomain:kOAIMeasuresApiErrorDomain code:kOAIMeasuresApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIMeasuresApiErrorDomain code:kOAIMeasuresApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'item' is set
    if (item == nil) {
        NSParameterAssert(item);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"item"] };
            NSError* error = [NSError errorWithDomain:kOAIMeasuresApiErrorDomain code:kOAIMeasuresApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mdr/qrs/{measure}/{version}/items/{item}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (measure != nil) {
        pathParams[@"measure"] = measure;
    }
    if (version != nil) {
        pathParams[@"version"] = version;
    }
    if (item != nil) {
        pathParams[@"item"] = item;
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
                              responseType: @"OAIQrsItem*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIQrsItem*)data, error);
                                }
                            }];
}

///
/// 
/// Get QRS Response Group List
///  @param measure QRS Measure Identifier 
///
///  @param version CDISC Library Product Version 
///
///  @returns OAIQrsResponsegroups*
///
-(NSURLSessionTask*) mdrQrsMeasureVersionResponsegroupsGetWithMeasure: (NSString*) measure
    version: (NSString*) version
    completionHandler: (void (^)(OAIQrsResponsegroups* output, NSError* error)) handler {
    // verify the required parameter 'measure' is set
    if (measure == nil) {
        NSParameterAssert(measure);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"measure"] };
            NSError* error = [NSError errorWithDomain:kOAIMeasuresApiErrorDomain code:kOAIMeasuresApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIMeasuresApiErrorDomain code:kOAIMeasuresApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mdr/qrs/{measure}/{version}/responsegroups"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (measure != nil) {
        pathParams[@"measure"] = measure;
    }
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
                              responseType: @"OAIQrsResponsegroups*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIQrsResponsegroups*)data, error);
                                }
                            }];
}

///
/// 
/// Get QRS Response Group
///  @param measure QRS Measure Identifier 
///
///  @param version CDISC Library Product Version 
///
///  @param responsegroup QRS Measure's Response Group Identifier 
///
///  @returns OAIQrsResponsegroup*
///
-(NSURLSessionTask*) mdrQrsMeasureVersionResponsegroupsResponsegroupGetWithMeasure: (NSString*) measure
    version: (NSString*) version
    responsegroup: (NSString*) responsegroup
    completionHandler: (void (^)(OAIQrsResponsegroup* output, NSError* error)) handler {
    // verify the required parameter 'measure' is set
    if (measure == nil) {
        NSParameterAssert(measure);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"measure"] };
            NSError* error = [NSError errorWithDomain:kOAIMeasuresApiErrorDomain code:kOAIMeasuresApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIMeasuresApiErrorDomain code:kOAIMeasuresApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'responsegroup' is set
    if (responsegroup == nil) {
        NSParameterAssert(responsegroup);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"responsegroup"] };
            NSError* error = [NSError errorWithDomain:kOAIMeasuresApiErrorDomain code:kOAIMeasuresApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mdr/qrs/{measure}/{version}/responsegroups/{responsegroup}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (measure != nil) {
        pathParams[@"measure"] = measure;
    }
    if (version != nil) {
        pathParams[@"version"] = version;
    }
    if (responsegroup != nil) {
        pathParams[@"responsegroup"] = responsegroup;
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
                              responseType: @"OAIQrsResponsegroup*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIQrsResponsegroup*)data, error);
                                }
                            }];
}



@end

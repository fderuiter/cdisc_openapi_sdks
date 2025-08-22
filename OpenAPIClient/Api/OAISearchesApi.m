#import "OAISearchesApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIDefaultErrorResponse.h"
#import "OAIDefaultSearchResponse.h"
#import "OAIDefaultSearchScopes.h"
#import "OAIMdrSearchScopesGet200Response.h"
#import "OAIScopeValues.h"


@interface OAISearchesApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAISearchesApi

NSString* kOAISearchesApiErrorDomain = @"OAISearchesApiErrorDomain";
NSInteger kOAISearchesApiMissingParamErrorCode = 234513;

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
/// Get Search Results Across CDISC Library
///  @param q Search Term Expression 
///
///  @param highlight Search Highlight Expression (optional)
///
///  @param start Initial Search Result Index (optional, default to @0)
///
///  @param pageSize Number of Search Results to Return (optional, default to @100)
///
///  @param _class Limit Search by Setting Scope to Class (optional)
///
///  @param codelist Limit Search by Setting Scope to Codelist (optional)
///
///  @param conceptId Limit Search by Setting Scope to Concept ID (optional)
///
///  @param core Limit Search by Setting Scope to Core (optional)
///
///  @param dataStructure Limit Search by Setting Scope to Data Structure (optional)
///
///  @param datasetStructure Limit Search by Setting Scope to Dataset Structure (optional)
///
///  @param definition Limit Search by Setting Scope to Definition (optional)
///
///  @param _description Limit Search by Setting Scope to Description (optional)
///
///  @param domain Limit Search by Setting Scope to Domain (optional)
///
///  @param effectiveDate Limit Search by Setting Scope to Effective Date (optional)
///
///  @param extensible Limit Search by Setting Scope to Extensible (optional)
///
///  @param href Limit Search by Setting Scope to Href (optional)
///
///  @param label Limit Search by Setting Scope to Label (optional)
///
///  @param measureType SLimit Search by Setting Scope to Measure Type (optional)
///
///  @param name Limit Search by Setting Scope to Name (optional)
///
///  @param preferredTerm Limit Search by Setting Scope to Preferred Term (optional)
///
///  @param product Limit Search by Setting Scope to Product (optional)
///
///  @param productGroup Limit Search by Setting Scope to Product Group (optional)
///
///  @param registrationStatus Limit Search by Setting Scope to Registration Status (optional)
///
///  @param roleDescription Limit Search by Setting Scope to Role Description (optional)
///
///  @param sdtmTarget Limit Search by Setting Scope to SDTM Target (optional)
///
///  @param simpleDatatype Limit Search by Setting Scope to Simple Datatype (optional)
///
///  @param submissionValue Limit Search by Setting Scope to Submission Value (optional)
///
///  @param synonyms Limit Search by Setting Scope to Synonyms (optional)
///
///  @param type Limit Search by Setting Scope to Type (optional)
///
///  @param uiHref Limit Search by Setting Scope to UI Href (optional)
///
///  @param valueDomain Limit Search by Setting Scope to Value Domain (optional)
///
///  @param variableSet Limit Search by Setting Scope to Variable Set (optional)
///
///  @param version Limit Search by Setting Scope to Version (optional)
///
///  @returns OAIDefaultSearchResponse*
///
-(NSURLSessionTask*) mdrSearchGetWithQ: (NSString*) q
    highlight: (NSString*) highlight
    start: (NSNumber*) start
    pageSize: (NSNumber*) pageSize
    _class: (NSString*) _class
    codelist: (NSString*) codelist
    conceptId: (NSString*) conceptId
    core: (NSString*) core
    dataStructure: (NSString*) dataStructure
    datasetStructure: (NSString*) datasetStructure
    definition: (NSString*) definition
    _description: (NSString*) _description
    domain: (NSString*) domain
    effectiveDate: (NSString*) effectiveDate
    extensible: (NSString*) extensible
    href: (NSString*) href
    label: (NSString*) label
    measureType: (NSString*) measureType
    name: (NSString*) name
    preferredTerm: (NSString*) preferredTerm
    product: (NSString*) product
    productGroup: (NSString*) productGroup
    registrationStatus: (NSString*) registrationStatus
    roleDescription: (NSString*) roleDescription
    sdtmTarget: (NSString*) sdtmTarget
    simpleDatatype: (NSString*) simpleDatatype
    submissionValue: (NSString*) submissionValue
    synonyms: (NSString*) synonyms
    type: (NSString*) type
    uiHref: (NSString*) uiHref
    valueDomain: (NSString*) valueDomain
    variableSet: (NSString*) variableSet
    version: (NSString*) version
    completionHandler: (void (^)(OAIDefaultSearchResponse* output, NSError* error)) handler {
    // verify the required parameter 'q' is set
    if (q == nil) {
        NSParameterAssert(q);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"q"] };
            NSError* error = [NSError errorWithDomain:kOAISearchesApiErrorDomain code:kOAISearchesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mdr/search"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (q != nil) {
        queryParams[@"q"] = q;
    }
    if (highlight != nil) {
        queryParams[@"highlight"] = highlight;
    }
    if (start != nil) {
        queryParams[@"start"] = start;
    }
    if (pageSize != nil) {
        queryParams[@"pageSize"] = pageSize;
    }
    if (_class != nil) {
        queryParams[@"class"] = _class;
    }
    if (codelist != nil) {
        queryParams[@"codelist"] = codelist;
    }
    if (conceptId != nil) {
        queryParams[@"conceptId"] = conceptId;
    }
    if (core != nil) {
        queryParams[@"core"] = core;
    }
    if (dataStructure != nil) {
        queryParams[@"dataStructure"] = dataStructure;
    }
    if (datasetStructure != nil) {
        queryParams[@"datasetStructure"] = datasetStructure;
    }
    if (definition != nil) {
        queryParams[@"definition"] = definition;
    }
    if (_description != nil) {
        queryParams[@"description"] = _description;
    }
    if (domain != nil) {
        queryParams[@"domain"] = domain;
    }
    if (effectiveDate != nil) {
        queryParams[@"effectiveDate"] = effectiveDate;
    }
    if (extensible != nil) {
        queryParams[@"extensible"] = extensible;
    }
    if (href != nil) {
        queryParams[@"href"] = href;
    }
    if (label != nil) {
        queryParams[@"label"] = label;
    }
    if (measureType != nil) {
        queryParams[@"measureType"] = measureType;
    }
    if (name != nil) {
        queryParams[@"name"] = name;
    }
    if (preferredTerm != nil) {
        queryParams[@"preferredTerm"] = preferredTerm;
    }
    if (product != nil) {
        queryParams[@"product"] = product;
    }
    if (productGroup != nil) {
        queryParams[@"productGroup"] = productGroup;
    }
    if (registrationStatus != nil) {
        queryParams[@"registrationStatus"] = registrationStatus;
    }
    if (roleDescription != nil) {
        queryParams[@"roleDescription"] = roleDescription;
    }
    if (sdtmTarget != nil) {
        queryParams[@"sdtmTarget"] = sdtmTarget;
    }
    if (simpleDatatype != nil) {
        queryParams[@"simpleDatatype"] = simpleDatatype;
    }
    if (submissionValue != nil) {
        queryParams[@"submissionValue"] = submissionValue;
    }
    if (synonyms != nil) {
        queryParams[@"synonyms"] = synonyms;
    }
    if (type != nil) {
        queryParams[@"type"] = type;
    }
    if (uiHref != nil) {
        queryParams[@"uiHref"] = uiHref;
    }
    if (valueDomain != nil) {
        queryParams[@"valueDomain"] = valueDomain;
    }
    if (variableSet != nil) {
        queryParams[@"variableSet"] = variableSet;
    }
    if (version != nil) {
        queryParams[@"version"] = version;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
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
                              responseType: @"OAIDefaultSearchResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIDefaultSearchResponse*)data, error);
                                }
                            }];
}

///
/// 
/// Get Search Results Across CDISC Library
///  @returns OAIMdrSearchScopesGet200Response*
///
-(NSURLSessionTask*) mdrSearchScopesGetWithCompletionHandler: 
    (void (^)(OAIMdrSearchScopesGet200Response* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mdr/search/scopes"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
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
                              responseType: @"OAIMdrSearchScopesGet200Response*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIMdrSearchScopesGet200Response*)data, error);
                                }
                            }];
}

///
/// 
/// Get Search Results Limited to Scope
///  @param scope Search Scope 
///
///  @returns OAIScopeValues*
///
-(NSURLSessionTask*) mdrSearchScopesScopeGetWithScope: (OAIDefaultSearchScopes) scope
    completionHandler: (void (^)(OAIScopeValues* output, NSError* error)) handler {
    // verify the required parameter 'scope' is set
    if (scope == nil) {
        NSParameterAssert(scope);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"scope"] };
            NSError* error = [NSError errorWithDomain:kOAISearchesApiErrorDomain code:kOAISearchesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mdr/search/scopes/{scope}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (scope != nil) {
        pathParams[@"scope"] = scope;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
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
                              responseType: @"OAIScopeValues*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIScopeValues*)data, error);
                                }
                            }];
}



@end

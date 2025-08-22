#import "OAIExportCtCodelist.h"

@implementation OAIExportCtCodelist

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"code": @"Code", @"codelistCode": @"Codelist Code", @"codelistExtensibleYesNo": @"Codelist Extensible (Yes/No)", @"codelistName": @"Codelist Name", @"cDISCSubmissionValue": @"CDISC Submission Value", @"cDISCSynonymS": @"CDISC Synonym(s)", @"cDISCDefinition": @"CDISC Definition", @"nCIPreferredTerm": @"NCI Preferred Term", @"standardAndDate": @"Standard and Date", @"": @"" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"code", @"codelistCode", @"codelistExtensibleYesNo", @"codelistName", @"cDISCSubmissionValue", @"cDISCSynonymS", @"cDISCDefinition", @"nCIPreferredTerm", @"standardAndDate", @""];
  return [optionalProperties containsObject:propertyName];
}

@end

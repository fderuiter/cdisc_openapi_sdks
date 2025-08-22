#import "OAIExportQrsResponses.h"

@implementation OAIExportQrsResponses

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"responseGroup": @"Response Group", @"sequence": @"Sequence", @"responsesOriginalResultCodelistCCode": @"Response&#39;s Original Result Codelist C-Code", @"responsesOriginalResultTermCCode": @"Response&#39;s Original Result Term C-Code", @"responsesOriginalResultUnitCodelistCCode": @"Response&#39;s Original Result Unit Codelist C-Code", @"responsesOriginalResultUnitTermCCode": @"Response&#39;s Original Result Unit Term C-Code", @"responsesStandardizedResultCodelistCCode": @"Response&#39;s Standardized Result Codelist C-Code", @"responsesStandardizedResultTermCCode": @"Response&#39;s Standardized Result Term C-Code", @"responsesStandardizedResultUnitCodelistCCode": @"Response&#39;s Standardized Result Unit Codelist C-Code", @"responsesStandardizedResultUnitTermCCode": @"Response&#39;s Standardized Result Unit Term C-Code" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"responseGroup", @"sequence", @"responsesOriginalResultCodelistCCode", @"responsesOriginalResultTermCCode", @"responsesOriginalResultUnitCodelistCCode", @"responsesOriginalResultUnitTermCCode", @"responsesStandardizedResultCodelistCCode", @"responsesStandardizedResultTermCCode", @"responsesStandardizedResultUnitCodelistCCode", @"responsesStandardizedResultUnitTermCCode"];
  return [optionalProperties containsObject:propertyName];
}

@end

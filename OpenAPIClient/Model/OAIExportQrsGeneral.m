#import "OAIExportQrsGeneral.h"

@implementation OAIExportQrsGeneral

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"name": @"Name", @"label": @"Label", @"effectiveDate": @"Effective Date", @"_description": @"Description", @"type": @"Type", @"categorysCodelistCCode": @"Category&#39;s Codelist C-Code", @"categorysTermCCode": @"Category&#39;s Term C-Code" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"name", @"label", @"effectiveDate", @"_description", @"type", @"categorysCodelistCCode", @"categorysTermCCode"];
  return [optionalProperties containsObject:propertyName];
}

@end

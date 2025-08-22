#import "OAISdtmigDatasetVariable.h"

@implementation OAISdtmigDatasetVariable

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"ordinal": @"ordinal", @"name": @"name", @"label": @"label", @"_description": @"description", @"role": @"role", @"simpleDatatype": @"simpleDatatype", @"core": @"core", @"describedValueDomain": @"describedValueDomain", @"valueList": @"valueList", @"links": @"_links" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"ordinal", @"name", @"label", @"_description", @"role", @"simpleDatatype", @"core", @"describedValueDomain", @"valueList", @"links"];
  return [optionalProperties containsObject:propertyName];
}

@end

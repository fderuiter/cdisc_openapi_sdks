#import "OAISdtmClassVariable.h"

@implementation OAISdtmClassVariable

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"ordinal": @"ordinal", @"name": @"name", @"label": @"label", @"_description": @"description", @"role": @"role", @"roleDescription": @"roleDescription", @"simpleDatatype": @"simpleDatatype", @"describedValueDomain": @"describedValueDomain", @"links": @"_links" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"ordinal", @"name", @"label", @"_description", @"role", @"roleDescription", @"simpleDatatype", @"describedValueDomain", @"links"];
  return [optionalProperties containsObject:propertyName];
}

@end

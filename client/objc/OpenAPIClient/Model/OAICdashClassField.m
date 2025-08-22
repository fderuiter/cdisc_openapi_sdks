#import "OAICdashClassField.h"

@implementation OAICdashClassField

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"ordinal": @"ordinal", @"name": @"name", @"label": @"label", @"definition": @"definition", @"questionText": @"questionText", @"prompt": @"prompt", @"simpleDatatype": @"simpleDatatype", @"implementationNotes": @"implementationNotes", @"mappingInstructions": @"mappingInstructions", @"links": @"_links" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"ordinal", @"name", @"label", @"definition", @"questionText", @"prompt", @"simpleDatatype", @"implementationNotes", @"mappingInstructions", @"links"];
  return [optionalProperties containsObject:propertyName];
}

@end

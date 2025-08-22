#import "OAICdashClassFieldLinks.h"

@implementation OAICdashClassFieldLinks

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"self": @"self", @"codelist": @"codelist", @"parentProduct": @"parentProduct", @"parentClass": @"parentClass", @"rootItem": @"rootItem", @"priorVersion": @"priorVersion", @"sdtmClassMappingTargets": @"sdtmClassMappingTargets", @"sdtmDatasetMappingTargets": @"sdtmDatasetMappingTargets" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"self", @"codelist", @"parentProduct", @"parentClass", @"rootItem", @"priorVersion", @"sdtmClassMappingTargets", @"sdtmDatasetMappingTargets"];
  return [optionalProperties containsObject:propertyName];
}

@end

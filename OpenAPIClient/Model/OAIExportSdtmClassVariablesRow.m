#import "OAIExportSdtmClassVariablesRow.h"

@implementation OAIExportSdtmClassVariablesRow

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"version": @"Version", @"variableOrder": @"Variable Order", @"_class": @"Class", @"datasetName": @"Dataset Name", @"variableName": @"Variable Name", @"variableLabel": @"Variable Label", @"type": @"Type", @"controlledTermsCodelistOrFormat": @"Controlled Terms, Codelist or Format", @"role": @"Role", @"roleDescription": @"Role Description", @"_description": @"Description" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"version", @"variableOrder", @"_class", @"datasetName", @"variableName", @"variableLabel", @"type", @"controlledTermsCodelistOrFormat", @"role", @"roleDescription", @"_description"];
  return [optionalProperties containsObject:propertyName];
}

@end

#import "OAIExportQrsWorkbookItemsRow.h"

@implementation OAIExportQrsWorkbookItemsRow

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"itemSequence": @"Item Sequence", @"testName": @"Test Name", @"itemText": @"Item Text", @"testsCodelistCCode": @"Test&#39;s Codelist C-Code", @"testsTermCCode": @"Test&#39;s Term C-Code", @"testCodesCodelistCCode": @"Test Code&#39;s Codelist C-Code", @"testCodesTermCCode": @"Test Code&#39;s Term C-Code", @"subcategorysCodelistCCode": @"Subcategory&#39;s Codelist C-Code", @"subcategorysTermCCode": @"Subcategory&#39;s Term C-Code", @"evaluatorsCodelistCCode": @"Evaluator&#39;s Codelist C-Code", @"evaluatorsTermCCode": @"Evaluator&#39;s Term C-Code", @"freeFormResponsesDatatype": @"Free-form Response&#39;s Datatype", @"responseGroup": @"Response Group" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"itemSequence", @"testName", @"itemText", @"testsCodelistCCode", @"testsTermCCode", @"testCodesCodelistCCode", @"testCodesTermCCode", @"subcategorysCodelistCCode", @"subcategorysTermCCode", @"evaluatorsCodelistCCode", @"evaluatorsTermCCode", @"freeFormResponsesDatatype", @"responseGroup"];
  return [optionalProperties containsObject:propertyName];
}

@end

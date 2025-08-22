
package org.openapitools.client.model


case class ExportQrsWorkbookItemsRow (
    _itemSequence: Option[String],
    _testName: Option[String],
    _itemText: Option[String],
    _testsCodelistCCode: Option[String],
    _testsTermCCode: Option[String],
    _testCodesCodelistCCode: Option[String],
    _testCodesTermCCode: Option[String],
    _subcategorysCodelistCCode: Option[String],
    _subcategorysTermCCode: Option[String],
    _evaluatorsCodelistCCode: Option[String],
    _evaluatorsTermCCode: Option[String],
    _freeFormResponsesDatatype: Option[String],
    _responseGroup: Option[String]
)
object ExportQrsWorkbookItemsRow {
    def toStringBody(var_itemSequence: Object, var_testName: Object, var_itemText: Object, var_testsCodelistCCode: Object, var_testsTermCCode: Object, var_testCodesCodelistCCode: Object, var_testCodesTermCCode: Object, var_subcategorysCodelistCCode: Object, var_subcategorysTermCCode: Object, var_evaluatorsCodelistCCode: Object, var_evaluatorsTermCCode: Object, var_freeFormResponsesDatatype: Object, var_responseGroup: Object) =
        s"""
        | {
        | "itemSequence":$var_itemSequence,"testName":$var_testName,"itemText":$var_itemText,"testsCodelistCCode":$var_testsCodelistCCode,"testsTermCCode":$var_testsTermCCode,"testCodesCodelistCCode":$var_testCodesCodelistCCode,"testCodesTermCCode":$var_testCodesTermCCode,"subcategorysCodelistCCode":$var_subcategorysCodelistCCode,"subcategorysTermCCode":$var_subcategorysTermCCode,"evaluatorsCodelistCCode":$var_evaluatorsCodelistCCode,"evaluatorsTermCCode":$var_evaluatorsTermCCode,"freeFormResponsesDatatype":$var_freeFormResponsesDatatype,"responseGroup":$var_responseGroup
        | }
        """.stripMargin
}

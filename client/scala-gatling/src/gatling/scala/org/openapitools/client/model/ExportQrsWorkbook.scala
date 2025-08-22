
package org.openapitools.client.model


case class ExportQrsWorkbook (
    _self: Option[ExportQrsGeneral],
    _items: Option[List[ExportQrsWorkbookItemsRow]],
    _responses: Option[List[ExportQrsResponses]]
)
object ExportQrsWorkbook {
    def toStringBody(var_self: Object, var_items: Object, var_responses: Object) =
        s"""
        | {
        | "self":$var_self,"items":$var_items,"responses":$var_responses
        | }
        """.stripMargin
}


package org.openapitools.client.model


case class ExportQrsItemsTable (
    _items: Option[List[ExportQrsCsvItemsRow]]
)
object ExportQrsItemsTable {
    def toStringBody(var_items: Object) =
        s"""
        | {
        | "items":$var_items
        | }
        """.stripMargin
}

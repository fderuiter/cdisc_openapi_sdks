
package org.openapitools.client.model


case class ExportAdamDatastructuresTable (
    _datastructures: Option[List[ExportAdamDatastructuresRow]]
)
object ExportAdamDatastructuresTable {
    def toStringBody(var_datastructures: Object) =
        s"""
        | {
        | "datastructures":$var_datastructures
        | }
        """.stripMargin
}

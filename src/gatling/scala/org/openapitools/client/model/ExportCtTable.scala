
package org.openapitools.client.model


case class ExportCtTable (
    _ct: Option[List[ExportCtCodelist]]
)
object ExportCtTable {
    def toStringBody(var_ct: Object) =
        s"""
        | {
        | "ct":$var_ct
        | }
        """.stripMargin
}

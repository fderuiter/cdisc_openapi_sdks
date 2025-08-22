
package org.openapitools.client.model


case class ExportSdtmigVariablesTable (
    _variables: Option[List[ExportSdtmigVariablesRow]]
)
object ExportSdtmigVariablesTable {
    def toStringBody(var_variables: Object) =
        s"""
        | {
        | "variables":$var_variables
        | }
        """.stripMargin
}

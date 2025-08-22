
package org.openapitools.client.model


case class ExportAdamVariablesTable (
    _variables: Option[List[ExportAdamVariablesRow]]
)
object ExportAdamVariablesTable {
    def toStringBody(var_variables: Object) =
        s"""
        | {
        | "variables":$var_variables
        | }
        """.stripMargin
}

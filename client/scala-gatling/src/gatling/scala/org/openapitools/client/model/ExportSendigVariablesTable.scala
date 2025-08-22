
package org.openapitools.client.model


case class ExportSendigVariablesTable (
    _variables: Option[List[ExportSendigVariablesRow]]
)
object ExportSendigVariablesTable {
    def toStringBody(var_variables: Object) =
        s"""
        | {
        | "variables":$var_variables
        | }
        """.stripMargin
}

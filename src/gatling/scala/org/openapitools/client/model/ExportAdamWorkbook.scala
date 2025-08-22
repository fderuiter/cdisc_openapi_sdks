
package org.openapitools.client.model


case class ExportAdamWorkbook (
    _variables: Option[List[ExportAdamVariablesRow]],
    _datastructures: Option[List[ExportAdamDatastructuresRow]]
)
object ExportAdamWorkbook {
    def toStringBody(var_variables: Object, var_datastructures: Object) =
        s"""
        | {
        | "variables":$var_variables,"datastructures":$var_datastructures
        | }
        """.stripMargin
}

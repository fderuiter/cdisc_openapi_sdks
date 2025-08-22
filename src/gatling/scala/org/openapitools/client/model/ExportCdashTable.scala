
package org.openapitools.client.model


case class ExportCdashTable (
    _classVariables: Option[List[ExportCdashClassVariablesRow]],
    _domainVariables: Option[List[ExportCdashDomainVariablesRow]]
)
object ExportCdashTable {
    def toStringBody(var_classVariables: Object, var_domainVariables: Object) =
        s"""
        | {
        | "classVariables":$var_classVariables,"domainVariables":$var_domainVariables
        | }
        """.stripMargin
}

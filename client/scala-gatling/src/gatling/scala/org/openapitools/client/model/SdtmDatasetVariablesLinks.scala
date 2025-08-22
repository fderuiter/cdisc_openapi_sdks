
package org.openapitools.client.model


case class SdtmDatasetVariablesLinks (
    _self: Option[SdtmDatasetVariablesRef],
    _parentProduct: Option[SdtmProductRef],
    _parentClass: Option[SdtmClassRef],
    _priorVersion: Option[SdtmDatasetVariablesRef],
    _datasetVariables: Option[List[SdtmDatasetVariableRefElement]]
)
object SdtmDatasetVariablesLinks {
    def toStringBody(var_self: Object, var_parentProduct: Object, var_parentClass: Object, var_priorVersion: Object, var_datasetVariables: Object) =
        s"""
        | {
        | "self":$var_self,"parentProduct":$var_parentProduct,"parentClass":$var_parentClass,"priorVersion":$var_priorVersion,"datasetVariables":$var_datasetVariables
        | }
        """.stripMargin
}

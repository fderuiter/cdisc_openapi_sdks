
package org.openapitools.client.model


case class SdtmigDatasetVariablesLinks (
    _self: Option[SdtmigDatasetVariablesRef],
    _modelDataset: Option[SdtmDatasetRef],
    _parentProduct: Option[SdtmigProductRef],
    _parentClass: Option[SdtmigClassRef],
    _priorVersion: Option[SdtmigDatasetVariablesRef],
    _datasetVariables: Option[List[SdtmigDatasetVariableRefElement]]
)
object SdtmigDatasetVariablesLinks {
    def toStringBody(var_self: Object, var_modelDataset: Object, var_parentProduct: Object, var_parentClass: Object, var_priorVersion: Object, var_datasetVariables: Object) =
        s"""
        | {
        | "self":$var_self,"modelDataset":$var_modelDataset,"parentProduct":$var_parentProduct,"parentClass":$var_parentClass,"priorVersion":$var_priorVersion,"datasetVariables":$var_datasetVariables
        | }
        """.stripMargin
}


package org.openapitools.client.model


case class SendigDatasetVariablesLinks (
    _self: Option[SendigDatasetVariablesRef],
    _modelDataset: Option[SdtmDatasetRef],
    _parentProduct: Option[SendigProductRef],
    _parentClass: Option[SendigClassRef],
    _priorVersion: Option[SendigDatasetVariablesRef],
    _datasetVariables: Option[List[SendigDatasetVariableRefElement]]
)
object SendigDatasetVariablesLinks {
    def toStringBody(var_self: Object, var_modelDataset: Object, var_parentProduct: Object, var_parentClass: Object, var_priorVersion: Object, var_datasetVariables: Object) =
        s"""
        | {
        | "self":$var_self,"modelDataset":$var_modelDataset,"parentProduct":$var_parentProduct,"parentClass":$var_parentClass,"priorVersion":$var_priorVersion,"datasetVariables":$var_datasetVariables
        | }
        """.stripMargin
}

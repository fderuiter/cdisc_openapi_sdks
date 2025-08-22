
package org.openapitools.client.model


case class SdtmDatasetVariableLinks (
    _self: Option[SdtmDatasetVariableRef],
    _parentProduct: Option[SdtmProductRef],
    _parentDataset: Option[SdtmDatasetRef],
    _rootItem: Option[RootSdtmDatasetVariableRef],
    _priorVersion: Option[SdtmDatasetVariableRef]
)
object SdtmDatasetVariableLinks {
    def toStringBody(var_self: Object, var_parentProduct: Object, var_parentDataset: Object, var_rootItem: Object, var_priorVersion: Object) =
        s"""
        | {
        | "self":$var_self,"parentProduct":$var_parentProduct,"parentDataset":$var_parentDataset,"rootItem":$var_rootItem,"priorVersion":$var_priorVersion
        | }
        """.stripMargin
}

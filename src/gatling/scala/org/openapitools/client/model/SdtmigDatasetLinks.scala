
package org.openapitools.client.model


case class SdtmigDatasetLinks (
    _self: Option[SdtmigDatasetRef],
    _modelDataset: Option[SdtmDatasetRef],
    _parentProduct: Option[SdtmigProductRef],
    _parentClass: Option[SdtmigClassRef],
    _priorVersion: Option[SdtmigDatasetRef]
)
object SdtmigDatasetLinks {
    def toStringBody(var_self: Object, var_modelDataset: Object, var_parentProduct: Object, var_parentClass: Object, var_priorVersion: Object) =
        s"""
        | {
        | "self":$var_self,"modelDataset":$var_modelDataset,"parentProduct":$var_parentProduct,"parentClass":$var_parentClass,"priorVersion":$var_priorVersion
        | }
        """.stripMargin
}

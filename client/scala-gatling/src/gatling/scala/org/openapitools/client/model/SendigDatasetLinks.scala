
package org.openapitools.client.model


case class SendigDatasetLinks (
    _self: Option[SendigDatasetRef],
    _modelDataset: Option[SdtmDatasetRef],
    _parentProduct: Option[SendigProductRef],
    _parentClass: Option[SendigClassRef],
    _priorVersion: Option[SendigDatasetRef]
)
object SendigDatasetLinks {
    def toStringBody(var_self: Object, var_modelDataset: Object, var_parentProduct: Object, var_parentClass: Object, var_priorVersion: Object) =
        s"""
        | {
        | "self":$var_self,"modelDataset":$var_modelDataset,"parentProduct":$var_parentProduct,"parentClass":$var_parentClass,"priorVersion":$var_priorVersion
        | }
        """.stripMargin
}

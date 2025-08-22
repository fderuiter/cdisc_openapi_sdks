
package org.openapitools.client.model


case class SdtmDatasetLinks (
    _self: Option[SdtmDatasetRef],
    _parentProduct: Option[SdtmProductRef],
    _parentClass: Option[SdtmClassRef],
    _priorVersion: Option[SdtmDatasetRef]
)
object SdtmDatasetLinks {
    def toStringBody(var_self: Object, var_parentProduct: Object, var_parentClass: Object, var_priorVersion: Object) =
        s"""
        | {
        | "self":$var_self,"parentProduct":$var_parentProduct,"parentClass":$var_parentClass,"priorVersion":$var_priorVersion
        | }
        """.stripMargin
}

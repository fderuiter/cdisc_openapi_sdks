
package org.openapitools.client.model


case class SdtmClassLinks (
    _self: Option[SdtmClassRef],
    _parentProduct: Option[SdtmProductRef],
    _parentClass: Option[SdtmClassRef],
    _subclasses: Option[List[SdtmClassRefSubclass]],
    _priorVersion: Option[SdtmClassRef]
)
object SdtmClassLinks {
    def toStringBody(var_self: Object, var_parentProduct: Object, var_parentClass: Object, var_subclasses: Object, var_priorVersion: Object) =
        s"""
        | {
        | "self":$var_self,"parentProduct":$var_parentProduct,"parentClass":$var_parentClass,"subclasses":$var_subclasses,"priorVersion":$var_priorVersion
        | }
        """.stripMargin
}

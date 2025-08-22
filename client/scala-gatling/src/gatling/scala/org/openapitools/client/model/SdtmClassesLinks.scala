
package org.openapitools.client.model


case class SdtmClassesLinks (
    _self: Option[SdtmClassesRef],
    _priorVersion: Option[SdtmClassesRef],
    _classes: Option[List[SdtmClassRefElement]]
)
object SdtmClassesLinks {
    def toStringBody(var_self: Object, var_priorVersion: Object, var_classes: Object) =
        s"""
        | {
        | "self":$var_self,"priorVersion":$var_priorVersion,"classes":$var_classes
        | }
        """.stripMargin
}

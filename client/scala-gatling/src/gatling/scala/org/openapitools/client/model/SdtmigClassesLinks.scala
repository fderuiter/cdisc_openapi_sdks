
package org.openapitools.client.model


case class SdtmigClassesLinks (
    _self: Option[SdtmigClassesRef],
    _priorVersion: Option[SdtmigClassesRef],
    _classes: Option[List[SdtmigClassRefElement]]
)
object SdtmigClassesLinks {
    def toStringBody(var_self: Object, var_priorVersion: Object, var_classes: Object) =
        s"""
        | {
        | "self":$var_self,"priorVersion":$var_priorVersion,"classes":$var_classes
        | }
        """.stripMargin
}

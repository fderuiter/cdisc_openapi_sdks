
package org.openapitools.client.model


case class XmlSdtmClass (
    _self: Option[SdtmClass]
)
object XmlSdtmClass {
    def toStringBody(var_self: Object) =
        s"""
        | {
        | "self":$var_self
        | }
        """.stripMargin
}

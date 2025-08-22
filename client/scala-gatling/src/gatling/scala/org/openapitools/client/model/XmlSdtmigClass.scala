
package org.openapitools.client.model


case class XmlSdtmigClass (
    _self: Option[SdtmigClass]
)
object XmlSdtmigClass {
    def toStringBody(var_self: Object) =
        s"""
        | {
        | "self":$var_self
        | }
        """.stripMargin
}

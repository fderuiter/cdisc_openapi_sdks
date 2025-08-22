
package org.openapitools.client.model


case class XmlSdtmProduct (
    _self: Option[SdtmProduct]
)
object XmlSdtmProduct {
    def toStringBody(var_self: Object) =
        s"""
        | {
        | "self":$var_self
        | }
        """.stripMargin
}

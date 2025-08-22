
package org.openapitools.client.model


case class XmlSdtmigProduct (
    _self: Option[SdtmigProduct]
)
object XmlSdtmigProduct {
    def toStringBody(var_self: Object) =
        s"""
        | {
        | "self":$var_self
        | }
        """.stripMargin
}


package org.openapitools.client.model


case class XmlSdtmClassVariable (
    _self: Option[SdtmClassVariable]
)
object XmlSdtmClassVariable {
    def toStringBody(var_self: Object) =
        s"""
        | {
        | "self":$var_self
        | }
        """.stripMargin
}

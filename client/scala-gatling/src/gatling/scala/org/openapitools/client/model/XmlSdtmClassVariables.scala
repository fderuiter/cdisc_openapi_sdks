
package org.openapitools.client.model


case class XmlSdtmClassVariables (
    _self: Option[SdtmClassVariables]
)
object XmlSdtmClassVariables {
    def toStringBody(var_self: Object) =
        s"""
        | {
        | "self":$var_self
        | }
        """.stripMargin
}

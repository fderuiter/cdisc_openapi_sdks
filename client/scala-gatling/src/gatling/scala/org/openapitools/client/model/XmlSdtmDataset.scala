
package org.openapitools.client.model


case class XmlSdtmDataset (
    _self: Option[SdtmDataset]
)
object XmlSdtmDataset {
    def toStringBody(var_self: Object) =
        s"""
        | {
        | "self":$var_self
        | }
        """.stripMargin
}

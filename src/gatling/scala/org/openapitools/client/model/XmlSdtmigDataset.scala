
package org.openapitools.client.model


case class XmlSdtmigDataset (
    _self: Option[SdtmigDataset]
)
object XmlSdtmigDataset {
    def toStringBody(var_self: Object) =
        s"""
        | {
        | "self":$var_self
        | }
        """.stripMargin
}

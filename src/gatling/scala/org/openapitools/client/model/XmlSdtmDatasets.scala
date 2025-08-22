
package org.openapitools.client.model


case class XmlSdtmDatasets (
    _self: Option[SdtmDatasets]
)
object XmlSdtmDatasets {
    def toStringBody(var_self: Object) =
        s"""
        | {
        | "self":$var_self
        | }
        """.stripMargin
}

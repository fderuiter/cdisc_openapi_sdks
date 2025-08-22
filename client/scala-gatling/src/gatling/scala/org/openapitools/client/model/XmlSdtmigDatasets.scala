
package org.openapitools.client.model


case class XmlSdtmigDatasets (
    _self: Option[SdtmigDatasets]
)
object XmlSdtmigDatasets {
    def toStringBody(var_self: Object) =
        s"""
        | {
        | "self":$var_self
        | }
        """.stripMargin
}

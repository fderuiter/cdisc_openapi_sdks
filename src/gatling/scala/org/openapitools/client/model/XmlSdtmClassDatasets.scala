
package org.openapitools.client.model


case class XmlSdtmClassDatasets (
    _self: Option[SdtmClassDatasets]
)
object XmlSdtmClassDatasets {
    def toStringBody(var_self: Object) =
        s"""
        | {
        | "self":$var_self
        | }
        """.stripMargin
}

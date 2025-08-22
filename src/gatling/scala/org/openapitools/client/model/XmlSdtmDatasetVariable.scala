
package org.openapitools.client.model


case class XmlSdtmDatasetVariable (
    _self: Option[SdtmDatasetVariable]
)
object XmlSdtmDatasetVariable {
    def toStringBody(var_self: Object) =
        s"""
        | {
        | "self":$var_self
        | }
        """.stripMargin
}

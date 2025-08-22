
package org.openapitools.client.model


case class XmlSdtmigDatasetVariable (
    _self: Option[SdtmigDatasetVariable]
)
object XmlSdtmigDatasetVariable {
    def toStringBody(var_self: Object) =
        s"""
        | {
        | "self":$var_self
        | }
        """.stripMargin
}

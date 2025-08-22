
package org.openapitools.client.model


case class XmlSdtmigDatasetVariables (
    _self: Option[SdtmigDatasetVariables]
)
object XmlSdtmigDatasetVariables {
    def toStringBody(var_self: Object) =
        s"""
        | {
        | "self":$var_self
        | }
        """.stripMargin
}

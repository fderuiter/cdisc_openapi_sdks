
package org.openapitools.client.model


case class XmlSdtmDatasetVariables (
    _self: Option[SdtmDatasetVariables]
)
object XmlSdtmDatasetVariables {
    def toStringBody(var_self: Object) =
        s"""
        | {
        | "self":$var_self
        | }
        """.stripMargin
}

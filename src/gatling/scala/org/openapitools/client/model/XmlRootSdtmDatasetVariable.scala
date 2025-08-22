
package org.openapitools.client.model


case class XmlRootSdtmDatasetVariable (
    _self: Option[RootSdtmDatasetVariable]
)
object XmlRootSdtmDatasetVariable {
    def toStringBody(var_self: Object) =
        s"""
        | {
        | "self":$var_self
        | }
        """.stripMargin
}


package org.openapitools.client.model


case class XmlRootSdtmigDatasetVariable (
    _self: Option[RootSdtmigDatasetVariable]
)
object XmlRootSdtmigDatasetVariable {
    def toStringBody(var_self: Object) =
        s"""
        | {
        | "self":$var_self
        | }
        """.stripMargin
}

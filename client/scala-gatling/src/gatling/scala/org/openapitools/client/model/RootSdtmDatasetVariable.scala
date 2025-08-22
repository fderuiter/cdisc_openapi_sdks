
package org.openapitools.client.model


case class RootSdtmDatasetVariable (
    _links: Option[RootSdtmDatasetVariableLinks]
)
object RootSdtmDatasetVariable {
    def toStringBody(var_links: Object) =
        s"""
        | {
        | "links":$var_links
        | }
        """.stripMargin
}

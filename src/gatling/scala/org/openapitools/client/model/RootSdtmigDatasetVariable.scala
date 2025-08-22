
package org.openapitools.client.model


case class RootSdtmigDatasetVariable (
    _links: Option[RootSdtmigDatasetVariableLinks]
)
object RootSdtmigDatasetVariable {
    def toStringBody(var_links: Object) =
        s"""
        | {
        | "links":$var_links
        | }
        """.stripMargin
}


package org.openapitools.client.model


case class RootSendigDatasetVariable (
    _links: Option[RootSendigDatasetVariableLinks]
)
object RootSendigDatasetVariable {
    def toStringBody(var_links: Object) =
        s"""
        | {
        | "links":$var_links
        | }
        """.stripMargin
}

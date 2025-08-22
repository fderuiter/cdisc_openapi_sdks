
package org.openapitools.client.model


case class About (
    _links: Option[AboutLinks],
    _releaseNotes: Option[String],
    _apiDocumentation: Option[String]
)
object About {
    def toStringBody(var_links: Object, var_releaseNotes: Object, var_apiDocumentation: Object) =
        s"""
        | {
        | "links":$var_links,"releaseNotes":$var_releaseNotes,"apiDocumentation":$var_apiDocumentation
        | }
        """.stripMargin
}

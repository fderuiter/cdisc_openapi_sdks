
package org.openapitools.client.model


case class QrsResponsegroup (
    _label: Option[String],
    _links: Option[QrsResponsegroupLinks]
)
object QrsResponsegroup {
    def toStringBody(var_label: Object, var_links: Object) =
        s"""
        | {
        | "label":$var_label,"links":$var_links
        | }
        """.stripMargin
}

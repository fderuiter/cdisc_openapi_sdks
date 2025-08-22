
package org.openapitools.client.model

import java.util.HashMap

case class DefaultSearchResponseHitsInner (
    _href: String,
    _type: String
)
object DefaultSearchResponseHitsInner {
    def toStringBody(var_href: Object, var_type: Object) =
        s"""
        | {
        | "href":$var_href,"type":$var_type
        | }
        """.stripMargin
}


package org.openapitools.client.model


case class DefaultSearchResponse (
    _hits: Option[List[DefaultSearchResponseHitsInner]],
    _totalHits: Option[Number]
)
object DefaultSearchResponse {
    def toStringBody(var_hits: Object, var_totalHits: Object) =
        s"""
        | {
        | "hits":$var_hits,"totalHits":$var_totalHits
        | }
        """.stripMargin
}

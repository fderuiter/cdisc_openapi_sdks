
package org.openapitools.client.model


case class CtTerm (
    _conceptId: Option[String],
    _submissionValue: Option[String],
    _definition: Option[String],
    _preferredTerm: Option[String],
    _synonyms: Option[List[String]],
    _links: Option[CtTermLinks]
)
object CtTerm {
    def toStringBody(var_conceptId: Object, var_submissionValue: Object, var_definition: Object, var_preferredTerm: Object, var_synonyms: Object, var_links: Object) =
        s"""
        | {
        | "conceptId":$var_conceptId,"submissionValue":$var_submissionValue,"definition":$var_definition,"preferredTerm":$var_preferredTerm,"synonyms":$var_synonyms,"links":$var_links
        | }
        """.stripMargin
}

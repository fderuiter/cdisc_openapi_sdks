
package org.openapitools.client.model


case class CtCodelist (
    _conceptId: Option[String],
    _extensible: Option[String],
    _name: Option[String],
    _submissionValue: Option[String],
    _definition: Option[String],
    _preferredTerm: Option[String],
    _synonyms: Option[List[String]],
    _links: Option[CtCodelistLinks],
    _terms: Option[List[CtPackageTerm]]
)
object CtCodelist {
    def toStringBody(var_conceptId: Object, var_extensible: Object, var_name: Object, var_submissionValue: Object, var_definition: Object, var_preferredTerm: Object, var_synonyms: Object, var_links: Object, var_terms: Object) =
        s"""
        | {
        | "conceptId":$var_conceptId,"extensible":$var_extensible,"name":$var_name,"submissionValue":$var_submissionValue,"definition":$var_definition,"preferredTerm":$var_preferredTerm,"synonyms":$var_synonyms,"links":$var_links,"terms":$var_terms
        | }
        """.stripMargin
}

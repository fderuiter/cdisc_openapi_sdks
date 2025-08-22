
package org.openapitools.client.model


case class CtPackageTerm (
    _conceptId: Option[String],
    _submissionValue: Option[String],
    _definition: Option[String],
    _preferredTerm: Option[String],
    _synonyms: Option[List[String]]
)
object CtPackageTerm {
    def toStringBody(var_conceptId: Object, var_submissionValue: Object, var_definition: Object, var_preferredTerm: Object, var_synonyms: Object) =
        s"""
        | {
        | "conceptId":$var_conceptId,"submissionValue":$var_submissionValue,"definition":$var_definition,"preferredTerm":$var_preferredTerm,"synonyms":$var_synonyms
        | }
        """.stripMargin
}

package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CtCodelistTerms._

case class CtCodelistTerms (
  conceptId: Option[String],
extensible: Option[String],
name: Option[String],
submissionValue: Option[String],
definition: Option[String],
preferredTerm: Option[String],
synonyms: Option[List[String]],
links: Option[CtCodelistTermsLinks])

object CtCodelistTerms {
  import DateTimeCodecs._

  implicit val CtCodelistTermsCodecJson: CodecJson[CtCodelistTerms] = CodecJson.derive[CtCodelistTerms]
  implicit val CtCodelistTermsDecoder: EntityDecoder[CtCodelistTerms] = jsonOf[CtCodelistTerms]
  implicit val CtCodelistTermsEncoder: EntityEncoder[CtCodelistTerms] = jsonEncoderOf[CtCodelistTerms]
}

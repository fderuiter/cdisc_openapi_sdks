package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CtTerm._

case class CtTerm (
  conceptId: Option[String],
submissionValue: Option[String],
definition: Option[String],
preferredTerm: Option[String],
synonyms: Option[List[String]],
links: Option[CtTermLinks])

object CtTerm {
  import DateTimeCodecs._

  implicit val CtTermCodecJson: CodecJson[CtTerm] = CodecJson.derive[CtTerm]
  implicit val CtTermDecoder: EntityDecoder[CtTerm] = jsonOf[CtTerm]
  implicit val CtTermEncoder: EntityEncoder[CtTerm] = jsonEncoderOf[CtTerm]
}

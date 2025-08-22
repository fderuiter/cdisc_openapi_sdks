package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CtCodelist._

case class CtCodelist (
  conceptId: Option[String],
extensible: Option[String],
name: Option[String],
submissionValue: Option[String],
definition: Option[String],
preferredTerm: Option[String],
synonyms: Option[List[String]],
links: Option[CtCodelistLinks],
terms: Option[List[CtPackageTerm]])

object CtCodelist {
  import DateTimeCodecs._

  implicit val CtCodelistCodecJson: CodecJson[CtCodelist] = CodecJson.derive[CtCodelist]
  implicit val CtCodelistDecoder: EntityDecoder[CtCodelist] = jsonOf[CtCodelist]
  implicit val CtCodelistEncoder: EntityEncoder[CtCodelist] = jsonEncoderOf[CtCodelist]
}

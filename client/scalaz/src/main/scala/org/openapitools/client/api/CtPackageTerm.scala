package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CtPackageTerm._

case class CtPackageTerm (
  conceptId: Option[String],
submissionValue: Option[String],
definition: Option[String],
preferredTerm: Option[String],
synonyms: Option[List[String]])

object CtPackageTerm {
  import DateTimeCodecs._

  implicit val CtPackageTermCodecJson: CodecJson[CtPackageTerm] = CodecJson.derive[CtPackageTerm]
  implicit val CtPackageTermDecoder: EntityDecoder[CtPackageTerm] = jsonOf[CtPackageTerm]
  implicit val CtPackageTermEncoder: EntityEncoder[CtPackageTerm] = jsonEncoderOf[CtPackageTerm]
}

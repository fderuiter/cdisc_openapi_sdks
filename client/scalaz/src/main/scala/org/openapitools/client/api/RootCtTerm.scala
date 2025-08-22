package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import RootCtTerm._

case class RootCtTerm (
  links: Option[RootCtTermLinks])

object RootCtTerm {
  import DateTimeCodecs._

  implicit val RootCtTermCodecJson: CodecJson[RootCtTerm] = CodecJson.derive[RootCtTerm]
  implicit val RootCtTermDecoder: EntityDecoder[RootCtTerm] = jsonOf[RootCtTerm]
  implicit val RootCtTermEncoder: EntityEncoder[RootCtTerm] = jsonEncoderOf[RootCtTerm]
}

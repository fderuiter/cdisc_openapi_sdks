package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import RootCtCodelist._

case class RootCtCodelist (
  links: Option[RootCtCodelistLinks])

object RootCtCodelist {
  import DateTimeCodecs._

  implicit val RootCtCodelistCodecJson: CodecJson[RootCtCodelist] = CodecJson.derive[RootCtCodelist]
  implicit val RootCtCodelistDecoder: EntityDecoder[RootCtCodelist] = jsonOf[RootCtCodelist]
  implicit val RootCtCodelistEncoder: EntityEncoder[RootCtCodelist] = jsonEncoderOf[RootCtCodelist]
}

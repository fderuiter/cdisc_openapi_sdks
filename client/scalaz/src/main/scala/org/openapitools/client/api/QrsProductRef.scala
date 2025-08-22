package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import QrsProductRef._

case class QrsProductRef (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object QrsProductRef {
  import DateTimeCodecs._

  implicit val QrsProductRefCodecJson: CodecJson[QrsProductRef] = CodecJson.derive[QrsProductRef]
  implicit val QrsProductRefDecoder: EntityDecoder[QrsProductRef] = jsonOf[QrsProductRef]
  implicit val QrsProductRefEncoder: EntityEncoder[QrsProductRef] = jsonEncoderOf[QrsProductRef]
}

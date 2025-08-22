package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import QrsRefElement._

case class QrsRefElement (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object QrsRefElement {
  import DateTimeCodecs._

  implicit val QrsRefElementCodecJson: CodecJson[QrsRefElement] = CodecJson.derive[QrsRefElement]
  implicit val QrsRefElementDecoder: EntityDecoder[QrsRefElement] = jsonOf[QrsRefElement]
  implicit val QrsRefElementEncoder: EntityEncoder[QrsRefElement] = jsonEncoderOf[QrsRefElement]
}

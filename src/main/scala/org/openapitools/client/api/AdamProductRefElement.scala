package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import AdamProductRefElement._

case class AdamProductRefElement (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object AdamProductRefElement {
  import DateTimeCodecs._

  implicit val AdamProductRefElementCodecJson: CodecJson[AdamProductRefElement] = CodecJson.derive[AdamProductRefElement]
  implicit val AdamProductRefElementDecoder: EntityDecoder[AdamProductRefElement] = jsonOf[AdamProductRefElement]
  implicit val AdamProductRefElementEncoder: EntityEncoder[AdamProductRefElement] = jsonEncoderOf[AdamProductRefElement]
}

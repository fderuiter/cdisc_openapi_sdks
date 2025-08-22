package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import AdamDatastructureRefElement._

case class AdamDatastructureRefElement (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object AdamDatastructureRefElement {
  import DateTimeCodecs._

  implicit val AdamDatastructureRefElementCodecJson: CodecJson[AdamDatastructureRefElement] = CodecJson.derive[AdamDatastructureRefElement]
  implicit val AdamDatastructureRefElementDecoder: EntityDecoder[AdamDatastructureRefElement] = jsonOf[AdamDatastructureRefElement]
  implicit val AdamDatastructureRefElementEncoder: EntityEncoder[AdamDatastructureRefElement] = jsonEncoderOf[AdamDatastructureRefElement]
}

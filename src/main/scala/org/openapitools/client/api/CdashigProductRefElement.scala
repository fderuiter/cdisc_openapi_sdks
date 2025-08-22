package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CdashigProductRefElement._

case class CdashigProductRefElement (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object CdashigProductRefElement {
  import DateTimeCodecs._

  implicit val CdashigProductRefElementCodecJson: CodecJson[CdashigProductRefElement] = CodecJson.derive[CdashigProductRefElement]
  implicit val CdashigProductRefElementDecoder: EntityDecoder[CdashigProductRefElement] = jsonOf[CdashigProductRefElement]
  implicit val CdashigProductRefElementEncoder: EntityEncoder[CdashigProductRefElement] = jsonEncoderOf[CdashigProductRefElement]
}

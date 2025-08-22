package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CdashProductRefElement._

case class CdashProductRefElement (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object CdashProductRefElement {
  import DateTimeCodecs._

  implicit val CdashProductRefElementCodecJson: CodecJson[CdashProductRefElement] = CodecJson.derive[CdashProductRefElement]
  implicit val CdashProductRefElementDecoder: EntityDecoder[CdashProductRefElement] = jsonOf[CdashProductRefElement]
  implicit val CdashProductRefElementEncoder: EntityEncoder[CdashProductRefElement] = jsonEncoderOf[CdashProductRefElement]
}

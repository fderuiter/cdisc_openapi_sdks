package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CdashigClassRefElement._

case class CdashigClassRefElement (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object CdashigClassRefElement {
  import DateTimeCodecs._

  implicit val CdashigClassRefElementCodecJson: CodecJson[CdashigClassRefElement] = CodecJson.derive[CdashigClassRefElement]
  implicit val CdashigClassRefElementDecoder: EntityDecoder[CdashigClassRefElement] = jsonOf[CdashigClassRefElement]
  implicit val CdashigClassRefElementEncoder: EntityEncoder[CdashigClassRefElement] = jsonEncoderOf[CdashigClassRefElement]
}

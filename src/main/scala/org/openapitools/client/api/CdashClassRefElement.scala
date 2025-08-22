package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CdashClassRefElement._

case class CdashClassRefElement (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object CdashClassRefElement {
  import DateTimeCodecs._

  implicit val CdashClassRefElementCodecJson: CodecJson[CdashClassRefElement] = CodecJson.derive[CdashClassRefElement]
  implicit val CdashClassRefElementDecoder: EntityDecoder[CdashClassRefElement] = jsonOf[CdashClassRefElement]
  implicit val CdashClassRefElementEncoder: EntityEncoder[CdashClassRefElement] = jsonEncoderOf[CdashClassRefElement]
}

package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CdashDomainRefElement._

case class CdashDomainRefElement (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object CdashDomainRefElement {
  import DateTimeCodecs._

  implicit val CdashDomainRefElementCodecJson: CodecJson[CdashDomainRefElement] = CodecJson.derive[CdashDomainRefElement]
  implicit val CdashDomainRefElementDecoder: EntityDecoder[CdashDomainRefElement] = jsonOf[CdashDomainRefElement]
  implicit val CdashDomainRefElementEncoder: EntityEncoder[CdashDomainRefElement] = jsonEncoderOf[CdashDomainRefElement]
}

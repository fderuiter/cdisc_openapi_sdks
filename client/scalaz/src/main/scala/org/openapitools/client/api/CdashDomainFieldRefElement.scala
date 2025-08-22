package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CdashDomainFieldRefElement._

case class CdashDomainFieldRefElement (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object CdashDomainFieldRefElement {
  import DateTimeCodecs._

  implicit val CdashDomainFieldRefElementCodecJson: CodecJson[CdashDomainFieldRefElement] = CodecJson.derive[CdashDomainFieldRefElement]
  implicit val CdashDomainFieldRefElementDecoder: EntityDecoder[CdashDomainFieldRefElement] = jsonOf[CdashDomainFieldRefElement]
  implicit val CdashDomainFieldRefElementEncoder: EntityEncoder[CdashDomainFieldRefElement] = jsonEncoderOf[CdashDomainFieldRefElement]
}

package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CdashigDomainFieldRefElement._

case class CdashigDomainFieldRefElement (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object CdashigDomainFieldRefElement {
  import DateTimeCodecs._

  implicit val CdashigDomainFieldRefElementCodecJson: CodecJson[CdashigDomainFieldRefElement] = CodecJson.derive[CdashigDomainFieldRefElement]
  implicit val CdashigDomainFieldRefElementDecoder: EntityDecoder[CdashigDomainFieldRefElement] = jsonOf[CdashigDomainFieldRefElement]
  implicit val CdashigDomainFieldRefElementEncoder: EntityEncoder[CdashigDomainFieldRefElement] = jsonEncoderOf[CdashigDomainFieldRefElement]
}

package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CdashDomainFieldRefVersion._

case class CdashDomainFieldRefVersion (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object CdashDomainFieldRefVersion {
  import DateTimeCodecs._

  implicit val CdashDomainFieldRefVersionCodecJson: CodecJson[CdashDomainFieldRefVersion] = CodecJson.derive[CdashDomainFieldRefVersion]
  implicit val CdashDomainFieldRefVersionDecoder: EntityDecoder[CdashDomainFieldRefVersion] = jsonOf[CdashDomainFieldRefVersion]
  implicit val CdashDomainFieldRefVersionEncoder: EntityEncoder[CdashDomainFieldRefVersion] = jsonEncoderOf[CdashDomainFieldRefVersion]
}

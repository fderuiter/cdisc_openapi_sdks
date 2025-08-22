package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CdashigDomainFieldRefVersion._

case class CdashigDomainFieldRefVersion (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object CdashigDomainFieldRefVersion {
  import DateTimeCodecs._

  implicit val CdashigDomainFieldRefVersionCodecJson: CodecJson[CdashigDomainFieldRefVersion] = CodecJson.derive[CdashigDomainFieldRefVersion]
  implicit val CdashigDomainFieldRefVersionDecoder: EntityDecoder[CdashigDomainFieldRefVersion] = jsonOf[CdashigDomainFieldRefVersion]
  implicit val CdashigDomainFieldRefVersionEncoder: EntityEncoder[CdashigDomainFieldRefVersion] = jsonEncoderOf[CdashigDomainFieldRefVersion]
}

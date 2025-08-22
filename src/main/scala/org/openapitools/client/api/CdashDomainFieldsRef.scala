package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CdashDomainFieldsRef._

case class CdashDomainFieldsRef (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object CdashDomainFieldsRef {
  import DateTimeCodecs._

  implicit val CdashDomainFieldsRefCodecJson: CodecJson[CdashDomainFieldsRef] = CodecJson.derive[CdashDomainFieldsRef]
  implicit val CdashDomainFieldsRefDecoder: EntityDecoder[CdashDomainFieldsRef] = jsonOf[CdashDomainFieldsRef]
  implicit val CdashDomainFieldsRefEncoder: EntityEncoder[CdashDomainFieldsRef] = jsonEncoderOf[CdashDomainFieldsRef]
}

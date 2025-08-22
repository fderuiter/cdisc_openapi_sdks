package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CdashigDomainFieldsRef._

case class CdashigDomainFieldsRef (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object CdashigDomainFieldsRef {
  import DateTimeCodecs._

  implicit val CdashigDomainFieldsRefCodecJson: CodecJson[CdashigDomainFieldsRef] = CodecJson.derive[CdashigDomainFieldsRef]
  implicit val CdashigDomainFieldsRefDecoder: EntityDecoder[CdashigDomainFieldsRef] = jsonOf[CdashigDomainFieldsRef]
  implicit val CdashigDomainFieldsRefEncoder: EntityEncoder[CdashigDomainFieldsRef] = jsonEncoderOf[CdashigDomainFieldsRef]
}

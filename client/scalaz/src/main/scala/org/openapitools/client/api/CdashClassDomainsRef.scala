package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CdashClassDomainsRef._

case class CdashClassDomainsRef (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object CdashClassDomainsRef {
  import DateTimeCodecs._

  implicit val CdashClassDomainsRefCodecJson: CodecJson[CdashClassDomainsRef] = CodecJson.derive[CdashClassDomainsRef]
  implicit val CdashClassDomainsRefDecoder: EntityDecoder[CdashClassDomainsRef] = jsonOf[CdashClassDomainsRef]
  implicit val CdashClassDomainsRefEncoder: EntityEncoder[CdashClassDomainsRef] = jsonEncoderOf[CdashClassDomainsRef]
}

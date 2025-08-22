package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CdashigClassDomainsRef._

case class CdashigClassDomainsRef (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object CdashigClassDomainsRef {
  import DateTimeCodecs._

  implicit val CdashigClassDomainsRefCodecJson: CodecJson[CdashigClassDomainsRef] = CodecJson.derive[CdashigClassDomainsRef]
  implicit val CdashigClassDomainsRefDecoder: EntityDecoder[CdashigClassDomainsRef] = jsonOf[CdashigClassDomainsRef]
  implicit val CdashigClassDomainsRefEncoder: EntityEncoder[CdashigClassDomainsRef] = jsonEncoderOf[CdashigClassDomainsRef]
}

package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CdashClassFieldRefVersion._

case class CdashClassFieldRefVersion (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object CdashClassFieldRefVersion {
  import DateTimeCodecs._

  implicit val CdashClassFieldRefVersionCodecJson: CodecJson[CdashClassFieldRefVersion] = CodecJson.derive[CdashClassFieldRefVersion]
  implicit val CdashClassFieldRefVersionDecoder: EntityDecoder[CdashClassFieldRefVersion] = jsonOf[CdashClassFieldRefVersion]
  implicit val CdashClassFieldRefVersionEncoder: EntityEncoder[CdashClassFieldRefVersion] = jsonEncoderOf[CdashClassFieldRefVersion]
}

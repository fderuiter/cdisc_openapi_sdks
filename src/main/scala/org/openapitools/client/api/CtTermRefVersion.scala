package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CtTermRefVersion._

case class CtTermRefVersion (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object CtTermRefVersion {
  import DateTimeCodecs._

  implicit val CtTermRefVersionCodecJson: CodecJson[CtTermRefVersion] = CodecJson.derive[CtTermRefVersion]
  implicit val CtTermRefVersionDecoder: EntityDecoder[CtTermRefVersion] = jsonOf[CtTermRefVersion]
  implicit val CtTermRefVersionEncoder: EntityEncoder[CtTermRefVersion] = jsonEncoderOf[CtTermRefVersion]
}

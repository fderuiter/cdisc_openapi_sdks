package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CtPackageCodelistsRef._

case class CtPackageCodelistsRef (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object CtPackageCodelistsRef {
  import DateTimeCodecs._

  implicit val CtPackageCodelistsRefCodecJson: CodecJson[CtPackageCodelistsRef] = CodecJson.derive[CtPackageCodelistsRef]
  implicit val CtPackageCodelistsRefDecoder: EntityDecoder[CtPackageCodelistsRef] = jsonOf[CtPackageCodelistsRef]
  implicit val CtPackageCodelistsRefEncoder: EntityEncoder[CtPackageCodelistsRef] = jsonEncoderOf[CtPackageCodelistsRef]
}

package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CtPackageRef._

case class CtPackageRef (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object CtPackageRef {
  import DateTimeCodecs._

  implicit val CtPackageRefCodecJson: CodecJson[CtPackageRef] = CodecJson.derive[CtPackageRef]
  implicit val CtPackageRefDecoder: EntityDecoder[CtPackageRef] = jsonOf[CtPackageRef]
  implicit val CtPackageRefEncoder: EntityEncoder[CtPackageRef] = jsonEncoderOf[CtPackageRef]
}

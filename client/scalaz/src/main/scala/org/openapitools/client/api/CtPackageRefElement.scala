package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CtPackageRefElement._

case class CtPackageRefElement (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object CtPackageRefElement {
  import DateTimeCodecs._

  implicit val CtPackageRefElementCodecJson: CodecJson[CtPackageRefElement] = CodecJson.derive[CtPackageRefElement]
  implicit val CtPackageRefElementDecoder: EntityDecoder[CtPackageRefElement] = jsonOf[CtPackageRefElement]
  implicit val CtPackageRefElementEncoder: EntityEncoder[CtPackageRefElement] = jsonEncoderOf[CtPackageRefElement]
}

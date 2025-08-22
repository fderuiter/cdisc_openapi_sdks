package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CtPackages._

case class CtPackages (
  links: Option[CtPackagesLinks])

object CtPackages {
  import DateTimeCodecs._

  implicit val CtPackagesCodecJson: CodecJson[CtPackages] = CodecJson.derive[CtPackages]
  implicit val CtPackagesDecoder: EntityDecoder[CtPackages] = jsonOf[CtPackages]
  implicit val CtPackagesEncoder: EntityEncoder[CtPackages] = jsonEncoderOf[CtPackages]
}

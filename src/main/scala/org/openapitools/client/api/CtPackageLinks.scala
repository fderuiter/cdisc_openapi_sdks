package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CtPackageLinks._

case class CtPackageLinks (
  self: Option[CtPackageRef],
priorVersion: Option[CtPackageRef])

object CtPackageLinks {
  import DateTimeCodecs._

  implicit val CtPackageLinksCodecJson: CodecJson[CtPackageLinks] = CodecJson.derive[CtPackageLinks]
  implicit val CtPackageLinksDecoder: EntityDecoder[CtPackageLinks] = jsonOf[CtPackageLinks]
  implicit val CtPackageLinksEncoder: EntityEncoder[CtPackageLinks] = jsonEncoderOf[CtPackageLinks]
}

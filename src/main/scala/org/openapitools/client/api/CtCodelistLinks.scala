package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CtCodelistLinks._

case class CtCodelistLinks (
  self: Option[CtCodelistRef],
parentPackage: Option[CtPackageRef],
rootItem: Option[RootCtCodelistRef],
priorVersion: Option[CtCodelistRef])

object CtCodelistLinks {
  import DateTimeCodecs._

  implicit val CtCodelistLinksCodecJson: CodecJson[CtCodelistLinks] = CodecJson.derive[CtCodelistLinks]
  implicit val CtCodelistLinksDecoder: EntityDecoder[CtCodelistLinks] = jsonOf[CtCodelistLinks]
  implicit val CtCodelistLinksEncoder: EntityEncoder[CtCodelistLinks] = jsonEncoderOf[CtCodelistLinks]
}

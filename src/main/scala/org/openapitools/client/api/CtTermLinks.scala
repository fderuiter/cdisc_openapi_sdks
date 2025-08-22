package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CtTermLinks._

case class CtTermLinks (
  self: Option[CtTermRef],
parentPackage: Option[CtPackageRef],
parentCodelist: Option[CtCodelistRef],
rootItem: Option[RootCtTermRef],
priorVersion: Option[CtTermRef])

object CtTermLinks {
  import DateTimeCodecs._

  implicit val CtTermLinksCodecJson: CodecJson[CtTermLinks] = CodecJson.derive[CtTermLinks]
  implicit val CtTermLinksDecoder: EntityDecoder[CtTermLinks] = jsonOf[CtTermLinks]
  implicit val CtTermLinksEncoder: EntityEncoder[CtTermLinks] = jsonEncoderOf[CtTermLinks]
}

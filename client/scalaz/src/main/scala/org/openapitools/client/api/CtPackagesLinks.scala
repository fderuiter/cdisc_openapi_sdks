package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CtPackagesLinks._

case class CtPackagesLinks (
  self: Option[CtPackagesRef],
packages: Option[List[CtPackageRefElement]])

object CtPackagesLinks {
  import DateTimeCodecs._

  implicit val CtPackagesLinksCodecJson: CodecJson[CtPackagesLinks] = CodecJson.derive[CtPackagesLinks]
  implicit val CtPackagesLinksDecoder: EntityDecoder[CtPackagesLinks] = jsonOf[CtPackagesLinks]
  implicit val CtPackagesLinksEncoder: EntityEncoder[CtPackagesLinks] = jsonEncoderOf[CtPackagesLinks]
}

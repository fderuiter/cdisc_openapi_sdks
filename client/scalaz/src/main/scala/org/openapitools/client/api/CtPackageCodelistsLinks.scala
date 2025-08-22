package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CtPackageCodelistsLinks._

case class CtPackageCodelistsLinks (
  self: Option[CtPackageCodelistsRef],
priorVersion: Option[CtPackageCodelistsRef],
codelists: Option[List[CtCodelistRefElement]])

object CtPackageCodelistsLinks {
  import DateTimeCodecs._

  implicit val CtPackageCodelistsLinksCodecJson: CodecJson[CtPackageCodelistsLinks] = CodecJson.derive[CtPackageCodelistsLinks]
  implicit val CtPackageCodelistsLinksDecoder: EntityDecoder[CtPackageCodelistsLinks] = jsonOf[CtPackageCodelistsLinks]
  implicit val CtPackageCodelistsLinksEncoder: EntityEncoder[CtPackageCodelistsLinks] = jsonEncoderOf[CtPackageCodelistsLinks]
}

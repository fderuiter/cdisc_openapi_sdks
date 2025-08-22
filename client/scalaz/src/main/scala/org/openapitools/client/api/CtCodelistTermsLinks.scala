package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CtCodelistTermsLinks._

case class CtCodelistTermsLinks (
  self: Option[CtCodelistTermsRef],
parentPackage: Option[CtPackageRef],
rootItem: Option[RootCtCodelistRef],
priorVersion: Option[CtCodelistTermsRef],
terms: Option[List[CtTermRefElement]])

object CtCodelistTermsLinks {
  import DateTimeCodecs._

  implicit val CtCodelistTermsLinksCodecJson: CodecJson[CtCodelistTermsLinks] = CodecJson.derive[CtCodelistTermsLinks]
  implicit val CtCodelistTermsLinksDecoder: EntityDecoder[CtCodelistTermsLinks] = jsonOf[CtCodelistTermsLinks]
  implicit val CtCodelistTermsLinksEncoder: EntityEncoder[CtCodelistTermsLinks] = jsonEncoderOf[CtCodelistTermsLinks]
}

package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import XmlCtCodelistTerms._

case class XmlCtCodelistTerms (
  self: Option[CtCodelistTerms])

object XmlCtCodelistTerms {
  import DateTimeCodecs._

  implicit val XmlCtCodelistTermsCodecJson: CodecJson[XmlCtCodelistTerms] = CodecJson.derive[XmlCtCodelistTerms]
  implicit val XmlCtCodelistTermsDecoder: EntityDecoder[XmlCtCodelistTerms] = jsonOf[XmlCtCodelistTerms]
  implicit val XmlCtCodelistTermsEncoder: EntityEncoder[XmlCtCodelistTerms] = jsonEncoderOf[XmlCtCodelistTerms]
}

package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CtCodelistTermsRef._

case class CtCodelistTermsRef (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object CtCodelistTermsRef {
  import DateTimeCodecs._

  implicit val CtCodelistTermsRefCodecJson: CodecJson[CtCodelistTermsRef] = CodecJson.derive[CtCodelistTermsRef]
  implicit val CtCodelistTermsRefDecoder: EntityDecoder[CtCodelistTermsRef] = jsonOf[CtCodelistTermsRef]
  implicit val CtCodelistTermsRefEncoder: EntityEncoder[CtCodelistTermsRef] = jsonEncoderOf[CtCodelistTermsRef]
}

package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import XmlCtPackage._

case class XmlCtPackage (
  self: Option[CtPackage])

object XmlCtPackage {
  import DateTimeCodecs._

  implicit val XmlCtPackageCodecJson: CodecJson[XmlCtPackage] = CodecJson.derive[XmlCtPackage]
  implicit val XmlCtPackageDecoder: EntityDecoder[XmlCtPackage] = jsonOf[XmlCtPackage]
  implicit val XmlCtPackageEncoder: EntityEncoder[XmlCtPackage] = jsonEncoderOf[XmlCtPackage]
}

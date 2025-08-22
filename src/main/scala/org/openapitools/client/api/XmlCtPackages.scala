package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import XmlCtPackages._

case class XmlCtPackages (
  self: Option[CtPackages])

object XmlCtPackages {
  import DateTimeCodecs._

  implicit val XmlCtPackagesCodecJson: CodecJson[XmlCtPackages] = CodecJson.derive[XmlCtPackages]
  implicit val XmlCtPackagesDecoder: EntityDecoder[XmlCtPackages] = jsonOf[XmlCtPackages]
  implicit val XmlCtPackagesEncoder: EntityEncoder[XmlCtPackages] = jsonEncoderOf[XmlCtPackages]
}

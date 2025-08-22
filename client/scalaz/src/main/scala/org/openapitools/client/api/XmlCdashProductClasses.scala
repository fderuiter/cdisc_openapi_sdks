package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import XmlCdashProductClasses._

case class XmlCdashProductClasses (
  self: Option[CdashProductClasses])

object XmlCdashProductClasses {
  import DateTimeCodecs._

  implicit val XmlCdashProductClassesCodecJson: CodecJson[XmlCdashProductClasses] = CodecJson.derive[XmlCdashProductClasses]
  implicit val XmlCdashProductClassesDecoder: EntityDecoder[XmlCdashProductClasses] = jsonOf[XmlCdashProductClasses]
  implicit val XmlCdashProductClassesEncoder: EntityEncoder[XmlCdashProductClasses] = jsonEncoderOf[XmlCdashProductClasses]
}

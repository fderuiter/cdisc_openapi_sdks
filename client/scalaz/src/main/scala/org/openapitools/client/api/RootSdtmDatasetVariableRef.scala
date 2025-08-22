package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import RootSdtmDatasetVariableRef._

case class RootSdtmDatasetVariableRef (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object RootSdtmDatasetVariableRef {
  import DateTimeCodecs._

  implicit val RootSdtmDatasetVariableRefCodecJson: CodecJson[RootSdtmDatasetVariableRef] = CodecJson.derive[RootSdtmDatasetVariableRef]
  implicit val RootSdtmDatasetVariableRefDecoder: EntityDecoder[RootSdtmDatasetVariableRef] = jsonOf[RootSdtmDatasetVariableRef]
  implicit val RootSdtmDatasetVariableRefEncoder: EntityEncoder[RootSdtmDatasetVariableRef] = jsonEncoderOf[RootSdtmDatasetVariableRef]
}

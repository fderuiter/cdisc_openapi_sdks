package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import RootSdtmigDatasetVariableRef._

case class RootSdtmigDatasetVariableRef (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object RootSdtmigDatasetVariableRef {
  import DateTimeCodecs._

  implicit val RootSdtmigDatasetVariableRefCodecJson: CodecJson[RootSdtmigDatasetVariableRef] = CodecJson.derive[RootSdtmigDatasetVariableRef]
  implicit val RootSdtmigDatasetVariableRefDecoder: EntityDecoder[RootSdtmigDatasetVariableRef] = jsonOf[RootSdtmigDatasetVariableRef]
  implicit val RootSdtmigDatasetVariableRefEncoder: EntityEncoder[RootSdtmigDatasetVariableRef] = jsonEncoderOf[RootSdtmigDatasetVariableRef]
}

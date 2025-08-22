#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ExportQrsResponses.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ExportQrsResponses::ExportQrsResponses()
{
	//__init();
}

ExportQrsResponses::~ExportQrsResponses()
{
	//__cleanup();
}

void
ExportQrsResponses::__init()
{
	//responseGroup = std::string();
	//sequence = std::string();
	//responsesOriginalResultCodelistCCode = std::string();
	//responsesOriginalResultTermCCode = std::string();
	//responsesOriginalResultUnitCodelistCCode = std::string();
	//responsesOriginalResultUnitTermCCode = std::string();
	//responsesStandardizedResultCodelistCCode = std::string();
	//responsesStandardizedResultTermCCode = std::string();
	//responsesStandardizedResultUnitCodelistCCode = std::string();
	//responsesStandardizedResultUnitTermCCode = std::string();
}

void
ExportQrsResponses::__cleanup()
{
	//if(responseGroup != NULL) {
	//
	//delete responseGroup;
	//responseGroup = NULL;
	//}
	//if(sequence != NULL) {
	//
	//delete sequence;
	//sequence = NULL;
	//}
	//if(responsesOriginalResultCodelistCCode != NULL) {
	//
	//delete responsesOriginalResultCodelistCCode;
	//responsesOriginalResultCodelistCCode = NULL;
	//}
	//if(responsesOriginalResultTermCCode != NULL) {
	//
	//delete responsesOriginalResultTermCCode;
	//responsesOriginalResultTermCCode = NULL;
	//}
	//if(responsesOriginalResultUnitCodelistCCode != NULL) {
	//
	//delete responsesOriginalResultUnitCodelistCCode;
	//responsesOriginalResultUnitCodelistCCode = NULL;
	//}
	//if(responsesOriginalResultUnitTermCCode != NULL) {
	//
	//delete responsesOriginalResultUnitTermCCode;
	//responsesOriginalResultUnitTermCCode = NULL;
	//}
	//if(responsesStandardizedResultCodelistCCode != NULL) {
	//
	//delete responsesStandardizedResultCodelistCCode;
	//responsesStandardizedResultCodelistCCode = NULL;
	//}
	//if(responsesStandardizedResultTermCCode != NULL) {
	//
	//delete responsesStandardizedResultTermCCode;
	//responsesStandardizedResultTermCCode = NULL;
	//}
	//if(responsesStandardizedResultUnitCodelistCCode != NULL) {
	//
	//delete responsesStandardizedResultUnitCodelistCCode;
	//responsesStandardizedResultUnitCodelistCCode = NULL;
	//}
	//if(responsesStandardizedResultUnitTermCCode != NULL) {
	//
	//delete responsesStandardizedResultUnitTermCCode;
	//responsesStandardizedResultUnitTermCCode = NULL;
	//}
	//
}

void
ExportQrsResponses::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *responseGroupKey = "Response Group";
	node = json_object_get_member(pJsonObject, responseGroupKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&responseGroup, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *sequenceKey = "Sequence";
	node = json_object_get_member(pJsonObject, sequenceKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&sequence, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *responsesOriginalResultCodelistCCodeKey = "Response&#39;s Original Result Codelist C-Code";
	node = json_object_get_member(pJsonObject, responsesOriginalResultCodelistCCodeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&responsesOriginalResultCodelistCCode, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *responsesOriginalResultTermCCodeKey = "Response&#39;s Original Result Term C-Code";
	node = json_object_get_member(pJsonObject, responsesOriginalResultTermCCodeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&responsesOriginalResultTermCCode, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *responsesOriginalResultUnitCodelistCCodeKey = "Response&#39;s Original Result Unit Codelist C-Code";
	node = json_object_get_member(pJsonObject, responsesOriginalResultUnitCodelistCCodeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&responsesOriginalResultUnitCodelistCCode, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *responsesOriginalResultUnitTermCCodeKey = "Response&#39;s Original Result Unit Term C-Code";
	node = json_object_get_member(pJsonObject, responsesOriginalResultUnitTermCCodeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&responsesOriginalResultUnitTermCCode, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *responsesStandardizedResultCodelistCCodeKey = "Response&#39;s Standardized Result Codelist C-Code";
	node = json_object_get_member(pJsonObject, responsesStandardizedResultCodelistCCodeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&responsesStandardizedResultCodelistCCode, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *responsesStandardizedResultTermCCodeKey = "Response&#39;s Standardized Result Term C-Code";
	node = json_object_get_member(pJsonObject, responsesStandardizedResultTermCCodeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&responsesStandardizedResultTermCCode, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *responsesStandardizedResultUnitCodelistCCodeKey = "Response&#39;s Standardized Result Unit Codelist C-Code";
	node = json_object_get_member(pJsonObject, responsesStandardizedResultUnitCodelistCCodeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&responsesStandardizedResultUnitCodelistCCode, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *responsesStandardizedResultUnitTermCCodeKey = "Response&#39;s Standardized Result Unit Term C-Code";
	node = json_object_get_member(pJsonObject, responsesStandardizedResultUnitTermCCodeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&responsesStandardizedResultUnitTermCCode, node, "std::string", "");
		} else {
			
		}
	}
}

ExportQrsResponses::ExportQrsResponses(char* json)
{
	this->fromJson(json);
}

char*
ExportQrsResponses::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getResponseGroup();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *responseGroupKey = "Response Group";
	json_object_set_member(pJsonObject, responseGroupKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getSequence();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *sequenceKey = "Sequence";
	json_object_set_member(pJsonObject, sequenceKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getResponsesOriginalResultCodelistCCode();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *responsesOriginalResultCodelistCCodeKey = "Response&#39;s Original Result Codelist C-Code";
	json_object_set_member(pJsonObject, responsesOriginalResultCodelistCCodeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getResponsesOriginalResultTermCCode();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *responsesOriginalResultTermCCodeKey = "Response&#39;s Original Result Term C-Code";
	json_object_set_member(pJsonObject, responsesOriginalResultTermCCodeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getResponsesOriginalResultUnitCodelistCCode();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *responsesOriginalResultUnitCodelistCCodeKey = "Response&#39;s Original Result Unit Codelist C-Code";
	json_object_set_member(pJsonObject, responsesOriginalResultUnitCodelistCCodeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getResponsesOriginalResultUnitTermCCode();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *responsesOriginalResultUnitTermCCodeKey = "Response&#39;s Original Result Unit Term C-Code";
	json_object_set_member(pJsonObject, responsesOriginalResultUnitTermCCodeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getResponsesStandardizedResultCodelistCCode();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *responsesStandardizedResultCodelistCCodeKey = "Response&#39;s Standardized Result Codelist C-Code";
	json_object_set_member(pJsonObject, responsesStandardizedResultCodelistCCodeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getResponsesStandardizedResultTermCCode();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *responsesStandardizedResultTermCCodeKey = "Response&#39;s Standardized Result Term C-Code";
	json_object_set_member(pJsonObject, responsesStandardizedResultTermCCodeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getResponsesStandardizedResultUnitCodelistCCode();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *responsesStandardizedResultUnitCodelistCCodeKey = "Response&#39;s Standardized Result Unit Codelist C-Code";
	json_object_set_member(pJsonObject, responsesStandardizedResultUnitCodelistCCodeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getResponsesStandardizedResultUnitTermCCode();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *responsesStandardizedResultUnitTermCCodeKey = "Response&#39;s Standardized Result Unit Term C-Code";
	json_object_set_member(pJsonObject, responsesStandardizedResultUnitTermCCodeKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
ExportQrsResponses::getResponseGroup()
{
	return responseGroup;
}

void
ExportQrsResponses::setResponseGroup(std::string  responseGroup)
{
	this->responseGroup = responseGroup;
}

std::string
ExportQrsResponses::getSequence()
{
	return sequence;
}

void
ExportQrsResponses::setSequence(std::string  sequence)
{
	this->sequence = sequence;
}

std::string
ExportQrsResponses::getResponsesOriginalResultCodelistCCode()
{
	return responsesOriginalResultCodelistCCode;
}

void
ExportQrsResponses::setResponsesOriginalResultCodelistCCode(std::string  responsesOriginalResultCodelistCCode)
{
	this->responsesOriginalResultCodelistCCode = responsesOriginalResultCodelistCCode;
}

std::string
ExportQrsResponses::getResponsesOriginalResultTermCCode()
{
	return responsesOriginalResultTermCCode;
}

void
ExportQrsResponses::setResponsesOriginalResultTermCCode(std::string  responsesOriginalResultTermCCode)
{
	this->responsesOriginalResultTermCCode = responsesOriginalResultTermCCode;
}

std::string
ExportQrsResponses::getResponsesOriginalResultUnitCodelistCCode()
{
	return responsesOriginalResultUnitCodelistCCode;
}

void
ExportQrsResponses::setResponsesOriginalResultUnitCodelistCCode(std::string  responsesOriginalResultUnitCodelistCCode)
{
	this->responsesOriginalResultUnitCodelistCCode = responsesOriginalResultUnitCodelistCCode;
}

std::string
ExportQrsResponses::getResponsesOriginalResultUnitTermCCode()
{
	return responsesOriginalResultUnitTermCCode;
}

void
ExportQrsResponses::setResponsesOriginalResultUnitTermCCode(std::string  responsesOriginalResultUnitTermCCode)
{
	this->responsesOriginalResultUnitTermCCode = responsesOriginalResultUnitTermCCode;
}

std::string
ExportQrsResponses::getResponsesStandardizedResultCodelistCCode()
{
	return responsesStandardizedResultCodelistCCode;
}

void
ExportQrsResponses::setResponsesStandardizedResultCodelistCCode(std::string  responsesStandardizedResultCodelistCCode)
{
	this->responsesStandardizedResultCodelistCCode = responsesStandardizedResultCodelistCCode;
}

std::string
ExportQrsResponses::getResponsesStandardizedResultTermCCode()
{
	return responsesStandardizedResultTermCCode;
}

void
ExportQrsResponses::setResponsesStandardizedResultTermCCode(std::string  responsesStandardizedResultTermCCode)
{
	this->responsesStandardizedResultTermCCode = responsesStandardizedResultTermCCode;
}

std::string
ExportQrsResponses::getResponsesStandardizedResultUnitCodelistCCode()
{
	return responsesStandardizedResultUnitCodelistCCode;
}

void
ExportQrsResponses::setResponsesStandardizedResultUnitCodelistCCode(std::string  responsesStandardizedResultUnitCodelistCCode)
{
	this->responsesStandardizedResultUnitCodelistCCode = responsesStandardizedResultUnitCodelistCCode;
}

std::string
ExportQrsResponses::getResponsesStandardizedResultUnitTermCCode()
{
	return responsesStandardizedResultUnitTermCCode;
}

void
ExportQrsResponses::setResponsesStandardizedResultUnitTermCCode(std::string  responsesStandardizedResultUnitTermCCode)
{
	this->responsesStandardizedResultUnitTermCCode = responsesStandardizedResultUnitTermCCode;
}



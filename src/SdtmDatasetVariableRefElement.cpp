#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "SdtmDatasetVariableRefElement.h"

using namespace std;
using namespace Tizen::ArtikCloud;

SdtmDatasetVariableRefElement::SdtmDatasetVariableRefElement()
{
	//__init();
}

SdtmDatasetVariableRefElement::~SdtmDatasetVariableRefElement()
{
	//__cleanup();
}

void
SdtmDatasetVariableRefElement::__init()
{
	//href = std::string();
	//title = std::string();
	//type = std::string();
}

void
SdtmDatasetVariableRefElement::__cleanup()
{
	//if(href != NULL) {
	//
	//delete href;
	//href = NULL;
	//}
	//if(title != NULL) {
	//
	//delete title;
	//title = NULL;
	//}
	//if(type != NULL) {
	//
	//delete type;
	//type = NULL;
	//}
	//
}

void
SdtmDatasetVariableRefElement::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *hrefKey = "href";
	node = json_object_get_member(pJsonObject, hrefKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&href, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *titleKey = "title";
	node = json_object_get_member(pJsonObject, titleKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&title, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *typeKey = "type";
	node = json_object_get_member(pJsonObject, typeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&type, node, "std::string", "");
		} else {
			
		}
	}
}

SdtmDatasetVariableRefElement::SdtmDatasetVariableRefElement(char* json)
{
	this->fromJson(json);
}

char*
SdtmDatasetVariableRefElement::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getHref();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *hrefKey = "href";
	json_object_set_member(pJsonObject, hrefKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getTitle();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *titleKey = "title";
	json_object_set_member(pJsonObject, titleKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getType();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *typeKey = "type";
	json_object_set_member(pJsonObject, typeKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
SdtmDatasetVariableRefElement::getHref()
{
	return href;
}

void
SdtmDatasetVariableRefElement::setHref(std::string  href)
{
	this->href = href;
}

std::string
SdtmDatasetVariableRefElement::getTitle()
{
	return title;
}

void
SdtmDatasetVariableRefElement::setTitle(std::string  title)
{
	this->title = title;
}

std::string
SdtmDatasetVariableRefElement::getType()
{
	return type;
}

void
SdtmDatasetVariableRefElement::setType(std::string  type)
{
	this->type = type;
}



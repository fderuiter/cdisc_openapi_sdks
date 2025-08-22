#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "CdashigClassScenarios.h"

using namespace std;
using namespace Tizen::ArtikCloud;

CdashigClassScenarios::CdashigClassScenarios()
{
	//__init();
}

CdashigClassScenarios::~CdashigClassScenarios()
{
	//__cleanup();
}

void
CdashigClassScenarios::__init()
{
	//ordinal = std::string();
	//name = std::string();
	//label = std::string();
	//description = std::string();
	//_links = new CdashigClassScenariosLinks();
}

void
CdashigClassScenarios::__cleanup()
{
	//if(ordinal != NULL) {
	//
	//delete ordinal;
	//ordinal = NULL;
	//}
	//if(name != NULL) {
	//
	//delete name;
	//name = NULL;
	//}
	//if(label != NULL) {
	//
	//delete label;
	//label = NULL;
	//}
	//if(description != NULL) {
	//
	//delete description;
	//description = NULL;
	//}
	//if(_links != NULL) {
	//
	//delete _links;
	//_links = NULL;
	//}
	//
}

void
CdashigClassScenarios::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *ordinalKey = "ordinal";
	node = json_object_get_member(pJsonObject, ordinalKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&ordinal, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *nameKey = "name";
	node = json_object_get_member(pJsonObject, nameKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&name, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *labelKey = "label";
	node = json_object_get_member(pJsonObject, labelKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&label, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *descriptionKey = "description";
	node = json_object_get_member(pJsonObject, descriptionKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&description, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *_linksKey = "_links";
	node = json_object_get_member(pJsonObject, _linksKey);
	if (node !=NULL) {
	

		if (isprimitive("CdashigClassScenariosLinks")) {
			jsonToValue(&_links, node, "CdashigClassScenariosLinks", "CdashigClassScenariosLinks");
		} else {
			
			CdashigClassScenariosLinks* obj = static_cast<CdashigClassScenariosLinks*> (&_links);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

CdashigClassScenarios::CdashigClassScenarios(char* json)
{
	this->fromJson(json);
}

char*
CdashigClassScenarios::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getOrdinal();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *ordinalKey = "ordinal";
	json_object_set_member(pJsonObject, ordinalKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getName();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *nameKey = "name";
	json_object_set_member(pJsonObject, nameKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getLabel();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *labelKey = "label";
	json_object_set_member(pJsonObject, labelKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getDescription();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *descriptionKey = "description";
	json_object_set_member(pJsonObject, descriptionKey, node);
	if (isprimitive("CdashigClassScenariosLinks")) {
		CdashigClassScenariosLinks obj = getLinks();
		node = converttoJson(&obj, "CdashigClassScenariosLinks", "");
	}
	else {
		
		CdashigClassScenariosLinks obj = static_cast<CdashigClassScenariosLinks> (getLinks());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *_linksKey = "_links";
	json_object_set_member(pJsonObject, _linksKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
CdashigClassScenarios::getOrdinal()
{
	return ordinal;
}

void
CdashigClassScenarios::setOrdinal(std::string  ordinal)
{
	this->ordinal = ordinal;
}

std::string
CdashigClassScenarios::getName()
{
	return name;
}

void
CdashigClassScenarios::setName(std::string  name)
{
	this->name = name;
}

std::string
CdashigClassScenarios::getLabel()
{
	return label;
}

void
CdashigClassScenarios::setLabel(std::string  label)
{
	this->label = label;
}

std::string
CdashigClassScenarios::getDescription()
{
	return description;
}

void
CdashigClassScenarios::setDescription(std::string  description)
{
	this->description = description;
}

CdashigClassScenariosLinks
CdashigClassScenarios::getLinks()
{
	return _links;
}

void
CdashigClassScenarios::setLinks(CdashigClassScenariosLinks  _links)
{
	this->_links = _links;
}



#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "SdtmDatasetVariables.h"

using namespace std;
using namespace Tizen::ArtikCloud;

SdtmDatasetVariables::SdtmDatasetVariables()
{
	//__init();
}

SdtmDatasetVariables::~SdtmDatasetVariables()
{
	//__cleanup();
}

void
SdtmDatasetVariables::__init()
{
	//ordinal = std::string();
	//name = std::string();
	//label = std::string();
	//description = std::string();
	//datasetStructure = std::string();
	//_links = new SdtmDatasetVariablesLinks();
}

void
SdtmDatasetVariables::__cleanup()
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
	//if(datasetStructure != NULL) {
	//
	//delete datasetStructure;
	//datasetStructure = NULL;
	//}
	//if(_links != NULL) {
	//
	//delete _links;
	//_links = NULL;
	//}
	//
}

void
SdtmDatasetVariables::fromJson(char* jsonStr)
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
	const gchar *datasetStructureKey = "datasetStructure";
	node = json_object_get_member(pJsonObject, datasetStructureKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&datasetStructure, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *_linksKey = "_links";
	node = json_object_get_member(pJsonObject, _linksKey);
	if (node !=NULL) {
	

		if (isprimitive("SdtmDatasetVariablesLinks")) {
			jsonToValue(&_links, node, "SdtmDatasetVariablesLinks", "SdtmDatasetVariablesLinks");
		} else {
			
			SdtmDatasetVariablesLinks* obj = static_cast<SdtmDatasetVariablesLinks*> (&_links);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

SdtmDatasetVariables::SdtmDatasetVariables(char* json)
{
	this->fromJson(json);
}

char*
SdtmDatasetVariables::toJson()
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
	if (isprimitive("std::string")) {
		std::string obj = getDatasetStructure();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *datasetStructureKey = "datasetStructure";
	json_object_set_member(pJsonObject, datasetStructureKey, node);
	if (isprimitive("SdtmDatasetVariablesLinks")) {
		SdtmDatasetVariablesLinks obj = getLinks();
		node = converttoJson(&obj, "SdtmDatasetVariablesLinks", "");
	}
	else {
		
		SdtmDatasetVariablesLinks obj = static_cast<SdtmDatasetVariablesLinks> (getLinks());
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
SdtmDatasetVariables::getOrdinal()
{
	return ordinal;
}

void
SdtmDatasetVariables::setOrdinal(std::string  ordinal)
{
	this->ordinal = ordinal;
}

std::string
SdtmDatasetVariables::getName()
{
	return name;
}

void
SdtmDatasetVariables::setName(std::string  name)
{
	this->name = name;
}

std::string
SdtmDatasetVariables::getLabel()
{
	return label;
}

void
SdtmDatasetVariables::setLabel(std::string  label)
{
	this->label = label;
}

std::string
SdtmDatasetVariables::getDescription()
{
	return description;
}

void
SdtmDatasetVariables::setDescription(std::string  description)
{
	this->description = description;
}

std::string
SdtmDatasetVariables::getDatasetStructure()
{
	return datasetStructure;
}

void
SdtmDatasetVariables::setDatasetStructure(std::string  datasetStructure)
{
	this->datasetStructure = datasetStructure;
}

SdtmDatasetVariablesLinks
SdtmDatasetVariables::getLinks()
{
	return _links;
}

void
SdtmDatasetVariables::setLinks(SdtmDatasetVariablesLinks  _links)
{
	this->_links = _links;
}



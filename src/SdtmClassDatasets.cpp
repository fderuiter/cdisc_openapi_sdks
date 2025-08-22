#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "SdtmClassDatasets.h"

using namespace std;
using namespace Tizen::ArtikCloud;

SdtmClassDatasets::SdtmClassDatasets()
{
	//__init();
}

SdtmClassDatasets::~SdtmClassDatasets()
{
	//__cleanup();
}

void
SdtmClassDatasets::__init()
{
	//ordinal = std::string();
	//name = std::string();
	//label = std::string();
	//description = std::string();
	//_links = new SdtmClassDatasetsLinks();
}

void
SdtmClassDatasets::__cleanup()
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
SdtmClassDatasets::fromJson(char* jsonStr)
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
	

		if (isprimitive("SdtmClassDatasetsLinks")) {
			jsonToValue(&_links, node, "SdtmClassDatasetsLinks", "SdtmClassDatasetsLinks");
		} else {
			
			SdtmClassDatasetsLinks* obj = static_cast<SdtmClassDatasetsLinks*> (&_links);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

SdtmClassDatasets::SdtmClassDatasets(char* json)
{
	this->fromJson(json);
}

char*
SdtmClassDatasets::toJson()
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
	if (isprimitive("SdtmClassDatasetsLinks")) {
		SdtmClassDatasetsLinks obj = getLinks();
		node = converttoJson(&obj, "SdtmClassDatasetsLinks", "");
	}
	else {
		
		SdtmClassDatasetsLinks obj = static_cast<SdtmClassDatasetsLinks> (getLinks());
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
SdtmClassDatasets::getOrdinal()
{
	return ordinal;
}

void
SdtmClassDatasets::setOrdinal(std::string  ordinal)
{
	this->ordinal = ordinal;
}

std::string
SdtmClassDatasets::getName()
{
	return name;
}

void
SdtmClassDatasets::setName(std::string  name)
{
	this->name = name;
}

std::string
SdtmClassDatasets::getLabel()
{
	return label;
}

void
SdtmClassDatasets::setLabel(std::string  label)
{
	this->label = label;
}

std::string
SdtmClassDatasets::getDescription()
{
	return description;
}

void
SdtmClassDatasets::setDescription(std::string  description)
{
	this->description = description;
}

SdtmClassDatasetsLinks
SdtmClassDatasets::getLinks()
{
	return _links;
}

void
SdtmClassDatasets::setLinks(SdtmClassDatasetsLinks  _links)
{
	this->_links = _links;
}



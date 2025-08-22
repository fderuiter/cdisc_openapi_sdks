#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "CdashDomainFields.h"

using namespace std;
using namespace Tizen::ArtikCloud;

CdashDomainFields::CdashDomainFields()
{
	//__init();
}

CdashDomainFields::~CdashDomainFields()
{
	//__cleanup();
}

void
CdashDomainFields::__init()
{
	//ordinal = std::string();
	//name = std::string();
	//label = std::string();
	//_links = new CdashDomainFieldsLinks();
}

void
CdashDomainFields::__cleanup()
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
	//if(_links != NULL) {
	//
	//delete _links;
	//_links = NULL;
	//}
	//
}

void
CdashDomainFields::fromJson(char* jsonStr)
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
	const gchar *_linksKey = "_links";
	node = json_object_get_member(pJsonObject, _linksKey);
	if (node !=NULL) {
	

		if (isprimitive("CdashDomainFieldsLinks")) {
			jsonToValue(&_links, node, "CdashDomainFieldsLinks", "CdashDomainFieldsLinks");
		} else {
			
			CdashDomainFieldsLinks* obj = static_cast<CdashDomainFieldsLinks*> (&_links);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

CdashDomainFields::CdashDomainFields(char* json)
{
	this->fromJson(json);
}

char*
CdashDomainFields::toJson()
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
	if (isprimitive("CdashDomainFieldsLinks")) {
		CdashDomainFieldsLinks obj = getLinks();
		node = converttoJson(&obj, "CdashDomainFieldsLinks", "");
	}
	else {
		
		CdashDomainFieldsLinks obj = static_cast<CdashDomainFieldsLinks> (getLinks());
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
CdashDomainFields::getOrdinal()
{
	return ordinal;
}

void
CdashDomainFields::setOrdinal(std::string  ordinal)
{
	this->ordinal = ordinal;
}

std::string
CdashDomainFields::getName()
{
	return name;
}

void
CdashDomainFields::setName(std::string  name)
{
	this->name = name;
}

std::string
CdashDomainFields::getLabel()
{
	return label;
}

void
CdashDomainFields::setLabel(std::string  label)
{
	this->label = label;
}

CdashDomainFieldsLinks
CdashDomainFields::getLinks()
{
	return _links;
}

void
CdashDomainFields::setLinks(CdashDomainFieldsLinks  _links)
{
	this->_links = _links;
}



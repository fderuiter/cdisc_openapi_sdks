#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "CdashClassDomains.h"

using namespace std;
using namespace Tizen::ArtikCloud;

CdashClassDomains::CdashClassDomains()
{
	//__init();
}

CdashClassDomains::~CdashClassDomains()
{
	//__cleanup();
}

void
CdashClassDomains::__init()
{
	//ordinal = std::string();
	//name = std::string();
	//label = std::string();
	//description = std::string();
	//_links = new CdashClassDomainsLinks();
}

void
CdashClassDomains::__cleanup()
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
CdashClassDomains::fromJson(char* jsonStr)
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
	

		if (isprimitive("CdashClassDomainsLinks")) {
			jsonToValue(&_links, node, "CdashClassDomainsLinks", "CdashClassDomainsLinks");
		} else {
			
			CdashClassDomainsLinks* obj = static_cast<CdashClassDomainsLinks*> (&_links);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

CdashClassDomains::CdashClassDomains(char* json)
{
	this->fromJson(json);
}

char*
CdashClassDomains::toJson()
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
	if (isprimitive("CdashClassDomainsLinks")) {
		CdashClassDomainsLinks obj = getLinks();
		node = converttoJson(&obj, "CdashClassDomainsLinks", "");
	}
	else {
		
		CdashClassDomainsLinks obj = static_cast<CdashClassDomainsLinks> (getLinks());
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
CdashClassDomains::getOrdinal()
{
	return ordinal;
}

void
CdashClassDomains::setOrdinal(std::string  ordinal)
{
	this->ordinal = ordinal;
}

std::string
CdashClassDomains::getName()
{
	return name;
}

void
CdashClassDomains::setName(std::string  name)
{
	this->name = name;
}

std::string
CdashClassDomains::getLabel()
{
	return label;
}

void
CdashClassDomains::setLabel(std::string  label)
{
	this->label = label;
}

std::string
CdashClassDomains::getDescription()
{
	return description;
}

void
CdashClassDomains::setDescription(std::string  description)
{
	this->description = description;
}

CdashClassDomainsLinks
CdashClassDomains::getLinks()
{
	return _links;
}

void
CdashClassDomains::setLinks(CdashClassDomainsLinks  _links)
{
	this->_links = _links;
}



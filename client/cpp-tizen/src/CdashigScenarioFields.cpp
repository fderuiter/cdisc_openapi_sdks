#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "CdashigScenarioFields.h"

using namespace std;
using namespace Tizen::ArtikCloud;

CdashigScenarioFields::CdashigScenarioFields()
{
	//__init();
}

CdashigScenarioFields::~CdashigScenarioFields()
{
	//__cleanup();
}

void
CdashigScenarioFields::__init()
{
	//ordinal = std::string();
	//domain = std::string();
	//scenario = std::string();
	//_links = new CdashigScenarioFieldsLinks();
}

void
CdashigScenarioFields::__cleanup()
{
	//if(ordinal != NULL) {
	//
	//delete ordinal;
	//ordinal = NULL;
	//}
	//if(domain != NULL) {
	//
	//delete domain;
	//domain = NULL;
	//}
	//if(scenario != NULL) {
	//
	//delete scenario;
	//scenario = NULL;
	//}
	//if(_links != NULL) {
	//
	//delete _links;
	//_links = NULL;
	//}
	//
}

void
CdashigScenarioFields::fromJson(char* jsonStr)
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
	const gchar *domainKey = "domain";
	node = json_object_get_member(pJsonObject, domainKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&domain, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *scenarioKey = "scenario";
	node = json_object_get_member(pJsonObject, scenarioKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&scenario, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *_linksKey = "_links";
	node = json_object_get_member(pJsonObject, _linksKey);
	if (node !=NULL) {
	

		if (isprimitive("CdashigScenarioFieldsLinks")) {
			jsonToValue(&_links, node, "CdashigScenarioFieldsLinks", "CdashigScenarioFieldsLinks");
		} else {
			
			CdashigScenarioFieldsLinks* obj = static_cast<CdashigScenarioFieldsLinks*> (&_links);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

CdashigScenarioFields::CdashigScenarioFields(char* json)
{
	this->fromJson(json);
}

char*
CdashigScenarioFields::toJson()
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
		std::string obj = getDomain();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *domainKey = "domain";
	json_object_set_member(pJsonObject, domainKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getScenario();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *scenarioKey = "scenario";
	json_object_set_member(pJsonObject, scenarioKey, node);
	if (isprimitive("CdashigScenarioFieldsLinks")) {
		CdashigScenarioFieldsLinks obj = getLinks();
		node = converttoJson(&obj, "CdashigScenarioFieldsLinks", "");
	}
	else {
		
		CdashigScenarioFieldsLinks obj = static_cast<CdashigScenarioFieldsLinks> (getLinks());
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
CdashigScenarioFields::getOrdinal()
{
	return ordinal;
}

void
CdashigScenarioFields::setOrdinal(std::string  ordinal)
{
	this->ordinal = ordinal;
}

std::string
CdashigScenarioFields::getDomain()
{
	return domain;
}

void
CdashigScenarioFields::setDomain(std::string  domain)
{
	this->domain = domain;
}

std::string
CdashigScenarioFields::getScenario()
{
	return scenario;
}

void
CdashigScenarioFields::setScenario(std::string  scenario)
{
	this->scenario = scenario;
}

CdashigScenarioFieldsLinks
CdashigScenarioFields::getLinks()
{
	return _links;
}

void
CdashigScenarioFields::setLinks(CdashigScenarioFieldsLinks  _links)
{
	this->_links = _links;
}



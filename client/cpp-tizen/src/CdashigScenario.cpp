#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "CdashigScenario.h"

using namespace std;
using namespace Tizen::ArtikCloud;

CdashigScenario::CdashigScenario()
{
	//__init();
}

CdashigScenario::~CdashigScenario()
{
	//__cleanup();
}

void
CdashigScenario::__init()
{
	//ordinal = std::string();
	//domain = std::string();
	//scenario = std::string();
	//_links = new CdashigScenarioLinks();
	//new std::list()std::list> fields;
}

void
CdashigScenario::__cleanup()
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
	//if(fields != NULL) {
	//fields.RemoveAll(true);
	//delete fields;
	//fields = NULL;
	//}
	//
}

void
CdashigScenario::fromJson(char* jsonStr)
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
	

		if (isprimitive("CdashigScenarioLinks")) {
			jsonToValue(&_links, node, "CdashigScenarioLinks", "CdashigScenarioLinks");
		} else {
			
			CdashigScenarioLinks* obj = static_cast<CdashigScenarioLinks*> (&_links);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *fieldsKey = "fields";
	node = json_object_get_member(pJsonObject, fieldsKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<CdashigScenarioField> new_list;
			CdashigScenarioField inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("CdashigScenarioField")) {
					jsonToValue(&inst, temp_json, "CdashigScenarioField", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			fields = new_list;
		}
		
	}
}

CdashigScenario::CdashigScenario(char* json)
{
	this->fromJson(json);
}

char*
CdashigScenario::toJson()
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
	if (isprimitive("CdashigScenarioLinks")) {
		CdashigScenarioLinks obj = getLinks();
		node = converttoJson(&obj, "CdashigScenarioLinks", "");
	}
	else {
		
		CdashigScenarioLinks obj = static_cast<CdashigScenarioLinks> (getLinks());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *_linksKey = "_links";
	json_object_set_member(pJsonObject, _linksKey, node);
	if (isprimitive("CdashigScenarioField")) {
		list<CdashigScenarioField> new_list = static_cast<list <CdashigScenarioField> > (getFields());
		node = converttoJson(&new_list, "CdashigScenarioField", "array");
	} else {
		node = json_node_alloc();
		list<CdashigScenarioField> new_list = static_cast<list <CdashigScenarioField> > (getFields());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<CdashigScenarioField>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			CdashigScenarioField obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *fieldsKey = "fields";
	json_object_set_member(pJsonObject, fieldsKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
CdashigScenario::getOrdinal()
{
	return ordinal;
}

void
CdashigScenario::setOrdinal(std::string  ordinal)
{
	this->ordinal = ordinal;
}

std::string
CdashigScenario::getDomain()
{
	return domain;
}

void
CdashigScenario::setDomain(std::string  domain)
{
	this->domain = domain;
}

std::string
CdashigScenario::getScenario()
{
	return scenario;
}

void
CdashigScenario::setScenario(std::string  scenario)
{
	this->scenario = scenario;
}

CdashigScenarioLinks
CdashigScenario::getLinks()
{
	return _links;
}

void
CdashigScenario::setLinks(CdashigScenarioLinks  _links)
{
	this->_links = _links;
}

std::list<CdashigScenarioField>
CdashigScenario::getFields()
{
	return fields;
}

void
CdashigScenario::setFields(std::list <CdashigScenarioField> fields)
{
	this->fields = fields;
}



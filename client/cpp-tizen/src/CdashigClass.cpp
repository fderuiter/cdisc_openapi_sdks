#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "CdashigClass.h"

using namespace std;
using namespace Tizen::ArtikCloud;

CdashigClass::CdashigClass()
{
	//__init();
}

CdashigClass::~CdashigClass()
{
	//__cleanup();
}

void
CdashigClass::__init()
{
	//ordinal = std::string();
	//name = std::string();
	//label = std::string();
	//description = std::string();
	//_links = new CdashigClassLinks();
	//new std::list()std::list> domains;
	//new std::list()std::list> scenarios;
}

void
CdashigClass::__cleanup()
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
	//if(domains != NULL) {
	//domains.RemoveAll(true);
	//delete domains;
	//domains = NULL;
	//}
	//if(scenarios != NULL) {
	//scenarios.RemoveAll(true);
	//delete scenarios;
	//scenarios = NULL;
	//}
	//
}

void
CdashigClass::fromJson(char* jsonStr)
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
	

		if (isprimitive("CdashigClassLinks")) {
			jsonToValue(&_links, node, "CdashigClassLinks", "CdashigClassLinks");
		} else {
			
			CdashigClassLinks* obj = static_cast<CdashigClassLinks*> (&_links);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *domainsKey = "domains";
	node = json_object_get_member(pJsonObject, domainsKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<CdashigDomain> new_list;
			CdashigDomain inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("CdashigDomain")) {
					jsonToValue(&inst, temp_json, "CdashigDomain", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			domains = new_list;
		}
		
	}
	const gchar *scenariosKey = "scenarios";
	node = json_object_get_member(pJsonObject, scenariosKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<CdashigScenario> new_list;
			CdashigScenario inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("CdashigScenario")) {
					jsonToValue(&inst, temp_json, "CdashigScenario", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			scenarios = new_list;
		}
		
	}
}

CdashigClass::CdashigClass(char* json)
{
	this->fromJson(json);
}

char*
CdashigClass::toJson()
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
	if (isprimitive("CdashigClassLinks")) {
		CdashigClassLinks obj = getLinks();
		node = converttoJson(&obj, "CdashigClassLinks", "");
	}
	else {
		
		CdashigClassLinks obj = static_cast<CdashigClassLinks> (getLinks());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *_linksKey = "_links";
	json_object_set_member(pJsonObject, _linksKey, node);
	if (isprimitive("CdashigDomain")) {
		list<CdashigDomain> new_list = static_cast<list <CdashigDomain> > (getDomains());
		node = converttoJson(&new_list, "CdashigDomain", "array");
	} else {
		node = json_node_alloc();
		list<CdashigDomain> new_list = static_cast<list <CdashigDomain> > (getDomains());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<CdashigDomain>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			CdashigDomain obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *domainsKey = "domains";
	json_object_set_member(pJsonObject, domainsKey, node);
	if (isprimitive("CdashigScenario")) {
		list<CdashigScenario> new_list = static_cast<list <CdashigScenario> > (getScenarios());
		node = converttoJson(&new_list, "CdashigScenario", "array");
	} else {
		node = json_node_alloc();
		list<CdashigScenario> new_list = static_cast<list <CdashigScenario> > (getScenarios());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<CdashigScenario>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			CdashigScenario obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *scenariosKey = "scenarios";
	json_object_set_member(pJsonObject, scenariosKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
CdashigClass::getOrdinal()
{
	return ordinal;
}

void
CdashigClass::setOrdinal(std::string  ordinal)
{
	this->ordinal = ordinal;
}

std::string
CdashigClass::getName()
{
	return name;
}

void
CdashigClass::setName(std::string  name)
{
	this->name = name;
}

std::string
CdashigClass::getLabel()
{
	return label;
}

void
CdashigClass::setLabel(std::string  label)
{
	this->label = label;
}

std::string
CdashigClass::getDescription()
{
	return description;
}

void
CdashigClass::setDescription(std::string  description)
{
	this->description = description;
}

CdashigClassLinks
CdashigClass::getLinks()
{
	return _links;
}

void
CdashigClass::setLinks(CdashigClassLinks  _links)
{
	this->_links = _links;
}

std::list<CdashigDomain>
CdashigClass::getDomains()
{
	return domains;
}

void
CdashigClass::setDomains(std::list <CdashigDomain> domains)
{
	this->domains = domains;
}

std::list<CdashigScenario>
CdashigClass::getScenarios()
{
	return scenarios;
}

void
CdashigClass::setScenarios(std::list <CdashigScenario> scenarios)
{
	this->scenarios = scenarios;
}



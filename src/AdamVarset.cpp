#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "AdamVarset.h"

using namespace std;
using namespace Tizen::ArtikCloud;

AdamVarset::AdamVarset()
{
	//__init();
}

AdamVarset::~AdamVarset()
{
	//__cleanup();
}

void
AdamVarset::__init()
{
	//ordinal = std::string();
	//name = std::string();
	//label = std::string();
	//description = std::string();
	//_links = new AdamVarsetLinks();
	//new std::list()std::list> analysisVariables;
}

void
AdamVarset::__cleanup()
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
	//if(analysisVariables != NULL) {
	//analysisVariables.RemoveAll(true);
	//delete analysisVariables;
	//analysisVariables = NULL;
	//}
	//
}

void
AdamVarset::fromJson(char* jsonStr)
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
	

		if (isprimitive("AdamVarsetLinks")) {
			jsonToValue(&_links, node, "AdamVarsetLinks", "AdamVarsetLinks");
		} else {
			
			AdamVarsetLinks* obj = static_cast<AdamVarsetLinks*> (&_links);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *analysisVariablesKey = "analysisVariables";
	node = json_object_get_member(pJsonObject, analysisVariablesKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<AdamVariable> new_list;
			AdamVariable inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("AdamVariable")) {
					jsonToValue(&inst, temp_json, "AdamVariable", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			analysisVariables = new_list;
		}
		
	}
}

AdamVarset::AdamVarset(char* json)
{
	this->fromJson(json);
}

char*
AdamVarset::toJson()
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
	if (isprimitive("AdamVarsetLinks")) {
		AdamVarsetLinks obj = getLinks();
		node = converttoJson(&obj, "AdamVarsetLinks", "");
	}
	else {
		
		AdamVarsetLinks obj = static_cast<AdamVarsetLinks> (getLinks());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *_linksKey = "_links";
	json_object_set_member(pJsonObject, _linksKey, node);
	if (isprimitive("AdamVariable")) {
		list<AdamVariable> new_list = static_cast<list <AdamVariable> > (getAnalysisVariables());
		node = converttoJson(&new_list, "AdamVariable", "array");
	} else {
		node = json_node_alloc();
		list<AdamVariable> new_list = static_cast<list <AdamVariable> > (getAnalysisVariables());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<AdamVariable>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			AdamVariable obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *analysisVariablesKey = "analysisVariables";
	json_object_set_member(pJsonObject, analysisVariablesKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
AdamVarset::getOrdinal()
{
	return ordinal;
}

void
AdamVarset::setOrdinal(std::string  ordinal)
{
	this->ordinal = ordinal;
}

std::string
AdamVarset::getName()
{
	return name;
}

void
AdamVarset::setName(std::string  name)
{
	this->name = name;
}

std::string
AdamVarset::getLabel()
{
	return label;
}

void
AdamVarset::setLabel(std::string  label)
{
	this->label = label;
}

std::string
AdamVarset::getDescription()
{
	return description;
}

void
AdamVarset::setDescription(std::string  description)
{
	this->description = description;
}

AdamVarsetLinks
AdamVarset::getLinks()
{
	return _links;
}

void
AdamVarset::setLinks(AdamVarsetLinks  _links)
{
	this->_links = _links;
}

std::list<AdamVariable>
AdamVarset::getAnalysisVariables()
{
	return analysisVariables;
}

void
AdamVarset::setAnalysisVariables(std::list <AdamVariable> analysisVariables)
{
	this->analysisVariables = analysisVariables;
}



#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "AdamDatastructure.h"

using namespace std;
using namespace Tizen::ArtikCloud;

AdamDatastructure::AdamDatastructure()
{
	//__init();
}

AdamDatastructure::~AdamDatastructure()
{
	//__cleanup();
}

void
AdamDatastructure::__init()
{
	//ordinal = std::string();
	//name = std::string();
	//label = std::string();
	//description = std::string();
	//r_class = std::string();
	//_links = new AdamDatastructureLinks();
	//new std::list()std::list> analysisVariableSets;
}

void
AdamDatastructure::__cleanup()
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
	//if(r_class != NULL) {
	//
	//delete r_class;
	//r_class = NULL;
	//}
	//if(_links != NULL) {
	//
	//delete _links;
	//_links = NULL;
	//}
	//if(analysisVariableSets != NULL) {
	//analysisVariableSets.RemoveAll(true);
	//delete analysisVariableSets;
	//analysisVariableSets = NULL;
	//}
	//
}

void
AdamDatastructure::fromJson(char* jsonStr)
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
	const gchar *r_classKey = "class";
	node = json_object_get_member(pJsonObject, r_classKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&r_class, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *_linksKey = "_links";
	node = json_object_get_member(pJsonObject, _linksKey);
	if (node !=NULL) {
	

		if (isprimitive("AdamDatastructureLinks")) {
			jsonToValue(&_links, node, "AdamDatastructureLinks", "AdamDatastructureLinks");
		} else {
			
			AdamDatastructureLinks* obj = static_cast<AdamDatastructureLinks*> (&_links);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *analysisVariableSetsKey = "analysisVariableSets";
	node = json_object_get_member(pJsonObject, analysisVariableSetsKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<AdamVarset> new_list;
			AdamVarset inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("AdamVarset")) {
					jsonToValue(&inst, temp_json, "AdamVarset", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			analysisVariableSets = new_list;
		}
		
	}
}

AdamDatastructure::AdamDatastructure(char* json)
{
	this->fromJson(json);
}

char*
AdamDatastructure::toJson()
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
		std::string obj = getRClass();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *r_classKey = "class";
	json_object_set_member(pJsonObject, r_classKey, node);
	if (isprimitive("AdamDatastructureLinks")) {
		AdamDatastructureLinks obj = getLinks();
		node = converttoJson(&obj, "AdamDatastructureLinks", "");
	}
	else {
		
		AdamDatastructureLinks obj = static_cast<AdamDatastructureLinks> (getLinks());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *_linksKey = "_links";
	json_object_set_member(pJsonObject, _linksKey, node);
	if (isprimitive("AdamVarset")) {
		list<AdamVarset> new_list = static_cast<list <AdamVarset> > (getAnalysisVariableSets());
		node = converttoJson(&new_list, "AdamVarset", "array");
	} else {
		node = json_node_alloc();
		list<AdamVarset> new_list = static_cast<list <AdamVarset> > (getAnalysisVariableSets());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<AdamVarset>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			AdamVarset obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *analysisVariableSetsKey = "analysisVariableSets";
	json_object_set_member(pJsonObject, analysisVariableSetsKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
AdamDatastructure::getOrdinal()
{
	return ordinal;
}

void
AdamDatastructure::setOrdinal(std::string  ordinal)
{
	this->ordinal = ordinal;
}

std::string
AdamDatastructure::getName()
{
	return name;
}

void
AdamDatastructure::setName(std::string  name)
{
	this->name = name;
}

std::string
AdamDatastructure::getLabel()
{
	return label;
}

void
AdamDatastructure::setLabel(std::string  label)
{
	this->label = label;
}

std::string
AdamDatastructure::getDescription()
{
	return description;
}

void
AdamDatastructure::setDescription(std::string  description)
{
	this->description = description;
}

std::string
AdamDatastructure::getRClass()
{
	return r_class;
}

void
AdamDatastructure::setRClass(std::string  r_class)
{
	this->r_class = r_class;
}

AdamDatastructureLinks
AdamDatastructure::getLinks()
{
	return _links;
}

void
AdamDatastructure::setLinks(AdamDatastructureLinks  _links)
{
	this->_links = _links;
}

std::list<AdamVarset>
AdamDatastructure::getAnalysisVariableSets()
{
	return analysisVariableSets;
}

void
AdamDatastructure::setAnalysisVariableSets(std::list <AdamVarset> analysisVariableSets)
{
	this->analysisVariableSets = analysisVariableSets;
}



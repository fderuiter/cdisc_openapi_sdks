#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "SdtmClass.h"

using namespace std;
using namespace Tizen::ArtikCloud;

SdtmClass::SdtmClass()
{
	//__init();
}

SdtmClass::~SdtmClass()
{
	//__cleanup();
}

void
SdtmClass::__init()
{
	//ordinal = std::string();
	//name = std::string();
	//label = std::string();
	//description = std::string();
	//_links = new SdtmClassLinks();
	//new std::list()std::list> classVariables;
	//new std::list()std::list> datasets;
}

void
SdtmClass::__cleanup()
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
	//if(classVariables != NULL) {
	//classVariables.RemoveAll(true);
	//delete classVariables;
	//classVariables = NULL;
	//}
	//if(datasets != NULL) {
	//datasets.RemoveAll(true);
	//delete datasets;
	//datasets = NULL;
	//}
	//
}

void
SdtmClass::fromJson(char* jsonStr)
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
	

		if (isprimitive("SdtmClassLinks")) {
			jsonToValue(&_links, node, "SdtmClassLinks", "SdtmClassLinks");
		} else {
			
			SdtmClassLinks* obj = static_cast<SdtmClassLinks*> (&_links);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *classVariablesKey = "classVariables";
	node = json_object_get_member(pJsonObject, classVariablesKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<SdtmClassVariable> new_list;
			SdtmClassVariable inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("SdtmClassVariable")) {
					jsonToValue(&inst, temp_json, "SdtmClassVariable", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			classVariables = new_list;
		}
		
	}
	const gchar *datasetsKey = "datasets";
	node = json_object_get_member(pJsonObject, datasetsKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<SdtmDataset> new_list;
			SdtmDataset inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("SdtmDataset")) {
					jsonToValue(&inst, temp_json, "SdtmDataset", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			datasets = new_list;
		}
		
	}
}

SdtmClass::SdtmClass(char* json)
{
	this->fromJson(json);
}

char*
SdtmClass::toJson()
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
	if (isprimitive("SdtmClassLinks")) {
		SdtmClassLinks obj = getLinks();
		node = converttoJson(&obj, "SdtmClassLinks", "");
	}
	else {
		
		SdtmClassLinks obj = static_cast<SdtmClassLinks> (getLinks());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *_linksKey = "_links";
	json_object_set_member(pJsonObject, _linksKey, node);
	if (isprimitive("SdtmClassVariable")) {
		list<SdtmClassVariable> new_list = static_cast<list <SdtmClassVariable> > (getClassVariables());
		node = converttoJson(&new_list, "SdtmClassVariable", "array");
	} else {
		node = json_node_alloc();
		list<SdtmClassVariable> new_list = static_cast<list <SdtmClassVariable> > (getClassVariables());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<SdtmClassVariable>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			SdtmClassVariable obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *classVariablesKey = "classVariables";
	json_object_set_member(pJsonObject, classVariablesKey, node);
	if (isprimitive("SdtmDataset")) {
		list<SdtmDataset> new_list = static_cast<list <SdtmDataset> > (getDatasets());
		node = converttoJson(&new_list, "SdtmDataset", "array");
	} else {
		node = json_node_alloc();
		list<SdtmDataset> new_list = static_cast<list <SdtmDataset> > (getDatasets());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<SdtmDataset>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			SdtmDataset obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *datasetsKey = "datasets";
	json_object_set_member(pJsonObject, datasetsKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
SdtmClass::getOrdinal()
{
	return ordinal;
}

void
SdtmClass::setOrdinal(std::string  ordinal)
{
	this->ordinal = ordinal;
}

std::string
SdtmClass::getName()
{
	return name;
}

void
SdtmClass::setName(std::string  name)
{
	this->name = name;
}

std::string
SdtmClass::getLabel()
{
	return label;
}

void
SdtmClass::setLabel(std::string  label)
{
	this->label = label;
}

std::string
SdtmClass::getDescription()
{
	return description;
}

void
SdtmClass::setDescription(std::string  description)
{
	this->description = description;
}

SdtmClassLinks
SdtmClass::getLinks()
{
	return _links;
}

void
SdtmClass::setLinks(SdtmClassLinks  _links)
{
	this->_links = _links;
}

std::list<SdtmClassVariable>
SdtmClass::getClassVariables()
{
	return classVariables;
}

void
SdtmClass::setClassVariables(std::list <SdtmClassVariable> classVariables)
{
	this->classVariables = classVariables;
}

std::list<SdtmDataset>
SdtmClass::getDatasets()
{
	return datasets;
}

void
SdtmClass::setDatasets(std::list <SdtmDataset> datasets)
{
	this->datasets = datasets;
}



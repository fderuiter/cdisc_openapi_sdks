#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "SendigDataset.h"

using namespace std;
using namespace Tizen::ArtikCloud;

SendigDataset::SendigDataset()
{
	//__init();
}

SendigDataset::~SendigDataset()
{
	//__cleanup();
}

void
SendigDataset::__init()
{
	//ordinal = std::string();
	//name = std::string();
	//label = std::string();
	//description = std::string();
	//datasetStructure = std::string();
	//_links = new SendigDatasetLinks();
	//new std::list()std::list> datasetVariables;
}

void
SendigDataset::__cleanup()
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
	//if(datasetVariables != NULL) {
	//datasetVariables.RemoveAll(true);
	//delete datasetVariables;
	//datasetVariables = NULL;
	//}
	//
}

void
SendigDataset::fromJson(char* jsonStr)
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
	

		if (isprimitive("SendigDatasetLinks")) {
			jsonToValue(&_links, node, "SendigDatasetLinks", "SendigDatasetLinks");
		} else {
			
			SendigDatasetLinks* obj = static_cast<SendigDatasetLinks*> (&_links);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *datasetVariablesKey = "datasetVariables";
	node = json_object_get_member(pJsonObject, datasetVariablesKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<SendigDatasetVariable> new_list;
			SendigDatasetVariable inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("SendigDatasetVariable")) {
					jsonToValue(&inst, temp_json, "SendigDatasetVariable", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			datasetVariables = new_list;
		}
		
	}
}

SendigDataset::SendigDataset(char* json)
{
	this->fromJson(json);
}

char*
SendigDataset::toJson()
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
	if (isprimitive("SendigDatasetLinks")) {
		SendigDatasetLinks obj = getLinks();
		node = converttoJson(&obj, "SendigDatasetLinks", "");
	}
	else {
		
		SendigDatasetLinks obj = static_cast<SendigDatasetLinks> (getLinks());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *_linksKey = "_links";
	json_object_set_member(pJsonObject, _linksKey, node);
	if (isprimitive("SendigDatasetVariable")) {
		list<SendigDatasetVariable> new_list = static_cast<list <SendigDatasetVariable> > (getDatasetVariables());
		node = converttoJson(&new_list, "SendigDatasetVariable", "array");
	} else {
		node = json_node_alloc();
		list<SendigDatasetVariable> new_list = static_cast<list <SendigDatasetVariable> > (getDatasetVariables());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<SendigDatasetVariable>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			SendigDatasetVariable obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *datasetVariablesKey = "datasetVariables";
	json_object_set_member(pJsonObject, datasetVariablesKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
SendigDataset::getOrdinal()
{
	return ordinal;
}

void
SendigDataset::setOrdinal(std::string  ordinal)
{
	this->ordinal = ordinal;
}

std::string
SendigDataset::getName()
{
	return name;
}

void
SendigDataset::setName(std::string  name)
{
	this->name = name;
}

std::string
SendigDataset::getLabel()
{
	return label;
}

void
SendigDataset::setLabel(std::string  label)
{
	this->label = label;
}

std::string
SendigDataset::getDescription()
{
	return description;
}

void
SendigDataset::setDescription(std::string  description)
{
	this->description = description;
}

std::string
SendigDataset::getDatasetStructure()
{
	return datasetStructure;
}

void
SendigDataset::setDatasetStructure(std::string  datasetStructure)
{
	this->datasetStructure = datasetStructure;
}

SendigDatasetLinks
SendigDataset::getLinks()
{
	return _links;
}

void
SendigDataset::setLinks(SendigDatasetLinks  _links)
{
	this->_links = _links;
}

std::list<SendigDatasetVariable>
SendigDataset::getDatasetVariables()
{
	return datasetVariables;
}

void
SendigDataset::setDatasetVariables(std::list <SendigDatasetVariable> datasetVariables)
{
	this->datasetVariables = datasetVariables;
}



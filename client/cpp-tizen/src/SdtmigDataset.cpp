#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "SdtmigDataset.h"

using namespace std;
using namespace Tizen::ArtikCloud;

SdtmigDataset::SdtmigDataset()
{
	//__init();
}

SdtmigDataset::~SdtmigDataset()
{
	//__cleanup();
}

void
SdtmigDataset::__init()
{
	//ordinal = std::string();
	//name = std::string();
	//label = std::string();
	//description = std::string();
	//datasetStructure = std::string();
	//_links = new SdtmigDatasetLinks();
	//new std::list()std::list> datasetVariables;
}

void
SdtmigDataset::__cleanup()
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
SdtmigDataset::fromJson(char* jsonStr)
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
	

		if (isprimitive("SdtmigDatasetLinks")) {
			jsonToValue(&_links, node, "SdtmigDatasetLinks", "SdtmigDatasetLinks");
		} else {
			
			SdtmigDatasetLinks* obj = static_cast<SdtmigDatasetLinks*> (&_links);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *datasetVariablesKey = "datasetVariables";
	node = json_object_get_member(pJsonObject, datasetVariablesKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<SdtmigDatasetVariable> new_list;
			SdtmigDatasetVariable inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("SdtmigDatasetVariable")) {
					jsonToValue(&inst, temp_json, "SdtmigDatasetVariable", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			datasetVariables = new_list;
		}
		
	}
}

SdtmigDataset::SdtmigDataset(char* json)
{
	this->fromJson(json);
}

char*
SdtmigDataset::toJson()
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
	if (isprimitive("SdtmigDatasetLinks")) {
		SdtmigDatasetLinks obj = getLinks();
		node = converttoJson(&obj, "SdtmigDatasetLinks", "");
	}
	else {
		
		SdtmigDatasetLinks obj = static_cast<SdtmigDatasetLinks> (getLinks());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *_linksKey = "_links";
	json_object_set_member(pJsonObject, _linksKey, node);
	if (isprimitive("SdtmigDatasetVariable")) {
		list<SdtmigDatasetVariable> new_list = static_cast<list <SdtmigDatasetVariable> > (getDatasetVariables());
		node = converttoJson(&new_list, "SdtmigDatasetVariable", "array");
	} else {
		node = json_node_alloc();
		list<SdtmigDatasetVariable> new_list = static_cast<list <SdtmigDatasetVariable> > (getDatasetVariables());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<SdtmigDatasetVariable>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			SdtmigDatasetVariable obj = *it;
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
SdtmigDataset::getOrdinal()
{
	return ordinal;
}

void
SdtmigDataset::setOrdinal(std::string  ordinal)
{
	this->ordinal = ordinal;
}

std::string
SdtmigDataset::getName()
{
	return name;
}

void
SdtmigDataset::setName(std::string  name)
{
	this->name = name;
}

std::string
SdtmigDataset::getLabel()
{
	return label;
}

void
SdtmigDataset::setLabel(std::string  label)
{
	this->label = label;
}

std::string
SdtmigDataset::getDescription()
{
	return description;
}

void
SdtmigDataset::setDescription(std::string  description)
{
	this->description = description;
}

std::string
SdtmigDataset::getDatasetStructure()
{
	return datasetStructure;
}

void
SdtmigDataset::setDatasetStructure(std::string  datasetStructure)
{
	this->datasetStructure = datasetStructure;
}

SdtmigDatasetLinks
SdtmigDataset::getLinks()
{
	return _links;
}

void
SdtmigDataset::setLinks(SdtmigDatasetLinks  _links)
{
	this->_links = _links;
}

std::list<SdtmigDatasetVariable>
SdtmigDataset::getDatasetVariables()
{
	return datasetVariables;
}

void
SdtmigDataset::setDatasetVariables(std::list <SdtmigDatasetVariable> datasetVariables)
{
	this->datasetVariables = datasetVariables;
}



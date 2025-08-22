#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "SdtmDataset.h"

using namespace std;
using namespace Tizen::ArtikCloud;

SdtmDataset::SdtmDataset()
{
	//__init();
}

SdtmDataset::~SdtmDataset()
{
	//__cleanup();
}

void
SdtmDataset::__init()
{
	//ordinal = std::string();
	//name = std::string();
	//label = std::string();
	//description = std::string();
	//datasetStructure = std::string();
	//_links = new SdtmDatasetLinks();
	//new std::list()std::list> datasetVariables;
}

void
SdtmDataset::__cleanup()
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
SdtmDataset::fromJson(char* jsonStr)
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
	

		if (isprimitive("SdtmDatasetLinks")) {
			jsonToValue(&_links, node, "SdtmDatasetLinks", "SdtmDatasetLinks");
		} else {
			
			SdtmDatasetLinks* obj = static_cast<SdtmDatasetLinks*> (&_links);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *datasetVariablesKey = "datasetVariables";
	node = json_object_get_member(pJsonObject, datasetVariablesKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<SdtmDatasetVariable> new_list;
			SdtmDatasetVariable inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("SdtmDatasetVariable")) {
					jsonToValue(&inst, temp_json, "SdtmDatasetVariable", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			datasetVariables = new_list;
		}
		
	}
}

SdtmDataset::SdtmDataset(char* json)
{
	this->fromJson(json);
}

char*
SdtmDataset::toJson()
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
	if (isprimitive("SdtmDatasetLinks")) {
		SdtmDatasetLinks obj = getLinks();
		node = converttoJson(&obj, "SdtmDatasetLinks", "");
	}
	else {
		
		SdtmDatasetLinks obj = static_cast<SdtmDatasetLinks> (getLinks());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *_linksKey = "_links";
	json_object_set_member(pJsonObject, _linksKey, node);
	if (isprimitive("SdtmDatasetVariable")) {
		list<SdtmDatasetVariable> new_list = static_cast<list <SdtmDatasetVariable> > (getDatasetVariables());
		node = converttoJson(&new_list, "SdtmDatasetVariable", "array");
	} else {
		node = json_node_alloc();
		list<SdtmDatasetVariable> new_list = static_cast<list <SdtmDatasetVariable> > (getDatasetVariables());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<SdtmDatasetVariable>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			SdtmDatasetVariable obj = *it;
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
SdtmDataset::getOrdinal()
{
	return ordinal;
}

void
SdtmDataset::setOrdinal(std::string  ordinal)
{
	this->ordinal = ordinal;
}

std::string
SdtmDataset::getName()
{
	return name;
}

void
SdtmDataset::setName(std::string  name)
{
	this->name = name;
}

std::string
SdtmDataset::getLabel()
{
	return label;
}

void
SdtmDataset::setLabel(std::string  label)
{
	this->label = label;
}

std::string
SdtmDataset::getDescription()
{
	return description;
}

void
SdtmDataset::setDescription(std::string  description)
{
	this->description = description;
}

std::string
SdtmDataset::getDatasetStructure()
{
	return datasetStructure;
}

void
SdtmDataset::setDatasetStructure(std::string  datasetStructure)
{
	this->datasetStructure = datasetStructure;
}

SdtmDatasetLinks
SdtmDataset::getLinks()
{
	return _links;
}

void
SdtmDataset::setLinks(SdtmDatasetLinks  _links)
{
	this->_links = _links;
}

std::list<SdtmDatasetVariable>
SdtmDataset::getDatasetVariables()
{
	return datasetVariables;
}

void
SdtmDataset::setDatasetVariables(std::list <SdtmDatasetVariable> datasetVariables)
{
	this->datasetVariables = datasetVariables;
}



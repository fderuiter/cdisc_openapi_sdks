#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "SendigClass.h"

using namespace std;
using namespace Tizen::ArtikCloud;

SendigClass::SendigClass()
{
	//__init();
}

SendigClass::~SendigClass()
{
	//__cleanup();
}

void
SendigClass::__init()
{
	//ordinal = std::string();
	//name = std::string();
	//label = std::string();
	//description = std::string();
	//_links = new SendigClassLinks();
	//new std::list()std::list> datasets;
}

void
SendigClass::__cleanup()
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
	//if(datasets != NULL) {
	//datasets.RemoveAll(true);
	//delete datasets;
	//datasets = NULL;
	//}
	//
}

void
SendigClass::fromJson(char* jsonStr)
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
	

		if (isprimitive("SendigClassLinks")) {
			jsonToValue(&_links, node, "SendigClassLinks", "SendigClassLinks");
		} else {
			
			SendigClassLinks* obj = static_cast<SendigClassLinks*> (&_links);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *datasetsKey = "datasets";
	node = json_object_get_member(pJsonObject, datasetsKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<SendigDataset> new_list;
			SendigDataset inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("SendigDataset")) {
					jsonToValue(&inst, temp_json, "SendigDataset", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			datasets = new_list;
		}
		
	}
}

SendigClass::SendigClass(char* json)
{
	this->fromJson(json);
}

char*
SendigClass::toJson()
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
	if (isprimitive("SendigClassLinks")) {
		SendigClassLinks obj = getLinks();
		node = converttoJson(&obj, "SendigClassLinks", "");
	}
	else {
		
		SendigClassLinks obj = static_cast<SendigClassLinks> (getLinks());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *_linksKey = "_links";
	json_object_set_member(pJsonObject, _linksKey, node);
	if (isprimitive("SendigDataset")) {
		list<SendigDataset> new_list = static_cast<list <SendigDataset> > (getDatasets());
		node = converttoJson(&new_list, "SendigDataset", "array");
	} else {
		node = json_node_alloc();
		list<SendigDataset> new_list = static_cast<list <SendigDataset> > (getDatasets());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<SendigDataset>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			SendigDataset obj = *it;
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
SendigClass::getOrdinal()
{
	return ordinal;
}

void
SendigClass::setOrdinal(std::string  ordinal)
{
	this->ordinal = ordinal;
}

std::string
SendigClass::getName()
{
	return name;
}

void
SendigClass::setName(std::string  name)
{
	this->name = name;
}

std::string
SendigClass::getLabel()
{
	return label;
}

void
SendigClass::setLabel(std::string  label)
{
	this->label = label;
}

std::string
SendigClass::getDescription()
{
	return description;
}

void
SendigClass::setDescription(std::string  description)
{
	this->description = description;
}

SendigClassLinks
SendigClass::getLinks()
{
	return _links;
}

void
SendigClass::setLinks(SendigClassLinks  _links)
{
	this->_links = _links;
}

std::list<SendigDataset>
SendigClass::getDatasets()
{
	return datasets;
}

void
SendigClass::setDatasets(std::list <SendigDataset> datasets)
{
	this->datasets = datasets;
}



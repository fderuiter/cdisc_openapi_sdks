#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "AdamVariable.h"

using namespace std;
using namespace Tizen::ArtikCloud;

AdamVariable::AdamVariable()
{
	//__init();
}

AdamVariable::~AdamVariable()
{
	//__cleanup();
}

void
AdamVariable::__init()
{
	//ordinal = std::string();
	//name = std::string();
	//label = std::string();
	//description = std::string();
	//core = std::string();
	//simpleDatatype = std::string();
	//describedValueDomain = std::string();
	//new std::list()std::list> valueList;
	//_links = new AdamVariableLinks();
}

void
AdamVariable::__cleanup()
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
	//if(core != NULL) {
	//
	//delete core;
	//core = NULL;
	//}
	//if(simpleDatatype != NULL) {
	//
	//delete simpleDatatype;
	//simpleDatatype = NULL;
	//}
	//if(describedValueDomain != NULL) {
	//
	//delete describedValueDomain;
	//describedValueDomain = NULL;
	//}
	//if(valueList != NULL) {
	//valueList.RemoveAll(true);
	//delete valueList;
	//valueList = NULL;
	//}
	//if(_links != NULL) {
	//
	//delete _links;
	//_links = NULL;
	//}
	//
}

void
AdamVariable::fromJson(char* jsonStr)
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
	const gchar *coreKey = "core";
	node = json_object_get_member(pJsonObject, coreKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&core, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *simpleDatatypeKey = "simpleDatatype";
	node = json_object_get_member(pJsonObject, simpleDatatypeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&simpleDatatype, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *describedValueDomainKey = "describedValueDomain";
	node = json_object_get_member(pJsonObject, describedValueDomainKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&describedValueDomain, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *valueListKey = "valueList";
	node = json_object_get_member(pJsonObject, valueListKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<std::string> new_list;
			std::string inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("std::string")) {
					jsonToValue(&inst, temp_json, "std::string", "");
				} else {
					
				}
				new_list.push_back(inst);
			}
			valueList = new_list;
		}
		
	}
	const gchar *_linksKey = "_links";
	node = json_object_get_member(pJsonObject, _linksKey);
	if (node !=NULL) {
	

		if (isprimitive("AdamVariableLinks")) {
			jsonToValue(&_links, node, "AdamVariableLinks", "AdamVariableLinks");
		} else {
			
			AdamVariableLinks* obj = static_cast<AdamVariableLinks*> (&_links);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

AdamVariable::AdamVariable(char* json)
{
	this->fromJson(json);
}

char*
AdamVariable::toJson()
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
		std::string obj = getCore();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *coreKey = "core";
	json_object_set_member(pJsonObject, coreKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getSimpleDatatype();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *simpleDatatypeKey = "simpleDatatype";
	json_object_set_member(pJsonObject, simpleDatatypeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getDescribedValueDomain();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *describedValueDomainKey = "describedValueDomain";
	json_object_set_member(pJsonObject, describedValueDomainKey, node);
	if (isprimitive("std::string")) {
		list<std::string> new_list = static_cast<list <std::string> > (getValueList());
		node = converttoJson(&new_list, "std::string", "array");
	} else {
		node = json_node_alloc();
		list<std::string> new_list = static_cast<list <std::string> > (getValueList());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
	}


	
	const gchar *valueListKey = "valueList";
	json_object_set_member(pJsonObject, valueListKey, node);
	if (isprimitive("AdamVariableLinks")) {
		AdamVariableLinks obj = getLinks();
		node = converttoJson(&obj, "AdamVariableLinks", "");
	}
	else {
		
		AdamVariableLinks obj = static_cast<AdamVariableLinks> (getLinks());
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
AdamVariable::getOrdinal()
{
	return ordinal;
}

void
AdamVariable::setOrdinal(std::string  ordinal)
{
	this->ordinal = ordinal;
}

std::string
AdamVariable::getName()
{
	return name;
}

void
AdamVariable::setName(std::string  name)
{
	this->name = name;
}

std::string
AdamVariable::getLabel()
{
	return label;
}

void
AdamVariable::setLabel(std::string  label)
{
	this->label = label;
}

std::string
AdamVariable::getDescription()
{
	return description;
}

void
AdamVariable::setDescription(std::string  description)
{
	this->description = description;
}

std::string
AdamVariable::getCore()
{
	return core;
}

void
AdamVariable::setCore(std::string  core)
{
	this->core = core;
}

std::string
AdamVariable::getSimpleDatatype()
{
	return simpleDatatype;
}

void
AdamVariable::setSimpleDatatype(std::string  simpleDatatype)
{
	this->simpleDatatype = simpleDatatype;
}

std::string
AdamVariable::getDescribedValueDomain()
{
	return describedValueDomain;
}

void
AdamVariable::setDescribedValueDomain(std::string  describedValueDomain)
{
	this->describedValueDomain = describedValueDomain;
}

std::list<std::string>
AdamVariable::getValueList()
{
	return valueList;
}

void
AdamVariable::setValueList(std::list <std::string> valueList)
{
	this->valueList = valueList;
}

AdamVariableLinks
AdamVariable::getLinks()
{
	return _links;
}

void
AdamVariable::setLinks(AdamVariableLinks  _links)
{
	this->_links = _links;
}



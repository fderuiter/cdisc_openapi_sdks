#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "CdashClass.h"

using namespace std;
using namespace Tizen::ArtikCloud;

CdashClass::CdashClass()
{
	//__init();
}

CdashClass::~CdashClass()
{
	//__cleanup();
}

void
CdashClass::__init()
{
	//ordinal = std::string();
	//name = std::string();
	//label = std::string();
	//description = std::string();
	//_links = new CdashClassLinks();
	//new std::list()std::list> cdashModelFields;
}

void
CdashClass::__cleanup()
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
	//if(cdashModelFields != NULL) {
	//cdashModelFields.RemoveAll(true);
	//delete cdashModelFields;
	//cdashModelFields = NULL;
	//}
	//
}

void
CdashClass::fromJson(char* jsonStr)
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
	

		if (isprimitive("CdashClassLinks")) {
			jsonToValue(&_links, node, "CdashClassLinks", "CdashClassLinks");
		} else {
			
			CdashClassLinks* obj = static_cast<CdashClassLinks*> (&_links);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *cdashModelFieldsKey = "cdashModelFields";
	node = json_object_get_member(pJsonObject, cdashModelFieldsKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<CdashClassField> new_list;
			CdashClassField inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("CdashClassField")) {
					jsonToValue(&inst, temp_json, "CdashClassField", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			cdashModelFields = new_list;
		}
		
	}
}

CdashClass::CdashClass(char* json)
{
	this->fromJson(json);
}

char*
CdashClass::toJson()
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
	if (isprimitive("CdashClassLinks")) {
		CdashClassLinks obj = getLinks();
		node = converttoJson(&obj, "CdashClassLinks", "");
	}
	else {
		
		CdashClassLinks obj = static_cast<CdashClassLinks> (getLinks());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *_linksKey = "_links";
	json_object_set_member(pJsonObject, _linksKey, node);
	if (isprimitive("CdashClassField")) {
		list<CdashClassField> new_list = static_cast<list <CdashClassField> > (getCdashModelFields());
		node = converttoJson(&new_list, "CdashClassField", "array");
	} else {
		node = json_node_alloc();
		list<CdashClassField> new_list = static_cast<list <CdashClassField> > (getCdashModelFields());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<CdashClassField>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			CdashClassField obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *cdashModelFieldsKey = "cdashModelFields";
	json_object_set_member(pJsonObject, cdashModelFieldsKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
CdashClass::getOrdinal()
{
	return ordinal;
}

void
CdashClass::setOrdinal(std::string  ordinal)
{
	this->ordinal = ordinal;
}

std::string
CdashClass::getName()
{
	return name;
}

void
CdashClass::setName(std::string  name)
{
	this->name = name;
}

std::string
CdashClass::getLabel()
{
	return label;
}

void
CdashClass::setLabel(std::string  label)
{
	this->label = label;
}

std::string
CdashClass::getDescription()
{
	return description;
}

void
CdashClass::setDescription(std::string  description)
{
	this->description = description;
}

CdashClassLinks
CdashClass::getLinks()
{
	return _links;
}

void
CdashClass::setLinks(CdashClassLinks  _links)
{
	this->_links = _links;
}

std::list<CdashClassField>
CdashClass::getCdashModelFields()
{
	return cdashModelFields;
}

void
CdashClass::setCdashModelFields(std::list <CdashClassField> cdashModelFields)
{
	this->cdashModelFields = cdashModelFields;
}



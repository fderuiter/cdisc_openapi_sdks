#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "CdashDomain.h"

using namespace std;
using namespace Tizen::ArtikCloud;

CdashDomain::CdashDomain()
{
	//__init();
}

CdashDomain::~CdashDomain()
{
	//__cleanup();
}

void
CdashDomain::__init()
{
	//ordinal = std::string();
	//name = std::string();
	//label = std::string();
	//_links = new CdashDomainLinks();
	//new std::list()std::list> fields;
}

void
CdashDomain::__cleanup()
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
	//if(_links != NULL) {
	//
	//delete _links;
	//_links = NULL;
	//}
	//if(fields != NULL) {
	//fields.RemoveAll(true);
	//delete fields;
	//fields = NULL;
	//}
	//
}

void
CdashDomain::fromJson(char* jsonStr)
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
	const gchar *_linksKey = "_links";
	node = json_object_get_member(pJsonObject, _linksKey);
	if (node !=NULL) {
	

		if (isprimitive("CdashDomainLinks")) {
			jsonToValue(&_links, node, "CdashDomainLinks", "CdashDomainLinks");
		} else {
			
			CdashDomainLinks* obj = static_cast<CdashDomainLinks*> (&_links);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *fieldsKey = "fields";
	node = json_object_get_member(pJsonObject, fieldsKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<CdashDomainField> new_list;
			CdashDomainField inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("CdashDomainField")) {
					jsonToValue(&inst, temp_json, "CdashDomainField", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			fields = new_list;
		}
		
	}
}

CdashDomain::CdashDomain(char* json)
{
	this->fromJson(json);
}

char*
CdashDomain::toJson()
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
	if (isprimitive("CdashDomainLinks")) {
		CdashDomainLinks obj = getLinks();
		node = converttoJson(&obj, "CdashDomainLinks", "");
	}
	else {
		
		CdashDomainLinks obj = static_cast<CdashDomainLinks> (getLinks());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *_linksKey = "_links";
	json_object_set_member(pJsonObject, _linksKey, node);
	if (isprimitive("CdashDomainField")) {
		list<CdashDomainField> new_list = static_cast<list <CdashDomainField> > (getFields());
		node = converttoJson(&new_list, "CdashDomainField", "array");
	} else {
		node = json_node_alloc();
		list<CdashDomainField> new_list = static_cast<list <CdashDomainField> > (getFields());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<CdashDomainField>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			CdashDomainField obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *fieldsKey = "fields";
	json_object_set_member(pJsonObject, fieldsKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
CdashDomain::getOrdinal()
{
	return ordinal;
}

void
CdashDomain::setOrdinal(std::string  ordinal)
{
	this->ordinal = ordinal;
}

std::string
CdashDomain::getName()
{
	return name;
}

void
CdashDomain::setName(std::string  name)
{
	this->name = name;
}

std::string
CdashDomain::getLabel()
{
	return label;
}

void
CdashDomain::setLabel(std::string  label)
{
	this->label = label;
}

CdashDomainLinks
CdashDomain::getLinks()
{
	return _links;
}

void
CdashDomain::setLinks(CdashDomainLinks  _links)
{
	this->_links = _links;
}

std::list<CdashDomainField>
CdashDomain::getFields()
{
	return fields;
}

void
CdashDomain::setFields(std::list <CdashDomainField> fields)
{
	this->fields = fields;
}



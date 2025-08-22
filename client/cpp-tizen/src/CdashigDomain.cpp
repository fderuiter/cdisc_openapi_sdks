#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "CdashigDomain.h"

using namespace std;
using namespace Tizen::ArtikCloud;

CdashigDomain::CdashigDomain()
{
	//__init();
}

CdashigDomain::~CdashigDomain()
{
	//__cleanup();
}

void
CdashigDomain::__init()
{
	//ordinal = std::string();
	//name = std::string();
	//label = std::string();
	//_links = new CdashigDomainLinks();
	//new std::list()std::list> fields;
}

void
CdashigDomain::__cleanup()
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
CdashigDomain::fromJson(char* jsonStr)
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
	

		if (isprimitive("CdashigDomainLinks")) {
			jsonToValue(&_links, node, "CdashigDomainLinks", "CdashigDomainLinks");
		} else {
			
			CdashigDomainLinks* obj = static_cast<CdashigDomainLinks*> (&_links);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *fieldsKey = "fields";
	node = json_object_get_member(pJsonObject, fieldsKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<CdashigDomainField> new_list;
			CdashigDomainField inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("CdashigDomainField")) {
					jsonToValue(&inst, temp_json, "CdashigDomainField", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			fields = new_list;
		}
		
	}
}

CdashigDomain::CdashigDomain(char* json)
{
	this->fromJson(json);
}

char*
CdashigDomain::toJson()
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
	if (isprimitive("CdashigDomainLinks")) {
		CdashigDomainLinks obj = getLinks();
		node = converttoJson(&obj, "CdashigDomainLinks", "");
	}
	else {
		
		CdashigDomainLinks obj = static_cast<CdashigDomainLinks> (getLinks());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *_linksKey = "_links";
	json_object_set_member(pJsonObject, _linksKey, node);
	if (isprimitive("CdashigDomainField")) {
		list<CdashigDomainField> new_list = static_cast<list <CdashigDomainField> > (getFields());
		node = converttoJson(&new_list, "CdashigDomainField", "array");
	} else {
		node = json_node_alloc();
		list<CdashigDomainField> new_list = static_cast<list <CdashigDomainField> > (getFields());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<CdashigDomainField>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			CdashigDomainField obj = *it;
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
CdashigDomain::getOrdinal()
{
	return ordinal;
}

void
CdashigDomain::setOrdinal(std::string  ordinal)
{
	this->ordinal = ordinal;
}

std::string
CdashigDomain::getName()
{
	return name;
}

void
CdashigDomain::setName(std::string  name)
{
	this->name = name;
}

std::string
CdashigDomain::getLabel()
{
	return label;
}

void
CdashigDomain::setLabel(std::string  label)
{
	this->label = label;
}

CdashigDomainLinks
CdashigDomain::getLinks()
{
	return _links;
}

void
CdashigDomain::setLinks(CdashigDomainLinks  _links)
{
	this->_links = _links;
}

std::list<CdashigDomainField>
CdashigDomain::getFields()
{
	return fields;
}

void
CdashigDomain::setFields(std::list <CdashigDomainField> fields)
{
	this->fields = fields;
}



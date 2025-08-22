#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "SdtmClassVariable.h"

using namespace std;
using namespace Tizen::ArtikCloud;

SdtmClassVariable::SdtmClassVariable()
{
	//__init();
}

SdtmClassVariable::~SdtmClassVariable()
{
	//__cleanup();
}

void
SdtmClassVariable::__init()
{
	//ordinal = std::string();
	//name = std::string();
	//label = std::string();
	//description = std::string();
	//role = std::string();
	//roleDescription = std::string();
	//simpleDatatype = std::string();
	//describedValueDomain = std::string();
	//_links = new SdtmClassVariableLinks();
}

void
SdtmClassVariable::__cleanup()
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
	//if(role != NULL) {
	//
	//delete role;
	//role = NULL;
	//}
	//if(roleDescription != NULL) {
	//
	//delete roleDescription;
	//roleDescription = NULL;
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
	//if(_links != NULL) {
	//
	//delete _links;
	//_links = NULL;
	//}
	//
}

void
SdtmClassVariable::fromJson(char* jsonStr)
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
	const gchar *roleKey = "role";
	node = json_object_get_member(pJsonObject, roleKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&role, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *roleDescriptionKey = "roleDescription";
	node = json_object_get_member(pJsonObject, roleDescriptionKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&roleDescription, node, "std::string", "");
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
	const gchar *_linksKey = "_links";
	node = json_object_get_member(pJsonObject, _linksKey);
	if (node !=NULL) {
	

		if (isprimitive("SdtmClassVariableLinks")) {
			jsonToValue(&_links, node, "SdtmClassVariableLinks", "SdtmClassVariableLinks");
		} else {
			
			SdtmClassVariableLinks* obj = static_cast<SdtmClassVariableLinks*> (&_links);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

SdtmClassVariable::SdtmClassVariable(char* json)
{
	this->fromJson(json);
}

char*
SdtmClassVariable::toJson()
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
		std::string obj = getRole();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *roleKey = "role";
	json_object_set_member(pJsonObject, roleKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getRoleDescription();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *roleDescriptionKey = "roleDescription";
	json_object_set_member(pJsonObject, roleDescriptionKey, node);
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
	if (isprimitive("SdtmClassVariableLinks")) {
		SdtmClassVariableLinks obj = getLinks();
		node = converttoJson(&obj, "SdtmClassVariableLinks", "");
	}
	else {
		
		SdtmClassVariableLinks obj = static_cast<SdtmClassVariableLinks> (getLinks());
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
SdtmClassVariable::getOrdinal()
{
	return ordinal;
}

void
SdtmClassVariable::setOrdinal(std::string  ordinal)
{
	this->ordinal = ordinal;
}

std::string
SdtmClassVariable::getName()
{
	return name;
}

void
SdtmClassVariable::setName(std::string  name)
{
	this->name = name;
}

std::string
SdtmClassVariable::getLabel()
{
	return label;
}

void
SdtmClassVariable::setLabel(std::string  label)
{
	this->label = label;
}

std::string
SdtmClassVariable::getDescription()
{
	return description;
}

void
SdtmClassVariable::setDescription(std::string  description)
{
	this->description = description;
}

std::string
SdtmClassVariable::getRole()
{
	return role;
}

void
SdtmClassVariable::setRole(std::string  role)
{
	this->role = role;
}

std::string
SdtmClassVariable::getRoleDescription()
{
	return roleDescription;
}

void
SdtmClassVariable::setRoleDescription(std::string  roleDescription)
{
	this->roleDescription = roleDescription;
}

std::string
SdtmClassVariable::getSimpleDatatype()
{
	return simpleDatatype;
}

void
SdtmClassVariable::setSimpleDatatype(std::string  simpleDatatype)
{
	this->simpleDatatype = simpleDatatype;
}

std::string
SdtmClassVariable::getDescribedValueDomain()
{
	return describedValueDomain;
}

void
SdtmClassVariable::setDescribedValueDomain(std::string  describedValueDomain)
{
	this->describedValueDomain = describedValueDomain;
}

SdtmClassVariableLinks
SdtmClassVariable::getLinks()
{
	return _links;
}

void
SdtmClassVariable::setLinks(SdtmClassVariableLinks  _links)
{
	this->_links = _links;
}



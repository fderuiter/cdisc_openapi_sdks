#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ExportQrsGeneral.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ExportQrsGeneral::ExportQrsGeneral()
{
	//__init();
}

ExportQrsGeneral::~ExportQrsGeneral()
{
	//__cleanup();
}

void
ExportQrsGeneral::__init()
{
	//name = std::string();
	//label = std::string();
	//effectiveDate = std::string();
	//description = std::string();
	//type = std::string();
	//categorysCodelistCCode = std::string();
	//categorysTermCCode = std::string();
}

void
ExportQrsGeneral::__cleanup()
{
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
	//if(effectiveDate != NULL) {
	//
	//delete effectiveDate;
	//effectiveDate = NULL;
	//}
	//if(description != NULL) {
	//
	//delete description;
	//description = NULL;
	//}
	//if(type != NULL) {
	//
	//delete type;
	//type = NULL;
	//}
	//if(categorysCodelistCCode != NULL) {
	//
	//delete categorysCodelistCCode;
	//categorysCodelistCCode = NULL;
	//}
	//if(categorysTermCCode != NULL) {
	//
	//delete categorysTermCCode;
	//categorysTermCCode = NULL;
	//}
	//
}

void
ExportQrsGeneral::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *nameKey = "Name";
	node = json_object_get_member(pJsonObject, nameKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&name, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *labelKey = "Label";
	node = json_object_get_member(pJsonObject, labelKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&label, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *effectiveDateKey = "Effective Date";
	node = json_object_get_member(pJsonObject, effectiveDateKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&effectiveDate, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *descriptionKey = "Description";
	node = json_object_get_member(pJsonObject, descriptionKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&description, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *typeKey = "Type";
	node = json_object_get_member(pJsonObject, typeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&type, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *categorysCodelistCCodeKey = "Category&#39;s Codelist C-Code";
	node = json_object_get_member(pJsonObject, categorysCodelistCCodeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&categorysCodelistCCode, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *categorysTermCCodeKey = "Category&#39;s Term C-Code";
	node = json_object_get_member(pJsonObject, categorysTermCCodeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&categorysTermCCode, node, "std::string", "");
		} else {
			
		}
	}
}

ExportQrsGeneral::ExportQrsGeneral(char* json)
{
	this->fromJson(json);
}

char*
ExportQrsGeneral::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getName();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *nameKey = "Name";
	json_object_set_member(pJsonObject, nameKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getLabel();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *labelKey = "Label";
	json_object_set_member(pJsonObject, labelKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getEffectiveDate();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *effectiveDateKey = "Effective Date";
	json_object_set_member(pJsonObject, effectiveDateKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getDescription();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *descriptionKey = "Description";
	json_object_set_member(pJsonObject, descriptionKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getType();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *typeKey = "Type";
	json_object_set_member(pJsonObject, typeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getCategorysCodelistCCode();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *categorysCodelistCCodeKey = "Category&#39;s Codelist C-Code";
	json_object_set_member(pJsonObject, categorysCodelistCCodeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getCategorysTermCCode();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *categorysTermCCodeKey = "Category&#39;s Term C-Code";
	json_object_set_member(pJsonObject, categorysTermCCodeKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
ExportQrsGeneral::getName()
{
	return name;
}

void
ExportQrsGeneral::setName(std::string  name)
{
	this->name = name;
}

std::string
ExportQrsGeneral::getLabel()
{
	return label;
}

void
ExportQrsGeneral::setLabel(std::string  label)
{
	this->label = label;
}

std::string
ExportQrsGeneral::getEffectiveDate()
{
	return effectiveDate;
}

void
ExportQrsGeneral::setEffectiveDate(std::string  effectiveDate)
{
	this->effectiveDate = effectiveDate;
}

std::string
ExportQrsGeneral::getDescription()
{
	return description;
}

void
ExportQrsGeneral::setDescription(std::string  description)
{
	this->description = description;
}

std::string
ExportQrsGeneral::getType()
{
	return type;
}

void
ExportQrsGeneral::setType(std::string  type)
{
	this->type = type;
}

std::string
ExportQrsGeneral::getCategorysCodelistCCode()
{
	return categorysCodelistCCode;
}

void
ExportQrsGeneral::setCategorysCodelistCCode(std::string  categorysCodelistCCode)
{
	this->categorysCodelistCCode = categorysCodelistCCode;
}

std::string
ExportQrsGeneral::getCategorysTermCCode()
{
	return categorysTermCCode;
}

void
ExportQrsGeneral::setCategorysTermCCode(std::string  categorysTermCCode)
{
	this->categorysTermCCode = categorysTermCCode;
}



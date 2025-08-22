#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ExportSdtmClassVariablesRow.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ExportSdtmClassVariablesRow::ExportSdtmClassVariablesRow()
{
	//__init();
}

ExportSdtmClassVariablesRow::~ExportSdtmClassVariablesRow()
{
	//__cleanup();
}

void
ExportSdtmClassVariablesRow::__init()
{
	//version = std::string();
	//variableOrder = std::string();
	//r_class = std::string();
	//datasetName = std::string();
	//variableName = std::string();
	//variableLabel = std::string();
	//type = std::string();
	//controlledTermsCodelistorFormat = std::string();
	//role = std::string();
	//roleDescription = std::string();
	//description = std::string();
}

void
ExportSdtmClassVariablesRow::__cleanup()
{
	//if(version != NULL) {
	//
	//delete version;
	//version = NULL;
	//}
	//if(variableOrder != NULL) {
	//
	//delete variableOrder;
	//variableOrder = NULL;
	//}
	//if(r_class != NULL) {
	//
	//delete r_class;
	//r_class = NULL;
	//}
	//if(datasetName != NULL) {
	//
	//delete datasetName;
	//datasetName = NULL;
	//}
	//if(variableName != NULL) {
	//
	//delete variableName;
	//variableName = NULL;
	//}
	//if(variableLabel != NULL) {
	//
	//delete variableLabel;
	//variableLabel = NULL;
	//}
	//if(type != NULL) {
	//
	//delete type;
	//type = NULL;
	//}
	//if(controlledTermsCodelistorFormat != NULL) {
	//
	//delete controlledTermsCodelistorFormat;
	//controlledTermsCodelistorFormat = NULL;
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
	//if(description != NULL) {
	//
	//delete description;
	//description = NULL;
	//}
	//
}

void
ExportSdtmClassVariablesRow::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *versionKey = "Version";
	node = json_object_get_member(pJsonObject, versionKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&version, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *variableOrderKey = "Variable Order";
	node = json_object_get_member(pJsonObject, variableOrderKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&variableOrder, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *r_classKey = "Class";
	node = json_object_get_member(pJsonObject, r_classKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&r_class, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *datasetNameKey = "Dataset Name";
	node = json_object_get_member(pJsonObject, datasetNameKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&datasetName, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *variableNameKey = "Variable Name";
	node = json_object_get_member(pJsonObject, variableNameKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&variableName, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *variableLabelKey = "Variable Label";
	node = json_object_get_member(pJsonObject, variableLabelKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&variableLabel, node, "std::string", "");
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
	const gchar *controlledTermsCodelistorFormatKey = "Controlled Terms, Codelist or Format";
	node = json_object_get_member(pJsonObject, controlledTermsCodelistorFormatKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&controlledTermsCodelistorFormat, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *roleKey = "Role";
	node = json_object_get_member(pJsonObject, roleKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&role, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *roleDescriptionKey = "Role Description";
	node = json_object_get_member(pJsonObject, roleDescriptionKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&roleDescription, node, "std::string", "");
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
}

ExportSdtmClassVariablesRow::ExportSdtmClassVariablesRow(char* json)
{
	this->fromJson(json);
}

char*
ExportSdtmClassVariablesRow::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getVersion();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *versionKey = "Version";
	json_object_set_member(pJsonObject, versionKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getVariableOrder();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *variableOrderKey = "Variable Order";
	json_object_set_member(pJsonObject, variableOrderKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getRClass();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *r_classKey = "Class";
	json_object_set_member(pJsonObject, r_classKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getDatasetName();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *datasetNameKey = "Dataset Name";
	json_object_set_member(pJsonObject, datasetNameKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getVariableName();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *variableNameKey = "Variable Name";
	json_object_set_member(pJsonObject, variableNameKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getVariableLabel();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *variableLabelKey = "Variable Label";
	json_object_set_member(pJsonObject, variableLabelKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getType();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *typeKey = "Type";
	json_object_set_member(pJsonObject, typeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getControlledTermsCodelistorFormat();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *controlledTermsCodelistorFormatKey = "Controlled Terms, Codelist or Format";
	json_object_set_member(pJsonObject, controlledTermsCodelistorFormatKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getRole();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *roleKey = "Role";
	json_object_set_member(pJsonObject, roleKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getRoleDescription();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *roleDescriptionKey = "Role Description";
	json_object_set_member(pJsonObject, roleDescriptionKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getDescription();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *descriptionKey = "Description";
	json_object_set_member(pJsonObject, descriptionKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
ExportSdtmClassVariablesRow::getVersion()
{
	return version;
}

void
ExportSdtmClassVariablesRow::setVersion(std::string  version)
{
	this->version = version;
}

std::string
ExportSdtmClassVariablesRow::getVariableOrder()
{
	return variableOrder;
}

void
ExportSdtmClassVariablesRow::setVariableOrder(std::string  variableOrder)
{
	this->variableOrder = variableOrder;
}

std::string
ExportSdtmClassVariablesRow::getRClass()
{
	return r_class;
}

void
ExportSdtmClassVariablesRow::setRClass(std::string  r_class)
{
	this->r_class = r_class;
}

std::string
ExportSdtmClassVariablesRow::getDatasetName()
{
	return datasetName;
}

void
ExportSdtmClassVariablesRow::setDatasetName(std::string  datasetName)
{
	this->datasetName = datasetName;
}

std::string
ExportSdtmClassVariablesRow::getVariableName()
{
	return variableName;
}

void
ExportSdtmClassVariablesRow::setVariableName(std::string  variableName)
{
	this->variableName = variableName;
}

std::string
ExportSdtmClassVariablesRow::getVariableLabel()
{
	return variableLabel;
}

void
ExportSdtmClassVariablesRow::setVariableLabel(std::string  variableLabel)
{
	this->variableLabel = variableLabel;
}

std::string
ExportSdtmClassVariablesRow::getType()
{
	return type;
}

void
ExportSdtmClassVariablesRow::setType(std::string  type)
{
	this->type = type;
}

std::string
ExportSdtmClassVariablesRow::getControlledTermsCodelistorFormat()
{
	return controlledTermsCodelistorFormat;
}

void
ExportSdtmClassVariablesRow::setControlledTermsCodelistorFormat(std::string  controlledTermsCodelistorFormat)
{
	this->controlledTermsCodelistorFormat = controlledTermsCodelistorFormat;
}

std::string
ExportSdtmClassVariablesRow::getRole()
{
	return role;
}

void
ExportSdtmClassVariablesRow::setRole(std::string  role)
{
	this->role = role;
}

std::string
ExportSdtmClassVariablesRow::getRoleDescription()
{
	return roleDescription;
}

void
ExportSdtmClassVariablesRow::setRoleDescription(std::string  roleDescription)
{
	this->roleDescription = roleDescription;
}

std::string
ExportSdtmClassVariablesRow::getDescription()
{
	return description;
}

void
ExportSdtmClassVariablesRow::setDescription(std::string  description)
{
	this->description = description;
}



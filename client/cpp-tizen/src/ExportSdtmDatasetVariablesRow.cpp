#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ExportSdtmDatasetVariablesRow.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ExportSdtmDatasetVariablesRow::ExportSdtmDatasetVariablesRow()
{
	//__init();
}

ExportSdtmDatasetVariablesRow::~ExportSdtmDatasetVariablesRow()
{
	//__cleanup();
}

void
ExportSdtmDatasetVariablesRow::__init()
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
ExportSdtmDatasetVariablesRow::__cleanup()
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
ExportSdtmDatasetVariablesRow::fromJson(char* jsonStr)
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

ExportSdtmDatasetVariablesRow::ExportSdtmDatasetVariablesRow(char* json)
{
	this->fromJson(json);
}

char*
ExportSdtmDatasetVariablesRow::toJson()
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
ExportSdtmDatasetVariablesRow::getVersion()
{
	return version;
}

void
ExportSdtmDatasetVariablesRow::setVersion(std::string  version)
{
	this->version = version;
}

std::string
ExportSdtmDatasetVariablesRow::getVariableOrder()
{
	return variableOrder;
}

void
ExportSdtmDatasetVariablesRow::setVariableOrder(std::string  variableOrder)
{
	this->variableOrder = variableOrder;
}

std::string
ExportSdtmDatasetVariablesRow::getRClass()
{
	return r_class;
}

void
ExportSdtmDatasetVariablesRow::setRClass(std::string  r_class)
{
	this->r_class = r_class;
}

std::string
ExportSdtmDatasetVariablesRow::getDatasetName()
{
	return datasetName;
}

void
ExportSdtmDatasetVariablesRow::setDatasetName(std::string  datasetName)
{
	this->datasetName = datasetName;
}

std::string
ExportSdtmDatasetVariablesRow::getVariableName()
{
	return variableName;
}

void
ExportSdtmDatasetVariablesRow::setVariableName(std::string  variableName)
{
	this->variableName = variableName;
}

std::string
ExportSdtmDatasetVariablesRow::getVariableLabel()
{
	return variableLabel;
}

void
ExportSdtmDatasetVariablesRow::setVariableLabel(std::string  variableLabel)
{
	this->variableLabel = variableLabel;
}

std::string
ExportSdtmDatasetVariablesRow::getType()
{
	return type;
}

void
ExportSdtmDatasetVariablesRow::setType(std::string  type)
{
	this->type = type;
}

std::string
ExportSdtmDatasetVariablesRow::getControlledTermsCodelistorFormat()
{
	return controlledTermsCodelistorFormat;
}

void
ExportSdtmDatasetVariablesRow::setControlledTermsCodelistorFormat(std::string  controlledTermsCodelistorFormat)
{
	this->controlledTermsCodelistorFormat = controlledTermsCodelistorFormat;
}

std::string
ExportSdtmDatasetVariablesRow::getRole()
{
	return role;
}

void
ExportSdtmDatasetVariablesRow::setRole(std::string  role)
{
	this->role = role;
}

std::string
ExportSdtmDatasetVariablesRow::getRoleDescription()
{
	return roleDescription;
}

void
ExportSdtmDatasetVariablesRow::setRoleDescription(std::string  roleDescription)
{
	this->roleDescription = roleDescription;
}

std::string
ExportSdtmDatasetVariablesRow::getDescription()
{
	return description;
}

void
ExportSdtmDatasetVariablesRow::setDescription(std::string  description)
{
	this->description = description;
}



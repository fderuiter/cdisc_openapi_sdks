#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ExportSendigVariablesRow.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ExportSendigVariablesRow::ExportSendigVariablesRow()
{
	//__init();
}

ExportSendigVariablesRow::~ExportSendigVariablesRow()
{
	//__cleanup();
}

void
ExportSendigVariablesRow::__init()
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
	//cDISCNotes = std::string();
	//core = std::string();
}

void
ExportSendigVariablesRow::__cleanup()
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
	//if(cDISCNotes != NULL) {
	//
	//delete cDISCNotes;
	//cDISCNotes = NULL;
	//}
	//if(core != NULL) {
	//
	//delete core;
	//core = NULL;
	//}
	//
}

void
ExportSendigVariablesRow::fromJson(char* jsonStr)
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
	const gchar *cDISCNotesKey = "CDISC Notes";
	node = json_object_get_member(pJsonObject, cDISCNotesKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&cDISCNotes, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *coreKey = "Core";
	node = json_object_get_member(pJsonObject, coreKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&core, node, "std::string", "");
		} else {
			
		}
	}
}

ExportSendigVariablesRow::ExportSendigVariablesRow(char* json)
{
	this->fromJson(json);
}

char*
ExportSendigVariablesRow::toJson()
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
		std::string obj = getCDISCNotes();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *cDISCNotesKey = "CDISC Notes";
	json_object_set_member(pJsonObject, cDISCNotesKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getCore();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *coreKey = "Core";
	json_object_set_member(pJsonObject, coreKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
ExportSendigVariablesRow::getVersion()
{
	return version;
}

void
ExportSendigVariablesRow::setVersion(std::string  version)
{
	this->version = version;
}

std::string
ExportSendigVariablesRow::getVariableOrder()
{
	return variableOrder;
}

void
ExportSendigVariablesRow::setVariableOrder(std::string  variableOrder)
{
	this->variableOrder = variableOrder;
}

std::string
ExportSendigVariablesRow::getRClass()
{
	return r_class;
}

void
ExportSendigVariablesRow::setRClass(std::string  r_class)
{
	this->r_class = r_class;
}

std::string
ExportSendigVariablesRow::getDatasetName()
{
	return datasetName;
}

void
ExportSendigVariablesRow::setDatasetName(std::string  datasetName)
{
	this->datasetName = datasetName;
}

std::string
ExportSendigVariablesRow::getVariableName()
{
	return variableName;
}

void
ExportSendigVariablesRow::setVariableName(std::string  variableName)
{
	this->variableName = variableName;
}

std::string
ExportSendigVariablesRow::getVariableLabel()
{
	return variableLabel;
}

void
ExportSendigVariablesRow::setVariableLabel(std::string  variableLabel)
{
	this->variableLabel = variableLabel;
}

std::string
ExportSendigVariablesRow::getType()
{
	return type;
}

void
ExportSendigVariablesRow::setType(std::string  type)
{
	this->type = type;
}

std::string
ExportSendigVariablesRow::getControlledTermsCodelistorFormat()
{
	return controlledTermsCodelistorFormat;
}

void
ExportSendigVariablesRow::setControlledTermsCodelistorFormat(std::string  controlledTermsCodelistorFormat)
{
	this->controlledTermsCodelistorFormat = controlledTermsCodelistorFormat;
}

std::string
ExportSendigVariablesRow::getRole()
{
	return role;
}

void
ExportSendigVariablesRow::setRole(std::string  role)
{
	this->role = role;
}

std::string
ExportSendigVariablesRow::getCDISCNotes()
{
	return cDISCNotes;
}

void
ExportSendigVariablesRow::setCDISCNotes(std::string  cDISCNotes)
{
	this->cDISCNotes = cDISCNotes;
}

std::string
ExportSendigVariablesRow::getCore()
{
	return core;
}

void
ExportSendigVariablesRow::setCore(std::string  core)
{
	this->core = core;
}



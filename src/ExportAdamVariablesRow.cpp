#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ExportAdamVariablesRow.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ExportAdamVariablesRow::ExportAdamVariablesRow()
{
	//__init();
}

ExportAdamVariablesRow::~ExportAdamVariablesRow()
{
	//__cleanup();
}

void
ExportAdamVariablesRow::__init()
{
	//version = std::string();
	//dataStructureName = std::string();
	//datasetName = std::string();
	//variableGroup = std::string();
	//variableName = std::string();
	//variableLabel = std::string();
	//type = std::string();
	//codelistControlledTerms = std::string();
	//core = std::string();
	//cDISCNotes = std::string();
}

void
ExportAdamVariablesRow::__cleanup()
{
	//if(version != NULL) {
	//
	//delete version;
	//version = NULL;
	//}
	//if(dataStructureName != NULL) {
	//
	//delete dataStructureName;
	//dataStructureName = NULL;
	//}
	//if(datasetName != NULL) {
	//
	//delete datasetName;
	//datasetName = NULL;
	//}
	//if(variableGroup != NULL) {
	//
	//delete variableGroup;
	//variableGroup = NULL;
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
	//if(codelistControlledTerms != NULL) {
	//
	//delete codelistControlledTerms;
	//codelistControlledTerms = NULL;
	//}
	//if(core != NULL) {
	//
	//delete core;
	//core = NULL;
	//}
	//if(cDISCNotes != NULL) {
	//
	//delete cDISCNotes;
	//cDISCNotes = NULL;
	//}
	//
}

void
ExportAdamVariablesRow::fromJson(char* jsonStr)
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
	const gchar *dataStructureNameKey = "Data Structure Name";
	node = json_object_get_member(pJsonObject, dataStructureNameKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&dataStructureName, node, "std::string", "");
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
	const gchar *variableGroupKey = "Variable Group";
	node = json_object_get_member(pJsonObject, variableGroupKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&variableGroup, node, "std::string", "");
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
	const gchar *codelistControlledTermsKey = "Codelist/Controlled Terms";
	node = json_object_get_member(pJsonObject, codelistControlledTermsKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&codelistControlledTerms, node, "std::string", "");
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
	const gchar *cDISCNotesKey = "CDISC Notes";
	node = json_object_get_member(pJsonObject, cDISCNotesKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&cDISCNotes, node, "std::string", "");
		} else {
			
		}
	}
}

ExportAdamVariablesRow::ExportAdamVariablesRow(char* json)
{
	this->fromJson(json);
}

char*
ExportAdamVariablesRow::toJson()
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
		std::string obj = getDataStructureName();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *dataStructureNameKey = "Data Structure Name";
	json_object_set_member(pJsonObject, dataStructureNameKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getDatasetName();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *datasetNameKey = "Dataset Name";
	json_object_set_member(pJsonObject, datasetNameKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getVariableGroup();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *variableGroupKey = "Variable Group";
	json_object_set_member(pJsonObject, variableGroupKey, node);
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
		std::string obj = getCodelistControlledTerms();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *codelistControlledTermsKey = "Codelist/Controlled Terms";
	json_object_set_member(pJsonObject, codelistControlledTermsKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getCore();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *coreKey = "Core";
	json_object_set_member(pJsonObject, coreKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getCDISCNotes();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *cDISCNotesKey = "CDISC Notes";
	json_object_set_member(pJsonObject, cDISCNotesKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
ExportAdamVariablesRow::getVersion()
{
	return version;
}

void
ExportAdamVariablesRow::setVersion(std::string  version)
{
	this->version = version;
}

std::string
ExportAdamVariablesRow::getDataStructureName()
{
	return dataStructureName;
}

void
ExportAdamVariablesRow::setDataStructureName(std::string  dataStructureName)
{
	this->dataStructureName = dataStructureName;
}

std::string
ExportAdamVariablesRow::getDatasetName()
{
	return datasetName;
}

void
ExportAdamVariablesRow::setDatasetName(std::string  datasetName)
{
	this->datasetName = datasetName;
}

std::string
ExportAdamVariablesRow::getVariableGroup()
{
	return variableGroup;
}

void
ExportAdamVariablesRow::setVariableGroup(std::string  variableGroup)
{
	this->variableGroup = variableGroup;
}

std::string
ExportAdamVariablesRow::getVariableName()
{
	return variableName;
}

void
ExportAdamVariablesRow::setVariableName(std::string  variableName)
{
	this->variableName = variableName;
}

std::string
ExportAdamVariablesRow::getVariableLabel()
{
	return variableLabel;
}

void
ExportAdamVariablesRow::setVariableLabel(std::string  variableLabel)
{
	this->variableLabel = variableLabel;
}

std::string
ExportAdamVariablesRow::getType()
{
	return type;
}

void
ExportAdamVariablesRow::setType(std::string  type)
{
	this->type = type;
}

std::string
ExportAdamVariablesRow::getCodelistControlledTerms()
{
	return codelistControlledTerms;
}

void
ExportAdamVariablesRow::setCodelistControlledTerms(std::string  codelistControlledTerms)
{
	this->codelistControlledTerms = codelistControlledTerms;
}

std::string
ExportAdamVariablesRow::getCore()
{
	return core;
}

void
ExportAdamVariablesRow::setCore(std::string  core)
{
	this->core = core;
}

std::string
ExportAdamVariablesRow::getCDISCNotes()
{
	return cDISCNotes;
}

void
ExportAdamVariablesRow::setCDISCNotes(std::string  cDISCNotes)
{
	this->cDISCNotes = cDISCNotes;
}



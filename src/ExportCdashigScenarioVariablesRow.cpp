#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ExportCdashigScenarioVariablesRow.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ExportCdashigScenarioVariablesRow::ExportCdashigScenarioVariablesRow()
{
	//__init();
}

ExportCdashigScenarioVariablesRow::~ExportCdashigScenarioVariablesRow()
{
	//__cleanup();
}

void
ExportCdashigScenarioVariablesRow::__init()
{
	//version = std::string();
	//r_class = std::string();
	//domain = std::string();
	//dataCollectionScenario = std::string();
	//variableOrder = std::string();
	//cDASHIGVariable = std::string();
	//cDASHIGVariableLabel = std::string();
	//dRAFTCDASHIGDefinition = std::string();
	//questionText = std::string();
	//prompt = std::string();
	//type = std::string();
	//cDASHIGCore = std::string();
	//caseReportFormCompletionInstructions = std::string();
	//new std::list()std::list> sDTMIGTarget;
	//mappingInstructions = std::string();
	//controlledTerminologyCodelistName = std::string();
	//implementationNotes = std::string();
}

void
ExportCdashigScenarioVariablesRow::__cleanup()
{
	//if(version != NULL) {
	//
	//delete version;
	//version = NULL;
	//}
	//if(r_class != NULL) {
	//
	//delete r_class;
	//r_class = NULL;
	//}
	//if(domain != NULL) {
	//
	//delete domain;
	//domain = NULL;
	//}
	//if(dataCollectionScenario != NULL) {
	//
	//delete dataCollectionScenario;
	//dataCollectionScenario = NULL;
	//}
	//if(variableOrder != NULL) {
	//
	//delete variableOrder;
	//variableOrder = NULL;
	//}
	//if(cDASHIGVariable != NULL) {
	//
	//delete cDASHIGVariable;
	//cDASHIGVariable = NULL;
	//}
	//if(cDASHIGVariableLabel != NULL) {
	//
	//delete cDASHIGVariableLabel;
	//cDASHIGVariableLabel = NULL;
	//}
	//if(dRAFTCDASHIGDefinition != NULL) {
	//
	//delete dRAFTCDASHIGDefinition;
	//dRAFTCDASHIGDefinition = NULL;
	//}
	//if(questionText != NULL) {
	//
	//delete questionText;
	//questionText = NULL;
	//}
	//if(prompt != NULL) {
	//
	//delete prompt;
	//prompt = NULL;
	//}
	//if(type != NULL) {
	//
	//delete type;
	//type = NULL;
	//}
	//if(cDASHIGCore != NULL) {
	//
	//delete cDASHIGCore;
	//cDASHIGCore = NULL;
	//}
	//if(caseReportFormCompletionInstructions != NULL) {
	//
	//delete caseReportFormCompletionInstructions;
	//caseReportFormCompletionInstructions = NULL;
	//}
	//if(sDTMIGTarget != NULL) {
	//sDTMIGTarget.RemoveAll(true);
	//delete sDTMIGTarget;
	//sDTMIGTarget = NULL;
	//}
	//if(mappingInstructions != NULL) {
	//
	//delete mappingInstructions;
	//mappingInstructions = NULL;
	//}
	//if(controlledTerminologyCodelistName != NULL) {
	//
	//delete controlledTerminologyCodelistName;
	//controlledTerminologyCodelistName = NULL;
	//}
	//if(implementationNotes != NULL) {
	//
	//delete implementationNotes;
	//implementationNotes = NULL;
	//}
	//
}

void
ExportCdashigScenarioVariablesRow::fromJson(char* jsonStr)
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
	const gchar *r_classKey = "Class";
	node = json_object_get_member(pJsonObject, r_classKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&r_class, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *domainKey = "Domain";
	node = json_object_get_member(pJsonObject, domainKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&domain, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *dataCollectionScenarioKey = "Data Collection Scenario";
	node = json_object_get_member(pJsonObject, dataCollectionScenarioKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&dataCollectionScenario, node, "std::string", "");
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
	const gchar *cDASHIGVariableKey = "CDASHIG Variable";
	node = json_object_get_member(pJsonObject, cDASHIGVariableKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&cDASHIGVariable, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *cDASHIGVariableLabelKey = "CDASHIG Variable Label";
	node = json_object_get_member(pJsonObject, cDASHIGVariableLabelKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&cDASHIGVariableLabel, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *dRAFTCDASHIGDefinitionKey = "DRAFT CDASHIG Definition";
	node = json_object_get_member(pJsonObject, dRAFTCDASHIGDefinitionKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&dRAFTCDASHIGDefinition, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *questionTextKey = "Question Text";
	node = json_object_get_member(pJsonObject, questionTextKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&questionText, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *promptKey = "Prompt";
	node = json_object_get_member(pJsonObject, promptKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&prompt, node, "std::string", "");
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
	const gchar *cDASHIGCoreKey = "CDASHIG Core";
	node = json_object_get_member(pJsonObject, cDASHIGCoreKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&cDASHIGCore, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *caseReportFormCompletionInstructionsKey = "Case Report Form Completion Instructions";
	node = json_object_get_member(pJsonObject, caseReportFormCompletionInstructionsKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&caseReportFormCompletionInstructions, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *sDTMIGTargetKey = "SDTMIG Target";
	node = json_object_get_member(pJsonObject, sDTMIGTargetKey);
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
			sDTMIGTarget = new_list;
		}
		
	}
	const gchar *mappingInstructionsKey = "Mapping Instructions";
	node = json_object_get_member(pJsonObject, mappingInstructionsKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&mappingInstructions, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *controlledTerminologyCodelistNameKey = "Controlled Terminology Codelist Name";
	node = json_object_get_member(pJsonObject, controlledTerminologyCodelistNameKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&controlledTerminologyCodelistName, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *implementationNotesKey = "Implementation Notes";
	node = json_object_get_member(pJsonObject, implementationNotesKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&implementationNotes, node, "std::string", "");
		} else {
			
		}
	}
}

ExportCdashigScenarioVariablesRow::ExportCdashigScenarioVariablesRow(char* json)
{
	this->fromJson(json);
}

char*
ExportCdashigScenarioVariablesRow::toJson()
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
		std::string obj = getRClass();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *r_classKey = "Class";
	json_object_set_member(pJsonObject, r_classKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getDomain();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *domainKey = "Domain";
	json_object_set_member(pJsonObject, domainKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getDataCollectionScenario();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *dataCollectionScenarioKey = "Data Collection Scenario";
	json_object_set_member(pJsonObject, dataCollectionScenarioKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getVariableOrder();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *variableOrderKey = "Variable Order";
	json_object_set_member(pJsonObject, variableOrderKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getCDASHIGVariable();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *cDASHIGVariableKey = "CDASHIG Variable";
	json_object_set_member(pJsonObject, cDASHIGVariableKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getCDASHIGVariableLabel();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *cDASHIGVariableLabelKey = "CDASHIG Variable Label";
	json_object_set_member(pJsonObject, cDASHIGVariableLabelKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getDRAFTCDASHIGDefinition();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *dRAFTCDASHIGDefinitionKey = "DRAFT CDASHIG Definition";
	json_object_set_member(pJsonObject, dRAFTCDASHIGDefinitionKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getQuestionText();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *questionTextKey = "Question Text";
	json_object_set_member(pJsonObject, questionTextKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getPrompt();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *promptKey = "Prompt";
	json_object_set_member(pJsonObject, promptKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getType();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *typeKey = "Type";
	json_object_set_member(pJsonObject, typeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getCDASHIGCore();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *cDASHIGCoreKey = "CDASHIG Core";
	json_object_set_member(pJsonObject, cDASHIGCoreKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getCaseReportFormCompletionInstructions();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *caseReportFormCompletionInstructionsKey = "Case Report Form Completion Instructions";
	json_object_set_member(pJsonObject, caseReportFormCompletionInstructionsKey, node);
	if (isprimitive("std::string")) {
		list<std::string> new_list = static_cast<list <std::string> > (getSDTMIGTarget());
		node = converttoJson(&new_list, "std::string", "array");
	} else {
		node = json_node_alloc();
		list<std::string> new_list = static_cast<list <std::string> > (getSDTMIGTarget());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
	}


	
	const gchar *sDTMIGTargetKey = "SDTMIG Target";
	json_object_set_member(pJsonObject, sDTMIGTargetKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getMappingInstructions();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *mappingInstructionsKey = "Mapping Instructions";
	json_object_set_member(pJsonObject, mappingInstructionsKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getControlledTerminologyCodelistName();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *controlledTerminologyCodelistNameKey = "Controlled Terminology Codelist Name";
	json_object_set_member(pJsonObject, controlledTerminologyCodelistNameKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getImplementationNotes();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *implementationNotesKey = "Implementation Notes";
	json_object_set_member(pJsonObject, implementationNotesKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
ExportCdashigScenarioVariablesRow::getVersion()
{
	return version;
}

void
ExportCdashigScenarioVariablesRow::setVersion(std::string  version)
{
	this->version = version;
}

std::string
ExportCdashigScenarioVariablesRow::getRClass()
{
	return r_class;
}

void
ExportCdashigScenarioVariablesRow::setRClass(std::string  r_class)
{
	this->r_class = r_class;
}

std::string
ExportCdashigScenarioVariablesRow::getDomain()
{
	return domain;
}

void
ExportCdashigScenarioVariablesRow::setDomain(std::string  domain)
{
	this->domain = domain;
}

std::string
ExportCdashigScenarioVariablesRow::getDataCollectionScenario()
{
	return dataCollectionScenario;
}

void
ExportCdashigScenarioVariablesRow::setDataCollectionScenario(std::string  dataCollectionScenario)
{
	this->dataCollectionScenario = dataCollectionScenario;
}

std::string
ExportCdashigScenarioVariablesRow::getVariableOrder()
{
	return variableOrder;
}

void
ExportCdashigScenarioVariablesRow::setVariableOrder(std::string  variableOrder)
{
	this->variableOrder = variableOrder;
}

std::string
ExportCdashigScenarioVariablesRow::getCDASHIGVariable()
{
	return cDASHIGVariable;
}

void
ExportCdashigScenarioVariablesRow::setCDASHIGVariable(std::string  cDASHIGVariable)
{
	this->cDASHIGVariable = cDASHIGVariable;
}

std::string
ExportCdashigScenarioVariablesRow::getCDASHIGVariableLabel()
{
	return cDASHIGVariableLabel;
}

void
ExportCdashigScenarioVariablesRow::setCDASHIGVariableLabel(std::string  cDASHIGVariableLabel)
{
	this->cDASHIGVariableLabel = cDASHIGVariableLabel;
}

std::string
ExportCdashigScenarioVariablesRow::getDRAFTCDASHIGDefinition()
{
	return dRAFTCDASHIGDefinition;
}

void
ExportCdashigScenarioVariablesRow::setDRAFTCDASHIGDefinition(std::string  dRAFTCDASHIGDefinition)
{
	this->dRAFTCDASHIGDefinition = dRAFTCDASHIGDefinition;
}

std::string
ExportCdashigScenarioVariablesRow::getQuestionText()
{
	return questionText;
}

void
ExportCdashigScenarioVariablesRow::setQuestionText(std::string  questionText)
{
	this->questionText = questionText;
}

std::string
ExportCdashigScenarioVariablesRow::getPrompt()
{
	return prompt;
}

void
ExportCdashigScenarioVariablesRow::setPrompt(std::string  prompt)
{
	this->prompt = prompt;
}

std::string
ExportCdashigScenarioVariablesRow::getType()
{
	return type;
}

void
ExportCdashigScenarioVariablesRow::setType(std::string  type)
{
	this->type = type;
}

std::string
ExportCdashigScenarioVariablesRow::getCDASHIGCore()
{
	return cDASHIGCore;
}

void
ExportCdashigScenarioVariablesRow::setCDASHIGCore(std::string  cDASHIGCore)
{
	this->cDASHIGCore = cDASHIGCore;
}

std::string
ExportCdashigScenarioVariablesRow::getCaseReportFormCompletionInstructions()
{
	return caseReportFormCompletionInstructions;
}

void
ExportCdashigScenarioVariablesRow::setCaseReportFormCompletionInstructions(std::string  caseReportFormCompletionInstructions)
{
	this->caseReportFormCompletionInstructions = caseReportFormCompletionInstructions;
}

std::list<std::string>
ExportCdashigScenarioVariablesRow::getSDTMIGTarget()
{
	return sDTMIGTarget;
}

void
ExportCdashigScenarioVariablesRow::setSDTMIGTarget(std::list <std::string> sDTMIGTarget)
{
	this->sDTMIGTarget = sDTMIGTarget;
}

std::string
ExportCdashigScenarioVariablesRow::getMappingInstructions()
{
	return mappingInstructions;
}

void
ExportCdashigScenarioVariablesRow::setMappingInstructions(std::string  mappingInstructions)
{
	this->mappingInstructions = mappingInstructions;
}

std::string
ExportCdashigScenarioVariablesRow::getControlledTerminologyCodelistName()
{
	return controlledTerminologyCodelistName;
}

void
ExportCdashigScenarioVariablesRow::setControlledTerminologyCodelistName(std::string  controlledTerminologyCodelistName)
{
	this->controlledTerminologyCodelistName = controlledTerminologyCodelistName;
}

std::string
ExportCdashigScenarioVariablesRow::getImplementationNotes()
{
	return implementationNotes;
}

void
ExportCdashigScenarioVariablesRow::setImplementationNotes(std::string  implementationNotes)
{
	this->implementationNotes = implementationNotes;
}



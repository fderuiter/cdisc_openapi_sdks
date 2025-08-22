#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ExportCdashDomainVariablesRow.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ExportCdashDomainVariablesRow::ExportCdashDomainVariablesRow()
{
	//__init();
}

ExportCdashDomainVariablesRow::~ExportCdashDomainVariablesRow()
{
	//__cleanup();
}

void
ExportCdashDomainVariablesRow::__init()
{
	//version = std::string();
	//r_class = std::string();
	//domain = std::string();
	//variableOrder = std::string();
	//cDASHVariable = std::string();
	//cDASHVariableLabel = std::string();
	//dRAFTCDASHDefinition = std::string();
	//domainSpecific = std::string();
	//questionText = std::string();
	//prompt = std::string();
	//type = std::string();
	//new std::list()std::list> sDTMTarget;
	//mappingInstructions = std::string();
	//controlledTerminologyCodelistName = std::string();
	//implementationNotes = std::string();
}

void
ExportCdashDomainVariablesRow::__cleanup()
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
	//if(variableOrder != NULL) {
	//
	//delete variableOrder;
	//variableOrder = NULL;
	//}
	//if(cDASHVariable != NULL) {
	//
	//delete cDASHVariable;
	//cDASHVariable = NULL;
	//}
	//if(cDASHVariableLabel != NULL) {
	//
	//delete cDASHVariableLabel;
	//cDASHVariableLabel = NULL;
	//}
	//if(dRAFTCDASHDefinition != NULL) {
	//
	//delete dRAFTCDASHDefinition;
	//dRAFTCDASHDefinition = NULL;
	//}
	//if(domainSpecific != NULL) {
	//
	//delete domainSpecific;
	//domainSpecific = NULL;
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
	//if(sDTMTarget != NULL) {
	//sDTMTarget.RemoveAll(true);
	//delete sDTMTarget;
	//sDTMTarget = NULL;
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
ExportCdashDomainVariablesRow::fromJson(char* jsonStr)
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
	const gchar *variableOrderKey = "Variable Order";
	node = json_object_get_member(pJsonObject, variableOrderKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&variableOrder, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *cDASHVariableKey = "CDASH Variable";
	node = json_object_get_member(pJsonObject, cDASHVariableKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&cDASHVariable, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *cDASHVariableLabelKey = "CDASH Variable Label";
	node = json_object_get_member(pJsonObject, cDASHVariableLabelKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&cDASHVariableLabel, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *dRAFTCDASHDefinitionKey = "DRAFT CDASH Definition";
	node = json_object_get_member(pJsonObject, dRAFTCDASHDefinitionKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&dRAFTCDASHDefinition, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *domainSpecificKey = "Domain Specific";
	node = json_object_get_member(pJsonObject, domainSpecificKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&domainSpecific, node, "std::string", "");
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
	const gchar *sDTMTargetKey = "SDTM Target";
	node = json_object_get_member(pJsonObject, sDTMTargetKey);
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
			sDTMTarget = new_list;
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

ExportCdashDomainVariablesRow::ExportCdashDomainVariablesRow(char* json)
{
	this->fromJson(json);
}

char*
ExportCdashDomainVariablesRow::toJson()
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
		std::string obj = getVariableOrder();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *variableOrderKey = "Variable Order";
	json_object_set_member(pJsonObject, variableOrderKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getCDASHVariable();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *cDASHVariableKey = "CDASH Variable";
	json_object_set_member(pJsonObject, cDASHVariableKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getCDASHVariableLabel();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *cDASHVariableLabelKey = "CDASH Variable Label";
	json_object_set_member(pJsonObject, cDASHVariableLabelKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getDRAFTCDASHDefinition();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *dRAFTCDASHDefinitionKey = "DRAFT CDASH Definition";
	json_object_set_member(pJsonObject, dRAFTCDASHDefinitionKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getDomainSpecific();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *domainSpecificKey = "Domain Specific";
	json_object_set_member(pJsonObject, domainSpecificKey, node);
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
		list<std::string> new_list = static_cast<list <std::string> > (getSDTMTarget());
		node = converttoJson(&new_list, "std::string", "array");
	} else {
		node = json_node_alloc();
		list<std::string> new_list = static_cast<list <std::string> > (getSDTMTarget());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
	}


	
	const gchar *sDTMTargetKey = "SDTM Target";
	json_object_set_member(pJsonObject, sDTMTargetKey, node);
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
ExportCdashDomainVariablesRow::getVersion()
{
	return version;
}

void
ExportCdashDomainVariablesRow::setVersion(std::string  version)
{
	this->version = version;
}

std::string
ExportCdashDomainVariablesRow::getRClass()
{
	return r_class;
}

void
ExportCdashDomainVariablesRow::setRClass(std::string  r_class)
{
	this->r_class = r_class;
}

std::string
ExportCdashDomainVariablesRow::getDomain()
{
	return domain;
}

void
ExportCdashDomainVariablesRow::setDomain(std::string  domain)
{
	this->domain = domain;
}

std::string
ExportCdashDomainVariablesRow::getVariableOrder()
{
	return variableOrder;
}

void
ExportCdashDomainVariablesRow::setVariableOrder(std::string  variableOrder)
{
	this->variableOrder = variableOrder;
}

std::string
ExportCdashDomainVariablesRow::getCDASHVariable()
{
	return cDASHVariable;
}

void
ExportCdashDomainVariablesRow::setCDASHVariable(std::string  cDASHVariable)
{
	this->cDASHVariable = cDASHVariable;
}

std::string
ExportCdashDomainVariablesRow::getCDASHVariableLabel()
{
	return cDASHVariableLabel;
}

void
ExportCdashDomainVariablesRow::setCDASHVariableLabel(std::string  cDASHVariableLabel)
{
	this->cDASHVariableLabel = cDASHVariableLabel;
}

std::string
ExportCdashDomainVariablesRow::getDRAFTCDASHDefinition()
{
	return dRAFTCDASHDefinition;
}

void
ExportCdashDomainVariablesRow::setDRAFTCDASHDefinition(std::string  dRAFTCDASHDefinition)
{
	this->dRAFTCDASHDefinition = dRAFTCDASHDefinition;
}

std::string
ExportCdashDomainVariablesRow::getDomainSpecific()
{
	return domainSpecific;
}

void
ExportCdashDomainVariablesRow::setDomainSpecific(std::string  domainSpecific)
{
	this->domainSpecific = domainSpecific;
}

std::string
ExportCdashDomainVariablesRow::getQuestionText()
{
	return questionText;
}

void
ExportCdashDomainVariablesRow::setQuestionText(std::string  questionText)
{
	this->questionText = questionText;
}

std::string
ExportCdashDomainVariablesRow::getPrompt()
{
	return prompt;
}

void
ExportCdashDomainVariablesRow::setPrompt(std::string  prompt)
{
	this->prompt = prompt;
}

std::string
ExportCdashDomainVariablesRow::getType()
{
	return type;
}

void
ExportCdashDomainVariablesRow::setType(std::string  type)
{
	this->type = type;
}

std::list<std::string>
ExportCdashDomainVariablesRow::getSDTMTarget()
{
	return sDTMTarget;
}

void
ExportCdashDomainVariablesRow::setSDTMTarget(std::list <std::string> sDTMTarget)
{
	this->sDTMTarget = sDTMTarget;
}

std::string
ExportCdashDomainVariablesRow::getMappingInstructions()
{
	return mappingInstructions;
}

void
ExportCdashDomainVariablesRow::setMappingInstructions(std::string  mappingInstructions)
{
	this->mappingInstructions = mappingInstructions;
}

std::string
ExportCdashDomainVariablesRow::getControlledTerminologyCodelistName()
{
	return controlledTerminologyCodelistName;
}

void
ExportCdashDomainVariablesRow::setControlledTerminologyCodelistName(std::string  controlledTerminologyCodelistName)
{
	this->controlledTerminologyCodelistName = controlledTerminologyCodelistName;
}

std::string
ExportCdashDomainVariablesRow::getImplementationNotes()
{
	return implementationNotes;
}

void
ExportCdashDomainVariablesRow::setImplementationNotes(std::string  implementationNotes)
{
	this->implementationNotes = implementationNotes;
}



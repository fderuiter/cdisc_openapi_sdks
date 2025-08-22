#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "CdashigScenarioField.h"

using namespace std;
using namespace Tizen::ArtikCloud;

CdashigScenarioField::CdashigScenarioField()
{
	//__init();
}

CdashigScenarioField::~CdashigScenarioField()
{
	//__cleanup();
}

void
CdashigScenarioField::__init()
{
	//ordinal = std::string();
	//name = std::string();
	//label = std::string();
	//definition = std::string();
	//questionText = std::string();
	//prompt = std::string();
	//completionInstructions = std::string();
	//implementationNotes = std::string();
	//simpleDatatype = std::string();
	//mappingInstructions = std::string();
	//core = std::string();
	//_links = new CdashigScenarioFieldLinks();
}

void
CdashigScenarioField::__cleanup()
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
	//if(definition != NULL) {
	//
	//delete definition;
	//definition = NULL;
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
	//if(completionInstructions != NULL) {
	//
	//delete completionInstructions;
	//completionInstructions = NULL;
	//}
	//if(implementationNotes != NULL) {
	//
	//delete implementationNotes;
	//implementationNotes = NULL;
	//}
	//if(simpleDatatype != NULL) {
	//
	//delete simpleDatatype;
	//simpleDatatype = NULL;
	//}
	//if(mappingInstructions != NULL) {
	//
	//delete mappingInstructions;
	//mappingInstructions = NULL;
	//}
	//if(core != NULL) {
	//
	//delete core;
	//core = NULL;
	//}
	//if(_links != NULL) {
	//
	//delete _links;
	//_links = NULL;
	//}
	//
}

void
CdashigScenarioField::fromJson(char* jsonStr)
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
	const gchar *definitionKey = "definition";
	node = json_object_get_member(pJsonObject, definitionKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&definition, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *questionTextKey = "questionText";
	node = json_object_get_member(pJsonObject, questionTextKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&questionText, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *promptKey = "prompt";
	node = json_object_get_member(pJsonObject, promptKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&prompt, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *completionInstructionsKey = "completionInstructions";
	node = json_object_get_member(pJsonObject, completionInstructionsKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&completionInstructions, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *implementationNotesKey = "implementationNotes";
	node = json_object_get_member(pJsonObject, implementationNotesKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&implementationNotes, node, "std::string", "");
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
	const gchar *mappingInstructionsKey = "mappingInstructions";
	node = json_object_get_member(pJsonObject, mappingInstructionsKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&mappingInstructions, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *coreKey = "core";
	node = json_object_get_member(pJsonObject, coreKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&core, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *_linksKey = "_links";
	node = json_object_get_member(pJsonObject, _linksKey);
	if (node !=NULL) {
	

		if (isprimitive("CdashigScenarioFieldLinks")) {
			jsonToValue(&_links, node, "CdashigScenarioFieldLinks", "CdashigScenarioFieldLinks");
		} else {
			
			CdashigScenarioFieldLinks* obj = static_cast<CdashigScenarioFieldLinks*> (&_links);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

CdashigScenarioField::CdashigScenarioField(char* json)
{
	this->fromJson(json);
}

char*
CdashigScenarioField::toJson()
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
		std::string obj = getDefinition();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *definitionKey = "definition";
	json_object_set_member(pJsonObject, definitionKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getQuestionText();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *questionTextKey = "questionText";
	json_object_set_member(pJsonObject, questionTextKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getPrompt();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *promptKey = "prompt";
	json_object_set_member(pJsonObject, promptKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getCompletionInstructions();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *completionInstructionsKey = "completionInstructions";
	json_object_set_member(pJsonObject, completionInstructionsKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getImplementationNotes();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *implementationNotesKey = "implementationNotes";
	json_object_set_member(pJsonObject, implementationNotesKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getSimpleDatatype();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *simpleDatatypeKey = "simpleDatatype";
	json_object_set_member(pJsonObject, simpleDatatypeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getMappingInstructions();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *mappingInstructionsKey = "mappingInstructions";
	json_object_set_member(pJsonObject, mappingInstructionsKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getCore();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *coreKey = "core";
	json_object_set_member(pJsonObject, coreKey, node);
	if (isprimitive("CdashigScenarioFieldLinks")) {
		CdashigScenarioFieldLinks obj = getLinks();
		node = converttoJson(&obj, "CdashigScenarioFieldLinks", "");
	}
	else {
		
		CdashigScenarioFieldLinks obj = static_cast<CdashigScenarioFieldLinks> (getLinks());
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
CdashigScenarioField::getOrdinal()
{
	return ordinal;
}

void
CdashigScenarioField::setOrdinal(std::string  ordinal)
{
	this->ordinal = ordinal;
}

std::string
CdashigScenarioField::getName()
{
	return name;
}

void
CdashigScenarioField::setName(std::string  name)
{
	this->name = name;
}

std::string
CdashigScenarioField::getLabel()
{
	return label;
}

void
CdashigScenarioField::setLabel(std::string  label)
{
	this->label = label;
}

std::string
CdashigScenarioField::getDefinition()
{
	return definition;
}

void
CdashigScenarioField::setDefinition(std::string  definition)
{
	this->definition = definition;
}

std::string
CdashigScenarioField::getQuestionText()
{
	return questionText;
}

void
CdashigScenarioField::setQuestionText(std::string  questionText)
{
	this->questionText = questionText;
}

std::string
CdashigScenarioField::getPrompt()
{
	return prompt;
}

void
CdashigScenarioField::setPrompt(std::string  prompt)
{
	this->prompt = prompt;
}

std::string
CdashigScenarioField::getCompletionInstructions()
{
	return completionInstructions;
}

void
CdashigScenarioField::setCompletionInstructions(std::string  completionInstructions)
{
	this->completionInstructions = completionInstructions;
}

std::string
CdashigScenarioField::getImplementationNotes()
{
	return implementationNotes;
}

void
CdashigScenarioField::setImplementationNotes(std::string  implementationNotes)
{
	this->implementationNotes = implementationNotes;
}

std::string
CdashigScenarioField::getSimpleDatatype()
{
	return simpleDatatype;
}

void
CdashigScenarioField::setSimpleDatatype(std::string  simpleDatatype)
{
	this->simpleDatatype = simpleDatatype;
}

std::string
CdashigScenarioField::getMappingInstructions()
{
	return mappingInstructions;
}

void
CdashigScenarioField::setMappingInstructions(std::string  mappingInstructions)
{
	this->mappingInstructions = mappingInstructions;
}

std::string
CdashigScenarioField::getCore()
{
	return core;
}

void
CdashigScenarioField::setCore(std::string  core)
{
	this->core = core;
}

CdashigScenarioFieldLinks
CdashigScenarioField::getLinks()
{
	return _links;
}

void
CdashigScenarioField::setLinks(CdashigScenarioFieldLinks  _links)
{
	this->_links = _links;
}



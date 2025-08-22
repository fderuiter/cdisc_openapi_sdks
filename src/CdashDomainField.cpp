#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "CdashDomainField.h"

using namespace std;
using namespace Tizen::ArtikCloud;

CdashDomainField::CdashDomainField()
{
	//__init();
}

CdashDomainField::~CdashDomainField()
{
	//__cleanup();
}

void
CdashDomainField::__init()
{
	//ordinal = std::string();
	//name = std::string();
	//label = std::string();
	//definition = std::string();
	//domainSpecific = std::string();
	//questionText = std::string();
	//prompt = std::string();
	//simpleDatatype = std::string();
	//implementationNotes = std::string();
	//mappingInstructions = std::string();
	//_links = new CdashDomainFieldLinks();
}

void
CdashDomainField::__cleanup()
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
	//if(simpleDatatype != NULL) {
	//
	//delete simpleDatatype;
	//simpleDatatype = NULL;
	//}
	//if(implementationNotes != NULL) {
	//
	//delete implementationNotes;
	//implementationNotes = NULL;
	//}
	//if(mappingInstructions != NULL) {
	//
	//delete mappingInstructions;
	//mappingInstructions = NULL;
	//}
	//if(_links != NULL) {
	//
	//delete _links;
	//_links = NULL;
	//}
	//
}

void
CdashDomainField::fromJson(char* jsonStr)
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
	const gchar *domainSpecificKey = "domainSpecific";
	node = json_object_get_member(pJsonObject, domainSpecificKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&domainSpecific, node, "std::string", "");
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
	const gchar *simpleDatatypeKey = "simpleDatatype";
	node = json_object_get_member(pJsonObject, simpleDatatypeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&simpleDatatype, node, "std::string", "");
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
	const gchar *mappingInstructionsKey = "mappingInstructions";
	node = json_object_get_member(pJsonObject, mappingInstructionsKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&mappingInstructions, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *_linksKey = "_links";
	node = json_object_get_member(pJsonObject, _linksKey);
	if (node !=NULL) {
	

		if (isprimitive("CdashDomainFieldLinks")) {
			jsonToValue(&_links, node, "CdashDomainFieldLinks", "CdashDomainFieldLinks");
		} else {
			
			CdashDomainFieldLinks* obj = static_cast<CdashDomainFieldLinks*> (&_links);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

CdashDomainField::CdashDomainField(char* json)
{
	this->fromJson(json);
}

char*
CdashDomainField::toJson()
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
		std::string obj = getDomainSpecific();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *domainSpecificKey = "domainSpecific";
	json_object_set_member(pJsonObject, domainSpecificKey, node);
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
		std::string obj = getSimpleDatatype();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *simpleDatatypeKey = "simpleDatatype";
	json_object_set_member(pJsonObject, simpleDatatypeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getImplementationNotes();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *implementationNotesKey = "implementationNotes";
	json_object_set_member(pJsonObject, implementationNotesKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getMappingInstructions();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *mappingInstructionsKey = "mappingInstructions";
	json_object_set_member(pJsonObject, mappingInstructionsKey, node);
	if (isprimitive("CdashDomainFieldLinks")) {
		CdashDomainFieldLinks obj = getLinks();
		node = converttoJson(&obj, "CdashDomainFieldLinks", "");
	}
	else {
		
		CdashDomainFieldLinks obj = static_cast<CdashDomainFieldLinks> (getLinks());
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
CdashDomainField::getOrdinal()
{
	return ordinal;
}

void
CdashDomainField::setOrdinal(std::string  ordinal)
{
	this->ordinal = ordinal;
}

std::string
CdashDomainField::getName()
{
	return name;
}

void
CdashDomainField::setName(std::string  name)
{
	this->name = name;
}

std::string
CdashDomainField::getLabel()
{
	return label;
}

void
CdashDomainField::setLabel(std::string  label)
{
	this->label = label;
}

std::string
CdashDomainField::getDefinition()
{
	return definition;
}

void
CdashDomainField::setDefinition(std::string  definition)
{
	this->definition = definition;
}

std::string
CdashDomainField::getDomainSpecific()
{
	return domainSpecific;
}

void
CdashDomainField::setDomainSpecific(std::string  domainSpecific)
{
	this->domainSpecific = domainSpecific;
}

std::string
CdashDomainField::getQuestionText()
{
	return questionText;
}

void
CdashDomainField::setQuestionText(std::string  questionText)
{
	this->questionText = questionText;
}

std::string
CdashDomainField::getPrompt()
{
	return prompt;
}

void
CdashDomainField::setPrompt(std::string  prompt)
{
	this->prompt = prompt;
}

std::string
CdashDomainField::getSimpleDatatype()
{
	return simpleDatatype;
}

void
CdashDomainField::setSimpleDatatype(std::string  simpleDatatype)
{
	this->simpleDatatype = simpleDatatype;
}

std::string
CdashDomainField::getImplementationNotes()
{
	return implementationNotes;
}

void
CdashDomainField::setImplementationNotes(std::string  implementationNotes)
{
	this->implementationNotes = implementationNotes;
}

std::string
CdashDomainField::getMappingInstructions()
{
	return mappingInstructions;
}

void
CdashDomainField::setMappingInstructions(std::string  mappingInstructions)
{
	this->mappingInstructions = mappingInstructions;
}

CdashDomainFieldLinks
CdashDomainField::getLinks()
{
	return _links;
}

void
CdashDomainField::setLinks(CdashDomainFieldLinks  _links)
{
	this->_links = _links;
}



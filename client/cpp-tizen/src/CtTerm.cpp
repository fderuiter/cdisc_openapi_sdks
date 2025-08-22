#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "CtTerm.h"

using namespace std;
using namespace Tizen::ArtikCloud;

CtTerm::CtTerm()
{
	//__init();
}

CtTerm::~CtTerm()
{
	//__cleanup();
}

void
CtTerm::__init()
{
	//conceptId = std::string();
	//submissionValue = std::string();
	//definition = std::string();
	//preferredTerm = std::string();
	//new std::list()std::list> synonyms;
	//_links = new CtTermLinks();
}

void
CtTerm::__cleanup()
{
	//if(conceptId != NULL) {
	//
	//delete conceptId;
	//conceptId = NULL;
	//}
	//if(submissionValue != NULL) {
	//
	//delete submissionValue;
	//submissionValue = NULL;
	//}
	//if(definition != NULL) {
	//
	//delete definition;
	//definition = NULL;
	//}
	//if(preferredTerm != NULL) {
	//
	//delete preferredTerm;
	//preferredTerm = NULL;
	//}
	//if(synonyms != NULL) {
	//synonyms.RemoveAll(true);
	//delete synonyms;
	//synonyms = NULL;
	//}
	//if(_links != NULL) {
	//
	//delete _links;
	//_links = NULL;
	//}
	//
}

void
CtTerm::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *conceptIdKey = "conceptId";
	node = json_object_get_member(pJsonObject, conceptIdKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&conceptId, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *submissionValueKey = "submissionValue";
	node = json_object_get_member(pJsonObject, submissionValueKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&submissionValue, node, "std::string", "");
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
	const gchar *preferredTermKey = "preferredTerm";
	node = json_object_get_member(pJsonObject, preferredTermKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&preferredTerm, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *synonymsKey = "synonyms";
	node = json_object_get_member(pJsonObject, synonymsKey);
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
			synonyms = new_list;
		}
		
	}
	const gchar *_linksKey = "_links";
	node = json_object_get_member(pJsonObject, _linksKey);
	if (node !=NULL) {
	

		if (isprimitive("CtTermLinks")) {
			jsonToValue(&_links, node, "CtTermLinks", "CtTermLinks");
		} else {
			
			CtTermLinks* obj = static_cast<CtTermLinks*> (&_links);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

CtTerm::CtTerm(char* json)
{
	this->fromJson(json);
}

char*
CtTerm::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getConceptId();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *conceptIdKey = "conceptId";
	json_object_set_member(pJsonObject, conceptIdKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getSubmissionValue();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *submissionValueKey = "submissionValue";
	json_object_set_member(pJsonObject, submissionValueKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getDefinition();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *definitionKey = "definition";
	json_object_set_member(pJsonObject, definitionKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getPreferredTerm();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *preferredTermKey = "preferredTerm";
	json_object_set_member(pJsonObject, preferredTermKey, node);
	if (isprimitive("std::string")) {
		list<std::string> new_list = static_cast<list <std::string> > (getSynonyms());
		node = converttoJson(&new_list, "std::string", "array");
	} else {
		node = json_node_alloc();
		list<std::string> new_list = static_cast<list <std::string> > (getSynonyms());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
	}


	
	const gchar *synonymsKey = "synonyms";
	json_object_set_member(pJsonObject, synonymsKey, node);
	if (isprimitive("CtTermLinks")) {
		CtTermLinks obj = getLinks();
		node = converttoJson(&obj, "CtTermLinks", "");
	}
	else {
		
		CtTermLinks obj = static_cast<CtTermLinks> (getLinks());
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
CtTerm::getConceptId()
{
	return conceptId;
}

void
CtTerm::setConceptId(std::string  conceptId)
{
	this->conceptId = conceptId;
}

std::string
CtTerm::getSubmissionValue()
{
	return submissionValue;
}

void
CtTerm::setSubmissionValue(std::string  submissionValue)
{
	this->submissionValue = submissionValue;
}

std::string
CtTerm::getDefinition()
{
	return definition;
}

void
CtTerm::setDefinition(std::string  definition)
{
	this->definition = definition;
}

std::string
CtTerm::getPreferredTerm()
{
	return preferredTerm;
}

void
CtTerm::setPreferredTerm(std::string  preferredTerm)
{
	this->preferredTerm = preferredTerm;
}

std::list<std::string>
CtTerm::getSynonyms()
{
	return synonyms;
}

void
CtTerm::setSynonyms(std::list <std::string> synonyms)
{
	this->synonyms = synonyms;
}

CtTermLinks
CtTerm::getLinks()
{
	return _links;
}

void
CtTerm::setLinks(CtTermLinks  _links)
{
	this->_links = _links;
}



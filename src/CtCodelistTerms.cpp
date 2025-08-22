#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "CtCodelistTerms.h"

using namespace std;
using namespace Tizen::ArtikCloud;

CtCodelistTerms::CtCodelistTerms()
{
	//__init();
}

CtCodelistTerms::~CtCodelistTerms()
{
	//__cleanup();
}

void
CtCodelistTerms::__init()
{
	//conceptId = std::string();
	//extensible = std::string();
	//name = std::string();
	//submissionValue = std::string();
	//definition = std::string();
	//preferredTerm = std::string();
	//new std::list()std::list> synonyms;
	//_links = new CtCodelistTermsLinks();
}

void
CtCodelistTerms::__cleanup()
{
	//if(conceptId != NULL) {
	//
	//delete conceptId;
	//conceptId = NULL;
	//}
	//if(extensible != NULL) {
	//
	//delete extensible;
	//extensible = NULL;
	//}
	//if(name != NULL) {
	//
	//delete name;
	//name = NULL;
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
CtCodelistTerms::fromJson(char* jsonStr)
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
	const gchar *extensibleKey = "extensible";
	node = json_object_get_member(pJsonObject, extensibleKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&extensible, node, "std::string", "");
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
	

		if (isprimitive("CtCodelistTermsLinks")) {
			jsonToValue(&_links, node, "CtCodelistTermsLinks", "CtCodelistTermsLinks");
		} else {
			
			CtCodelistTermsLinks* obj = static_cast<CtCodelistTermsLinks*> (&_links);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

CtCodelistTerms::CtCodelistTerms(char* json)
{
	this->fromJson(json);
}

char*
CtCodelistTerms::toJson()
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
		std::string obj = getExtensible();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *extensibleKey = "extensible";
	json_object_set_member(pJsonObject, extensibleKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getName();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *nameKey = "name";
	json_object_set_member(pJsonObject, nameKey, node);
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
	if (isprimitive("CtCodelistTermsLinks")) {
		CtCodelistTermsLinks obj = getLinks();
		node = converttoJson(&obj, "CtCodelistTermsLinks", "");
	}
	else {
		
		CtCodelistTermsLinks obj = static_cast<CtCodelistTermsLinks> (getLinks());
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
CtCodelistTerms::getConceptId()
{
	return conceptId;
}

void
CtCodelistTerms::setConceptId(std::string  conceptId)
{
	this->conceptId = conceptId;
}

std::string
CtCodelistTerms::getExtensible()
{
	return extensible;
}

void
CtCodelistTerms::setExtensible(std::string  extensible)
{
	this->extensible = extensible;
}

std::string
CtCodelistTerms::getName()
{
	return name;
}

void
CtCodelistTerms::setName(std::string  name)
{
	this->name = name;
}

std::string
CtCodelistTerms::getSubmissionValue()
{
	return submissionValue;
}

void
CtCodelistTerms::setSubmissionValue(std::string  submissionValue)
{
	this->submissionValue = submissionValue;
}

std::string
CtCodelistTerms::getDefinition()
{
	return definition;
}

void
CtCodelistTerms::setDefinition(std::string  definition)
{
	this->definition = definition;
}

std::string
CtCodelistTerms::getPreferredTerm()
{
	return preferredTerm;
}

void
CtCodelistTerms::setPreferredTerm(std::string  preferredTerm)
{
	this->preferredTerm = preferredTerm;
}

std::list<std::string>
CtCodelistTerms::getSynonyms()
{
	return synonyms;
}

void
CtCodelistTerms::setSynonyms(std::list <std::string> synonyms)
{
	this->synonyms = synonyms;
}

CtCodelistTermsLinks
CtCodelistTerms::getLinks()
{
	return _links;
}

void
CtCodelistTerms::setLinks(CtCodelistTermsLinks  _links)
{
	this->_links = _links;
}



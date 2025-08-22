#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "CtCodelist.h"

using namespace std;
using namespace Tizen::ArtikCloud;

CtCodelist::CtCodelist()
{
	//__init();
}

CtCodelist::~CtCodelist()
{
	//__cleanup();
}

void
CtCodelist::__init()
{
	//conceptId = std::string();
	//extensible = std::string();
	//name = std::string();
	//submissionValue = std::string();
	//definition = std::string();
	//preferredTerm = std::string();
	//new std::list()std::list> synonyms;
	//_links = new CtCodelistLinks();
	//new std::list()std::list> terms;
}

void
CtCodelist::__cleanup()
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
	//if(terms != NULL) {
	//terms.RemoveAll(true);
	//delete terms;
	//terms = NULL;
	//}
	//
}

void
CtCodelist::fromJson(char* jsonStr)
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
	

		if (isprimitive("CtCodelistLinks")) {
			jsonToValue(&_links, node, "CtCodelistLinks", "CtCodelistLinks");
		} else {
			
			CtCodelistLinks* obj = static_cast<CtCodelistLinks*> (&_links);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *termsKey = "terms";
	node = json_object_get_member(pJsonObject, termsKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<CtPackageTerm> new_list;
			CtPackageTerm inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("CtPackageTerm")) {
					jsonToValue(&inst, temp_json, "CtPackageTerm", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			terms = new_list;
		}
		
	}
}

CtCodelist::CtCodelist(char* json)
{
	this->fromJson(json);
}

char*
CtCodelist::toJson()
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
	if (isprimitive("CtCodelistLinks")) {
		CtCodelistLinks obj = getLinks();
		node = converttoJson(&obj, "CtCodelistLinks", "");
	}
	else {
		
		CtCodelistLinks obj = static_cast<CtCodelistLinks> (getLinks());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *_linksKey = "_links";
	json_object_set_member(pJsonObject, _linksKey, node);
	if (isprimitive("CtPackageTerm")) {
		list<CtPackageTerm> new_list = static_cast<list <CtPackageTerm> > (getTerms());
		node = converttoJson(&new_list, "CtPackageTerm", "array");
	} else {
		node = json_node_alloc();
		list<CtPackageTerm> new_list = static_cast<list <CtPackageTerm> > (getTerms());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<CtPackageTerm>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			CtPackageTerm obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *termsKey = "terms";
	json_object_set_member(pJsonObject, termsKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
CtCodelist::getConceptId()
{
	return conceptId;
}

void
CtCodelist::setConceptId(std::string  conceptId)
{
	this->conceptId = conceptId;
}

std::string
CtCodelist::getExtensible()
{
	return extensible;
}

void
CtCodelist::setExtensible(std::string  extensible)
{
	this->extensible = extensible;
}

std::string
CtCodelist::getName()
{
	return name;
}

void
CtCodelist::setName(std::string  name)
{
	this->name = name;
}

std::string
CtCodelist::getSubmissionValue()
{
	return submissionValue;
}

void
CtCodelist::setSubmissionValue(std::string  submissionValue)
{
	this->submissionValue = submissionValue;
}

std::string
CtCodelist::getDefinition()
{
	return definition;
}

void
CtCodelist::setDefinition(std::string  definition)
{
	this->definition = definition;
}

std::string
CtCodelist::getPreferredTerm()
{
	return preferredTerm;
}

void
CtCodelist::setPreferredTerm(std::string  preferredTerm)
{
	this->preferredTerm = preferredTerm;
}

std::list<std::string>
CtCodelist::getSynonyms()
{
	return synonyms;
}

void
CtCodelist::setSynonyms(std::list <std::string> synonyms)
{
	this->synonyms = synonyms;
}

CtCodelistLinks
CtCodelist::getLinks()
{
	return _links;
}

void
CtCodelist::setLinks(CtCodelistLinks  _links)
{
	this->_links = _links;
}

std::list<CtPackageTerm>
CtCodelist::getTerms()
{
	return terms;
}

void
CtCodelist::setTerms(std::list <CtPackageTerm> terms)
{
	this->terms = terms;
}



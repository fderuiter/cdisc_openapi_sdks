#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "About.h"

using namespace std;
using namespace Tizen::ArtikCloud;

About::About()
{
	//__init();
}

About::~About()
{
	//__cleanup();
}

void
About::__init()
{
	//_links = new AboutLinks();
	//releasenotes = std::string();
	//apidocumentation = std::string();
}

void
About::__cleanup()
{
	//if(_links != NULL) {
	//
	//delete _links;
	//_links = NULL;
	//}
	//if(releasenotes != NULL) {
	//
	//delete releasenotes;
	//releasenotes = NULL;
	//}
	//if(apidocumentation != NULL) {
	//
	//delete apidocumentation;
	//apidocumentation = NULL;
	//}
	//
}

void
About::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *_linksKey = "_links";
	node = json_object_get_member(pJsonObject, _linksKey);
	if (node !=NULL) {
	

		if (isprimitive("AboutLinks")) {
			jsonToValue(&_links, node, "AboutLinks", "AboutLinks");
		} else {
			
			AboutLinks* obj = static_cast<AboutLinks*> (&_links);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *releasenotesKey = "release-notes";
	node = json_object_get_member(pJsonObject, releasenotesKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&releasenotes, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *apidocumentationKey = "api-documentation";
	node = json_object_get_member(pJsonObject, apidocumentationKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&apidocumentation, node, "std::string", "");
		} else {
			
		}
	}
}

About::About(char* json)
{
	this->fromJson(json);
}

char*
About::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("AboutLinks")) {
		AboutLinks obj = getLinks();
		node = converttoJson(&obj, "AboutLinks", "");
	}
	else {
		
		AboutLinks obj = static_cast<AboutLinks> (getLinks());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *_linksKey = "_links";
	json_object_set_member(pJsonObject, _linksKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getReleasenotes();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *releasenotesKey = "release-notes";
	json_object_set_member(pJsonObject, releasenotesKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getApidocumentation();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *apidocumentationKey = "api-documentation";
	json_object_set_member(pJsonObject, apidocumentationKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

AboutLinks
About::getLinks()
{
	return _links;
}

void
About::setLinks(AboutLinks  _links)
{
	this->_links = _links;
}

std::string
About::getReleasenotes()
{
	return releasenotes;
}

void
About::setReleasenotes(std::string  releasenotes)
{
	this->releasenotes = releasenotes;
}

std::string
About::getApidocumentation()
{
	return apidocumentation;
}

void
About::setApidocumentation(std::string  apidocumentation)
{
	this->apidocumentation = apidocumentation;
}



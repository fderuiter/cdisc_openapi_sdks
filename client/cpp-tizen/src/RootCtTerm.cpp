#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "RootCtTerm.h"

using namespace std;
using namespace Tizen::ArtikCloud;

RootCtTerm::RootCtTerm()
{
	//__init();
}

RootCtTerm::~RootCtTerm()
{
	//__cleanup();
}

void
RootCtTerm::__init()
{
	//_links = new RootCtTermLinks();
}

void
RootCtTerm::__cleanup()
{
	//if(_links != NULL) {
	//
	//delete _links;
	//_links = NULL;
	//}
	//
}

void
RootCtTerm::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *_linksKey = "_links";
	node = json_object_get_member(pJsonObject, _linksKey);
	if (node !=NULL) {
	

		if (isprimitive("RootCtTermLinks")) {
			jsonToValue(&_links, node, "RootCtTermLinks", "RootCtTermLinks");
		} else {
			
			RootCtTermLinks* obj = static_cast<RootCtTermLinks*> (&_links);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

RootCtTerm::RootCtTerm(char* json)
{
	this->fromJson(json);
}

char*
RootCtTerm::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("RootCtTermLinks")) {
		RootCtTermLinks obj = getLinks();
		node = converttoJson(&obj, "RootCtTermLinks", "");
	}
	else {
		
		RootCtTermLinks obj = static_cast<RootCtTermLinks> (getLinks());
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

RootCtTermLinks
RootCtTerm::getLinks()
{
	return _links;
}

void
RootCtTerm::setLinks(RootCtTermLinks  _links)
{
	this->_links = _links;
}



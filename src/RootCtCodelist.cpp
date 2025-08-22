#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "RootCtCodelist.h"

using namespace std;
using namespace Tizen::ArtikCloud;

RootCtCodelist::RootCtCodelist()
{
	//__init();
}

RootCtCodelist::~RootCtCodelist()
{
	//__cleanup();
}

void
RootCtCodelist::__init()
{
	//_links = new RootCtCodelistLinks();
}

void
RootCtCodelist::__cleanup()
{
	//if(_links != NULL) {
	//
	//delete _links;
	//_links = NULL;
	//}
	//
}

void
RootCtCodelist::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *_linksKey = "_links";
	node = json_object_get_member(pJsonObject, _linksKey);
	if (node !=NULL) {
	

		if (isprimitive("RootCtCodelistLinks")) {
			jsonToValue(&_links, node, "RootCtCodelistLinks", "RootCtCodelistLinks");
		} else {
			
			RootCtCodelistLinks* obj = static_cast<RootCtCodelistLinks*> (&_links);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

RootCtCodelist::RootCtCodelist(char* json)
{
	this->fromJson(json);
}

char*
RootCtCodelist::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("RootCtCodelistLinks")) {
		RootCtCodelistLinks obj = getLinks();
		node = converttoJson(&obj, "RootCtCodelistLinks", "");
	}
	else {
		
		RootCtCodelistLinks obj = static_cast<RootCtCodelistLinks> (getLinks());
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

RootCtCodelistLinks
RootCtCodelist::getLinks()
{
	return _links;
}

void
RootCtCodelist::setLinks(RootCtCodelistLinks  _links)
{
	this->_links = _links;
}



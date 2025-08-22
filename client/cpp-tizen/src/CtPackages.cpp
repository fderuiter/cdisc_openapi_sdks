#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "CtPackages.h"

using namespace std;
using namespace Tizen::ArtikCloud;

CtPackages::CtPackages()
{
	//__init();
}

CtPackages::~CtPackages()
{
	//__cleanup();
}

void
CtPackages::__init()
{
	//_links = new CtPackagesLinks();
}

void
CtPackages::__cleanup()
{
	//if(_links != NULL) {
	//
	//delete _links;
	//_links = NULL;
	//}
	//
}

void
CtPackages::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *_linksKey = "_links";
	node = json_object_get_member(pJsonObject, _linksKey);
	if (node !=NULL) {
	

		if (isprimitive("CtPackagesLinks")) {
			jsonToValue(&_links, node, "CtPackagesLinks", "CtPackagesLinks");
		} else {
			
			CtPackagesLinks* obj = static_cast<CtPackagesLinks*> (&_links);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

CtPackages::CtPackages(char* json)
{
	this->fromJson(json);
}

char*
CtPackages::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("CtPackagesLinks")) {
		CtPackagesLinks obj = getLinks();
		node = converttoJson(&obj, "CtPackagesLinks", "");
	}
	else {
		
		CtPackagesLinks obj = static_cast<CtPackagesLinks> (getLinks());
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

CtPackagesLinks
CtPackages::getLinks()
{
	return _links;
}

void
CtPackages::setLinks(CtPackagesLinks  _links)
{
	this->_links = _links;
}



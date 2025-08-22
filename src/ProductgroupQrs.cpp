#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ProductgroupQrs.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ProductgroupQrs::ProductgroupQrs()
{
	//__init();
}

ProductgroupQrs::~ProductgroupQrs()
{
	//__cleanup();
}

void
ProductgroupQrs::__init()
{
	//_links = new ProductgroupQrsLinks();
}

void
ProductgroupQrs::__cleanup()
{
	//if(_links != NULL) {
	//
	//delete _links;
	//_links = NULL;
	//}
	//
}

void
ProductgroupQrs::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *_linksKey = "_links";
	node = json_object_get_member(pJsonObject, _linksKey);
	if (node !=NULL) {
	

		if (isprimitive("ProductgroupQrsLinks")) {
			jsonToValue(&_links, node, "ProductgroupQrsLinks", "ProductgroupQrsLinks");
		} else {
			
			ProductgroupQrsLinks* obj = static_cast<ProductgroupQrsLinks*> (&_links);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

ProductgroupQrs::ProductgroupQrs(char* json)
{
	this->fromJson(json);
}

char*
ProductgroupQrs::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("ProductgroupQrsLinks")) {
		ProductgroupQrsLinks obj = getLinks();
		node = converttoJson(&obj, "ProductgroupQrsLinks", "");
	}
	else {
		
		ProductgroupQrsLinks obj = static_cast<ProductgroupQrsLinks> (getLinks());
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

ProductgroupQrsLinks
ProductgroupQrs::getLinks()
{
	return _links;
}

void
ProductgroupQrs::setLinks(ProductgroupQrsLinks  _links)
{
	this->_links = _links;
}



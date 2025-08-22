#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "Products.h"

using namespace std;
using namespace Tizen::ArtikCloud;

Products::Products()
{
	//__init();
}

Products::~Products()
{
	//__cleanup();
}

void
Products::__init()
{
	//_links = new ProductsLinks();
}

void
Products::__cleanup()
{
	//if(_links != NULL) {
	//
	//delete _links;
	//_links = NULL;
	//}
	//
}

void
Products::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *_linksKey = "_links";
	node = json_object_get_member(pJsonObject, _linksKey);
	if (node !=NULL) {
	

		if (isprimitive("ProductsLinks")) {
			jsonToValue(&_links, node, "ProductsLinks", "ProductsLinks");
		} else {
			
			ProductsLinks* obj = static_cast<ProductsLinks*> (&_links);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

Products::Products(char* json)
{
	this->fromJson(json);
}

char*
Products::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("ProductsLinks")) {
		ProductsLinks obj = getLinks();
		node = converttoJson(&obj, "ProductsLinks", "");
	}
	else {
		
		ProductsLinks obj = static_cast<ProductsLinks> (getLinks());
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

ProductsLinks
Products::getLinks()
{
	return _links;
}

void
Products::setLinks(ProductsLinks  _links)
{
	this->_links = _links;
}



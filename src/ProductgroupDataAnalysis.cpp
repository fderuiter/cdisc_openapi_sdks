#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ProductgroupDataAnalysis.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ProductgroupDataAnalysis::ProductgroupDataAnalysis()
{
	//__init();
}

ProductgroupDataAnalysis::~ProductgroupDataAnalysis()
{
	//__cleanup();
}

void
ProductgroupDataAnalysis::__init()
{
	//_links = new ProductgroupDataAnalysisLinks();
}

void
ProductgroupDataAnalysis::__cleanup()
{
	//if(_links != NULL) {
	//
	//delete _links;
	//_links = NULL;
	//}
	//
}

void
ProductgroupDataAnalysis::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *_linksKey = "_links";
	node = json_object_get_member(pJsonObject, _linksKey);
	if (node !=NULL) {
	

		if (isprimitive("ProductgroupDataAnalysisLinks")) {
			jsonToValue(&_links, node, "ProductgroupDataAnalysisLinks", "ProductgroupDataAnalysisLinks");
		} else {
			
			ProductgroupDataAnalysisLinks* obj = static_cast<ProductgroupDataAnalysisLinks*> (&_links);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

ProductgroupDataAnalysis::ProductgroupDataAnalysis(char* json)
{
	this->fromJson(json);
}

char*
ProductgroupDataAnalysis::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("ProductgroupDataAnalysisLinks")) {
		ProductgroupDataAnalysisLinks obj = getLinks();
		node = converttoJson(&obj, "ProductgroupDataAnalysisLinks", "");
	}
	else {
		
		ProductgroupDataAnalysisLinks obj = static_cast<ProductgroupDataAnalysisLinks> (getLinks());
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

ProductgroupDataAnalysisLinks
ProductgroupDataAnalysis::getLinks()
{
	return _links;
}

void
ProductgroupDataAnalysis::setLinks(ProductgroupDataAnalysisLinks  _links)
{
	this->_links = _links;
}



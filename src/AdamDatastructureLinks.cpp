#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "AdamDatastructureLinks.h"

using namespace std;
using namespace Tizen::ArtikCloud;

AdamDatastructureLinks::AdamDatastructureLinks()
{
	//__init();
}

AdamDatastructureLinks::~AdamDatastructureLinks()
{
	//__cleanup();
}

void
AdamDatastructureLinks::__init()
{
	//self = new AdamDatastructureRef();
	//parentProduct = new AdamProductRef();
	//priorVersion = new AdamDatastructureRef();
}

void
AdamDatastructureLinks::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//if(parentProduct != NULL) {
	//
	//delete parentProduct;
	//parentProduct = NULL;
	//}
	//if(priorVersion != NULL) {
	//
	//delete priorVersion;
	//priorVersion = NULL;
	//}
	//
}

void
AdamDatastructureLinks::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("AdamDatastructureRef")) {
			jsonToValue(&self, node, "AdamDatastructureRef", "AdamDatastructureRef");
		} else {
			
			AdamDatastructureRef* obj = static_cast<AdamDatastructureRef*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *parentProductKey = "parentProduct";
	node = json_object_get_member(pJsonObject, parentProductKey);
	if (node !=NULL) {
	

		if (isprimitive("AdamProductRef")) {
			jsonToValue(&parentProduct, node, "AdamProductRef", "AdamProductRef");
		} else {
			
			AdamProductRef* obj = static_cast<AdamProductRef*> (&parentProduct);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *priorVersionKey = "priorVersion";
	node = json_object_get_member(pJsonObject, priorVersionKey);
	if (node !=NULL) {
	

		if (isprimitive("AdamDatastructureRef")) {
			jsonToValue(&priorVersion, node, "AdamDatastructureRef", "AdamDatastructureRef");
		} else {
			
			AdamDatastructureRef* obj = static_cast<AdamDatastructureRef*> (&priorVersion);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

AdamDatastructureLinks::AdamDatastructureLinks(char* json)
{
	this->fromJson(json);
}

char*
AdamDatastructureLinks::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("AdamDatastructureRef")) {
		AdamDatastructureRef obj = getSelf();
		node = converttoJson(&obj, "AdamDatastructureRef", "");
	}
	else {
		
		AdamDatastructureRef obj = static_cast<AdamDatastructureRef> (getSelf());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *selfKey = "self";
	json_object_set_member(pJsonObject, selfKey, node);
	if (isprimitive("AdamProductRef")) {
		AdamProductRef obj = getParentProduct();
		node = converttoJson(&obj, "AdamProductRef", "");
	}
	else {
		
		AdamProductRef obj = static_cast<AdamProductRef> (getParentProduct());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *parentProductKey = "parentProduct";
	json_object_set_member(pJsonObject, parentProductKey, node);
	if (isprimitive("AdamDatastructureRef")) {
		AdamDatastructureRef obj = getPriorVersion();
		node = converttoJson(&obj, "AdamDatastructureRef", "");
	}
	else {
		
		AdamDatastructureRef obj = static_cast<AdamDatastructureRef> (getPriorVersion());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *priorVersionKey = "priorVersion";
	json_object_set_member(pJsonObject, priorVersionKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

AdamDatastructureRef
AdamDatastructureLinks::getSelf()
{
	return self;
}

void
AdamDatastructureLinks::setSelf(AdamDatastructureRef  self)
{
	this->self = self;
}

AdamProductRef
AdamDatastructureLinks::getParentProduct()
{
	return parentProduct;
}

void
AdamDatastructureLinks::setParentProduct(AdamProductRef  parentProduct)
{
	this->parentProduct = parentProduct;
}

AdamDatastructureRef
AdamDatastructureLinks::getPriorVersion()
{
	return priorVersion;
}

void
AdamDatastructureLinks::setPriorVersion(AdamDatastructureRef  priorVersion)
{
	this->priorVersion = priorVersion;
}



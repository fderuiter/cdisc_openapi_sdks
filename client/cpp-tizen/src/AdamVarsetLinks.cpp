#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "AdamVarsetLinks.h"

using namespace std;
using namespace Tizen::ArtikCloud;

AdamVarsetLinks::AdamVarsetLinks()
{
	//__init();
}

AdamVarsetLinks::~AdamVarsetLinks()
{
	//__cleanup();
}

void
AdamVarsetLinks::__init()
{
	//self = new AdamVarsetRef();
	//parentProduct = new AdamProductRef();
	//parentDatastructure = new AdamDatastructureRef();
	//priorVersion = new AdamVarsetRef();
}

void
AdamVarsetLinks::__cleanup()
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
	//if(parentDatastructure != NULL) {
	//
	//delete parentDatastructure;
	//parentDatastructure = NULL;
	//}
	//if(priorVersion != NULL) {
	//
	//delete priorVersion;
	//priorVersion = NULL;
	//}
	//
}

void
AdamVarsetLinks::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("AdamVarsetRef")) {
			jsonToValue(&self, node, "AdamVarsetRef", "AdamVarsetRef");
		} else {
			
			AdamVarsetRef* obj = static_cast<AdamVarsetRef*> (&self);
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
	const gchar *parentDatastructureKey = "parentDatastructure";
	node = json_object_get_member(pJsonObject, parentDatastructureKey);
	if (node !=NULL) {
	

		if (isprimitive("AdamDatastructureRef")) {
			jsonToValue(&parentDatastructure, node, "AdamDatastructureRef", "AdamDatastructureRef");
		} else {
			
			AdamDatastructureRef* obj = static_cast<AdamDatastructureRef*> (&parentDatastructure);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *priorVersionKey = "priorVersion";
	node = json_object_get_member(pJsonObject, priorVersionKey);
	if (node !=NULL) {
	

		if (isprimitive("AdamVarsetRef")) {
			jsonToValue(&priorVersion, node, "AdamVarsetRef", "AdamVarsetRef");
		} else {
			
			AdamVarsetRef* obj = static_cast<AdamVarsetRef*> (&priorVersion);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

AdamVarsetLinks::AdamVarsetLinks(char* json)
{
	this->fromJson(json);
}

char*
AdamVarsetLinks::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("AdamVarsetRef")) {
		AdamVarsetRef obj = getSelf();
		node = converttoJson(&obj, "AdamVarsetRef", "");
	}
	else {
		
		AdamVarsetRef obj = static_cast<AdamVarsetRef> (getSelf());
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
		AdamDatastructureRef obj = getParentDatastructure();
		node = converttoJson(&obj, "AdamDatastructureRef", "");
	}
	else {
		
		AdamDatastructureRef obj = static_cast<AdamDatastructureRef> (getParentDatastructure());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *parentDatastructureKey = "parentDatastructure";
	json_object_set_member(pJsonObject, parentDatastructureKey, node);
	if (isprimitive("AdamVarsetRef")) {
		AdamVarsetRef obj = getPriorVersion();
		node = converttoJson(&obj, "AdamVarsetRef", "");
	}
	else {
		
		AdamVarsetRef obj = static_cast<AdamVarsetRef> (getPriorVersion());
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

AdamVarsetRef
AdamVarsetLinks::getSelf()
{
	return self;
}

void
AdamVarsetLinks::setSelf(AdamVarsetRef  self)
{
	this->self = self;
}

AdamProductRef
AdamVarsetLinks::getParentProduct()
{
	return parentProduct;
}

void
AdamVarsetLinks::setParentProduct(AdamProductRef  parentProduct)
{
	this->parentProduct = parentProduct;
}

AdamDatastructureRef
AdamVarsetLinks::getParentDatastructure()
{
	return parentDatastructure;
}

void
AdamVarsetLinks::setParentDatastructure(AdamDatastructureRef  parentDatastructure)
{
	this->parentDatastructure = parentDatastructure;
}

AdamVarsetRef
AdamVarsetLinks::getPriorVersion()
{
	return priorVersion;
}

void
AdamVarsetLinks::setPriorVersion(AdamVarsetRef  priorVersion)
{
	this->priorVersion = priorVersion;
}



#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "SdtmDatasetVariableLinks.h"

using namespace std;
using namespace Tizen::ArtikCloud;

SdtmDatasetVariableLinks::SdtmDatasetVariableLinks()
{
	//__init();
}

SdtmDatasetVariableLinks::~SdtmDatasetVariableLinks()
{
	//__cleanup();
}

void
SdtmDatasetVariableLinks::__init()
{
	//self = new SdtmDatasetVariableRef();
	//parentProduct = new SdtmProductRef();
	//parentDataset = new SdtmDatasetRef();
	//rootItem = new RootSdtmDatasetVariableRef();
	//priorVersion = new SdtmDatasetVariableRef();
}

void
SdtmDatasetVariableLinks::__cleanup()
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
	//if(parentDataset != NULL) {
	//
	//delete parentDataset;
	//parentDataset = NULL;
	//}
	//if(rootItem != NULL) {
	//
	//delete rootItem;
	//rootItem = NULL;
	//}
	//if(priorVersion != NULL) {
	//
	//delete priorVersion;
	//priorVersion = NULL;
	//}
	//
}

void
SdtmDatasetVariableLinks::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("SdtmDatasetVariableRef")) {
			jsonToValue(&self, node, "SdtmDatasetVariableRef", "SdtmDatasetVariableRef");
		} else {
			
			SdtmDatasetVariableRef* obj = static_cast<SdtmDatasetVariableRef*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *parentProductKey = "parentProduct";
	node = json_object_get_member(pJsonObject, parentProductKey);
	if (node !=NULL) {
	

		if (isprimitive("SdtmProductRef")) {
			jsonToValue(&parentProduct, node, "SdtmProductRef", "SdtmProductRef");
		} else {
			
			SdtmProductRef* obj = static_cast<SdtmProductRef*> (&parentProduct);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *parentDatasetKey = "parentDataset";
	node = json_object_get_member(pJsonObject, parentDatasetKey);
	if (node !=NULL) {
	

		if (isprimitive("SdtmDatasetRef")) {
			jsonToValue(&parentDataset, node, "SdtmDatasetRef", "SdtmDatasetRef");
		} else {
			
			SdtmDatasetRef* obj = static_cast<SdtmDatasetRef*> (&parentDataset);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *rootItemKey = "rootItem";
	node = json_object_get_member(pJsonObject, rootItemKey);
	if (node !=NULL) {
	

		if (isprimitive("RootSdtmDatasetVariableRef")) {
			jsonToValue(&rootItem, node, "RootSdtmDatasetVariableRef", "RootSdtmDatasetVariableRef");
		} else {
			
			RootSdtmDatasetVariableRef* obj = static_cast<RootSdtmDatasetVariableRef*> (&rootItem);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *priorVersionKey = "priorVersion";
	node = json_object_get_member(pJsonObject, priorVersionKey);
	if (node !=NULL) {
	

		if (isprimitive("SdtmDatasetVariableRef")) {
			jsonToValue(&priorVersion, node, "SdtmDatasetVariableRef", "SdtmDatasetVariableRef");
		} else {
			
			SdtmDatasetVariableRef* obj = static_cast<SdtmDatasetVariableRef*> (&priorVersion);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

SdtmDatasetVariableLinks::SdtmDatasetVariableLinks(char* json)
{
	this->fromJson(json);
}

char*
SdtmDatasetVariableLinks::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("SdtmDatasetVariableRef")) {
		SdtmDatasetVariableRef obj = getSelf();
		node = converttoJson(&obj, "SdtmDatasetVariableRef", "");
	}
	else {
		
		SdtmDatasetVariableRef obj = static_cast<SdtmDatasetVariableRef> (getSelf());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *selfKey = "self";
	json_object_set_member(pJsonObject, selfKey, node);
	if (isprimitive("SdtmProductRef")) {
		SdtmProductRef obj = getParentProduct();
		node = converttoJson(&obj, "SdtmProductRef", "");
	}
	else {
		
		SdtmProductRef obj = static_cast<SdtmProductRef> (getParentProduct());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *parentProductKey = "parentProduct";
	json_object_set_member(pJsonObject, parentProductKey, node);
	if (isprimitive("SdtmDatasetRef")) {
		SdtmDatasetRef obj = getParentDataset();
		node = converttoJson(&obj, "SdtmDatasetRef", "");
	}
	else {
		
		SdtmDatasetRef obj = static_cast<SdtmDatasetRef> (getParentDataset());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *parentDatasetKey = "parentDataset";
	json_object_set_member(pJsonObject, parentDatasetKey, node);
	if (isprimitive("RootSdtmDatasetVariableRef")) {
		RootSdtmDatasetVariableRef obj = getRootItem();
		node = converttoJson(&obj, "RootSdtmDatasetVariableRef", "");
	}
	else {
		
		RootSdtmDatasetVariableRef obj = static_cast<RootSdtmDatasetVariableRef> (getRootItem());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *rootItemKey = "rootItem";
	json_object_set_member(pJsonObject, rootItemKey, node);
	if (isprimitive("SdtmDatasetVariableRef")) {
		SdtmDatasetVariableRef obj = getPriorVersion();
		node = converttoJson(&obj, "SdtmDatasetVariableRef", "");
	}
	else {
		
		SdtmDatasetVariableRef obj = static_cast<SdtmDatasetVariableRef> (getPriorVersion());
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

SdtmDatasetVariableRef
SdtmDatasetVariableLinks::getSelf()
{
	return self;
}

void
SdtmDatasetVariableLinks::setSelf(SdtmDatasetVariableRef  self)
{
	this->self = self;
}

SdtmProductRef
SdtmDatasetVariableLinks::getParentProduct()
{
	return parentProduct;
}

void
SdtmDatasetVariableLinks::setParentProduct(SdtmProductRef  parentProduct)
{
	this->parentProduct = parentProduct;
}

SdtmDatasetRef
SdtmDatasetVariableLinks::getParentDataset()
{
	return parentDataset;
}

void
SdtmDatasetVariableLinks::setParentDataset(SdtmDatasetRef  parentDataset)
{
	this->parentDataset = parentDataset;
}

RootSdtmDatasetVariableRef
SdtmDatasetVariableLinks::getRootItem()
{
	return rootItem;
}

void
SdtmDatasetVariableLinks::setRootItem(RootSdtmDatasetVariableRef  rootItem)
{
	this->rootItem = rootItem;
}

SdtmDatasetVariableRef
SdtmDatasetVariableLinks::getPriorVersion()
{
	return priorVersion;
}

void
SdtmDatasetVariableLinks::setPriorVersion(SdtmDatasetVariableRef  priorVersion)
{
	this->priorVersion = priorVersion;
}



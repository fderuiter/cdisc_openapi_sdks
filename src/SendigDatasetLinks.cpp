#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "SendigDatasetLinks.h"

using namespace std;
using namespace Tizen::ArtikCloud;

SendigDatasetLinks::SendigDatasetLinks()
{
	//__init();
}

SendigDatasetLinks::~SendigDatasetLinks()
{
	//__cleanup();
}

void
SendigDatasetLinks::__init()
{
	//self = new SendigDatasetRef();
	//modelDataset = new SdtmDatasetRef();
	//parentProduct = new SendigProductRef();
	//parentClass = new SendigClassRef();
	//priorVersion = new SendigDatasetRef();
}

void
SendigDatasetLinks::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//if(modelDataset != NULL) {
	//
	//delete modelDataset;
	//modelDataset = NULL;
	//}
	//if(parentProduct != NULL) {
	//
	//delete parentProduct;
	//parentProduct = NULL;
	//}
	//if(parentClass != NULL) {
	//
	//delete parentClass;
	//parentClass = NULL;
	//}
	//if(priorVersion != NULL) {
	//
	//delete priorVersion;
	//priorVersion = NULL;
	//}
	//
}

void
SendigDatasetLinks::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("SendigDatasetRef")) {
			jsonToValue(&self, node, "SendigDatasetRef", "SendigDatasetRef");
		} else {
			
			SendigDatasetRef* obj = static_cast<SendigDatasetRef*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *modelDatasetKey = "modelDataset";
	node = json_object_get_member(pJsonObject, modelDatasetKey);
	if (node !=NULL) {
	

		if (isprimitive("SdtmDatasetRef")) {
			jsonToValue(&modelDataset, node, "SdtmDatasetRef", "SdtmDatasetRef");
		} else {
			
			SdtmDatasetRef* obj = static_cast<SdtmDatasetRef*> (&modelDataset);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *parentProductKey = "parentProduct";
	node = json_object_get_member(pJsonObject, parentProductKey);
	if (node !=NULL) {
	

		if (isprimitive("SendigProductRef")) {
			jsonToValue(&parentProduct, node, "SendigProductRef", "SendigProductRef");
		} else {
			
			SendigProductRef* obj = static_cast<SendigProductRef*> (&parentProduct);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *parentClassKey = "parentClass";
	node = json_object_get_member(pJsonObject, parentClassKey);
	if (node !=NULL) {
	

		if (isprimitive("SendigClassRef")) {
			jsonToValue(&parentClass, node, "SendigClassRef", "SendigClassRef");
		} else {
			
			SendigClassRef* obj = static_cast<SendigClassRef*> (&parentClass);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *priorVersionKey = "priorVersion";
	node = json_object_get_member(pJsonObject, priorVersionKey);
	if (node !=NULL) {
	

		if (isprimitive("SendigDatasetRef")) {
			jsonToValue(&priorVersion, node, "SendigDatasetRef", "SendigDatasetRef");
		} else {
			
			SendigDatasetRef* obj = static_cast<SendigDatasetRef*> (&priorVersion);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

SendigDatasetLinks::SendigDatasetLinks(char* json)
{
	this->fromJson(json);
}

char*
SendigDatasetLinks::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("SendigDatasetRef")) {
		SendigDatasetRef obj = getSelf();
		node = converttoJson(&obj, "SendigDatasetRef", "");
	}
	else {
		
		SendigDatasetRef obj = static_cast<SendigDatasetRef> (getSelf());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *selfKey = "self";
	json_object_set_member(pJsonObject, selfKey, node);
	if (isprimitive("SdtmDatasetRef")) {
		SdtmDatasetRef obj = getModelDataset();
		node = converttoJson(&obj, "SdtmDatasetRef", "");
	}
	else {
		
		SdtmDatasetRef obj = static_cast<SdtmDatasetRef> (getModelDataset());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *modelDatasetKey = "modelDataset";
	json_object_set_member(pJsonObject, modelDatasetKey, node);
	if (isprimitive("SendigProductRef")) {
		SendigProductRef obj = getParentProduct();
		node = converttoJson(&obj, "SendigProductRef", "");
	}
	else {
		
		SendigProductRef obj = static_cast<SendigProductRef> (getParentProduct());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *parentProductKey = "parentProduct";
	json_object_set_member(pJsonObject, parentProductKey, node);
	if (isprimitive("SendigClassRef")) {
		SendigClassRef obj = getParentClass();
		node = converttoJson(&obj, "SendigClassRef", "");
	}
	else {
		
		SendigClassRef obj = static_cast<SendigClassRef> (getParentClass());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *parentClassKey = "parentClass";
	json_object_set_member(pJsonObject, parentClassKey, node);
	if (isprimitive("SendigDatasetRef")) {
		SendigDatasetRef obj = getPriorVersion();
		node = converttoJson(&obj, "SendigDatasetRef", "");
	}
	else {
		
		SendigDatasetRef obj = static_cast<SendigDatasetRef> (getPriorVersion());
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

SendigDatasetRef
SendigDatasetLinks::getSelf()
{
	return self;
}

void
SendigDatasetLinks::setSelf(SendigDatasetRef  self)
{
	this->self = self;
}

SdtmDatasetRef
SendigDatasetLinks::getModelDataset()
{
	return modelDataset;
}

void
SendigDatasetLinks::setModelDataset(SdtmDatasetRef  modelDataset)
{
	this->modelDataset = modelDataset;
}

SendigProductRef
SendigDatasetLinks::getParentProduct()
{
	return parentProduct;
}

void
SendigDatasetLinks::setParentProduct(SendigProductRef  parentProduct)
{
	this->parentProduct = parentProduct;
}

SendigClassRef
SendigDatasetLinks::getParentClass()
{
	return parentClass;
}

void
SendigDatasetLinks::setParentClass(SendigClassRef  parentClass)
{
	this->parentClass = parentClass;
}

SendigDatasetRef
SendigDatasetLinks::getPriorVersion()
{
	return priorVersion;
}

void
SendigDatasetLinks::setPriorVersion(SendigDatasetRef  priorVersion)
{
	this->priorVersion = priorVersion;
}



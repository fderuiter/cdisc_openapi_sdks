#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "SdtmigDatasetLinks.h"

using namespace std;
using namespace Tizen::ArtikCloud;

SdtmigDatasetLinks::SdtmigDatasetLinks()
{
	//__init();
}

SdtmigDatasetLinks::~SdtmigDatasetLinks()
{
	//__cleanup();
}

void
SdtmigDatasetLinks::__init()
{
	//self = new SdtmigDatasetRef();
	//modelDataset = new SdtmDatasetRef();
	//parentProduct = new SdtmigProductRef();
	//parentClass = new SdtmigClassRef();
	//priorVersion = new SdtmigDatasetRef();
}

void
SdtmigDatasetLinks::__cleanup()
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
SdtmigDatasetLinks::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("SdtmigDatasetRef")) {
			jsonToValue(&self, node, "SdtmigDatasetRef", "SdtmigDatasetRef");
		} else {
			
			SdtmigDatasetRef* obj = static_cast<SdtmigDatasetRef*> (&self);
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
	

		if (isprimitive("SdtmigProductRef")) {
			jsonToValue(&parentProduct, node, "SdtmigProductRef", "SdtmigProductRef");
		} else {
			
			SdtmigProductRef* obj = static_cast<SdtmigProductRef*> (&parentProduct);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *parentClassKey = "parentClass";
	node = json_object_get_member(pJsonObject, parentClassKey);
	if (node !=NULL) {
	

		if (isprimitive("SdtmigClassRef")) {
			jsonToValue(&parentClass, node, "SdtmigClassRef", "SdtmigClassRef");
		} else {
			
			SdtmigClassRef* obj = static_cast<SdtmigClassRef*> (&parentClass);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *priorVersionKey = "priorVersion";
	node = json_object_get_member(pJsonObject, priorVersionKey);
	if (node !=NULL) {
	

		if (isprimitive("SdtmigDatasetRef")) {
			jsonToValue(&priorVersion, node, "SdtmigDatasetRef", "SdtmigDatasetRef");
		} else {
			
			SdtmigDatasetRef* obj = static_cast<SdtmigDatasetRef*> (&priorVersion);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

SdtmigDatasetLinks::SdtmigDatasetLinks(char* json)
{
	this->fromJson(json);
}

char*
SdtmigDatasetLinks::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("SdtmigDatasetRef")) {
		SdtmigDatasetRef obj = getSelf();
		node = converttoJson(&obj, "SdtmigDatasetRef", "");
	}
	else {
		
		SdtmigDatasetRef obj = static_cast<SdtmigDatasetRef> (getSelf());
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
	if (isprimitive("SdtmigProductRef")) {
		SdtmigProductRef obj = getParentProduct();
		node = converttoJson(&obj, "SdtmigProductRef", "");
	}
	else {
		
		SdtmigProductRef obj = static_cast<SdtmigProductRef> (getParentProduct());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *parentProductKey = "parentProduct";
	json_object_set_member(pJsonObject, parentProductKey, node);
	if (isprimitive("SdtmigClassRef")) {
		SdtmigClassRef obj = getParentClass();
		node = converttoJson(&obj, "SdtmigClassRef", "");
	}
	else {
		
		SdtmigClassRef obj = static_cast<SdtmigClassRef> (getParentClass());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *parentClassKey = "parentClass";
	json_object_set_member(pJsonObject, parentClassKey, node);
	if (isprimitive("SdtmigDatasetRef")) {
		SdtmigDatasetRef obj = getPriorVersion();
		node = converttoJson(&obj, "SdtmigDatasetRef", "");
	}
	else {
		
		SdtmigDatasetRef obj = static_cast<SdtmigDatasetRef> (getPriorVersion());
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

SdtmigDatasetRef
SdtmigDatasetLinks::getSelf()
{
	return self;
}

void
SdtmigDatasetLinks::setSelf(SdtmigDatasetRef  self)
{
	this->self = self;
}

SdtmDatasetRef
SdtmigDatasetLinks::getModelDataset()
{
	return modelDataset;
}

void
SdtmigDatasetLinks::setModelDataset(SdtmDatasetRef  modelDataset)
{
	this->modelDataset = modelDataset;
}

SdtmigProductRef
SdtmigDatasetLinks::getParentProduct()
{
	return parentProduct;
}

void
SdtmigDatasetLinks::setParentProduct(SdtmigProductRef  parentProduct)
{
	this->parentProduct = parentProduct;
}

SdtmigClassRef
SdtmigDatasetLinks::getParentClass()
{
	return parentClass;
}

void
SdtmigDatasetLinks::setParentClass(SdtmigClassRef  parentClass)
{
	this->parentClass = parentClass;
}

SdtmigDatasetRef
SdtmigDatasetLinks::getPriorVersion()
{
	return priorVersion;
}

void
SdtmigDatasetLinks::setPriorVersion(SdtmigDatasetRef  priorVersion)
{
	this->priorVersion = priorVersion;
}



#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "SdtmDatasetLinks.h"

using namespace std;
using namespace Tizen::ArtikCloud;

SdtmDatasetLinks::SdtmDatasetLinks()
{
	//__init();
}

SdtmDatasetLinks::~SdtmDatasetLinks()
{
	//__cleanup();
}

void
SdtmDatasetLinks::__init()
{
	//self = new SdtmDatasetRef();
	//parentProduct = new SdtmProductRef();
	//parentClass = new SdtmClassRef();
	//priorVersion = new SdtmDatasetRef();
}

void
SdtmDatasetLinks::__cleanup()
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
SdtmDatasetLinks::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("SdtmDatasetRef")) {
			jsonToValue(&self, node, "SdtmDatasetRef", "SdtmDatasetRef");
		} else {
			
			SdtmDatasetRef* obj = static_cast<SdtmDatasetRef*> (&self);
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
	const gchar *parentClassKey = "parentClass";
	node = json_object_get_member(pJsonObject, parentClassKey);
	if (node !=NULL) {
	

		if (isprimitive("SdtmClassRef")) {
			jsonToValue(&parentClass, node, "SdtmClassRef", "SdtmClassRef");
		} else {
			
			SdtmClassRef* obj = static_cast<SdtmClassRef*> (&parentClass);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *priorVersionKey = "priorVersion";
	node = json_object_get_member(pJsonObject, priorVersionKey);
	if (node !=NULL) {
	

		if (isprimitive("SdtmDatasetRef")) {
			jsonToValue(&priorVersion, node, "SdtmDatasetRef", "SdtmDatasetRef");
		} else {
			
			SdtmDatasetRef* obj = static_cast<SdtmDatasetRef*> (&priorVersion);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

SdtmDatasetLinks::SdtmDatasetLinks(char* json)
{
	this->fromJson(json);
}

char*
SdtmDatasetLinks::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("SdtmDatasetRef")) {
		SdtmDatasetRef obj = getSelf();
		node = converttoJson(&obj, "SdtmDatasetRef", "");
	}
	else {
		
		SdtmDatasetRef obj = static_cast<SdtmDatasetRef> (getSelf());
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
	if (isprimitive("SdtmClassRef")) {
		SdtmClassRef obj = getParentClass();
		node = converttoJson(&obj, "SdtmClassRef", "");
	}
	else {
		
		SdtmClassRef obj = static_cast<SdtmClassRef> (getParentClass());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *parentClassKey = "parentClass";
	json_object_set_member(pJsonObject, parentClassKey, node);
	if (isprimitive("SdtmDatasetRef")) {
		SdtmDatasetRef obj = getPriorVersion();
		node = converttoJson(&obj, "SdtmDatasetRef", "");
	}
	else {
		
		SdtmDatasetRef obj = static_cast<SdtmDatasetRef> (getPriorVersion());
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

SdtmDatasetRef
SdtmDatasetLinks::getSelf()
{
	return self;
}

void
SdtmDatasetLinks::setSelf(SdtmDatasetRef  self)
{
	this->self = self;
}

SdtmProductRef
SdtmDatasetLinks::getParentProduct()
{
	return parentProduct;
}

void
SdtmDatasetLinks::setParentProduct(SdtmProductRef  parentProduct)
{
	this->parentProduct = parentProduct;
}

SdtmClassRef
SdtmDatasetLinks::getParentClass()
{
	return parentClass;
}

void
SdtmDatasetLinks::setParentClass(SdtmClassRef  parentClass)
{
	this->parentClass = parentClass;
}

SdtmDatasetRef
SdtmDatasetLinks::getPriorVersion()
{
	return priorVersion;
}

void
SdtmDatasetLinks::setPriorVersion(SdtmDatasetRef  priorVersion)
{
	this->priorVersion = priorVersion;
}



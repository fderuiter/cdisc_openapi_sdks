#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "CdashDomainLinks.h"

using namespace std;
using namespace Tizen::ArtikCloud;

CdashDomainLinks::CdashDomainLinks()
{
	//__init();
}

CdashDomainLinks::~CdashDomainLinks()
{
	//__cleanup();
}

void
CdashDomainLinks::__init()
{
	//self = new CdashDomainRef();
	//parentProduct = new CdashProductRef();
	//parentClass = new CdashClassRef();
	//priorVersion = new CdashDomainRef();
}

void
CdashDomainLinks::__cleanup()
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
CdashDomainLinks::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("CdashDomainRef")) {
			jsonToValue(&self, node, "CdashDomainRef", "CdashDomainRef");
		} else {
			
			CdashDomainRef* obj = static_cast<CdashDomainRef*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *parentProductKey = "parentProduct";
	node = json_object_get_member(pJsonObject, parentProductKey);
	if (node !=NULL) {
	

		if (isprimitive("CdashProductRef")) {
			jsonToValue(&parentProduct, node, "CdashProductRef", "CdashProductRef");
		} else {
			
			CdashProductRef* obj = static_cast<CdashProductRef*> (&parentProduct);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *parentClassKey = "parentClass";
	node = json_object_get_member(pJsonObject, parentClassKey);
	if (node !=NULL) {
	

		if (isprimitive("CdashClassRef")) {
			jsonToValue(&parentClass, node, "CdashClassRef", "CdashClassRef");
		} else {
			
			CdashClassRef* obj = static_cast<CdashClassRef*> (&parentClass);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *priorVersionKey = "priorVersion";
	node = json_object_get_member(pJsonObject, priorVersionKey);
	if (node !=NULL) {
	

		if (isprimitive("CdashDomainRef")) {
			jsonToValue(&priorVersion, node, "CdashDomainRef", "CdashDomainRef");
		} else {
			
			CdashDomainRef* obj = static_cast<CdashDomainRef*> (&priorVersion);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

CdashDomainLinks::CdashDomainLinks(char* json)
{
	this->fromJson(json);
}

char*
CdashDomainLinks::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("CdashDomainRef")) {
		CdashDomainRef obj = getSelf();
		node = converttoJson(&obj, "CdashDomainRef", "");
	}
	else {
		
		CdashDomainRef obj = static_cast<CdashDomainRef> (getSelf());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *selfKey = "self";
	json_object_set_member(pJsonObject, selfKey, node);
	if (isprimitive("CdashProductRef")) {
		CdashProductRef obj = getParentProduct();
		node = converttoJson(&obj, "CdashProductRef", "");
	}
	else {
		
		CdashProductRef obj = static_cast<CdashProductRef> (getParentProduct());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *parentProductKey = "parentProduct";
	json_object_set_member(pJsonObject, parentProductKey, node);
	if (isprimitive("CdashClassRef")) {
		CdashClassRef obj = getParentClass();
		node = converttoJson(&obj, "CdashClassRef", "");
	}
	else {
		
		CdashClassRef obj = static_cast<CdashClassRef> (getParentClass());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *parentClassKey = "parentClass";
	json_object_set_member(pJsonObject, parentClassKey, node);
	if (isprimitive("CdashDomainRef")) {
		CdashDomainRef obj = getPriorVersion();
		node = converttoJson(&obj, "CdashDomainRef", "");
	}
	else {
		
		CdashDomainRef obj = static_cast<CdashDomainRef> (getPriorVersion());
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

CdashDomainRef
CdashDomainLinks::getSelf()
{
	return self;
}

void
CdashDomainLinks::setSelf(CdashDomainRef  self)
{
	this->self = self;
}

CdashProductRef
CdashDomainLinks::getParentProduct()
{
	return parentProduct;
}

void
CdashDomainLinks::setParentProduct(CdashProductRef  parentProduct)
{
	this->parentProduct = parentProduct;
}

CdashClassRef
CdashDomainLinks::getParentClass()
{
	return parentClass;
}

void
CdashDomainLinks::setParentClass(CdashClassRef  parentClass)
{
	this->parentClass = parentClass;
}

CdashDomainRef
CdashDomainLinks::getPriorVersion()
{
	return priorVersion;
}

void
CdashDomainLinks::setPriorVersion(CdashDomainRef  priorVersion)
{
	this->priorVersion = priorVersion;
}



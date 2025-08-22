#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "CdashigScenarioLinks.h"

using namespace std;
using namespace Tizen::ArtikCloud;

CdashigScenarioLinks::CdashigScenarioLinks()
{
	//__init();
}

CdashigScenarioLinks::~CdashigScenarioLinks()
{
	//__cleanup();
}

void
CdashigScenarioLinks::__init()
{
	//self = new CdashigScenarioRef();
	//parentProduct = new CdashigProductRef();
	//parentClass = new CdashigClassRef();
	//parentDomain = new CdashigDomainRef();
	//priorVersion = new CdashigScenarioRef();
}

void
CdashigScenarioLinks::__cleanup()
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
	//if(parentDomain != NULL) {
	//
	//delete parentDomain;
	//parentDomain = NULL;
	//}
	//if(priorVersion != NULL) {
	//
	//delete priorVersion;
	//priorVersion = NULL;
	//}
	//
}

void
CdashigScenarioLinks::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("CdashigScenarioRef")) {
			jsonToValue(&self, node, "CdashigScenarioRef", "CdashigScenarioRef");
		} else {
			
			CdashigScenarioRef* obj = static_cast<CdashigScenarioRef*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *parentProductKey = "parentProduct";
	node = json_object_get_member(pJsonObject, parentProductKey);
	if (node !=NULL) {
	

		if (isprimitive("CdashigProductRef")) {
			jsonToValue(&parentProduct, node, "CdashigProductRef", "CdashigProductRef");
		} else {
			
			CdashigProductRef* obj = static_cast<CdashigProductRef*> (&parentProduct);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *parentClassKey = "parentClass";
	node = json_object_get_member(pJsonObject, parentClassKey);
	if (node !=NULL) {
	

		if (isprimitive("CdashigClassRef")) {
			jsonToValue(&parentClass, node, "CdashigClassRef", "CdashigClassRef");
		} else {
			
			CdashigClassRef* obj = static_cast<CdashigClassRef*> (&parentClass);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *parentDomainKey = "parentDomain";
	node = json_object_get_member(pJsonObject, parentDomainKey);
	if (node !=NULL) {
	

		if (isprimitive("CdashigDomainRef")) {
			jsonToValue(&parentDomain, node, "CdashigDomainRef", "CdashigDomainRef");
		} else {
			
			CdashigDomainRef* obj = static_cast<CdashigDomainRef*> (&parentDomain);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *priorVersionKey = "priorVersion";
	node = json_object_get_member(pJsonObject, priorVersionKey);
	if (node !=NULL) {
	

		if (isprimitive("CdashigScenarioRef")) {
			jsonToValue(&priorVersion, node, "CdashigScenarioRef", "CdashigScenarioRef");
		} else {
			
			CdashigScenarioRef* obj = static_cast<CdashigScenarioRef*> (&priorVersion);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

CdashigScenarioLinks::CdashigScenarioLinks(char* json)
{
	this->fromJson(json);
}

char*
CdashigScenarioLinks::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("CdashigScenarioRef")) {
		CdashigScenarioRef obj = getSelf();
		node = converttoJson(&obj, "CdashigScenarioRef", "");
	}
	else {
		
		CdashigScenarioRef obj = static_cast<CdashigScenarioRef> (getSelf());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *selfKey = "self";
	json_object_set_member(pJsonObject, selfKey, node);
	if (isprimitive("CdashigProductRef")) {
		CdashigProductRef obj = getParentProduct();
		node = converttoJson(&obj, "CdashigProductRef", "");
	}
	else {
		
		CdashigProductRef obj = static_cast<CdashigProductRef> (getParentProduct());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *parentProductKey = "parentProduct";
	json_object_set_member(pJsonObject, parentProductKey, node);
	if (isprimitive("CdashigClassRef")) {
		CdashigClassRef obj = getParentClass();
		node = converttoJson(&obj, "CdashigClassRef", "");
	}
	else {
		
		CdashigClassRef obj = static_cast<CdashigClassRef> (getParentClass());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *parentClassKey = "parentClass";
	json_object_set_member(pJsonObject, parentClassKey, node);
	if (isprimitive("CdashigDomainRef")) {
		CdashigDomainRef obj = getParentDomain();
		node = converttoJson(&obj, "CdashigDomainRef", "");
	}
	else {
		
		CdashigDomainRef obj = static_cast<CdashigDomainRef> (getParentDomain());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *parentDomainKey = "parentDomain";
	json_object_set_member(pJsonObject, parentDomainKey, node);
	if (isprimitive("CdashigScenarioRef")) {
		CdashigScenarioRef obj = getPriorVersion();
		node = converttoJson(&obj, "CdashigScenarioRef", "");
	}
	else {
		
		CdashigScenarioRef obj = static_cast<CdashigScenarioRef> (getPriorVersion());
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

CdashigScenarioRef
CdashigScenarioLinks::getSelf()
{
	return self;
}

void
CdashigScenarioLinks::setSelf(CdashigScenarioRef  self)
{
	this->self = self;
}

CdashigProductRef
CdashigScenarioLinks::getParentProduct()
{
	return parentProduct;
}

void
CdashigScenarioLinks::setParentProduct(CdashigProductRef  parentProduct)
{
	this->parentProduct = parentProduct;
}

CdashigClassRef
CdashigScenarioLinks::getParentClass()
{
	return parentClass;
}

void
CdashigScenarioLinks::setParentClass(CdashigClassRef  parentClass)
{
	this->parentClass = parentClass;
}

CdashigDomainRef
CdashigScenarioLinks::getParentDomain()
{
	return parentDomain;
}

void
CdashigScenarioLinks::setParentDomain(CdashigDomainRef  parentDomain)
{
	this->parentDomain = parentDomain;
}

CdashigScenarioRef
CdashigScenarioLinks::getPriorVersion()
{
	return priorVersion;
}

void
CdashigScenarioLinks::setPriorVersion(CdashigScenarioRef  priorVersion)
{
	this->priorVersion = priorVersion;
}



#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "CdashClassLinks.h"

using namespace std;
using namespace Tizen::ArtikCloud;

CdashClassLinks::CdashClassLinks()
{
	//__init();
}

CdashClassLinks::~CdashClassLinks()
{
	//__cleanup();
}

void
CdashClassLinks::__init()
{
	//self = new CdashClassRef();
	//parentProduct = new CdashProductRef();
	//priorVersion = new CdashClassRef();
}

void
CdashClassLinks::__cleanup()
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
CdashClassLinks::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("CdashClassRef")) {
			jsonToValue(&self, node, "CdashClassRef", "CdashClassRef");
		} else {
			
			CdashClassRef* obj = static_cast<CdashClassRef*> (&self);
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
	const gchar *priorVersionKey = "priorVersion";
	node = json_object_get_member(pJsonObject, priorVersionKey);
	if (node !=NULL) {
	

		if (isprimitive("CdashClassRef")) {
			jsonToValue(&priorVersion, node, "CdashClassRef", "CdashClassRef");
		} else {
			
			CdashClassRef* obj = static_cast<CdashClassRef*> (&priorVersion);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

CdashClassLinks::CdashClassLinks(char* json)
{
	this->fromJson(json);
}

char*
CdashClassLinks::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("CdashClassRef")) {
		CdashClassRef obj = getSelf();
		node = converttoJson(&obj, "CdashClassRef", "");
	}
	else {
		
		CdashClassRef obj = static_cast<CdashClassRef> (getSelf());
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
		CdashClassRef obj = getPriorVersion();
		node = converttoJson(&obj, "CdashClassRef", "");
	}
	else {
		
		CdashClassRef obj = static_cast<CdashClassRef> (getPriorVersion());
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

CdashClassRef
CdashClassLinks::getSelf()
{
	return self;
}

void
CdashClassLinks::setSelf(CdashClassRef  self)
{
	this->self = self;
}

CdashProductRef
CdashClassLinks::getParentProduct()
{
	return parentProduct;
}

void
CdashClassLinks::setParentProduct(CdashProductRef  parentProduct)
{
	this->parentProduct = parentProduct;
}

CdashClassRef
CdashClassLinks::getPriorVersion()
{
	return priorVersion;
}

void
CdashClassLinks::setPriorVersion(CdashClassRef  priorVersion)
{
	this->priorVersion = priorVersion;
}



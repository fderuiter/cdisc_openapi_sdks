#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "CtCodelistLinks.h"

using namespace std;
using namespace Tizen::ArtikCloud;

CtCodelistLinks::CtCodelistLinks()
{
	//__init();
}

CtCodelistLinks::~CtCodelistLinks()
{
	//__cleanup();
}

void
CtCodelistLinks::__init()
{
	//self = new CtCodelistRef();
	//parentPackage = new CtPackageRef();
	//rootItem = new RootCtCodelistRef();
	//priorVersion = new CtCodelistRef();
}

void
CtCodelistLinks::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//if(parentPackage != NULL) {
	//
	//delete parentPackage;
	//parentPackage = NULL;
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
CtCodelistLinks::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("CtCodelistRef")) {
			jsonToValue(&self, node, "CtCodelistRef", "CtCodelistRef");
		} else {
			
			CtCodelistRef* obj = static_cast<CtCodelistRef*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *parentPackageKey = "parentPackage";
	node = json_object_get_member(pJsonObject, parentPackageKey);
	if (node !=NULL) {
	

		if (isprimitive("CtPackageRef")) {
			jsonToValue(&parentPackage, node, "CtPackageRef", "CtPackageRef");
		} else {
			
			CtPackageRef* obj = static_cast<CtPackageRef*> (&parentPackage);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *rootItemKey = "rootItem";
	node = json_object_get_member(pJsonObject, rootItemKey);
	if (node !=NULL) {
	

		if (isprimitive("RootCtCodelistRef")) {
			jsonToValue(&rootItem, node, "RootCtCodelistRef", "RootCtCodelistRef");
		} else {
			
			RootCtCodelistRef* obj = static_cast<RootCtCodelistRef*> (&rootItem);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *priorVersionKey = "priorVersion";
	node = json_object_get_member(pJsonObject, priorVersionKey);
	if (node !=NULL) {
	

		if (isprimitive("CtCodelistRef")) {
			jsonToValue(&priorVersion, node, "CtCodelistRef", "CtCodelistRef");
		} else {
			
			CtCodelistRef* obj = static_cast<CtCodelistRef*> (&priorVersion);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

CtCodelistLinks::CtCodelistLinks(char* json)
{
	this->fromJson(json);
}

char*
CtCodelistLinks::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("CtCodelistRef")) {
		CtCodelistRef obj = getSelf();
		node = converttoJson(&obj, "CtCodelistRef", "");
	}
	else {
		
		CtCodelistRef obj = static_cast<CtCodelistRef> (getSelf());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *selfKey = "self";
	json_object_set_member(pJsonObject, selfKey, node);
	if (isprimitive("CtPackageRef")) {
		CtPackageRef obj = getParentPackage();
		node = converttoJson(&obj, "CtPackageRef", "");
	}
	else {
		
		CtPackageRef obj = static_cast<CtPackageRef> (getParentPackage());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *parentPackageKey = "parentPackage";
	json_object_set_member(pJsonObject, parentPackageKey, node);
	if (isprimitive("RootCtCodelistRef")) {
		RootCtCodelistRef obj = getRootItem();
		node = converttoJson(&obj, "RootCtCodelistRef", "");
	}
	else {
		
		RootCtCodelistRef obj = static_cast<RootCtCodelistRef> (getRootItem());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *rootItemKey = "rootItem";
	json_object_set_member(pJsonObject, rootItemKey, node);
	if (isprimitive("CtCodelistRef")) {
		CtCodelistRef obj = getPriorVersion();
		node = converttoJson(&obj, "CtCodelistRef", "");
	}
	else {
		
		CtCodelistRef obj = static_cast<CtCodelistRef> (getPriorVersion());
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

CtCodelistRef
CtCodelistLinks::getSelf()
{
	return self;
}

void
CtCodelistLinks::setSelf(CtCodelistRef  self)
{
	this->self = self;
}

CtPackageRef
CtCodelistLinks::getParentPackage()
{
	return parentPackage;
}

void
CtCodelistLinks::setParentPackage(CtPackageRef  parentPackage)
{
	this->parentPackage = parentPackage;
}

RootCtCodelistRef
CtCodelistLinks::getRootItem()
{
	return rootItem;
}

void
CtCodelistLinks::setRootItem(RootCtCodelistRef  rootItem)
{
	this->rootItem = rootItem;
}

CtCodelistRef
CtCodelistLinks::getPriorVersion()
{
	return priorVersion;
}

void
CtCodelistLinks::setPriorVersion(CtCodelistRef  priorVersion)
{
	this->priorVersion = priorVersion;
}



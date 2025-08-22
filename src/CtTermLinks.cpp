#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "CtTermLinks.h"

using namespace std;
using namespace Tizen::ArtikCloud;

CtTermLinks::CtTermLinks()
{
	//__init();
}

CtTermLinks::~CtTermLinks()
{
	//__cleanup();
}

void
CtTermLinks::__init()
{
	//self = new CtTermRef();
	//parentPackage = new CtPackageRef();
	//parentCodelist = new CtCodelistRef();
	//rootItem = new RootCtTermRef();
	//priorVersion = new CtTermRef();
}

void
CtTermLinks::__cleanup()
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
	//if(parentCodelist != NULL) {
	//
	//delete parentCodelist;
	//parentCodelist = NULL;
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
CtTermLinks::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("CtTermRef")) {
			jsonToValue(&self, node, "CtTermRef", "CtTermRef");
		} else {
			
			CtTermRef* obj = static_cast<CtTermRef*> (&self);
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
	const gchar *parentCodelistKey = "parentCodelist";
	node = json_object_get_member(pJsonObject, parentCodelistKey);
	if (node !=NULL) {
	

		if (isprimitive("CtCodelistRef")) {
			jsonToValue(&parentCodelist, node, "CtCodelistRef", "CtCodelistRef");
		} else {
			
			CtCodelistRef* obj = static_cast<CtCodelistRef*> (&parentCodelist);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *rootItemKey = "rootItem";
	node = json_object_get_member(pJsonObject, rootItemKey);
	if (node !=NULL) {
	

		if (isprimitive("RootCtTermRef")) {
			jsonToValue(&rootItem, node, "RootCtTermRef", "RootCtTermRef");
		} else {
			
			RootCtTermRef* obj = static_cast<RootCtTermRef*> (&rootItem);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *priorVersionKey = "priorVersion";
	node = json_object_get_member(pJsonObject, priorVersionKey);
	if (node !=NULL) {
	

		if (isprimitive("CtTermRef")) {
			jsonToValue(&priorVersion, node, "CtTermRef", "CtTermRef");
		} else {
			
			CtTermRef* obj = static_cast<CtTermRef*> (&priorVersion);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

CtTermLinks::CtTermLinks(char* json)
{
	this->fromJson(json);
}

char*
CtTermLinks::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("CtTermRef")) {
		CtTermRef obj = getSelf();
		node = converttoJson(&obj, "CtTermRef", "");
	}
	else {
		
		CtTermRef obj = static_cast<CtTermRef> (getSelf());
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
	if (isprimitive("CtCodelistRef")) {
		CtCodelistRef obj = getParentCodelist();
		node = converttoJson(&obj, "CtCodelistRef", "");
	}
	else {
		
		CtCodelistRef obj = static_cast<CtCodelistRef> (getParentCodelist());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *parentCodelistKey = "parentCodelist";
	json_object_set_member(pJsonObject, parentCodelistKey, node);
	if (isprimitive("RootCtTermRef")) {
		RootCtTermRef obj = getRootItem();
		node = converttoJson(&obj, "RootCtTermRef", "");
	}
	else {
		
		RootCtTermRef obj = static_cast<RootCtTermRef> (getRootItem());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *rootItemKey = "rootItem";
	json_object_set_member(pJsonObject, rootItemKey, node);
	if (isprimitive("CtTermRef")) {
		CtTermRef obj = getPriorVersion();
		node = converttoJson(&obj, "CtTermRef", "");
	}
	else {
		
		CtTermRef obj = static_cast<CtTermRef> (getPriorVersion());
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

CtTermRef
CtTermLinks::getSelf()
{
	return self;
}

void
CtTermLinks::setSelf(CtTermRef  self)
{
	this->self = self;
}

CtPackageRef
CtTermLinks::getParentPackage()
{
	return parentPackage;
}

void
CtTermLinks::setParentPackage(CtPackageRef  parentPackage)
{
	this->parentPackage = parentPackage;
}

CtCodelistRef
CtTermLinks::getParentCodelist()
{
	return parentCodelist;
}

void
CtTermLinks::setParentCodelist(CtCodelistRef  parentCodelist)
{
	this->parentCodelist = parentCodelist;
}

RootCtTermRef
CtTermLinks::getRootItem()
{
	return rootItem;
}

void
CtTermLinks::setRootItem(RootCtTermRef  rootItem)
{
	this->rootItem = rootItem;
}

CtTermRef
CtTermLinks::getPriorVersion()
{
	return priorVersion;
}

void
CtTermLinks::setPriorVersion(CtTermRef  priorVersion)
{
	this->priorVersion = priorVersion;
}



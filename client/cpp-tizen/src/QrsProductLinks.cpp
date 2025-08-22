#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "QrsProductLinks.h"

using namespace std;
using namespace Tizen::ArtikCloud;

QrsProductLinks::QrsProductLinks()
{
	//__init();
}

QrsProductLinks::~QrsProductLinks()
{
	//__cleanup();
}

void
QrsProductLinks::__init()
{
	//self = new QrsProductRef();
	//priorVersion = new QrsProductRef();
	//qrsTermCAT = new RootCtTermRef();
	//qrsItems = new QrsItemsRef();
}

void
QrsProductLinks::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//if(priorVersion != NULL) {
	//
	//delete priorVersion;
	//priorVersion = NULL;
	//}
	//if(qrsTermCAT != NULL) {
	//
	//delete qrsTermCAT;
	//qrsTermCAT = NULL;
	//}
	//if(qrsItems != NULL) {
	//
	//delete qrsItems;
	//qrsItems = NULL;
	//}
	//
}

void
QrsProductLinks::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("QrsProductRef")) {
			jsonToValue(&self, node, "QrsProductRef", "QrsProductRef");
		} else {
			
			QrsProductRef* obj = static_cast<QrsProductRef*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *priorVersionKey = "priorVersion";
	node = json_object_get_member(pJsonObject, priorVersionKey);
	if (node !=NULL) {
	

		if (isprimitive("QrsProductRef")) {
			jsonToValue(&priorVersion, node, "QrsProductRef", "QrsProductRef");
		} else {
			
			QrsProductRef* obj = static_cast<QrsProductRef*> (&priorVersion);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *qrsTermCATKey = "qrsTermCAT";
	node = json_object_get_member(pJsonObject, qrsTermCATKey);
	if (node !=NULL) {
	

		if (isprimitive("RootCtTermRef")) {
			jsonToValue(&qrsTermCAT, node, "RootCtTermRef", "RootCtTermRef");
		} else {
			
			RootCtTermRef* obj = static_cast<RootCtTermRef*> (&qrsTermCAT);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *qrsItemsKey = "qrsItems";
	node = json_object_get_member(pJsonObject, qrsItemsKey);
	if (node !=NULL) {
	

		if (isprimitive("QrsItemsRef")) {
			jsonToValue(&qrsItems, node, "QrsItemsRef", "QrsItemsRef");
		} else {
			
			QrsItemsRef* obj = static_cast<QrsItemsRef*> (&qrsItems);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

QrsProductLinks::QrsProductLinks(char* json)
{
	this->fromJson(json);
}

char*
QrsProductLinks::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("QrsProductRef")) {
		QrsProductRef obj = getSelf();
		node = converttoJson(&obj, "QrsProductRef", "");
	}
	else {
		
		QrsProductRef obj = static_cast<QrsProductRef> (getSelf());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *selfKey = "self";
	json_object_set_member(pJsonObject, selfKey, node);
	if (isprimitive("QrsProductRef")) {
		QrsProductRef obj = getPriorVersion();
		node = converttoJson(&obj, "QrsProductRef", "");
	}
	else {
		
		QrsProductRef obj = static_cast<QrsProductRef> (getPriorVersion());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *priorVersionKey = "priorVersion";
	json_object_set_member(pJsonObject, priorVersionKey, node);
	if (isprimitive("RootCtTermRef")) {
		RootCtTermRef obj = getQrsTermCAT();
		node = converttoJson(&obj, "RootCtTermRef", "");
	}
	else {
		
		RootCtTermRef obj = static_cast<RootCtTermRef> (getQrsTermCAT());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *qrsTermCATKey = "qrsTermCAT";
	json_object_set_member(pJsonObject, qrsTermCATKey, node);
	if (isprimitive("QrsItemsRef")) {
		QrsItemsRef obj = getQrsItems();
		node = converttoJson(&obj, "QrsItemsRef", "");
	}
	else {
		
		QrsItemsRef obj = static_cast<QrsItemsRef> (getQrsItems());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *qrsItemsKey = "qrsItems";
	json_object_set_member(pJsonObject, qrsItemsKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

QrsProductRef
QrsProductLinks::getSelf()
{
	return self;
}

void
QrsProductLinks::setSelf(QrsProductRef  self)
{
	this->self = self;
}

QrsProductRef
QrsProductLinks::getPriorVersion()
{
	return priorVersion;
}

void
QrsProductLinks::setPriorVersion(QrsProductRef  priorVersion)
{
	this->priorVersion = priorVersion;
}

RootCtTermRef
QrsProductLinks::getQrsTermCAT()
{
	return qrsTermCAT;
}

void
QrsProductLinks::setQrsTermCAT(RootCtTermRef  qrsTermCAT)
{
	this->qrsTermCAT = qrsTermCAT;
}

QrsItemsRef
QrsProductLinks::getQrsItems()
{
	return qrsItems;
}

void
QrsProductLinks::setQrsItems(QrsItemsRef  qrsItems)
{
	this->qrsItems = qrsItems;
}



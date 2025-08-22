#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "QrsResponseLinks.h"

using namespace std;
using namespace Tizen::ArtikCloud;

QrsResponseLinks::QrsResponseLinks()
{
	//__init();
}

QrsResponseLinks::~QrsResponseLinks()
{
	//__cleanup();
}

void
QrsResponseLinks::__init()
{
	//qrsResponseORRES = new RootCtTermRef();
	//qrsResponseORRESU = new RootCtTermRef();
	//qrsResponseSTRESC = new RootCtTermRef();
	//qrsResponseSTRESCU = new RootCtTermRef();
}

void
QrsResponseLinks::__cleanup()
{
	//if(qrsResponseORRES != NULL) {
	//
	//delete qrsResponseORRES;
	//qrsResponseORRES = NULL;
	//}
	//if(qrsResponseORRESU != NULL) {
	//
	//delete qrsResponseORRESU;
	//qrsResponseORRESU = NULL;
	//}
	//if(qrsResponseSTRESC != NULL) {
	//
	//delete qrsResponseSTRESC;
	//qrsResponseSTRESC = NULL;
	//}
	//if(qrsResponseSTRESCU != NULL) {
	//
	//delete qrsResponseSTRESCU;
	//qrsResponseSTRESCU = NULL;
	//}
	//
}

void
QrsResponseLinks::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *qrsResponseORRESKey = "qrsResponseORRES";
	node = json_object_get_member(pJsonObject, qrsResponseORRESKey);
	if (node !=NULL) {
	

		if (isprimitive("RootCtTermRef")) {
			jsonToValue(&qrsResponseORRES, node, "RootCtTermRef", "RootCtTermRef");
		} else {
			
			RootCtTermRef* obj = static_cast<RootCtTermRef*> (&qrsResponseORRES);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *qrsResponseORRESUKey = "qrsResponseORRESU";
	node = json_object_get_member(pJsonObject, qrsResponseORRESUKey);
	if (node !=NULL) {
	

		if (isprimitive("RootCtTermRef")) {
			jsonToValue(&qrsResponseORRESU, node, "RootCtTermRef", "RootCtTermRef");
		} else {
			
			RootCtTermRef* obj = static_cast<RootCtTermRef*> (&qrsResponseORRESU);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *qrsResponseSTRESCKey = "qrsResponseSTRESC";
	node = json_object_get_member(pJsonObject, qrsResponseSTRESCKey);
	if (node !=NULL) {
	

		if (isprimitive("RootCtTermRef")) {
			jsonToValue(&qrsResponseSTRESC, node, "RootCtTermRef", "RootCtTermRef");
		} else {
			
			RootCtTermRef* obj = static_cast<RootCtTermRef*> (&qrsResponseSTRESC);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *qrsResponseSTRESCUKey = "qrsResponseSTRESCU";
	node = json_object_get_member(pJsonObject, qrsResponseSTRESCUKey);
	if (node !=NULL) {
	

		if (isprimitive("RootCtTermRef")) {
			jsonToValue(&qrsResponseSTRESCU, node, "RootCtTermRef", "RootCtTermRef");
		} else {
			
			RootCtTermRef* obj = static_cast<RootCtTermRef*> (&qrsResponseSTRESCU);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

QrsResponseLinks::QrsResponseLinks(char* json)
{
	this->fromJson(json);
}

char*
QrsResponseLinks::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("RootCtTermRef")) {
		RootCtTermRef obj = getQrsResponseORRES();
		node = converttoJson(&obj, "RootCtTermRef", "");
	}
	else {
		
		RootCtTermRef obj = static_cast<RootCtTermRef> (getQrsResponseORRES());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *qrsResponseORRESKey = "qrsResponseORRES";
	json_object_set_member(pJsonObject, qrsResponseORRESKey, node);
	if (isprimitive("RootCtTermRef")) {
		RootCtTermRef obj = getQrsResponseORRESU();
		node = converttoJson(&obj, "RootCtTermRef", "");
	}
	else {
		
		RootCtTermRef obj = static_cast<RootCtTermRef> (getQrsResponseORRESU());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *qrsResponseORRESUKey = "qrsResponseORRESU";
	json_object_set_member(pJsonObject, qrsResponseORRESUKey, node);
	if (isprimitive("RootCtTermRef")) {
		RootCtTermRef obj = getQrsResponseSTRESC();
		node = converttoJson(&obj, "RootCtTermRef", "");
	}
	else {
		
		RootCtTermRef obj = static_cast<RootCtTermRef> (getQrsResponseSTRESC());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *qrsResponseSTRESCKey = "qrsResponseSTRESC";
	json_object_set_member(pJsonObject, qrsResponseSTRESCKey, node);
	if (isprimitive("RootCtTermRef")) {
		RootCtTermRef obj = getQrsResponseSTRESCU();
		node = converttoJson(&obj, "RootCtTermRef", "");
	}
	else {
		
		RootCtTermRef obj = static_cast<RootCtTermRef> (getQrsResponseSTRESCU());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *qrsResponseSTRESCUKey = "qrsResponseSTRESCU";
	json_object_set_member(pJsonObject, qrsResponseSTRESCUKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

RootCtTermRef
QrsResponseLinks::getQrsResponseORRES()
{
	return qrsResponseORRES;
}

void
QrsResponseLinks::setQrsResponseORRES(RootCtTermRef  qrsResponseORRES)
{
	this->qrsResponseORRES = qrsResponseORRES;
}

RootCtTermRef
QrsResponseLinks::getQrsResponseORRESU()
{
	return qrsResponseORRESU;
}

void
QrsResponseLinks::setQrsResponseORRESU(RootCtTermRef  qrsResponseORRESU)
{
	this->qrsResponseORRESU = qrsResponseORRESU;
}

RootCtTermRef
QrsResponseLinks::getQrsResponseSTRESC()
{
	return qrsResponseSTRESC;
}

void
QrsResponseLinks::setQrsResponseSTRESC(RootCtTermRef  qrsResponseSTRESC)
{
	this->qrsResponseSTRESC = qrsResponseSTRESC;
}

RootCtTermRef
QrsResponseLinks::getQrsResponseSTRESCU()
{
	return qrsResponseSTRESCU;
}

void
QrsResponseLinks::setQrsResponseSTRESCU(RootCtTermRef  qrsResponseSTRESCU)
{
	this->qrsResponseSTRESCU = qrsResponseSTRESCU;
}



#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "QrsItemLinks.h"

using namespace std;
using namespace Tizen::ArtikCloud;

QrsItemLinks::QrsItemLinks()
{
	//__init();
}

QrsItemLinks::~QrsItemLinks()
{
	//__cleanup();
}

void
QrsItemLinks::__init()
{
	//qrsItemTEST = new RootCtTermRef();
	//qrsItemTESTCD = new RootCtTermRef();
	//qrsItemEVAL = new RootCtTermRef();
	//qrsItemSCAT = new RootCtTermRef();
	//responsegroup = new QrsResponsegroup();
}

void
QrsItemLinks::__cleanup()
{
	//if(qrsItemTEST != NULL) {
	//
	//delete qrsItemTEST;
	//qrsItemTEST = NULL;
	//}
	//if(qrsItemTESTCD != NULL) {
	//
	//delete qrsItemTESTCD;
	//qrsItemTESTCD = NULL;
	//}
	//if(qrsItemEVAL != NULL) {
	//
	//delete qrsItemEVAL;
	//qrsItemEVAL = NULL;
	//}
	//if(qrsItemSCAT != NULL) {
	//
	//delete qrsItemSCAT;
	//qrsItemSCAT = NULL;
	//}
	//if(responsegroup != NULL) {
	//
	//delete responsegroup;
	//responsegroup = NULL;
	//}
	//
}

void
QrsItemLinks::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *qrsItemTESTKey = "qrsItemTEST";
	node = json_object_get_member(pJsonObject, qrsItemTESTKey);
	if (node !=NULL) {
	

		if (isprimitive("RootCtTermRef")) {
			jsonToValue(&qrsItemTEST, node, "RootCtTermRef", "RootCtTermRef");
		} else {
			
			RootCtTermRef* obj = static_cast<RootCtTermRef*> (&qrsItemTEST);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *qrsItemTESTCDKey = "qrsItemTESTCD";
	node = json_object_get_member(pJsonObject, qrsItemTESTCDKey);
	if (node !=NULL) {
	

		if (isprimitive("RootCtTermRef")) {
			jsonToValue(&qrsItemTESTCD, node, "RootCtTermRef", "RootCtTermRef");
		} else {
			
			RootCtTermRef* obj = static_cast<RootCtTermRef*> (&qrsItemTESTCD);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *qrsItemEVALKey = "qrsItemEVAL";
	node = json_object_get_member(pJsonObject, qrsItemEVALKey);
	if (node !=NULL) {
	

		if (isprimitive("RootCtTermRef")) {
			jsonToValue(&qrsItemEVAL, node, "RootCtTermRef", "RootCtTermRef");
		} else {
			
			RootCtTermRef* obj = static_cast<RootCtTermRef*> (&qrsItemEVAL);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *qrsItemSCATKey = "qrsItemSCAT";
	node = json_object_get_member(pJsonObject, qrsItemSCATKey);
	if (node !=NULL) {
	

		if (isprimitive("RootCtTermRef")) {
			jsonToValue(&qrsItemSCAT, node, "RootCtTermRef", "RootCtTermRef");
		} else {
			
			RootCtTermRef* obj = static_cast<RootCtTermRef*> (&qrsItemSCAT);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *responsegroupKey = "responsegroup";
	node = json_object_get_member(pJsonObject, responsegroupKey);
	if (node !=NULL) {
	

		if (isprimitive("QrsResponsegroup")) {
			jsonToValue(&responsegroup, node, "QrsResponsegroup", "QrsResponsegroup");
		} else {
			
			QrsResponsegroup* obj = static_cast<QrsResponsegroup*> (&responsegroup);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

QrsItemLinks::QrsItemLinks(char* json)
{
	this->fromJson(json);
}

char*
QrsItemLinks::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("RootCtTermRef")) {
		RootCtTermRef obj = getQrsItemTEST();
		node = converttoJson(&obj, "RootCtTermRef", "");
	}
	else {
		
		RootCtTermRef obj = static_cast<RootCtTermRef> (getQrsItemTEST());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *qrsItemTESTKey = "qrsItemTEST";
	json_object_set_member(pJsonObject, qrsItemTESTKey, node);
	if (isprimitive("RootCtTermRef")) {
		RootCtTermRef obj = getQrsItemTESTCD();
		node = converttoJson(&obj, "RootCtTermRef", "");
	}
	else {
		
		RootCtTermRef obj = static_cast<RootCtTermRef> (getQrsItemTESTCD());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *qrsItemTESTCDKey = "qrsItemTESTCD";
	json_object_set_member(pJsonObject, qrsItemTESTCDKey, node);
	if (isprimitive("RootCtTermRef")) {
		RootCtTermRef obj = getQrsItemEVAL();
		node = converttoJson(&obj, "RootCtTermRef", "");
	}
	else {
		
		RootCtTermRef obj = static_cast<RootCtTermRef> (getQrsItemEVAL());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *qrsItemEVALKey = "qrsItemEVAL";
	json_object_set_member(pJsonObject, qrsItemEVALKey, node);
	if (isprimitive("RootCtTermRef")) {
		RootCtTermRef obj = getQrsItemSCAT();
		node = converttoJson(&obj, "RootCtTermRef", "");
	}
	else {
		
		RootCtTermRef obj = static_cast<RootCtTermRef> (getQrsItemSCAT());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *qrsItemSCATKey = "qrsItemSCAT";
	json_object_set_member(pJsonObject, qrsItemSCATKey, node);
	if (isprimitive("QrsResponsegroup")) {
		QrsResponsegroup obj = getResponsegroup();
		node = converttoJson(&obj, "QrsResponsegroup", "");
	}
	else {
		
		QrsResponsegroup obj = static_cast<QrsResponsegroup> (getResponsegroup());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *responsegroupKey = "responsegroup";
	json_object_set_member(pJsonObject, responsegroupKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

RootCtTermRef
QrsItemLinks::getQrsItemTEST()
{
	return qrsItemTEST;
}

void
QrsItemLinks::setQrsItemTEST(RootCtTermRef  qrsItemTEST)
{
	this->qrsItemTEST = qrsItemTEST;
}

RootCtTermRef
QrsItemLinks::getQrsItemTESTCD()
{
	return qrsItemTESTCD;
}

void
QrsItemLinks::setQrsItemTESTCD(RootCtTermRef  qrsItemTESTCD)
{
	this->qrsItemTESTCD = qrsItemTESTCD;
}

RootCtTermRef
QrsItemLinks::getQrsItemEVAL()
{
	return qrsItemEVAL;
}

void
QrsItemLinks::setQrsItemEVAL(RootCtTermRef  qrsItemEVAL)
{
	this->qrsItemEVAL = qrsItemEVAL;
}

RootCtTermRef
QrsItemLinks::getQrsItemSCAT()
{
	return qrsItemSCAT;
}

void
QrsItemLinks::setQrsItemSCAT(RootCtTermRef  qrsItemSCAT)
{
	this->qrsItemSCAT = qrsItemSCAT;
}

QrsResponsegroup
QrsItemLinks::getResponsegroup()
{
	return responsegroup;
}

void
QrsItemLinks::setResponsegroup(QrsResponsegroup  responsegroup)
{
	this->responsegroup = responsegroup;
}



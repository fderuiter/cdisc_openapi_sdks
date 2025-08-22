#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ExportSdtmDatasetsRow.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ExportSdtmDatasetsRow::ExportSdtmDatasetsRow()
{
	//__init();
}

ExportSdtmDatasetsRow::~ExportSdtmDatasetsRow()
{
	//__cleanup();
}

void
ExportSdtmDatasetsRow::__init()
{
	//version = std::string();
	//r_class = std::string();
	//datasetName = std::string();
	//datasetLabel = std::string();
	//structure = std::string();
}

void
ExportSdtmDatasetsRow::__cleanup()
{
	//if(version != NULL) {
	//
	//delete version;
	//version = NULL;
	//}
	//if(r_class != NULL) {
	//
	//delete r_class;
	//r_class = NULL;
	//}
	//if(datasetName != NULL) {
	//
	//delete datasetName;
	//datasetName = NULL;
	//}
	//if(datasetLabel != NULL) {
	//
	//delete datasetLabel;
	//datasetLabel = NULL;
	//}
	//if(structure != NULL) {
	//
	//delete structure;
	//structure = NULL;
	//}
	//
}

void
ExportSdtmDatasetsRow::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *versionKey = "Version";
	node = json_object_get_member(pJsonObject, versionKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&version, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *r_classKey = "Class";
	node = json_object_get_member(pJsonObject, r_classKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&r_class, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *datasetNameKey = "Dataset Name";
	node = json_object_get_member(pJsonObject, datasetNameKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&datasetName, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *datasetLabelKey = "Dataset Label";
	node = json_object_get_member(pJsonObject, datasetLabelKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&datasetLabel, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *structureKey = "Structure";
	node = json_object_get_member(pJsonObject, structureKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&structure, node, "std::string", "");
		} else {
			
		}
	}
}

ExportSdtmDatasetsRow::ExportSdtmDatasetsRow(char* json)
{
	this->fromJson(json);
}

char*
ExportSdtmDatasetsRow::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getVersion();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *versionKey = "Version";
	json_object_set_member(pJsonObject, versionKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getRClass();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *r_classKey = "Class";
	json_object_set_member(pJsonObject, r_classKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getDatasetName();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *datasetNameKey = "Dataset Name";
	json_object_set_member(pJsonObject, datasetNameKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getDatasetLabel();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *datasetLabelKey = "Dataset Label";
	json_object_set_member(pJsonObject, datasetLabelKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getStructure();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *structureKey = "Structure";
	json_object_set_member(pJsonObject, structureKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
ExportSdtmDatasetsRow::getVersion()
{
	return version;
}

void
ExportSdtmDatasetsRow::setVersion(std::string  version)
{
	this->version = version;
}

std::string
ExportSdtmDatasetsRow::getRClass()
{
	return r_class;
}

void
ExportSdtmDatasetsRow::setRClass(std::string  r_class)
{
	this->r_class = r_class;
}

std::string
ExportSdtmDatasetsRow::getDatasetName()
{
	return datasetName;
}

void
ExportSdtmDatasetsRow::setDatasetName(std::string  datasetName)
{
	this->datasetName = datasetName;
}

std::string
ExportSdtmDatasetsRow::getDatasetLabel()
{
	return datasetLabel;
}

void
ExportSdtmDatasetsRow::setDatasetLabel(std::string  datasetLabel)
{
	this->datasetLabel = datasetLabel;
}

std::string
ExportSdtmDatasetsRow::getStructure()
{
	return structure;
}

void
ExportSdtmDatasetsRow::setStructure(std::string  structure)
{
	this->structure = structure;
}



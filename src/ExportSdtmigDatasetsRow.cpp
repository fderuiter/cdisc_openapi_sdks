#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ExportSdtmigDatasetsRow.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ExportSdtmigDatasetsRow::ExportSdtmigDatasetsRow()
{
	//__init();
}

ExportSdtmigDatasetsRow::~ExportSdtmigDatasetsRow()
{
	//__cleanup();
}

void
ExportSdtmigDatasetsRow::__init()
{
	//version = std::string();
	//r_class = std::string();
	//datasetName = std::string();
	//datasetLabel = std::string();
	//structure = std::string();
}

void
ExportSdtmigDatasetsRow::__cleanup()
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
ExportSdtmigDatasetsRow::fromJson(char* jsonStr)
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

ExportSdtmigDatasetsRow::ExportSdtmigDatasetsRow(char* json)
{
	this->fromJson(json);
}

char*
ExportSdtmigDatasetsRow::toJson()
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
ExportSdtmigDatasetsRow::getVersion()
{
	return version;
}

void
ExportSdtmigDatasetsRow::setVersion(std::string  version)
{
	this->version = version;
}

std::string
ExportSdtmigDatasetsRow::getRClass()
{
	return r_class;
}

void
ExportSdtmigDatasetsRow::setRClass(std::string  r_class)
{
	this->r_class = r_class;
}

std::string
ExportSdtmigDatasetsRow::getDatasetName()
{
	return datasetName;
}

void
ExportSdtmigDatasetsRow::setDatasetName(std::string  datasetName)
{
	this->datasetName = datasetName;
}

std::string
ExportSdtmigDatasetsRow::getDatasetLabel()
{
	return datasetLabel;
}

void
ExportSdtmigDatasetsRow::setDatasetLabel(std::string  datasetLabel)
{
	this->datasetLabel = datasetLabel;
}

std::string
ExportSdtmigDatasetsRow::getStructure()
{
	return structure;
}

void
ExportSdtmigDatasetsRow::setStructure(std::string  structure)
{
	this->structure = structure;
}



/*
 * ExportSdtmDatasetsRow.h
 *
 * 
 */

#ifndef _ExportSdtmDatasetsRow_H_
#define _ExportSdtmDatasetsRow_H_


#include <string>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class ExportSdtmDatasetsRow : public Object {
public:
	/*! \brief Constructor.
	 */
	ExportSdtmDatasetsRow();
	ExportSdtmDatasetsRow(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ExportSdtmDatasetsRow();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::string getVersion();

	/*! \brief Set 
	 */
	void setVersion(std::string  version);
	/*! \brief Get 
	 */
	std::string getRClass();

	/*! \brief Set 
	 */
	void setRClass(std::string  r_class);
	/*! \brief Get 
	 */
	std::string getDatasetName();

	/*! \brief Set 
	 */
	void setDatasetName(std::string  datasetName);
	/*! \brief Get 
	 */
	std::string getDatasetLabel();

	/*! \brief Set 
	 */
	void setDatasetLabel(std::string  datasetLabel);
	/*! \brief Get 
	 */
	std::string getStructure();

	/*! \brief Set 
	 */
	void setStructure(std::string  structure);

private:
	std::string version;
	std::string r_class;
	std::string datasetName;
	std::string datasetLabel;
	std::string structure;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ExportSdtmDatasetsRow_H_ */

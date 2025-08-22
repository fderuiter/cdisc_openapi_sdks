/*
 * ExportAdamDatastructuresRow.h
 *
 * 
 */

#ifndef _ExportAdamDatastructuresRow_H_
#define _ExportAdamDatastructuresRow_H_


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

class ExportAdamDatastructuresRow : public Object {
public:
	/*! \brief Constructor.
	 */
	ExportAdamDatastructuresRow();
	ExportAdamDatastructuresRow(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ExportAdamDatastructuresRow();

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
	std::string getDataStructureName();

	/*! \brief Set 
	 */
	void setDataStructureName(std::string  dataStructureName);
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
	std::string getDatasetDescription();

	/*! \brief Set 
	 */
	void setDatasetDescription(std::string  datasetDescription);
	/*! \brief Get 
	 */
	std::string getRClass();

	/*! \brief Set 
	 */
	void setRClass(std::string  r_class);

private:
	std::string version;
	std::string dataStructureName;
	std::string datasetName;
	std::string datasetLabel;
	std::string datasetDescription;
	std::string r_class;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ExportAdamDatastructuresRow_H_ */

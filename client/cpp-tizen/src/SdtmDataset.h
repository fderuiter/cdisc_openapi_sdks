/*
 * SdtmDataset.h
 *
 * 
 */

#ifndef _SdtmDataset_H_
#define _SdtmDataset_H_


#include <string>
#include "SdtmDatasetLinks.h"
#include "SdtmDatasetVariable.h"
#include <list>
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

class SdtmDataset : public Object {
public:
	/*! \brief Constructor.
	 */
	SdtmDataset();
	SdtmDataset(char* str);

	/*! \brief Destructor.
	 */
	virtual ~SdtmDataset();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::string getOrdinal();

	/*! \brief Set 
	 */
	void setOrdinal(std::string  ordinal);
	/*! \brief Get 
	 */
	std::string getName();

	/*! \brief Set 
	 */
	void setName(std::string  name);
	/*! \brief Get 
	 */
	std::string getLabel();

	/*! \brief Set 
	 */
	void setLabel(std::string  label);
	/*! \brief Get 
	 */
	std::string getDescription();

	/*! \brief Set 
	 */
	void setDescription(std::string  description);
	/*! \brief Get 
	 */
	std::string getDatasetStructure();

	/*! \brief Set 
	 */
	void setDatasetStructure(std::string  datasetStructure);
	/*! \brief Get 
	 */
	SdtmDatasetLinks getLinks();

	/*! \brief Set 
	 */
	void setLinks(SdtmDatasetLinks  _links);
	/*! \brief Get 
	 */
	std::list<SdtmDatasetVariable> getDatasetVariables();

	/*! \brief Set 
	 */
	void setDatasetVariables(std::list <SdtmDatasetVariable> datasetVariables);

private:
	std::string ordinal;
	std::string name;
	std::string label;
	std::string description;
	std::string datasetStructure;
	SdtmDatasetLinks _links;
	std::list <SdtmDatasetVariable>datasetVariables;
	void __init();
	void __cleanup();

};
}
}

#endif /* _SdtmDataset_H_ */

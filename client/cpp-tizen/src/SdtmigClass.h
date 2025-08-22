/*
 * SdtmigClass.h
 *
 * 
 */

#ifndef _SdtmigClass_H_
#define _SdtmigClass_H_


#include <string>
#include "SdtmigClassLinks.h"
#include "SdtmigDataset.h"
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

class SdtmigClass : public Object {
public:
	/*! \brief Constructor.
	 */
	SdtmigClass();
	SdtmigClass(char* str);

	/*! \brief Destructor.
	 */
	virtual ~SdtmigClass();

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
	SdtmigClassLinks getLinks();

	/*! \brief Set 
	 */
	void setLinks(SdtmigClassLinks  _links);
	/*! \brief Get 
	 */
	std::list<SdtmigDataset> getDatasets();

	/*! \brief Set 
	 */
	void setDatasets(std::list <SdtmigDataset> datasets);

private:
	std::string ordinal;
	std::string name;
	std::string label;
	std::string description;
	SdtmigClassLinks _links;
	std::list <SdtmigDataset>datasets;
	void __init();
	void __cleanup();

};
}
}

#endif /* _SdtmigClass_H_ */

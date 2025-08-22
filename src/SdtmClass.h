/*
 * SdtmClass.h
 *
 * 
 */

#ifndef _SdtmClass_H_
#define _SdtmClass_H_


#include <string>
#include "SdtmClassLinks.h"
#include "SdtmClassVariable.h"
#include "SdtmDataset.h"
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

class SdtmClass : public Object {
public:
	/*! \brief Constructor.
	 */
	SdtmClass();
	SdtmClass(char* str);

	/*! \brief Destructor.
	 */
	virtual ~SdtmClass();

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
	SdtmClassLinks getLinks();

	/*! \brief Set 
	 */
	void setLinks(SdtmClassLinks  _links);
	/*! \brief Get 
	 */
	std::list<SdtmClassVariable> getClassVariables();

	/*! \brief Set 
	 */
	void setClassVariables(std::list <SdtmClassVariable> classVariables);
	/*! \brief Get 
	 */
	std::list<SdtmDataset> getDatasets();

	/*! \brief Set 
	 */
	void setDatasets(std::list <SdtmDataset> datasets);

private:
	std::string ordinal;
	std::string name;
	std::string label;
	std::string description;
	SdtmClassLinks _links;
	std::list <SdtmClassVariable>classVariables;
	std::list <SdtmDataset>datasets;
	void __init();
	void __cleanup();

};
}
}

#endif /* _SdtmClass_H_ */

/*
 * SdtmProduct.h
 *
 * 
 */

#ifndef _SdtmProduct_H_
#define _SdtmProduct_H_


#include <string>
#include "SdtmClass.h"
#include "SdtmDataset.h"
#include "SdtmProductLinks.h"
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

class SdtmProduct : public Object {
public:
	/*! \brief Constructor.
	 */
	SdtmProduct();
	SdtmProduct(char* str);

	/*! \brief Destructor.
	 */
	virtual ~SdtmProduct();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

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
	std::string getSource();

	/*! \brief Set 
	 */
	void setSource(std::string  source);
	/*! \brief Get 
	 */
	std::string getEffectiveDate();

	/*! \brief Set 
	 */
	void setEffectiveDate(std::string  effectiveDate);
	/*! \brief Get 
	 */
	std::string getRegistrationStatus();

	/*! \brief Set 
	 */
	void setRegistrationStatus(std::string  registrationStatus);
	/*! \brief Get 
	 */
	std::string getVersion();

	/*! \brief Set 
	 */
	void setVersion(std::string  version);
	/*! \brief Get 
	 */
	SdtmProductLinks getLinks();

	/*! \brief Set 
	 */
	void setLinks(SdtmProductLinks  _links);
	/*! \brief Get 
	 */
	std::list<SdtmClass> getClasses();

	/*! \brief Set 
	 */
	void setClasses(std::list <SdtmClass> classes);
	/*! \brief Get 
	 */
	std::list<SdtmDataset> getDatasets();

	/*! \brief Set 
	 */
	void setDatasets(std::list <SdtmDataset> datasets);

private:
	std::string name;
	std::string label;
	std::string description;
	std::string source;
	std::string effectiveDate;
	std::string registrationStatus;
	std::string version;
	SdtmProductLinks _links;
	std::list <SdtmClass>classes;
	std::list <SdtmDataset>datasets;
	void __init();
	void __cleanup();

};
}
}

#endif /* _SdtmProduct_H_ */

/*
 * ProductgroupDataTabulationLinks.h
 *
 * 
 */

#ifndef _ProductgroupDataTabulationLinks_H_
#define _ProductgroupDataTabulationLinks_H_


#include <string>
#include "ProductgroupRef.h"
#include "SdtmProductRefElement.h"
#include "SdtmigProductRefElement.h"
#include "SendigProductRefElement.h"
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

class ProductgroupDataTabulationLinks : public Object {
public:
	/*! \brief Constructor.
	 */
	ProductgroupDataTabulationLinks();
	ProductgroupDataTabulationLinks(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ProductgroupDataTabulationLinks();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	ProductgroupRef getSelf();

	/*! \brief Set 
	 */
	void setSelf(ProductgroupRef  self);
	/*! \brief Get 
	 */
	std::list<SdtmProductRefElement> getSdtm();

	/*! \brief Set 
	 */
	void setSdtm(std::list <SdtmProductRefElement> sdtm);
	/*! \brief Get 
	 */
	std::list<SdtmigProductRefElement> getSdtmig();

	/*! \brief Set 
	 */
	void setSdtmig(std::list <SdtmigProductRefElement> sdtmig);
	/*! \brief Get 
	 */
	std::list<SendigProductRefElement> getSendig();

	/*! \brief Set 
	 */
	void setSendig(std::list <SendigProductRefElement> sendig);

private:
	ProductgroupRef self;
	std::list <SdtmProductRefElement>sdtm;
	std::list <SdtmigProductRefElement>sdtmig;
	std::list <SendigProductRefElement>sendig;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ProductgroupDataTabulationLinks_H_ */

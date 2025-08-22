/*
 * CdashClassLinks.h
 *
 * 
 */

#ifndef _CdashClassLinks_H_
#define _CdashClassLinks_H_


#include <string>
#include "CdashClassRef.h"
#include "CdashProductRef.h"
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

class CdashClassLinks : public Object {
public:
	/*! \brief Constructor.
	 */
	CdashClassLinks();
	CdashClassLinks(char* str);

	/*! \brief Destructor.
	 */
	virtual ~CdashClassLinks();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	CdashClassRef getSelf();

	/*! \brief Set 
	 */
	void setSelf(CdashClassRef  self);
	/*! \brief Get 
	 */
	CdashProductRef getParentProduct();

	/*! \brief Set 
	 */
	void setParentProduct(CdashProductRef  parentProduct);
	/*! \brief Get 
	 */
	CdashClassRef getPriorVersion();

	/*! \brief Set 
	 */
	void setPriorVersion(CdashClassRef  priorVersion);

private:
	CdashClassRef self;
	CdashProductRef parentProduct;
	CdashClassRef priorVersion;
	void __init();
	void __cleanup();

};
}
}

#endif /* _CdashClassLinks_H_ */

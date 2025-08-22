/*
 * CdashigProductLinks.h
 *
 * 
 */

#ifndef _CdashigProductLinks_H_
#define _CdashigProductLinks_H_


#include <string>
#include "CdashProductRef.h"
#include "CdashigProductRef.h"
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

class CdashigProductLinks : public Object {
public:
	/*! \brief Constructor.
	 */
	CdashigProductLinks();
	CdashigProductLinks(char* str);

	/*! \brief Destructor.
	 */
	virtual ~CdashigProductLinks();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	CdashigProductRef getSelf();

	/*! \brief Set 
	 */
	void setSelf(CdashigProductRef  self);
	/*! \brief Get 
	 */
	CdashProductRef getModel();

	/*! \brief Set 
	 */
	void setModel(CdashProductRef  model);
	/*! \brief Get 
	 */
	CdashigProductRef getPriorVersion();

	/*! \brief Set 
	 */
	void setPriorVersion(CdashigProductRef  priorVersion);

private:
	CdashigProductRef self;
	CdashProductRef model;
	CdashigProductRef priorVersion;
	void __init();
	void __cleanup();

};
}
}

#endif /* _CdashigProductLinks_H_ */

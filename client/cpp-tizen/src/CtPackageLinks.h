/*
 * CtPackageLinks.h
 *
 * 
 */

#ifndef _CtPackageLinks_H_
#define _CtPackageLinks_H_


#include <string>
#include "CtPackageRef.h"
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

class CtPackageLinks : public Object {
public:
	/*! \brief Constructor.
	 */
	CtPackageLinks();
	CtPackageLinks(char* str);

	/*! \brief Destructor.
	 */
	virtual ~CtPackageLinks();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	CtPackageRef getSelf();

	/*! \brief Set 
	 */
	void setSelf(CtPackageRef  self);
	/*! \brief Get 
	 */
	CtPackageRef getPriorVersion();

	/*! \brief Set 
	 */
	void setPriorVersion(CtPackageRef  priorVersion);

private:
	CtPackageRef self;
	CtPackageRef priorVersion;
	void __init();
	void __cleanup();

};
}
}

#endif /* _CtPackageLinks_H_ */

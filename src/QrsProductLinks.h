/*
 * QrsProductLinks.h
 *
 * 
 */

#ifndef _QrsProductLinks_H_
#define _QrsProductLinks_H_


#include <string>
#include "QrsItemsRef.h"
#include "QrsProductRef.h"
#include "RootCtTermRef.h"
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

class QrsProductLinks : public Object {
public:
	/*! \brief Constructor.
	 */
	QrsProductLinks();
	QrsProductLinks(char* str);

	/*! \brief Destructor.
	 */
	virtual ~QrsProductLinks();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	QrsProductRef getSelf();

	/*! \brief Set 
	 */
	void setSelf(QrsProductRef  self);
	/*! \brief Get 
	 */
	QrsProductRef getPriorVersion();

	/*! \brief Set 
	 */
	void setPriorVersion(QrsProductRef  priorVersion);
	/*! \brief Get 
	 */
	RootCtTermRef getQrsTermCAT();

	/*! \brief Set 
	 */
	void setQrsTermCAT(RootCtTermRef  qrsTermCAT);
	/*! \brief Get 
	 */
	QrsItemsRef getQrsItems();

	/*! \brief Set 
	 */
	void setQrsItems(QrsItemsRef  qrsItems);

private:
	QrsProductRef self;
	QrsProductRef priorVersion;
	RootCtTermRef qrsTermCAT;
	QrsItemsRef qrsItems;
	void __init();
	void __cleanup();

};
}
}

#endif /* _QrsProductLinks_H_ */

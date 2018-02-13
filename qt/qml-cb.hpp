#ifndef QMLTRANSMITTER_HPP
#define QMLTRANSMITTER_HPP

#include <QObject>
#include <QVariantMap>

#include "qmlui.hpp"


class QmlCb : public QObject
{
	Q_OBJECT
	
public:
	explicit QmlCb(QObject *parent, int i, EventCb cb);
	
	Q_INVOKABLE void call(const QString &type, QVariantMap props = QVariantMap());
	
	
private:
	int _index;
	EventCb _eventCb;
	
};

#endif // QMLTRANSMITTER_HPP
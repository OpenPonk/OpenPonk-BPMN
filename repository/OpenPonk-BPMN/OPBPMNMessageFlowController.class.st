Class {
	#name : #OPBPMNMessageFlowController,
	#superclass : #OPBPMNEdgeController,
	#category : #'OpenPonk-BPMN-Controllers'
}

{ #category : #hooks }
OPBPMNMessageFlowController >> createEdgeFrom: fromElement to: toElement [
	^ OPRTStyledMultiLine new
		head: self headShapeClass;
		tail: RTEmptyCircle;
		dashedLine;
		withBorderAttachPoint;
		color: Color black;
		edgeFrom: fromElement to: toElement
]

{ #category : #hooks }
OPBPMNMessageFlowController >> headShapeClass [
	^ RTSimpleArrow
]

{ #category : #hooks }
OPBPMNMessageFlowController >> modelClass [
	^ OPBPMNMessageFlowModel
]

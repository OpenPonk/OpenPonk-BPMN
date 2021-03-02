Class {
	#name : #OPBPMNEndEventController,
	#superclass : #OPBPMNNodeController,
	#category : #'OpenPonk-BPMN-Controllers'
}

{ #category : #connecting }
OPBPMNEndEventController >> canBeSourceFor: aController [
	^ false
]

{ #category : #connecting }
OPBPMNEndEventController >> canBeTargetFor: aController [
	^ aController modelClass = OPBPMNFlowModel
]

{ #category : #connecting }
OPBPMNEndEventController >> createRoassalShape [
	^ RTRoundedBox new
		size: 32;
		borderRadius: 16;
		color: Color transparent;
		borderColor: Color black;
		borderWidth: 5;
		yourself
]

{ #category : #accessing }
OPBPMNEndEventController >> modelClass [
	^ OPBPMNEndEventModel
]
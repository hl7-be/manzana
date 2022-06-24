Instance: example-findRisc-weight
InstanceOf: Observation
Title: "Example - FINDRISC patient weight"
Description: "FINDRISC screening patient weight"
Usage: #example
* meta.profile = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation"
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* category.text = "Vital Signs"
* code = $sct#27113001 "Measured body weight (observation entity)"
* subject = Reference(rs-findRisc-patient)
* effectiveDateTime = "2020-09-23T02:57:56+00:00"
* performer = Reference(rs-findRisc-patient)
* valueQuantity = 60 'kg' "kg"
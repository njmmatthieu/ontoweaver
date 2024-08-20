#!/bin/bash
version=$(neo4j-admin --version | cut -d '.' -f 1)
if [[ $version -ge 5 ]]; then
	neo4j-admin database import full test --delimiter=";" --array-delimiter="|" --quote="'" --overwrite-destination=true --skip-bad-relationships=true --skip-duplicate-nodes=true --nodes="/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/Disease-header.csv,/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/Disease-part.*" --nodes="/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/Alteration-header.csv,/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/Alteration-part.*" --nodes="/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/Gene-header.csv,/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/Gene-part.*" --nodes="/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/Oncogenicity-header.csv,/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/Oncogenicity-part.*" --nodes="/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/OncokbEvidenceLevel-header.csv,/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/OncokbEvidenceLevel-part.*" --nodes="/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/MaterialSample-header.csv,/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/MaterialSample-part.*" --nodes="/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/Patient-header.csv,/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/Patient-part.*" --nodes="/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/FunctionalEffect-header.csv,/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/FunctionalEffect-part.*" --nodes="/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/Drug-header.csv,/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/Drug-part.*" --nodes="/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/SequenceVariant-header.csv,/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/SequenceVariant-part.*" --nodes="/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/FdaEvidenceLevel-header.csv,/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/FdaEvidenceLevel-part.*" --nodes="/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/Publication_pubmed-header.csv,/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/Publication_pubmed-part.*" --relationships="/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/SampleToPatient-header.csv,/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/SampleToPatient-part.*" --relationships="/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/VariantToOncokbEvidence-header.csv,/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/VariantToOncokbEvidence-part.*" --relationships="/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/PatientHasVariant-header.csv,/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/PatientHasVariant-part.*" --relationships="/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/VariantToGeneAssociation-header.csv,/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/VariantToGeneAssociation-part.*" --relationships="/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/VariantHasEffect-header.csv,/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/VariantHasEffect-part.*" --relationships="/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/VariantToOncogenicity-header.csv,/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/VariantToOncogenicity-part.*" --relationships="/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/InformationContentEntityToNamedThingAssociation-header.csv,/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/InformationContentEntityToNamedThingAssociation-part.*" --relationships="/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/VariantToFdaEvidence-header.csv,/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/VariantToFdaEvidence-part.*" --relationships="/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/VariantInSample-header.csv,/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/VariantInSample-part.*" --relationships="/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/VariantAffectedByDrug-header.csv,/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/VariantAffectedByDrug-part.*" --relationships="/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/VariantToAlteration-header.csv,/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/VariantToAlteration-part.*" --relationships="/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/VariantToDiseaseAssociation-header.csv,/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/VariantToDiseaseAssociation-part.*" 
else
	neo4j-admin import --database=test --delimiter=";" --array-delimiter="|" --quote="'" --force=true --skip-bad-relationships=true --skip-duplicate-nodes=true --nodes="/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/Disease-header.csv,/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/Disease-part.*" --nodes="/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/Alteration-header.csv,/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/Alteration-part.*" --nodes="/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/Gene-header.csv,/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/Gene-part.*" --nodes="/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/Oncogenicity-header.csv,/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/Oncogenicity-part.*" --nodes="/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/OncokbEvidenceLevel-header.csv,/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/OncokbEvidenceLevel-part.*" --nodes="/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/MaterialSample-header.csv,/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/MaterialSample-part.*" --nodes="/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/Patient-header.csv,/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/Patient-part.*" --nodes="/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/FunctionalEffect-header.csv,/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/FunctionalEffect-part.*" --nodes="/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/Drug-header.csv,/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/Drug-part.*" --nodes="/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/SequenceVariant-header.csv,/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/SequenceVariant-part.*" --nodes="/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/FdaEvidenceLevel-header.csv,/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/FdaEvidenceLevel-part.*" --nodes="/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/Publication_pubmed-header.csv,/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/Publication_pubmed-part.*" --relationships="/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/SampleToPatient-header.csv,/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/SampleToPatient-part.*" --relationships="/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/VariantToOncokbEvidence-header.csv,/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/VariantToOncokbEvidence-part.*" --relationships="/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/PatientHasVariant-header.csv,/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/PatientHasVariant-part.*" --relationships="/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/VariantToGeneAssociation-header.csv,/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/VariantToGeneAssociation-part.*" --relationships="/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/VariantHasEffect-header.csv,/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/VariantHasEffect-part.*" --relationships="/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/VariantToOncogenicity-header.csv,/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/VariantToOncogenicity-part.*" --relationships="/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/InformationContentEntityToNamedThingAssociation-header.csv,/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/InformationContentEntityToNamedThingAssociation-part.*" --relationships="/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/VariantToFdaEvidence-header.csv,/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/VariantToFdaEvidence-part.*" --relationships="/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/VariantInSample-header.csv,/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/VariantInSample-part.*" --relationships="/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/VariantAffectedByDrug-header.csv,/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/VariantAffectedByDrug-part.*" --relationships="/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/VariantToAlteration-header.csv,/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/VariantToAlteration-part.*" --relationships="/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/VariantToDiseaseAssociation-header.csv,/Users/mbaric/ontoweaver1/biocypher-out/20240820142618/VariantToDiseaseAssociation-part.*" 
fi
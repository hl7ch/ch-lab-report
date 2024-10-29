<!-- markdownlint-disable MD001 MD041 -->

### Documents de résultats de laboratoire

En s'inspirant du 'HL7 Europe Laboratory Report', les résultats de laboratoire sont représentés ici sous forme de bundle FHIR de type document. Le premier élément d'entrée est donc la composition, qui définit la structure du document.
Le bundle contient exactement un DiagnosticReport (rapport de laboratoire) qui renvoie à la composition. Il renvoie également aux résultats des analyses de laboratoire. Ceux-ci peuvent être présentés sous la forme de plusieurs observations et également sous la forme d'un document PDF. L'élément « result » contient les résultats sous forme de renvois aux observations. 

#### Cas d'utilisation Suspicion de thrombose veineuse profonde avec résultats de laboratoire courants, 1-tvt

Un patient, Hans Guggindieluft, se présente au cabinet de groupe d'Olten chez le Dr méd. Marc Mustermann. Il s'identifie oralement par le biais de ses données de base comme Hans Guggindieluft, 01.01.1981. Il signale des douleurs peu claires dans la jambe gauche ainsi que l'apparition simultanée de douleurs dépendant de la respiration et d'une toux. Le médecin procède à l'anamnèse et à l'examen physique et prescrit les paramètres de laboratoire suivants :

* numération sanguine avec comptage automatique, hémogramme
* CRP
* D-dimères
 
Ce document de laboratoire donne les résultats de 3 résultats de laboratoire : le test de comptage automatique des cellules sanguines, la protéine C-réactive dans le sérum, ainsi que les D-dimères de fibrine dans le sang, donc trois tests de laboratoire très courants. Le test de comptage des cellules sanguines renvoie à nouveau aux résultats individuels des comptages et des mesures, qui sont disponibles sous forme d'observations, c'est-à-dire des examens de laboratoire très fréquents.

[Résultat du laboratoire Document](Bundle-LabResultReport-1-tvt.html)

#### Cas d'application électrophorèse du sérum, 2-electrophoresis

Ce cas d'application concerne la reproduction de plusieurs fractions de protéines dans le sérum qui ont été séparées par la technique de l'électrophorèse. Les différentes fractions sont présentées comme 'hasMember Observation' avec leurs plages de référence respectives. Le résultat est disponible non seulement sous forme de chiffres, mais aussi sous forme de graphique bidimensionnel, qui doit également être reproduit dans le document. Le graphique a été encodé en 'base64' et ainsi intégré dans le document sous la forme d'un champ de texte plus grand. Il faut veiller ici à ce que la quantité de données du graphique ne soit pas trop importante. Nous recommandons une limite supérieure de 20 Moctets. 

[Résultat du laboratoire Document](Bundle-LabResultReport-2-electrophoresis.html)

#### Cas d'application Test respiratoire, 3-breath-test

Le test respiratoire est un test de provocation permettant de tester les intolérances à certains sucres (lactose, fructose). La concentration d'hydrogène et de méthane dans l'air expiré est mesurée à intervalles d'une demi-heure après l'administration d'une certaine quantité du type de sucre à tester. Le résultat est un graphique à deux dimensions avec les mesures, qui doit également être enregistré avec les résultats chiffrés. Ici aussi, l'encodage 'base64' a été utilisé.

[Résultat du laboratoire Document](Bundle-LabResultReport-3-breath-test.html)

#### Cas d'application Sepsis, 4-sepsis

Les résultats des analyses microbiologiques se distinguent des autres résultats de laboratoire par le fait qu'ils ne contiennent pas seulement des valeurs numériques de retour, mais aussi des identificateurs d'agents pathogènes, une croissance semi-quantitative dans les cultures ou des attributs de tests de résistance. Dans ce cas, la terminologie SNOMET CT est souvent utilisée en plus des codages LOINC.

[Résultat du laboratoire Document](Bundle-LabResultReport-4-sepsis.html)

### Panneaux d'essai de laboratoire (également appelés batteries d'essai)

Par panels de tests de laboratoire, on entend l'agrégation de plusieurs examens de laboratoire, tels qu'ils sont volontiers commandés dans un contexte clinique et présentés sous forme de résultats. En principe, nous avons montré avec les exemples ci-dessus que les résultats de laboratoire et les panels de test peuvent être représentés avec les ressources telles qu'elles sont définies ici. Néanmoins, les panels d'essai en tant que profils d'observation présentent certains avantages.

* Analyse complète : Ils offrent un moyen efficace de commander et d'examiner simultanément plusieurs analytes et d'afficher clairement les résultats. Ceci est particulièrement utile pour le diagnostic de tableaux cliniques complexes où plusieurs paramètres jouent un rôle.
* Efficacité accrue : En combinant plusieurs tests en un seul panel, l'efficacité du laboratoire peut être augmentée et les ressources utilisées de manière optimale. Au lieu de tester chaque analyte individuellement, plusieurs paramètres peuvent être testés simultanément, ce qui réduit le temps et la main-d'œuvre.
* Rentabilité : Les panels de tests peuvent également être plus rentables que les tests individuels, car ils sont souvent proposés à un prix réduit. Cela peut être particulièrement avantageux lorsqu'une analyse complète est nécessaire.
* Pertinence clinique dans le contexte du traitement : Les panels de tests sont souvent conçus pour couvrir une gamme d'analytes qui sont cliniquement pertinents pour des maladies ou des conditions de santé spécifiques. Cela facilite l'interprétation des résultats et permet un diagnostic plus rapide et plus précis.
* Standardisation : En utilisant des panels de tests, les laboratoires peuvent mettre en œuvre une approche standardisée pour tester des analytes spécifiques. Cela favorise la cohérence et la comparabilité des résultats à la fois au sein d'un laboratoire et entre différents laboratoires.

Dans nos systèmes de soins de santé, la pression concurrentielle est forte entre les laboratoires et la capacité à offrir des services différenciés peut constituer un avantage concurrentiel important. Un panel de tests standardisé obligatoire peut affecter la capacité d'un laboratoire à se différencier de la concurrence en offrant des tests spécialisés ou des services personnalisés. Les panels de tests proposés ici ne constituent donc pas une norme obligatoire, mais devraient être facultatifs lorsque cela se justifie. Le panel automatisé de NFS et le panel d'insuffisance rénale [test de dépistage] (https://www.swissnephrology.ch/wp/wp-content/uploads/2023/01/161121_SGN_Pocketguide_CKD_Web_A4_e_WZ.pdf) sont des exemples de profils d'observation.
Les panels de tests énumérés ici servent également d'exemples de la manière dont les laboratoires peuvent mettre en œuvre leurs propres panels de tests en tant que profils d'observation.

#### Cas d'utilisation Dénombrement des cellules sanguines (CBC automatisé)

L'hématogramme II de la [liste d'analyses(https://www.bag.admin.ch/dam/bag/de/dokumente/kuv-leistungen/leistungen-und-tarife/Analysenliste/Analysenliste%20per%201.%20Januar%202024%20in%20Excel%20Format.xlsx.download.xlsx/Analysenliste%20per%201.%20Januar%202024%20in%20Excel%20Format.xlsx)] est le modèle pour ce panel de tests. 

Profil : [CH LAB Observation Results : Count of Blood Cells (automated CBC)](StructureDefinition-ch-lab-observation-cbc-panel.html)

Exemple : [Résultats de l'observation : Numération des cellules sanguines (NFS automatisée)](Observation-ExampleObservationCBCPanel.html)

#### Cas d'utilisation Insuffisance rénale

Les maladies chroniques telles que le diabète ou l'hypertension s'accompagnent parfois d'une maladie rénale chronique. Elles nécessitent donc un suivi de la fonction rénale. Le débit de filtration glomérulaire (DFG) et l'excrétion d'albumine dans les urines de 24 heures se sont avérés être des paramètres utiles pour la fonction rénale. Le DFG est assez difficile à déterminer. C'est pourquoi des formules ont été utilisées, qui permettent des approximations à l'aide de mesures de marqueurs endogènes, la créatinine ou la cystatine-C. La formule la plus fréquemment utilisée est la CKD-EPI, qui prend en compte des caractéristiques supplémentaires du patient telles que l'âge et le sexe. En outre, plusieurs ajustements ont été apportés à la formule au fil du temps, le plus récent datant de 2021, lorsque la couleur de la peau a été supprimée en tant que paramètre. Les résultats des formules CKD-EPI se rapportent toujours à des personnes dont la surface corporelle est de 1,73 m².

Le deuxième indicateur de la fonction rénale est l'excrétion d'albumine dans les urines de 24 heures. Pour simplifier la procédure de détermination, on utilise le rapport albumine/créatinine dans l'urine.

Profil : [Résultats d'observation CH LAB : Panel d'insuffisance rénale](StructureDefinition-ch-lab-observation-renal-insufficiency-panel.html)

Exemple : [Résultats des observations : Panel d'insuffisance rénale](Observation-ObservationRenalInsufficiencyPanel.html)

#### Cas d'utilisation Banque de sang

La normalisation dans le domaine des résultats des banques de sang améliorerait la sécurité de la transmission des résultats de laboratoire. Le rapport de laboratoire de HL7 Europe a inclus deux ValueSets avec la liaison « preferred » :

1. [ValueSet : Results Blood Group - IPS](http://hl7.org/fhir/uv/ips/ValueSet/results-blood-group-uv-ips) avec 207 concepts

2. [ValueSet : Results Blood Group - SNOMED CT IPS Free Set ](http://hl7.org/fhir/uv/ips/ValueSet/results-blood-group-snomed-ct-ips-free-set) avec 13 concepts.

Ce guide contient 3 autres ValueSets possibles :

1. [ValueSet: CH LAB BloodGroup Immunohematology Tests (SNOMED CT coded procedures)](ValueSet-ch-lab-bloodgroup-immuno-hematology-vs.html) avec les codes SNOMED CT des tests de dépistage des anticorps de groupe sanguin.

2. [ValueSet: CH LAB BloodGroup Antibody Screen Tests Result (LOINC codes)](ValueSet-ch-lab-bloodgroup-antibody-screen-result-vs.html) avec les codes LOINC des résultats de dépistage des anticorps de groupe sanguin.

3. [ValueSet: CH LAB BloodGroup Antibody Result](ValueSet-ch-lab-bloodgroup-antibody-vs.html) avec les codes SNOMED CT des anticorps de groupe sanguin.

La standardisation dans le secteur des banques de sang nécessite la coopération et l'approbation de l'association professionnelle (Schweizerische Vereinigung für Transfusionsmedizin), ce qui n'a pas pu être obtenu dans le court laps de temps disponible. Cette directive se limite donc à 4 formes possibles de présentation des résultats de la banque de sang à titre d'exemple : 

* [Groupe sanguin ABO Rh simple](Observation-BloodGroupSimple.html)
* [Groupe sanguin ABO Rh Panel](Observation-BloodGroupPanel.html)
* [Groupe sanguin ABO Rh utilisant 'Component'](Observation-BloodGroupComponent.html)

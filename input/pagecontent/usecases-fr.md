<!-- markdownlint-disable MD001 MD041 -->

### Diagramme des ressources

{% include img.html img="Resource Overview.svg" caption="Fig. 1: Aperçu des ressources" width="80%" %}

### Documents de résultats de laboratoire

En s'inspirant du 'HL7 Europe Laboratory Report', les résultats de laboratoire sont représentés ici sous forme de bundle FHIR de type document. Le premier élément d'entrée est donc la composition, qui définit la structure du document.
Le bundle contient exactement un DiagnosticReport (rapport de laboratoire) qui renvoie à la composition. Il renvoie également aux résultats des analyses de laboratoire. Ceux-ci peuvent être présentés sous la forme de plusieurs observations et également sous la forme d'un document PDF. L'élément « result » contient les résultats sous forme de renvois aux observations. 

#### Cas d'utilisation Suspicion de thrombose veineuse profonde avec résultats de laboratoire courants, 1-tvt

Un patient, Hans Guggindieluft, se présente le 09.03.2016 au cabinet de groupe d'Olten chez le Dr méd. Marc Mustermann. Il s'identifie oralement par le biais de ses données de base comme Hans Guggindieluft, 01.01.1981. Il signale des douleurs peu claires dans la jambe gauche ainsi que l'apparition simultanée de douleurs dépendant de la respiration et d'une toux. Le médecin procède à l'anamnèse et à l'examen physique et prescrit les paramètres de laboratoire suivants :

* numération sanguine avec comptage automatique, hémogramme
* CRP
* D-dimères
 
Ce document de laboratoire donne les résultats de 3 résultats de laboratoire : le test de comptage automatique des cellules sanguines, la protéine C-réactive dans le sérum, ainsi que les D-dimères de fibrine dans le sang, donc trois tests de laboratoire très courants. Le test de comptage des cellules sanguines renvoie à nouveau aux résultats individuels des comptages et des mesures, qui sont disponibles sous forme d'observations, c'est-à-dire des examens de laboratoire très fréquents.

[Laboratory Result Document](Bundle-LabResultReport-1-tvt.html)

#### Cas d'application électrophorèse du sérum, 2-electrophoresis

Ce cas d'application concerne la reproduction de plusieurs fractions de protéines dans le sérum qui ont été séparées par la technique de l'électrophorèse. Les différentes fractions sont présentées comme 'hasMember Observation' avec leurs plages de référence respectives. Le résultat est disponible non seulement sous forme de chiffres, mais aussi sous forme de graphique bidimensionnel, qui doit également être reproduit dans le document. Le graphique a été encodé en 'base64' et ainsi intégré dans le document sous la forme d'un champ de texte plus grand. Il faut veiller ici à ce que la quantité de données du graphique ne soit pas trop importante. Nous recommandons une limite supérieure de 20 Moctets. 

[Laboratory Result Document](Bundle-LabResultReport-2-electrophoresis.html)

#### Cas d'application Test respiratoire, 3-breath-test

Le test respiratoire est un test de provocation permettant de tester les intolérances à certains sucres (lactose, fructose). La concentration d'hydrogène et de méthane dans l'air expiré est mesurée à intervalles d'une demi-heure après l'administration d'une certaine quantité du type de sucre à tester. Le résultat est un graphique à deux dimensions avec les mesures, qui doit également être enregistré avec les résultats chiffrés. Ici aussi, l'encodage 'base64' a été utilisé.

[Laboratory Result Document](Bundle-LabResultReport-3-breath-test.html)

#### Cas d'application Sepsis, 4-sepsis

Les résultats des analyses microbiologiques se distinguent des autres résultats de laboratoire par le fait qu'ils ne contiennent pas seulement des valeurs numériques de retour, mais aussi des identificateurs d'agents pathogènes, une croissance semi-quantitative dans les cultures ou des attributs de tests de résistance. Dans ce cas, la terminologie SNOMET CT est souvent utilisée en plus des codages LOINC.

[Laboratory Result Document](Bundle-LabResultReport-4-sepsis.html)

### Panneaux de test de laboratoire (également appelés batteries de test ou profils de test)

Par panels de tests de laboratoire, on entend l'agrégation de plusieurs examens de laboratoire, tels qu'ils sont volontiers commandés dans un contexte clinique et présentés sous forme de résultats. En principe, nous avons montré avec les exemples ci-dessus que les résultats de laboratoire et les panels de test peuvent être représentés avec les ressources telles qu'elles sont définies ici. Les panels de test offrent néanmoins certains avantages.

* Analyse complète : ils offrent une possibilité efficace de commander et d'examiner plusieurs analytes en même temps et de présenter les résultats de manière claire. Ceci est particulièrement utile pour le diagnostic de pathologies complexes dans lesquelles plusieurs paramètres jouent un rôle.
* Efficacité accrue : la combinaison de plusieurs analyses dans un seul panel permet d'accroître l'efficacité du laboratoire et d'utiliser les ressources de manière optimale. Au lieu de tester chaque analyte séparément, plusieurs paramètres peuvent être testés simultanément, ce qui réduit le temps et la charge de travail.
* Rentabilité : les panels de test peuvent également être plus rentables que les tests individuels, car ils sont souvent proposés à un prix réduit. Cela peut être particulièrement avantageux lorsqu'une analyse complète est nécessaire.
* Pertinence clinique dans le contexte du traitement : les panels de tests sont souvent conçus pour couvrir une série d'analytes qui sont importants pour certaines maladies.


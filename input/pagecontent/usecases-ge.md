<!-- markdownlint-disable MD001 MD041 -->

### Laborergebnis Dokumente

In Anlehnung an 'HL7 Europe Laboratory Report' werden hier die Laborergebnisse als FHIR-Bundle vom Typ Dokument dargestellt. Das erste entry Element ist also die Composition, die die Struktur des Dokuments definiert.
Das Bundle enthält genau einen DiagnosticReport (Laborbericht), der auf die Composition verweist. Es verweist auch auf die Ergebnisse der Laboruntersuchungen. Diese können in Form von mehreren Beobachtungen und auch als PDF-Dokument dargestellt werden. Das Element „result“ enthält die Ergebnisse als Verweise auf Beobachtungen. 

#### Anwendungsfall Verdacht auf tiefe Venenthrombose mit gängigen Laborresultaten, 1-tvt

Ein Patient, Hans Guggindieluft, erscheint in der Gruppenpraxis Olten bei Dr. med. Marc Mustermann. Er identifiziert sich mündlich über seine Stammdaten als Hans Guggindieluft, 01.01.1981. Er berichtet über unklare Beinschmerzen im linken Unterschenkel sowie gleichzeitig aufgetretene atemabhängige Schmerzen und Husten. Der Arzt führt die Anamnese und körperliche Untersuchung durch und verordnet folgende Laborparameter:

* Blutbild mit automatischer Zählung, Hämatogramm
* CRP
* D-Dimer
 
Dieses Labordokument gibt die Resultate von 3 Laborresultaten wieder: Dem automatischen Zähltest für Blutzellen, dem C-reaktiven Protein im Serum, sowie dem Fibrin D-Dimer im Blut, somit drei sehr gängige Labortest. Der Zähltest für Blutzellen referenziert dann wieder auf die einzelnen Resultate der Zählungen und Messungen, die als Observations vorliegen, mithin sehr häufige Laboruntersuchungen.

[Laborergebnis Dokument](Bundle-LabResultReport-1-tvt.html)

#### Anwendungsfall Serum-Elektrophorese, 2-electrophoresis

Bei diesem Anwendungsfall geht es um die Wiedergabe von mehreren Eiweiss-Fraktionen im Serum, die mittels Elektrophorese-Technik aufgetrennt wurden. Die einzelnen Fraktionen sind als 'hasMember Observation' mit jeweiligen Referenzbereichen aufgeführt. Das Ergebnis liegt nebst in Zahlenform auch als 2-dimensionale Grafik vor, und muss ebenfalls im Dokument wiedergegeben werden. Die Grafik wurde 'base64' encodiert und somit als grösseres Textfeld im Dokument integriert. Es ist hier zu beachten, dass die Datenmenge der Grafik nicht zu gross wird. Wir würden eine Obergrenze von 20 Megabytes empfehlen. 

[Laborergebnis Dokument](Bundle-LabResultReport-2-electrophoresis.html)

#### Anwendungsfall Atemtest, 3-breath-test

Der Atemtest ist ein Provokationstest, um Intoleranzen gegenüber gewissen Zuckerarten (Lactose, Fructose) zu testen. Es wird die Konzentration von Wasserstoff und Methan in der Ausatmungsluft in halbstündigen Intervallen gemessen, nachdem eine bestimmte Menge der zu testenden Zuckerart verabreicht wurde. Als Ergebnis liegt eine 2 dimensionale Grafik mit den Messungen vor, die ebenfalls nebst den Zahlenergebnissen festgehalten werden muss. Auch hier ist die 'base64' Encodierung zur Anwendung gekommen.

[Laborergebnis Dokument](Bundle-LabResultReport-3-breath-test.html)

#### Anwendungsfall Sepsis, 4-sepsis

Die Resultate von mikrobiologischen Untersuchungen unterscheiden sich von anderen Laborresulteten, indem nicht nur numerische Rückgabewerte vorliegen, sondern Bezeichner von Krankheitserregern, semiquantitatives Wachstum in Kulturen oder Attribute von Resistenztests. Hier wird nebst den LOINC Codierungen oft die SNOMET CT Terminologie verwendet.

[Laborergebnis Dokument](Bundle-LabResultReport-4-sepsis.html)

### Labor Test Panels (auch Test-Batterien oder Test-Profile genannt)

Unter Labor Testpanels versteht man die Aggregierung mehrerer Laboruntersuchungen, wie sie gerne in einem klinischen Kontext in Auftrag gegeben und als Resultate dargestellt werden. Grundsätzlich haben wir mit obigen Beispielen gezeigt, dass sich Laborresultate wie auch Test-Panels mit den Resourcen, wie sie hier definiert sind abbilden lassen. Trotzdem bieten Testpanels als Observation Profile gewisse Vorteile.

* Umfassende Analyse: Sie bieten eine effiziente Möglichkeit, mehrere Analyte gleichzeitig zu bestellen, zu untersuchen und die Ergebnisse übersichtlich darzustellen. Dies ist besonders nützlich bei der Diagnose komplexer Krankheitsbilder, bei denen mehrere Parameter eine Rolle spielen.
* Erhöhte Effizienz: Durch die Kombination mehrerer Tests in einem Panel kann die Effizienz des Labors gesteigert und die Ressourcen optimal genutzt werden. Anstatt jeden Analyten einzeln zu testen, können mehrere Parameter gleichzeitig getestet werden, was Zeit und Arbeitsaufwand reduziert.
* Kosteneffizienz: Testpanels können auch kostengünstiger sein als Einzeltests, da sie oft zu einem reduzierten Preis angeboten werden. Dies kann besonders vorteilhaft sein, wenn eine umfassende Analyse erforderlich ist.
* Klinische Relevanz im Behandlungskontext: Testpanels sind oft so konzipiert, dass sie eine Reihe von Analyten abdecken, die für bestimmte Krankheiten oder Gesundheitszustände klinisch relevant sind. Dies erleichtert die Interpretation der Ergebnisse und ermöglicht eine schnellere und genauere Diagnose.
* Standardisierung: Durch die Verwendung von Testpanels können Labors einen standardisierten Ansatz für die Untersuchung spezifischer Analyte umsetzen. Dies fördert die Konsistenz und Vergleichbarkeit der Ergebnisse sowohl innerhalb eines Labors als auch zwischen verschiedenen Labors.

In unseren Gesundheitssystemen herrscht ein hoher Wettbewerbsdruck zwischen Laboren, und die Fähigkeit, differenzierte Dienstleistungen anzubieten, kann ein wichtiger Wettbewerbsvorteil sein. Ein obligates standardisiertes Test-Panel kann die Fähigkeit eines Labors beeinträchtigen, sich durch spezialisierte Tests oder massgeschneiderte Dienstleistungen von der Konkurrenz abzuheben. Die hier vorgeschlagenen Testpanels sind deshalb nicht zwingender Standard, sondern sollen optional eingesetzt werden können, wo dies Sinn macht. Das automated CBC Panel und auch das Niereninsuffizienzpanel [Screeningtest](https://www.swissnephrology.ch/wp/wp-content/uploads/2023/01/161121_SGN_Pocketguide_CKD_Web_A4_e_WZ.pdf) sind als Beispiele für Observation Profiles gedacht.
Die hier aufgeführten Testpanels dienen auch als Beispiele, wie Labore eigene Testpanels als Observation Profile implementieren können.

#### Use Case Kleines Blutbild Automatisierte Zählung

Das Hämatogramm II der [Analysenliste](https://www.bag.admin.ch/dam/bag/de/dokumente/kuv-leistungen/leistungen-und-tarife/Analysenliste/Analysenliste%20per%201.%20Januar%202024%20in%20Excel%20Format.xlsx.download.xlsx/Analysenliste%20per%201.%20Januar%202024%20in%20Excel%20Format.xlsx) ist die Vorlage für dieses Testpanel. 

Profile: [CH LAB Observation Results: Count of Blood Cells (automated CBC)](StructureDefinition-ch-lab-observation-cbc-panel.html)

Example: [Observation Results: Count of Blood Cells (automated CBC)](Observation-ExampleObservationCBCPanel.html)

#### Use Case Niereninsuffizienz

Chronische Erkrankungen wie Diabetes oder Hypertonie gehen manchmal mit chronischen Nierenkrankheiten einher. Deshalb brauchen sie eine Überwachung der Nierenfunktion. Als Parameter für die Nierenfunktion haben sich die Glomerulumfiltrationsrate (GFR) und die Albumin-Ausscheidung im 24h Urin bewährt. Die GFR lässt sich nur sehr aufwendig bestimmen. Deshalb wurden Formeln verwendet, welche Annäherungen mit Hilfe von Messung von endogenen Markern, Creatinin oder Cystatin-C zulassen. Die häufig verwendete Formel ist CKD-EPI, welche zusätzliche Eigenschaften von Patienten berücksichtigt, wie Alter und Geschlecht. Zudem wurden im zeitlichen Verlauf mehrere Anpassungen der Formel vorgenommen, zuletzt im Jahr 2021, indem die Hautfarbe als Parameter weggelassen wurde. Die Resultate der CKD-EPI Formeln beziehen sich immer auf Menschen mit einer Körperoberfläche von 1.73 m².

Der zweite Indikator für die Nierenfunktion ist die Albumin-Ausscheidung im 24 h Urin. Um das Bestimmungsverfahren zu vereinfachen wird die Albumin/Creatinin Ratio im Urin verwendet.

Profile: [CH LAB Observation Results: Renal Insufficiency Panel](StructureDefinition-ch-lab-observation-renal-insufficiency-panel.html)

Example: [Observation Results: Renal Insufficiency Panel](Observation-ObservationRenalInsufficiencyPanel.html)

#### Use Case Blood Bank

Eine Standardisierung im Bereich der Blutbank Resultate würde die Sicherheit bei der Übertragung von Laborresultaten verbessern. HL7 Europe Laboratory Report hat zwei ValueSets mit der Bindung 'preferred' einbezogen:

1. [ValueSet: Results Blood Group - IPS](http://hl7.org/fhir/uv/ips/ValueSet/results-blood-group-uv-ips) mit 207 Konzepten

2. [ValueSet: Results Blood Group - SNOMED CT IPS Free Set ](http://hl7.org/fhir/uv/ips/ValueSet/results-blood-group-snomed-ct-ips-free-set) mit 13 Konzepten

Dieser Leitfaden enthält 3 weitere mögliche ValueSets:

1. [ValueSet: ChLab BloodGroup Antibody Screen Tests (Experimental)](ValueSet-ch-lab-bloodgroup-immuno-hematology-vs.html) mit den SNOMED CT Codes der Blutgruppen Antikörper Screening Tests

2. [ValueSet: CH Lab Results Blood Group Antibody (Experimental)](ValueSet-ch-lab-bloodgroup-antibody-vs.html) mit den SNOMED CT Codes der Blutgruppen Antikörper

1. [ValueSet: CH LAB BloodGroup Immunohematology Tests (SNOMED CT coded procedures)](ValueSet-ch-lab-bloodgroup-immuno-hematology-vs.html) mit den SNOMED CT Codes der Blutgruppen-Antikörper screening tests

2. [ValueSet: CH LAB BloodGroup Antibody Screen Tests Result (LOINC codes)](ValueSet-ch-lab-bloodgroup-antibody-screen-vs.html) mit den LOINC Codes der Resultate der Blutgruppen Antikörper screening Tests

3. [ValueSet: CH LAB BloodGroup Antibody Result](ValueSet-ch-lab-bloodgroup-antibody-vs.html) mit den SNOMED CT Codes der Blutgruppen Antikörper Screening Tests

Für die Standardisierung in Bereich Blutbank braucht es Mitarbeit und Zustimmung der Fachgesellschaft (Schweizerische Vereinigung für Transfusionsmedizin), die in der kurzen Zeit nicht erlangt werden konnte. Somit beschränkt sich dieser Leitfaden auf 4 mögliche Darstellungsformen als Beispiele von Blutbank Resultate: 

* [Blood Group Panel ABO Rh simple](Observation-BloodGroupAB0RhD.html)
* [Blood Group Panel ABO Rh Panel](Observation-BloodGroupPanel.html)
* [Blood Group Panel ABO Rh mit 'Component'](Observation-BloodGroupCompAB0CompRhD.html)


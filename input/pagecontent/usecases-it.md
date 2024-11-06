<!-- markdownlint-disable MD001 MD041 -->

### Documenti dei risultati di laboratorio

In linea con il 'HL7 Europe Laboratory Report', i risultati di laboratorio sono visualizzati qui come un bundle FHIR del tipo di documento. Il primo elemento di ingresso è quindi la composizione, che definisce la struttura del documento.
Il bundle contiene esattamente un DiagnosticReport (rapporto di laboratorio) che si riferisce alla composizione. Si riferisce anche ai risultati degli esami di laboratorio. Questi possono essere presentati sotto forma di diverse osservazioni e anche come documento PDF. L'elemento “result” contiene i risultati come riferimenti alle osservazioni. 

#### Caso d'uso Sospetta trombosi venosa profonda con risultati di laboratorio comuni, 1-tvt

Un paziente, Hans Guggindieluft, si reca dal Dr. Marc Mustermann presso lo studio medico di Olten. Si identifica verbalmente tramite i suoi dati anagrafici come Hans Guggindieluft, 01.01.1981. Riferisce un vago dolore alla parte inferiore della gamba sinistra e contemporaneamente dolore respiratorio e tosse. Il medico raccoglie l'anamnesi, esegue un esame fisico e prescrive i seguenti parametri di laboratorio:

* Emocromo con conteggio automatico, ematogramma
* CRP
* D-dimero
 
Questo documento di laboratorio mostra i risultati di 3 esami di laboratorio: l'esame emocromocitometrico automatico, la proteina C-reattiva nel siero e il D-dimero di fibrina nel sangue, tre esami di laboratorio molto comuni. L'esame emocromocitometrico rimanda poi ai singoli risultati dei conteggi e delle misurazioni disponibili come osservazioni, ovvero esami di laboratorio molto comuni.

[Documento sui risultati di laboratorio](Bundle-LabResultReport-1-tvt.html)

#### Caso d'uso elettroforesi del siero, 2-elettroforesi

Questo caso d'uso riguarda la riproduzione di diverse frazioni proteiche del siero che sono state separate con la tecnica dell'elettroforesi. Le singole frazioni sono elencate come 'hasMember Observation' con i rispettivi intervalli di riferimento. Il risultato è disponibile sia in forma numerica che come grafico bidimensionale e deve essere riprodotto nel documento. Il grafico è stato codificato in 'base64' e quindi integrato nel documento come campo di testo più grande. È importante assicurarsi che il volume dei dati del grafico non sia troppo grande. Si consiglia un limite massimo di 20 Megabyte. 

[Documento sui risultati di laboratorio](Bundle-LabResultReport-2-electrophoresis.html)

#### Caso d'uso test del respiro, 3-breath-test

Il test del respiro è un test di provocazione per verificare l'intolleranza ad alcuni tipi di zucchero (lattosio, fruttosio). La concentrazione di idrogeno e metano nell'aria espirata viene misurata a intervalli di mezz'ora dopo la somministrazione di una certa quantità del tipo di zucchero da testare. Il risultato è un grafico bidimensionale con le misurazioni, che devono essere registrate insieme ai risultati numerici. Anche in questo caso è stata utilizzata la codifica 'base64'.

[Documento sui risultati di laboratorio](Bundle-LabResultReport-3-breath-test.html)

#### Caso d'uso sepsi, 4-sepsi

I risultati dei test microbiologici differiscono dagli altri risultati di laboratorio in quanto non sono disponibili solo valori numerici di ritorno, ma anche identificatori di agenti patogeni, crescita semiquantitativa nelle colture o attributi dei test di resistenza. Oltre alla codifica LOINC, qui viene spesso utilizzata la terminologia SNOMET CT.

[Documento sui risultati di laboratorio](Bundle-LabResultReport-4-sepsis.html)

### Pannelli di test di laboratorio (chiamati anche batterie di test)

I pannelli di test di laboratorio sono l'aggregazione di diversi test di laboratorio, come spesso vengono commissionati in un contesto clinico e presentati come risultati. In linea di principio, abbiamo dimostrato con gli esempi precedenti che i risultati di laboratorio e i gruppi di test possono essere rappresentati con le risorse definite qui. Tuttavia, i gruppi di test offrono alcuni vantaggi.

* Analisi completa: Forniscono un modo efficiente per ordinare ed esaminare più analiti contemporaneamente e visualizzare i risultati in modo chiaro. Ciò è particolarmente utile nella diagnosi di quadri clinici complessi in cui diversi parametri giocano un ruolo.
* Aumento dell'efficienza: Combinando più test in un unico pannello, è possibile aumentare l'efficienza del laboratorio e utilizzare in modo ottimale le risorse. Invece di testare ogni singolo analita, è possibile testare simultaneamente più parametri, riducendo i tempi e la manodopera.
* Efficienza dei costi: I pannelli di test possono anche essere più efficaci dal punto di vista dei costi rispetto ai singoli test, in quanto sono spesso offerti a un prezzo ridotto. Questo può essere particolarmente vantaggioso quando è richiesta un'analisi completa.
* Rilevanza clinica nel contesto terapeutico: I pannelli di test sono spesso progettati per coprire una serie di analiti clinicamente rilevanti per specifiche malattie o condizioni di salute. Ciò facilita l'interpretazione dei risultati e consente una diagnosi più rapida e accurata.
* Standardizzazione: Utilizzando i pannelli di test, i laboratori possono implementare un approccio standardizzato per testare analiti specifici. Ciò favorisce la coerenza e la comparabilità dei risultati sia all'interno di un laboratorio che tra laboratori diversi.

Nei nostri sistemi sanitari, la pressione competitiva tra i laboratori è elevata e la capacità di offrire servizi differenziati può rappresentare un importante vantaggio competitivo. Un pannello di test standardizzato obbligatorio può compromettere la capacità di un laboratorio di differenziarsi dalla concorrenza offrendo test specializzati o servizi personalizzati. I pannelli di test qui proposti non sono quindi uno standard obbligatorio, ma dovrebbero essere facoltativi laddove ciò sia sensato. Il pannello CBC automatizzato e il pannello di insufficienza renale [test di screening] (https://www.swissnephrology.ch/wp/wp-content/uploads/2023/01/161121_SGN_Pocketguide_CKD_Web_A4_e_WZ.pdf) sono intesi come esempi di profili di osservazione.
I pannelli di test qui elencati servono anche come esempi di come i laboratori possono implementare i propri pannelli di test come profili di osservazione.

#### Caso d'uso Conteggio delle cellule del sangue (emocromo automatizzato)

L'ematogramma II della [lista di analisi(https://www.bag.admin.ch/dam/bag/de/dokumente/kuv-leistungen/leistungen-und-tarife/Analysenliste/Analysenliste%20per%201.%20Januar%202024%20in%20Excel%20Format.xlsx.download.xlsx/Analysenliste%20per%201.%20Januar%202024%20in%20Excel%20Format.xlsx)] è il modello per questo pannello di test. 

Profilo: [CH LAB Observation Results: Count of Blood Cells (automated CBC)](StructureDefinition-ch-lab-observation-cbc-panel.html)

Esempio: [Risultati dell'osservazione: conteggio delle cellule del sangue (emocromo automatico)](Observation-ExampleObservationCBCPanel.html)

#### Caso d'uso Insufficienza renale

Malattie croniche come il diabete o l'ipertensione sono talvolta accompagnate da una malattia renale cronica. Richiedono quindi il monitoraggio della funzione renale. La velocità di filtrazione glomerulare (GFR) e l'escrezione di albumina nelle urine delle 24 ore si sono rivelati parametri utili per la funzione renale. Il GFR è abbastanza difficile da determinare. Per questo motivo, sono state utilizzate formule che consentono approssimazioni con l'aiuto di misurazioni di marcatori endogeni, creatinina o cistatina-C. La formula più utilizzata è la CKD-EPI, che tiene conto di altre caratteristiche del paziente, come l'età e il sesso. Inoltre, nel corso del tempo sono stati apportati diversi aggiustamenti alla formula, l'ultimo dei quali nel 2021, quando il colore della pelle è stato omesso come parametro. I risultati delle formule CKD-EPI si riferiscono sempre a persone con una superficie corporea di 1,73 m².

Il secondo indicatore della funzione renale è l'escrezione di albumina nelle urine delle 24 ore. Per semplificare la procedura di determinazione, si utilizza il rapporto albumina/creatinina nelle urine.

Profilo: [CH LAB Observation Results: Renal Insufficiency Panel](StructureDefinition-ch-lab-observation-renal-insufficiency-panel.html)

Esempio: [Risultati dell'osservazione: pannello di insufficienza renale](Observation-ObservationRenalInsufficiencyPanel.html)

#### Caso d'uso Banca del sangue

La standardizzazione nell'area dei risultati delle banche del sangue migliorerebbe la sicurezza nella trasmissione dei risultati di laboratorio. HL7 Europe Laboratory Report ha incluso due ValueSet con il binding 'preferred':

1. [ValueSet: Results Blood Group - IPS](http://hl7.org/fhir/uv/ips/ValueSet/results-blood-group-uv-ips) con 207 concetti.

2. [ValueSet: Results Blood Group - SNOMED CT IPS Free Set ](http://hl7.org/fhir/uv/ips/ValueSet/results-blood-group-snomed-ct-ips-free-set) con 13 concetti.

Questa guida contiene altri 3 possibili ValueSet:

1. [ValueSet: CH LAB-Report BloodGroup Immunohematology Tests (SNOMED CT coded procedures)](ValueSet-ch-lab-bloodgroup-immuno-hematology-vs.html) con i codici SNOMED CT dei test di screening degli anticorpi del gruppo sanguigno.

2. [ValueSet: CH LAB-Report BloodGroup Antibody Screen Tests Result (LOINC codes)](ValueSet-ch-lab-bloodgroup-antibody-screen-vs.html) con i codici LOINC dei resultati dei test di screening degli anticorpi del gruppo sanguigno.

3. [ValueSet: CH LAB-Report BloodGroup Antibody Result](ValueSet-ch-lab-bloodgroup-antibody-vs.html) con i codici SNOMED CT degli anticorpi del gruppo sanguigno.

La standardizzazione nel settore delle banche del sangue richiede la collaborazione e l'approvazione dell'associazione professionale (Schweizerische Vereinigung für Transfusionsmedizin), che non è stato possibile ottenere nel breve tempo a disposizione. La presente linea guida si limita pertanto a 4 possibili forme di presentazione come esempi di risultati delle banche del sangue: 

* [Pannello gruppi sanguigni ABO Rh semplice](Observation-BloodGroupAB0RhD.html)
* [Pannello gruppi sanguigni ABO Rh](Observation-BloodGroupPanel.html)
* [Pannello gruppi sanguigni ABO Rh usando 'Component'](Observation-BloodGroupCompAB0CompRhD.html)


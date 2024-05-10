<!-- markdownlint-disable MD001 MD041 -->

### Diagramma delle risorse

{% include img.html img="Resource Overview.svg" caption="Fig. 1: Panoramica delle risorse" width="80%" %}


### Documenti dei risultati di laboratorio

In linea con il 'HL7 Europe Laboratory Report', i risultati di laboratorio sono visualizzati qui come un bundle FHIR del tipo di documento. Il primo elemento di ingresso è quindi la composizione, che definisce la struttura del documento.
Il bundle contiene esattamente un DiagnosticReport (rapporto di laboratorio) che si riferisce alla composizione. Si riferisce anche ai risultati degli esami di laboratorio. Questi possono essere presentati sotto forma di diverse osservazioni e anche come documento PDF. L'elemento “result” contiene i risultati come riferimenti alle osservazioni. 

#### Caso d'uso Sospetta trombosi venosa profonda con risultati di laboratorio comuni, 1-tvt

Un paziente, Hans Guggindieluft, si reca dal Dr. Marc Mustermann presso lo studio medico di Olten il 09.03.2016. Si identifica verbalmente tramite i suoi dati anagrafici come Hans Guggindieluft, 01.01.1981. Riferisce un vago dolore alla parte inferiore della gamba sinistra e contemporaneamente dolore respiratorio e tosse. Il medico raccoglie l'anamnesi, esegue un esame fisico e prescrive i seguenti parametri di laboratorio:

* Emocromo con conteggio automatico, ematogramma
* CRP
* D-dimero
 
Questo documento di laboratorio mostra i risultati di 3 esami di laboratorio: l'esame emocromocitometrico automatico, la proteina C-reattiva nel siero e il D-dimero di fibrina nel sangue, tre esami di laboratorio molto comuni. L'esame emocromocitometrico rimanda poi ai singoli risultati dei conteggi e delle misurazioni disponibili come osservazioni, ovvero esami di laboratorio molto comuni.

[Documento sui risultati di laboratorio](Bundle-LabResultReport-1-tvt.html)

#### Caso d'uso elettroforesi del siero, 2-elettroforesi

Questo caso d'uso riguarda la riproduzione di diverse frazioni proteiche del siero che sono state separate con la tecnica dell'elettroforesi. Le singole frazioni sono elencate come 'hasMember Observation' con i rispettivi intervalli di riferimento. Il risultato è disponibile sia in forma numerica che come grafico bidimensionale e deve essere riprodotto nel documento. Il grafico è stato codificato in 'base64' e quindi integrato nel documento come campo di testo più grande. È importante assicurarsi che il volume dei dati del grafico non sia troppo grande. Si consiglia un limite massimo di 20 Mbyte. 

[Documento sui risultati di laboratorio](Bundle-LabResultReport-2-electrophoresis.html)

#### Caso d'uso test del respiro, 3-breath-test

Il test del respiro è un test di provocazione per verificare l'intolleranza ad alcuni tipi di zucchero (lattosio, fruttosio). La concentrazione di idrogeno e metano nell'aria espirata viene misurata a intervalli di mezz'ora dopo la somministrazione di una certa quantità del tipo di zucchero da testare. Il risultato è un grafico bidimensionale con le misurazioni, che devono essere registrate insieme ai risultati numerici. Anche in questo caso è stata utilizzata la codifica 'base64'.

[Documento sui risultati di laboratorio](Bundle-LabResultReport-3-breath-test.html)

#### Caso d'uso sepsi, 4-sepsi

I risultati dei test microbiologici differiscono dagli altri risultati di laboratorio in quanto non sono disponibili solo valori numerici di ritorno, ma anche identificatori di agenti patogeni, crescita semiquantitativa nelle colture o attributi dei test di resistenza. Oltre alla codifica LOINC, qui viene spesso utilizzata la terminologia SNOMET CT.

[Documento sui risultati di laboratorio](Bundle-LabResultReport-4-sepsis.html)

### Pannelli di test di laboratorio (chiamati anche batterie di test o profili di test)

I pannelli di test di laboratorio sono l'aggregazione di diversi test di laboratorio, come spesso vengono commissionati in un contesto clinico e presentati come risultati. In linea di principio, abbiamo dimostrato con gli esempi precedenti che i risultati di laboratorio e i gruppi di test possono essere rappresentati con le risorse definite qui. Tuttavia, i gruppi di test offrono alcuni vantaggi.

* Analisi completa: offrono un modo efficiente di ordinare e analizzare diversi analiti contemporaneamente e di visualizzare i risultati in modo chiaro. Questo è particolarmente utile nella diagnosi di quadri clinici complessi in cui diversi parametri giocano un ruolo.
* Aumento dell'efficienza: combinando più test in un unico pannello, è possibile aumentare l'efficienza del laboratorio e utilizzare in modo ottimale le risorse. Invece di testare ogni singolo analita, è possibile testare simultaneamente più parametri, riducendo i tempi e la manodopera.
* Efficienza dei costi: i pannelli di test possono anche essere più convenienti rispetto ai singoli test, in quanto sono spesso offerti a un prezzo ridotto. Questo può essere particolarmente vantaggioso quando è necessaria un'analisi completa.
* Rilevanza clinica nel contesto terapeutico: i pannelli di test sono spesso progettati per coprire una serie di analiti rilevanti per malattie specifiche.

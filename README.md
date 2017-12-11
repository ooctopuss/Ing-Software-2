# Ing-Software-2
Progetto a cura di Fatnassi Safouane, Piovesan Matteo, Zanardello Fabio

# Group 15 @ooctopuss

# Description of the project:

Our Billing System, was born with the target of giving our clients a great option to create and manage all the billing activities they asked for. The idea is to simplify this bureaucratic process that can give some headache, in order to focus on the real work and optimizing our client’s time.

# USER STORY:

# 1. 
Chiedo che l’impaginazione della mia fattura sia effettuata usando l’intestazione della mia azienda e predisponendo uno spazio adeguato per le ore fatturate e non fatturate e un conto totale comprensivo dell’IVA aggiornata. 

# PESO (1 a 5): 1
# PRIORITÀ (1 a 5): 3

# 2.
La mia azienda ha la necessità di lavorare sia con clienti privati che con clienti pubblici e questo deve essere predisposto con possibilità di modificare: tempi di pagamento, metodi di pagamento e prezzo orario.

# PESO (1 a 5): 3
# PRIORITÀ (1 a 5): 4

# 3.
Chiedo che sia implementato un contatore per le ore lavorate il quale avrà il compito di tracciare le ore effettivamente impiegate per un determinato cliente. Quando le ore dedicate ad un cliente raggiungeranno le ore standard previste dal contratto dovranno essere aumentate le ore extra.

# PESO (1 a 5): 2
# PRIORITÀ (1 a 5): 4

# 4.
Ad ogni cliente, una volta stipulato il contratto, invio la fattura con il prezzo da pagare per le ore standard concordate.

# PESO (1 a 5): 2
# PRIORITÀ (1 a 5): 5

# 5.
Se sono necessarie ore aggiuntive perché il cliente ha richiesto delle modifiche, la tariffa oraria sarà più alta, se la causa è il team di lavoro, la tariffa oraria extra sarà minore di quella standard. Il totale da pagare delle ore extra dovrà essere comunicato attraverso l’invio di una fattura.

# PESO (1 a 5): 3
# PRIORITÀ (1 a 5): 4

# 6.
Se vengono effettuate ore aggiuntive, al termine del lavoro verrà inviata al cliente la ricevuta fiscale, con le ore concordate inizialmente, sommate a quelle extra necessarie.

# PESO (1 a 5): 1
# PRIORITÀ (1 a 5): 3

# 7.
Se il cliente, pubblico o privato che sia, non rispetta i tempi di pagamento concordati il programma dovrà comunicare la sanzione al cliente attraverso una nuova fattura aggiuntiva il cui importo dovrà essere confermato o modificato dall’operatore.

# PESO (1 a 5): 4
# PRIORITÀ (1 a 5): 5

# 8.
Chiedo che sia data la possibilità di controllare le fatture emesse in un determinato periodo, oppure dall’implementazione di questo sistema. Questa funzione inoltre deve poter mostrare i guadagni complessivi e le ore complessive lavorate nelle fatture considerate.

# PESO (1 a 5): 4
# PRIORITÀ (1 a 5): 3

# 9.
Il software richiesto dovrà essere di facile utilizzo in modo da non richiedere corsi di formazione per i dipendenti ma solo una lettura approfondita per poter usare l’applicativo sviluppato.

# PESO (1 a 5): 1
# PRIORITÀ (1 a 5): 4

# Design Choices:

La nostra applicazione, sviluppata in Ruby on Rails, è stata implementata attraverso l’utilizzo di una gemma denominata “rails_admin” che permette di essere operativi con un’applicazione funzionante in poco tempo. La gemma in questione però impedisce una elevata scalabilità e malleabilità del codice in quanto non è particolarmente intuitiva ed editabile in tutti i suoi aspetti; nonostante questo piccolo handicap abbiamo deciso di utilizzarla in quanto ci fornisce una grafica accattivante ed una buona gestione dal punto di vista amministrativo. La logica a progetto, di cui si intuisce la presenza anche nelle User Story, è di facile implementazione e prevede che il team di lavoro stimi il progetto in un numero di ore; divise in standard ed extra in base alla complessità delle funzioni da realizzare in quelle determinate fasce di tempo;  e le fatturi ad inizio progetto; se la stima si rivelerà esatta e le specifiche del cliente non variano non sorgono problemi; se invece le specifiche varieranno verrà emessa una nuova fattura. Nel caso in cui le ore non si rivelino sufficienti il team dovrà lavorare senza compenso per realizzare tutte le specifiche richieste dal cliente. 

# License:

MIT License

Copyright (c)  2017 @ooctopuss [Fatnassi Safouane, Piovesan Matteo, Zanardello Fabio]

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions: 

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

                                            (https://choosealicense.com/licenses/mit/)



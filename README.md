# DecisionTree-PCA-Apriori in Matlab
 In this repository I am going to implement Decision Tree, Principle Component Analysis, Apriori algorithms in Matlab with an example.

## 1. PCA – Hauptkomponentenanalyse: 

Die Hauptkomponentenanalyse (englisch Principal Component Analysis, kurz PCA) ist ein Verfahren der multivariaten Statistik. 
Man versucht die Attribute zu ersetzen durch eine Menge von Linearkombinationen dieser, wodurch die Anzahl reduziert wird.

<figure class="image">
  <img src="./img/1.png">
</figure>

<p align="center">
  Daten von einem 3 dimensiomnalen Vektorraum in einen 2 dimensionalen Vektorraum.
</p>

Die Daten werden dabei durch eine Hauptachsentransformation in einen Vektorraum mit einer neuen Basis überführt und dadurch wird die Korrelation der Attribute minimiert.

Das ganze lässt sich gut anschaulich erklären, wenn man die Daten als Wolke oder Ellipse in einem n-dimensionalem Raum auffasst. Dabei wird der Ursprung des Koordinatensystems in den Schwerpunk der Wolke gelegt. Nun werden nach und nach die Achsen so ausgerichtet, dass den Richtungen mit der größten Varianz bzw. der größten Ausdehnung folgen. Dabei entspricht die erste Achse der größten Ausdehnung und die zweite Achse der zweitgrößten Ausdehnung.


#### 1.1 [Implementierung des Algorithmus](https://github.com/A2Amir/DecisionTree-PCA-Apriori-in-Matlab/tree/master/PCA):

Um PCA Algorithmus zu implementieren habe ich zuerst ein kleines Dataset( in einem 2-dimensionalen Raum mit 1000 Punkten als Daten) in MATLAB erzeugt und für PCA angewendet.

Nachdem ich PCA Algortithmus auf mein Dataset ausgeübt habe, habe ich es gesehen, dass der Umfang der Daten in Dataset von 2 dimensionalem Raum(x1,x2) zu 1 dimensionalem Raum (y1 sogar ohne y2) ersetzen kann. Genauer gesagt,Daten werden von einem 2 dimensiomnalen Vektorraum (X1,X2)  in einen 1 dimensionalen Vektorraum (y1) überführt.


 <p align="right"> <img src="./img/2.png" style="right;" alt=" Implementierung des Algorithmus" width="600" height="400"> </p> 

## 2. Klassifikation und Decision Tree:

Eine Klassifikation,ist eine planmäßige Sammlung von abstrakten Klassen, die zur Abgrenzung und Ordnung verwendet werden.
Bei der Klassifikation geht es ähnlich der Clusteranalyse darum, Objekte Gruppen (hier als Klassen bezeichnet) zuzuordnen. Im Gegensatz zur Clusteranalyse sind hier aber in der Regel die Klassen vordefiniert (Beispielsweise Blumentypen: Iris setosa, Iris virginica, ) und es werden Verfahren aus dem maschinellen Lernen eingesetzt um bisher nicht zugeordnete Objekte diesen Klassen zuzuordnen.
 <p align="right"> <img src="./img/3.png" style="right;" alt=" Klassifikation und Decision Tree:" width="600" height="400"> </p> 

**Decision Tree:**
Diese Methode, die als Entscheidungsbaum-Lernen bezeichnet wird, ist eine Klassifikationsmethode und berücksichtigt unterschiedliche Aspekte eines Elements, um dessen Wert einzuschätzen.


Um eine Klassifikation eines einzelnen Datenobjektes abzulesen, geht man vom Wurzelknoten entlang des Baumes abwärts. Bei jedem Knoten wird ein Attribut abgefragt und eine Entscheidung über die Auswahl des folgenden Knoten getroffen. Diese Prozedur wird so lange fortgesetzt, bis man ein Blatt erreicht. Das Blatt entspricht der Klassifikation. Ein Baum enthält grundsätzlich Regeln zur Beantwortung von nur genau einer Fragestellung.

 <p align="right"> <img src="./img/5.png" style="right;" alt=" Decision Tree:" width="600" height="400"> </p> 

#### 2.1 [Implementierung des Algorithmus](https://github.com/A2Amir/DecisionTree-PCA-Apriori-in-Matlab/tree/master/Decision%20Tree):

Ich habe das Iris Dataset ins Einsaz gebraucht, um einen Entscheidungsbaum zu bauen.Jede Pflanze (Iris setosa, Iris virginica und Iris versicolor) kann beispielsweise vier Attribute (length and the width of the sepals and petals. im Gesamt vier Attributen für jede Pflanzen) besitzen.
Der obenstehende binäre Entscheidungsbaum gibt eine Antwort auf die Frage, wie die drei Sorten der Pflanzen(Fisher 1809.1936) nach vier bestimmten berechneten Eigenschften klassifiziert werden können. Als Eingabe benötigt der Baum einen Vektor mit Angaben zu den Attributen einer Pflanze. Beginnend mit dem Wurzelknoten werden nun die Entscheidungsregeln des Baumes auf den Eingabevektor angewendet.

## 3. [Apriori](https://github.com/A2Amir/DecisionTree-PCA-Apriori-in-Matlab/tree/master/Apriori) (Assoziationsanalyse):

In der Assoziationsanalyse werden häufige Zusammenhänge in den Datensätzen gesucht und meist als Schlussregeln formuliert.
Der Apriori-Algorithmus ist ein Verfahren zur Assoziationsanalyse, einem Bereich des Data-Mining. Er dient der Auffindung von sinnvollen und nützlichen Zusammenhängen in transaktionsbasierten Datenbasen, die in Form von sogenannten Assoziationsregeln dargestellt werden. 
Ein beliebtes Beispiel, ist folgendes: bei der Warenkorbanalyse wurde festgestellt, dass die Produktkategorien „Windeln“ und „Bier“ überdurchschnittlich oft zusammen gekauft werden, 
meist dargestellt in Form einer Schlussregel „Kunde kauft Windeln , Kunde kauft Bier“. Die Interpretation dieses Ergebnisses war, dass Männer, wenn sie von ihren Ehefrauen Windeln kaufen geschickt werden, sich gerne noch ein Bier mitnehmen. Durch Platzierung des Bierregals auf dem Weg von den Windeln zur Kasse konnte angeblich der Bierverkauf weiter gesteigert werden.

 <p align="center"> <img src="./img/6.png" style="center;" alt=" Apriori" width="700" height="400"> </p> 



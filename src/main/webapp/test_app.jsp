<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

</head>
 <body>
    <form id="myForm" action="Test" method="post" >
      <h1 align = center>TEST</h1>

      <div style="text-align:center;">
        <span class="step" id = "step-1">1</span>
        <span class="step" id = "step-2">2</span>
        <span class="step" id = "step-3">3</span>
        <span class="step" id = "step-4">4</span>
        <span class="step" id = "step-5">5</span>
        <span class="step" id = "step-6">6</span>
        <span class="step" id = "step-7">7</span>
        <span class="step" id = "step-8">8</span>
        <span class="step" id = "step-9">9</span>
        <span class="step" id = "step-10">10</span>
        <span class="step" id = "step-11">11</span>
        <span class="step" id = "step-12">12</span>
        <span class="step" id = "step-13">13</span>

      </div>

                <!-- Champ 1 -->
            <div class="tab" id="tab-1">
                <p>Quand est-ce que vous commencez vos règles ?</p>
                <div class="inputradio">
                    <label style="width: 200px;" for="avant11">Avant l'âge de 11 ans</label>
                    <input type="radio" id="avant11" name="commencezregle" value="3">
                </div>
                <div class="inputradio">
                    <label style="width: 200px;" for="apres11">À partir de 11 ans</label>
                    <input type="radio" id="apres11" name="commencezregle" value="2">
                </div>
                <div class="index-btn-wrapper">
                    <div class="index-btn" onclick="run(1, 2);">Next</div>
                </div>
            </div>

            <!-- Champ 2 -->
            <div class="tab" id="tab-2">
                <p>Quelle est la durée moyenne de votre cycle menstruel ?</p>
                <div class="inputradio">
                    <label style="width: 200px;" for="mois de 27 jours">Moins de 27 jours</label>
                    <input type="radio" id="mois de 27 jours" name="cyclemenstruel" value="3">
                </div>
                <div class="inputradio">
                    <label style="width: 200px;" for="plus de 27 jours">Plus de 27 jours</label>
                    <input type="radio" id="plus de 27 jours" name="cyclemenstruel" value="4">
                </div>
                <div class="inputradio">
                    <label style="width: 200px;" for="je suis pas sur">Je ne suis pas sûr</label>
                    <input type="radio" id="je suis pas sur" name="cyclemenstruel" value="2">
                </div>
                <div class="index-btn-wrapper">
                    <div class="index-btn" onclick="run(2, 1);">Previous</div>
                    <div class="index-btn" onclick="run(2, 3);">Next</div>
                </div>
            </div>

            <!-- Champ 3 -->
            <div class="tab" id="tab-3">
                <p>Avez-vous des antécédents familiaux d'endométriose ?</p>
                <div class="inputradio">
                    <label style="width: 200px;" for="familiauxoui">Oui</label>
                    <input type="radio" id="familiauxoui" name="antecedentsfamiliaux" value="5">
                </div>
                <div class="inputradio">
                    <label style="width: 200px;" for="familiauxnon">Non</label>
                    <input type="radio" id="familiauxnon" name="antecedentsfamiliaux" value="1">
                </div>
                <div class="index-btn-wrapper">
                    <div class="index-btn" onclick="run(3, 2);">Previous</div>
                    <div class="index-btn" onclick="run(3, 4);">Next</div>
                </div>
            </div>

            <!-- Continuez de la même manière pour les autres champs -->


                <!-- Champ 4 -->
            <div class="tab" id="tab-4">
                <p>Avez-vous déjà accouché ?</p>
                <div class="inputradio">
                    <label style="width: 200px;" for="accoucheroui">Oui</label>
                    <input type="radio" id="accoucheroui" name="accouchement" value="1">
                </div>
                <div class="inputradio">
                    <label style="width: 200px;" for="accouchernon">Non</label>
                    <input type="radio" id="accouchernon" name="accouchement" value="0">
                </div>
                <div class="index-btn-wrapper">
                    <div class="index-btn" onclick="run(4, 3);">Previous</div>
                    <div class="index-btn" onclick="run(4, 5);">Next</div>
                </div>
            </div>

            <!-- Champ 5 -->
            <div class="tab" id="tab-5">
                <p>Avez-vous des difficultés à tomber enceinte ?</p>
                <div class="inputradio">
                    <label style="width: 200px;" for="enceinteoui">Oui</label>
                    <input type="radio" id="enceinteoui" name="difficultetomberenceinte" value="1">
                </div>
                <div class="inputradio">
                    <label style="width: 200px;" for="enceintenon">Non</label>
                    <input type="radio" id="enceintenon" name="difficultetomberenceinte" value="0">
                </div>
                <div class="index-btn-wrapper">
                    <div class="index-btn" onclick="run(5, 4);">Previous</div>
                    <div class="index-btn" onclick="run(5, 6);">Next</div>
                </div>
            </div>

            <!-- Champ 6 -->
            <div class="tab" id="tab-6">
                <p>Indice de masse corporelle (IMC) : Calculer votre IMC</p>
                <input type="text" placeholder="Entrez votre poids en kg" name="poids">
                <input type="text" placeholder="Entrez votre taille en cm" name="taille">
                <div class="index-btn-wrapper">
                    <div class="index-btn" onclick="run(6, 5);">Previous</div>
                    <div class="index-btn" onclick="run(6, 7);">Next</div>
                </div>
            </div>

            <!-- Champ 7 -->
            <div class="tab" id="tab-7">
                <p>Quelle est l'intensité de vos douleurs abdominales/pelviennes ?</p>
                <div class="inputradio">
                    <label style="width: 200px;" for="0-2">0-2</label>
                    <input type="radio" id="0-2" name="intensitedouleurs" value="1">
                </div>
                <div class="inputradio">
                    <label style="width: 200px;" for="3-5">3-5</label>
                    <input type="radio" id="3-5" name="intensitedouleurs" value="2">
                </div>
                <div class="inputradio">
                    <label style="width: 200px;" for="5-8">5-8</label>
                    <input type="radio" id="5-8" name="intensitedouleurs" value="3">
                </div>
                <div class="inputradio">
                    <label style="width: 200px;" for="8-10">8-10</label>
                    <input type="radio" id="8-10" name="intensitedouleurs" value="4">
                </div>
                <div class="index-btn-wrapper">
                    <div class="index-btn" onclick="run(7, 6);">Previous</div>
                    <div class="index-btn" onclick="run(7, 8);">Next</div>
                </div>
            </div>

            <!-- Champ 8 -->
            <div class="tab" id="tab-8">
                <p>Quand ressentez-vous des douleurs abdominales ou pelviennes ?</p>
                <div class="inputradio">
                    <label style="width: 200px;" for="périodes menstruelles">Lier aux périodes menstruelles</label>
                    <input type="checkbox" id="périodes menstruelles" name="douleursabdominales[]" value="1">
                </div>
                <div class="inputradio">
                    <label style="width: 200px;" for="aux ovulations">Lier aux ovulations</label>
                    <input type="checkbox" id="aux ovulations" name="douleursabdominales[]" value="2">
                </div>
                <div class="inputradio">
                    <label style="width: 200px;" for="avec la période">Sans lien avec la période menstruelle ou l'ovulation</label>
                    <input type="checkbox" id="avec la période" name="douleursabdominales[]" value="3">
                </div>
                <div class="index-btn-wrapper">
                    <div class="index-btn" onclick="run(8, 7);">Previous</div>
                    <div class="index-btn" onclick="run(8, 9);">Next</div>
                </div>
            </div>

            <!-- Champ 9 -->
            <div class="tab" id="tab-9">
                <p>Quelle est la sévérité des douleurs pendant les rapports sexuels ?</p>
                <div class="inputradio">
                    <label style="width: 200px;" for="0-2">0-2</label>
                    <input type="radio" id="0-2" name="severitedouleurssexuelles" value="1">
                </div>
                <div class="inputradio">
                    <label style="width: 200px;" for="3-5">3-5</label>
                    <input type="radio" id="3-5" name="severitedouleurssexuelles" value="2">
                </div>
                <div class="inputradio">
                    <label style="width: 200px;" for="5-8">5-8</label>
                    <input type="radio" id="5-8" name="severitedouleurssexuelles" value="3">
                </div>
                <div class="inputradio">
                    <label style="width: 200px;" for="8-10">8-10</label>
                    <input type="radio" id="8-10" name="severitedouleurssexuelles" value="4">
                </div>
                <div class="index-btn-wrapper">
                    <div class="index-btn" onclick="run(9, 8);">Previous</div>
                    <div class="index-btn" onclick="run(9, 10);">Next</div>
                </div>
            </div>

            <!-- Champ 10 -->
            <div class="tab" id="tab-10">
                <p>Qu'est-ce qui aggrave vos douleurs ?</p>
                <div class="inputradio">
                    <label style="width: 200px;" for="mouvementsintestinaux">Les mouvements intestinaux</label>
                    <input type="checkbox" id="mouvementsintestinaux" name="aggravationdouleurs[]" value="1">
                </div>
                <div class="inputradio">
                    <label style="width: 200px;" for="la vessiepleine">La vessie pleine</label>
                    <input type="checkbox" id="la vessiepleine" name="aggravationdouleurs[]" value="2">
                </div>
                <div class="inputradio">
                    <label style="width: 200px;" for="lamiction">La miction (uriner)</label>
                    <input type="checkbox" id="lamiction" name="aggravationdouleurs[]" value="3">
                </div>
                <div class="inputradio">
                    <label style="width: 200px;" for="lorgasme">L'orgasme</label>
                    <input type="checkbox" id="lorgasme" name="aggravationdouleurs[]" value="4">
                </div>
                <div class="inputradio">
                    <label style="width: 200px;" for="sanslien">Sans lien avec quoi que ce soit</label>
                    <input type="checkbox" id="sanslien" name="aggravationdouleurs[]" value="5">
                </div>
                <div class="index-btn-wrapper">
                    <div class="index-btn" onclick="run(10, 9);">Previous</div>
                    <div class="index-btn" onclick="run(10, 11);">Next</div>
                </div>
            </div>

            <!-- Champ 11 -->
            <div class="tab" id="tab-11">
                <p>Durée de la période menstruelle ?</p>
                <div class="inputradio">
                    <label style="width: 200px;" for="1 à 7 jours">1 à 7 jours</label>
                    <input type="radio" id="1 à 7 jours" name="dureeperiodemenstruelle" value="1">
                </div>
                <div class="inputradio">
                    <label style="width: 200px;" for="plus de 7 jours">Plus de 7 jours</label>
                    <input type="radio" id="plus de 7 jours" name="dureeperiodemenstruelle" value="2">
                </div>
                <div class="index-btn-wrapper">
                    <div class="index-btn" onclick="run(11, 10);">Previous</div>
                    <div class="index-btn" onclick="run(11, 12);">Next</div>
                </div>
            </div>

            <!-- Champ 12 -->
            <div class="tab" id="tab-12">
                <p>Nature des périodes menstruelles ?</p>
                <div class="inputradio">
                    <label style="width: 200px;" for="abondantes">Abondantes</label>
                    <input type="checkbox" id="abondantes" name="natureperiodemenstruelle[]" value="1">
                </div>
                <div class="inputradio">
                    <label style="width: 200px;" for="moderees">Modérées</label>
                    <input type="checkbox" id="moderees" name="natureperiodemenstruelle[]" value="2">
                </div>
                <div class="inputradio">
                    <label style="width: 200px;" for="legeres">Légères</label>
                    <input type="checkbox" id="legeres" name="natureperiodemenstruelle[]" value="3">
                </div>
                <div class="index-btn-wrapper">
                    <div class="index-btn" onclick="run(12, 11);">Previous</div>
                    <div class="index-btn" onclick="run(12, 13);">Next</div>
                </div>
            </div>

            <!-- Champ 13 -->
            <div class="tab" id="tab-13">
                <p>Avez-vous déjà été victime d'abus physique ou sexuel ?</p>
                <div class="inputradio">
                    <label style="width: 200px;" for="abusoui">Oui</label>
                    <input type="radio" id="abusoui" name="abusphysiquesexuel" value="1">
                </div>
                <div class="inputradio">
                    <label style="width: 200px;" for="abusnon">Non</label>
                    <input type="radio" id="abusnon" name="abusphysiquesexuel" value="0">
                </div>
                <div class="index-btn-wrapper">
                    <div class="index-btn" onclick="run(13, 12);">Previous</div>
                    <button class="index-btn" type="submit" name="submit" style="background: blue;">Submit</button>
                </div>
            </div>

    </form>

    <script>
      // Default tab
      $(".tab").css("display", "none");
      $("#tab-1").css("display", "block");

      function run(hideTab, showTab){
        if(hideTab < showTab){ // If not press previous button
          // Validation if press next button
          var currentTab = 0;
          x = $('#tab-'+hideTab);
          y = $(x).find("input")
          for (i = 0; i < y.length; i++){
            if (y[i].value == ""){
              $(y[i]).css("background", "#ffdddd");
              return false;
            }
          }
        }

        // Progress bar
        for (i = 1; i < showTab; i++){
          $("#step-"+i).css("opacity", "1");
        }

        // Switch tab
        $("#tab-"+hideTab).css("display", "none");
        $("#tab-"+showTab).css("display", "block");
        $("input").css("background", "#fff");
      }
    </script>
  </body>
</html>
<style>
    body{
  background: #eaeaea;
}

form{
  background: #ffffff;
  margin: 100px auto;
  padding: 15px 40px 40px 40px;
  width: 70%;
}
.inputradio {
    display: flex;
    flex-direction: row;
    align-items: center;
}

.tab p{
  font-size: 20px;
  margin: 0 0 10px 0;
}

input{
  margin: 10px 0;
  padding: 10px;
  box-sizing: border-box;
  font-size: 17px;
  border: 1px solid #aaaaaa;
}

.index-btn-wrapper{
  display: flex;
}

.index-btn{
  margin: 20px 15px 0 0;
  background: #ff1493	;
  color: #ffffff;
  border: none;
  padding: 10px 20px;
  font-size: 17px;
  cursor: pointer;
  transition: 0.3s;
}

.index-btn:hover{
  opacity: 0.8;
}

.step{
  height: 30px;
  width: 30px;
  line-height: 30px;
  margin: 0 2px;
  color: white;
  background: rgb(174, 7, 88);
  border-radius: 50%;
  display: inline-block;
  opacity: 0.25;
}
</style>
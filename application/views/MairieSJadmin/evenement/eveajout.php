<br>
    
    <div class="row">
        <div class="col-12 d-flex justify-content-center">
            <img src="<?php echo base_url("assets/images/MairieSJ/logomairie");?>"  alt="Image responsive" title="Image promotion"> <!--image esponsive s'adapte progressivement à la taille de l'ecran sans disparaitre-->
        </div>
    </div>
    
    <br>
    <br>
    
  
    <?php echo form_open(); ?>
                <div class="form-group">
                    
                   <label for="eve_date"><b>Date Manifestation :</b></label><input type="text" class="form-control" name="eve_date" id="eve_date" value="<?php echo set_value('eve_date');?>">
                    <?php echo form_error('eve_date'); // affiche l'erreur du champs nom obligatoire?>

                    <label for="eve_manif"><b>Nom Manifestation :</b></label><input type="text" class="form-control" name="eve_manif" id="eve_manif" value="<?php echo set_value('eve_manif');?>">
                    <?php echo form_error('eve_manif'); // affiche l'erreur du champs nom obligatoire?>
                    
                    <label for="eve_Orga"><b>Organisateur Manifestation :</b></label><input type="text" class="form-control" name="eve_Orga" id="eve_Orga" value="<?php echo set_value('eve_Orga');?>">
                    <?php echo form_error('eve_Orga'); // affiche l'erreur du champs nom obligatoire?>
                    
                    <label for="eve_contact"><b>Contact de l'organisateur :</b></label><input type="text" class="form-control" name="eve_contact" id="eve_contact" value="<?php echo set_value('eve_contact');?>">
                    
                
                </div>  
                <div class="d-flex justify-content-center" name ="actionProduit">
                    <button class="btn-primary ml-1" type="submit" onclick="verif();">Enregistrer</button>
                    <a class="btn-primary ml-2"   href="<?= base_url("index.php/AdminStJust/accueil");?>">Retour</a>
                </div>

    </form>

<script>
//vérifie si on envoi ou non le formulaire 
    function verif(){ 
//Rappel : confirm() -> Bouton OK et Annuler, renvoit true ou false
    var resultat = confirm("Etes-vous certain de vouloir ajouter cette manifestation ?");

    if (resultat==false){
        alert("Vous avez annulé les modifications \nAucune manifestation ne sera ajouté !");
        //annule l'évènement par défaut ... SUBMIT vers "script_modif.php"
        event.preventDefault();    
    }
}
</script>

   
    
</div>

<!--fichiers Javascript nécessaires à Bootstrap-->
<script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js" integrity="sha384-oesi62hOLfzrys4LxRF63OJCXdXDipiYWBnvTl9Y9/TRlw5xlKIEHpNyvvDShgf/" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
</body>
</html>
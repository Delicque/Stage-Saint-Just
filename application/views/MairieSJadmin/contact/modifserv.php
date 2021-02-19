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
                    <label for="serv_id"><b>Identifiant Service</b></label><input type="text" class="form-control" name="serv_id" id="serv_id" value="<?php echo $service->serv_id?>" Readonly>
                    
                    <label for="serv_nom"><b>Nom Service :</b></label><input type="text" class="form-control" name="serv_nom" id="serv_nom" value="<?php echo set_value('serv_nom', $service->serv_nom);?>">
                    <?php echo form_error('serv_nom'); // affiche l'erreur du champs nom obligatoire?>
                    
                    <label for="serv_tel"><b>Téléphone Association:</b></label><input type="text" class="form-control" name="serv_tel" id="serv_tel" value="<?php echo set_value('serv_tel', $service->serv_tel);?>">
                    
                </div>  
                <div class="d-flex justify-content-center" name ="actionProduit">
                    <button class="btn-primary ml-1" type="submit" onclick="verif();">Enregistrer</button>
                    <a class="btn-primary ml-2"   href="<?= base_url("index.php/AdminStJust/listecontactsmairie")?>">Retour</a>
                </div>

    </form>

<script>
//vérifie si on envoi ou non le formulaire 
    function verif(){ 
//Rappel : confirm() -> Bouton OK et Annuler, renvoit true ou false
    var resultat = confirm("Etes-vous certain de vouloir modifier cet enregistrement ?");

    if (resultat==false){
        alert("Vous avez annulé les modifications \nAucune modification ne sera apportée à cet enregistrement !");
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
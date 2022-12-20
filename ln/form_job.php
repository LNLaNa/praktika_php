<form action="ln/send_form.php?id=<?= $jobs['name']?>" method="POST">
    <div class="row">
        <div class="col-md-6">
            <div class="input_field">
                <input type="text" placeholder="Your name" name="name">
            </div>
        </div>
        <div class="col-md-6">
            <div class="input_field">
                <input type="text" placeholder="Email" name="email">
            </div>
        </div>
        <div class="col-md-12">
            <div class="input_field">
                <input type="text" placeholder="Website/Portfolio link" name="link_p">
            </div>
        </div>
        <div class="col-md-12">
            <div class="input_field">
                <textarea name="coverletter" id="" cols="30" rows="10" placeholder="Coverletter"></textarea>
            </div>
        </div>
        <div class="col-md-12">
            <div class="submit_btn">
                <input class="boxed-btn3 w-100" type="submit" value="Apply Now">
            </div>
        </div>
    </div>
</form>

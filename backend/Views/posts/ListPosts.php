<h1>Classic editor</h1>
<form action="?url=list_post" method="post">
    <textarea name="test" id="test" cols="200" rows="10"></textarea>
    <button type="submit" name="submit">Submit</button>
</form>
<script src="https://cdn.ckeditor.com/ckeditor5/41.0.0/classic/ckeditor.js"></script>
<script>
    ClassicEditor
        .create( document.querySelector( '#test' ) )
        .catch( error => {
            console.error( error );
        } );
</script>

<?php
    if(isset($_POST)){
        print_r($_POST);
    }

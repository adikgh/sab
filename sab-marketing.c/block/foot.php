<!-- js library -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.lazy/1.7.9/jquery.lazy.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.lazy/1.7.9/jquery.lazy.plugins.min.js"></script>
<script src="https://cdn.plyr.io/3.6.2/plyr.polyfilled.js"></script>
<script src="/assets/js/norm.js"></script>

<?php if (count($js) != 0): ?>
<!-- main js -->
	<?php foreach ($js as $key => $value): ?>
		<script src="<?=$value?>"></script>
	<?php endforeach ?>
<!-- end main js -->
<?php endif ?>
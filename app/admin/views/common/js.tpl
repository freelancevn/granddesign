<script type="text/javascript" src="js/lib/jquery.js"></script>
<script type="text/javascript" src="js/lib/config.js"></script>
<script type="text/javascript" src="js/lib/ui/ui.datepicker.js"></script>        
<script type="text/javascript"  src="js/admin/date_search.js"></script>
<script type="text/javascript"  src="js/admin/process.js"></script>
<script type="text/javascript"  src="js/admin/general.js"></script>
{section name=i loop=$arrJS}
<script type="text/javascript"  src="{$arrJS[$i]}"></script>
{/section}	
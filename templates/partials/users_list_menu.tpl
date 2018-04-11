<ul class="nav nav-pills">
	<li><a href="{config.relative_path}/users?section=online">[[global:online]]</a></li>
	<li><a href="{config.relative_path}/users?section=sort-posts">[[users:top_posters]]</a></li>
	<!-- IF !reputation:disabled -->
	<!--<li><a href="{config.relative_path}/users?section=sort-reputation">[[users:most_reputation]]</a></li>-->
	<!-- ENDIF !reputation:disabled -->
	<!-- IF isAdminOrGlobalMod -->
	<li><a href="{config.relative_path}/users?section=flagged">[[users:most_flags]]</a></li>
	<li><a href="{config.relative_path}/users?section=banned">[[user:banned]]</a></li>
	<!-- ENDIF isAdminOrGlobalMod -->

    <li class='user_pill_gastspieler'><a href='{config.relative_path}/groups/gastspieler'>Gastspieler</a></li>
    <li class='user_pill_gastspieler'><a href='{config.relative_path}/groups/stammspieler'>Stammspieler</a></li>
    <li class='user_pill_anwaerter'><a href='{config.relative_path}/groups/anwärter'>Anwärter</a></li>
    <li class='user_pill_adler'><a href='{config.relative_path}/groups/adler'>Adler</a></li>
    <li class='user_pill_fuehrung'><a href='{config.relative_path}/groups/führung'>Führung</a></li>
</ul>
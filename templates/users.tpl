<div widget-area="header">
	<!-- BEGIN widgets.header -->
	{{widgets.header.html}}
	<!-- END widgets.header -->
</div>
<div class="users">
	<ul class="nav nav-pills">
		<li class=''><a href='{config.relative_path}/users/online'>[[global:online]]</a></li>
		<li class=''><a href='{config.relative_path}/users/sort-joindate'>[[users:latest_users]]</a></li>
		<li class=''><a href='{config.relative_path}/users/sort-posts'>[[users:top_posters]]</a></li>
		<li class=''><a href='{config.relative_path}/users/sort-reputation'>[[users:most_reputation]]</a></li>

		<li class='user_pill_gastspieler'><a href='{config.relative_path}/groups/gastspieler'>Gastspieler</a></li>
		<li class='user_pill_gastspieler'><a href='{config.relative_path}/groups/stammspieler'>Stammspieler</a></li>
		<li class='user_pill_anwaerter'><a href='{config.relative_path}/groups/anwärter'>Anwärter</a></li>
		<li class='user_pill_adler'><a href='{config.relative_path}/groups/adler'>Adler</a></li>
		<li class='user_pill_fuehrung'><a href='{config.relative_path}/groups/führung'>Führung</a></li>
	</ul>

	<br />

	<div class="row">




		<div class="col-xs-3 text-right">
			<!-- IF inviteOnly -->
			<!-- IF loggedIn -->
			<button component="user/invite" class="btn btn-success"><i class="fa fa-users"></i> [[users:invite]]</button>
			<!-- ENDIF loggedIn -->
			<!-- ENDIF inviteOnly -->
		</div>
		<!-- IF function.displayUserSearch, {config.allowGuestUserSearching} -->
		<div class="col-lg-3 col-xs-9">
			<div class="search">
				<div class="input-group">
					<input class="form-control" id="search-user" type="text" placeholder="[[users:enter_username]]"/>
					<span class="input-group-addon">
						<i component="user/search/icon" class="fa fa-search"></i>
					</span>
				</div>
			</div>
		</div>
		<!-- ENDIF function.displayUserSearch -->
	</div>

	<ul id="users-container" class="users-container">
		<!-- IMPORT partials/users_list.tpl -->
		<!-- IF anonymousUserCount -->
		<li class="users-box anon-user">
			<div class="user-icon">G</div>
			<br/>
			<div class="user-info">
				<span id="online_anon_count">{anonymousUserCount}</span>
				<span>[[global:guests]]</span>
			</div>
		</li>
		<!-- ENDIF anonymousUserCount -->
	</ul>

	<!-- IMPORT partials/paginator.tpl -->
</div>

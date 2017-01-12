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

	<div class="search {search_display} well">
		<div class="input-group">
			<input class="form-control" id="search-user" type="text" placeholder="[[users:enter_username]]"/>
			<span class="input-group-addon">
				<span id="user-notfound-notify"><i class="fa fa-search"></i></span>
			</span>
		</div>
	</div>

	<ul id="users-container" class="users-container">
		<!-- IMPORT partials/users_list.tpl -->
		<!-- IF anonymousUserCount -->
		<li class="users-box anon-user">
			<img src="https://secure.gravatar.com/avatar/" />
			<br/>
			<div class="user-info">
				<span id="online_anon_count">{anonymousUserCount}</span>
				<span>[[global:guests]]</span>
			</div>
		</li>
		<!-- ENDIF anonymousUserCount -->
	</ul>


	<div component="pagination" class="text-center pagination-container<!-- IF !pagination.pages.length --> hidden<!-- ENDIF !pagination.pages.length -->">
		<ul class="pagination hidden-xs">
			<li class="previous pull-left<!-- IF !pagination.prev.active --> disabled<!-- ENDIF !pagination.prev.active -->">
				<a href="?{pagination.prev.qs}" data-page="{pagination.prev.page}"><i class="fa fa-chevron-left"></i> </a>
			</li>

			<!-- BEGIN pages -->
			<!-- IF pagination.pages.separator -->
			<li component="pagination/select-page" class="page select-page">
				<a href="#"><i class="fa fa-ellipsis-h"></i></a>
			</li>
			<!-- ELSE -->
			<li class="page<!-- IF pagination.pages.active --> active<!-- ENDIF pagination.pages.active -->" >
				<a href="?{pagination.pages.qs}" data-page="{pagination.pages.page}">{pagination.pages.page}</a>
			</li>
			<!-- ENDIF pagination.pages.separator -->
			<!-- END pages -->

			<li class="next pull-right<!-- IF !pagination.next.active --> disabled<!-- ENDIF !pagination.next.active -->">
				<a href="?{pagination.next.qs}" data-page="{pagination.next.page}"> <i class="fa fa-chevron-right"></i></a>
			</li>
		</ul>

		<ul class="pagination hidden-sm hidden-md hidden-lg">
			<li class="first<!-- IF !pagination.prev.active --> disabled<!-- ENDIF !pagination.prev.active -->">
				<a href="?page=1" data-page="1"><i class="fa fa-fast-backward"></i> </a>
			</li>

			<li class="previous<!-- IF !pagination.prev.active --> disabled<!-- ENDIF !pagination.prev.active -->">
				<a href="?{pagination.prev.qs}" data-page="{pagination.prev.page}"><i class="fa fa-chevron-left"></i> </a>
			</li>

			<li component="pagination/select-page" class="page select-page">
				<a href="#">{pagination.currentPage} / {pagination.pageCount}</a>
			</li>

			<li class="next<!-- IF !pagination.next.active --> disabled<!-- ENDIF !pagination.next.active -->">
				<a href="?{pagination.next.qs}" data-page="{pagination.next.page}"> <i class="fa fa-chevron-right"></i></a>
			</li>

			<li class="last<!-- IF !pagination.next.active --> disabled<!-- ENDIF !pagination.next.active -->">
				<a href="?page={pagination.pageCount}" data-page="{pagination.pageCount}"><i class="fa fa-fast-forward"></i> </a>
			</li>
		</ul>
	</div>

</div>

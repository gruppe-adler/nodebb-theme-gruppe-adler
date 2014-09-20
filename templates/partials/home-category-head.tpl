<div class="{categories.class}" data-cid="{categories.cid}" data-numRecentReplies="{categories.numRecentReplies}">
	<meta itemprop="name" content="{categories.name}">
	<!-- IF categories.link -->
	<a style="color: {categories.color};" href="{categories.link}" itemprop="url" target="_blank" title="{categories.description}" id="category-{categories.cid}">
	<!-- ELSE -->
	<a
			href="{relative_path}/category/{categories.slug}"
			itemprop="url"
			title="{categories.description}"
			class="category-header"
			id="category-{categories.cid}"
		>
	<!-- ENDIF categories.link -->
		<div
			class="category-header-image-{categories.imageClass}"
			style="color: {categories.color};
					<!-- IF categories.backgroundImage -->background-image: url({categories.backgroundImage});<!-- ENDIF categories.backgroundImage -->
					<!-- IF categories.bgColor -->background-color: {categories.bgColor};<!-- ENDIF categories.bgColor -->
					"
			>
			<i class="fa {categories.icon} fa-2x"></i>
		</div>
		<!-- IF !categories.link -->
		<span class="badge {categories.unread-class}">{categories.topic_count} / {categories.post_count}</span>
		<!-- ENDIF !categories.link -->
		<h4 class="category-title">{categories.name}</h4>
		<div itemprop="description" class="category-description">{categories.description}</div>


	</a>
</div>

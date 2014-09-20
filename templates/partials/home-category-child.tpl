<!-- IF categories.children.link -->
<a style="color: {categories.children.color};" href="{categories.children.link}" itemprop="url" target="_blank" title="{categories.children.description}" id="category-{categories.children.cid}">
<!-- ELSE -->
<a
		href="{relative_path}/category/{categories.children.slug}"
		itemprop="url"
		title="{categories.children.description}"
		class="category-header subcategory-header"
		id="category-{categories.cid}"
		>
<!-- ENDIF categories.children.link -->
	<div
			class="category-header-image-{categories.children.imageClass}"
			style="color: {categories.children.color};
					<!-- IF categories.backgroundImage -->background-image: url({categories.children.backgroundImage});<!-- ENDIF categories.backgroundImage -->
					<!-- IF categories.bgColor -->background-color: {categories.children.bgColor};<!-- ENDIF categories.bgColor -->
					"
			>
		<i class="fa {categories.children.icon} fa-2x"></i>
	</div>
	<!-- IF !categories.children.link -->
	<span class="badge {categories.children.unread-class}">{categories.children.topic_count} / {categories.children.post_count}</span>
	<!-- ENDIF !categories.children.link -->
	<h4 class="category-title">{categories.children.name}</h4>
	<div itemprop="description" class="category-description">{categories.children.description}</div>
</a>

<!-- IF children.link -->
<a style="color: {children.color};" href="{children.link}" itemprop="url" target="_blank" title="{children.description}" id="category-{children.cid}">
<!-- ELSE -->
<a
		href="{relative_path}/category/{children.slug}"
		itemprop="url"
		title="{children.description}"
		class="category-header subcategory-header"
		id="category-{children.cid}"
		>
<!-- ENDIF children.link -->
	<div
			class="category-header-image-{children.imageClass}"
			style="color: {children.color};
					<!-- IF children.backgroundImage -->background-image: url({children.backgroundImage});<!-- ENDIF children.backgroundImage -->
					<!-- IF children.bgColor -->background-color: {children.bgColor};<!-- ENDIF children.bgColor -->
					"
			>
		<i class="fa {children.icon} fa-2x"></i>
	</div>
	<!-- IF !children.link -->
	<span class="badge {children.unread-class}">{children.topic_count} / {children.post_count}</span>
	<!-- ENDIF !children.link -->
	<h4 class="category-title">{children.name}</h4>
	<div itemprop="description" class="category-description">{children.description}</div>
</a>

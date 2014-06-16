<?php
	$productOnPanel = new Product();
	$bestProjects = $productOnPanel->getBestProjects();
	$this->view->bestProjects = $bestProjects;
	
	$hotNews = new News();
	$hotNewsAndGeomacyEntries = $hotNews->getHotNewsAndGeomacyEntries();
	$this->view->hotNewsAndGeomacyEntries = $hotNewsAndGeomacyEntries;
?>
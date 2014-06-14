<?php
	$productOnPanel = new Product();
	$bestProjects = $productOnPanel->getBestProjects();
	$this->view->bestProjects = $bestProjects;
?>
<?php
$repository = getenv('repository');
$config->addRepository('Main', $repository);
$config->addTemplatePath($locwebsvnreal.'/templates/calm/');
$config->addTemplatePath($locwebsvnreal.'/templates/BlueGrey/');
$config->addTemplatePath($locwebsvnreal.'/templates/Elegant/');
$config->addInlineMimeType('text/plain');
$config->setMinDownloadLevel(2);
$config->useGeshi();
set_time_limit(0);
$config->expandTabsBy(8);

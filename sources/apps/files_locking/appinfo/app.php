<?php

OCP\Util::connectHook('OC_Filesystem', 'preSetup', '\OCA\Files_Locking\LockingWrapper', 'setupWrapper');

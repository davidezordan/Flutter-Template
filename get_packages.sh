#!/bin/bash
( cd myapp/app && flutter pub get )
( cd myapp/control && flutter pub get )
( cd myapp/services && flutter pub get )
( cd myapp/ui && flutter pub get )
( cd common && flutter pub get )
( cd networking && flutter pub get )
( cd resources && flutter pub get )
( cd infrastructure && flutter pub get )
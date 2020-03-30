#!/bin/bash
( cd ai_translator/app && flutter pub get )
( cd ai_translator/control && flutter pub get )
( cd ai_translator/services && flutter pub get )
( cd ai_translator/ui && flutter pub get )
( cd common && flutter pub get )
( cd networking && flutter pub get )
( cd resources && flutter pub get )
#!/bin/bash
( cd ai_translator/app && flutter pub get )
( cd ai_translator/data && flutter pub get )
( cd ai_translator/domain && flutter pub get )
( cd ai_translator/presentation && flutter pub get )
( cd common && flutter pub get )
( cd infrastructure && flutter pub get )
( cd resources && flutter pub get )
( cd services && flutter pub get )


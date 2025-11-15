; LibSGD BlitzBasic DECLS File
; Generated for sgd_dynamic.dll (64-bit)
; Version: 0.16.0
; Total Functions: 324

.lib "sgd_dynamic.dll"

; ========================================
; System Functions
; ========================================
sgd_Init():"sgd_Init"
sgd_GetVersion$():"sgd_GetVersion"
sgd_Terminate():"sgd_Terminate"
sgd_SetConfigVar(name$, value$):"sgd_SetConfigVar"
sgd_GetConfigVar$(name$):"sgd_GetConfigVar"
sgd_SetErrorHandler(handler*, context*):"sgd_SetErrorHandler"
sgd_Error(error$):"sgd_Error"
sgd_Alert(message$):"sgd_Alert"
sgd_Log(line$):"sgd_Log"
sgd_GetDesktopWidth%():"sgd_GetDesktopWidth"
sgd_GetDesktopHeight%():"sgd_GetDesktopHeight"
sgd_PollEvents%():"sgd_PollEvents"
sgd_ReleaseHandle(handle%):"sgd_ReleaseHandle"
sgd_ReleaseAllHandles():"sgd_ReleaseAllHandles"
sgd_DebugMemory():"sgd_DebugMemory"

; ========================================
; Window Functions
; ========================================
sgd_CreateWindow(width%, height%, title$, flags%):"sgd_CreateWindow"
sgd_DestroyWindow():"sgd_DestroyWindow"
sgd_SetWindowPosition(x%, y%):"sgd_SetWindowPosition"
sgd_GetWindowX%():"sgd_GetWindowX"
sgd_GetWindowY%():"sgd_GetWindowY"
sgd_SetWindowSize(width%, height%):"sgd_SetWindowSize"
sgd_GetWindowWidth%():"sgd_GetWindowWidth"
sgd_GetWindowHeight%():"sgd_GetWindowHeight"
sgd_SetWindowTitle(title$):"sgd_SetWindowTitle"
sgd_GetWindowTitle$():"sgd_GetWindowTitle"
sgd_SetFullscreenMode(width%, height%, hertz%):"sgd_SetFullscreenMode"
sgd_SetWindowState(state%):"sgd_SetWindowState"
sgd_GetWindowState%():"sgd_GetWindowState"

; ========================================
; Input Functions
; ========================================
sgd_IsKeyDown%(key%):"sgd_IsKeyDown"
sgd_IsKeyHit%(key%):"sgd_IsKeyHit"
sgd_GetChar%():"sgd_GetChar"
sgd_FlushChars():"sgd_FlushChars"
sgd_GetMouseX#():"sgd_GetMouseX"
sgd_GetMouseY#():"sgd_GetMouseY"
sgd_GetMouseZ#():"sgd_GetMouseZ"
sgd_GetMouseVX#():"sgd_GetMouseVX"
sgd_GetMouseVY#():"sgd_GetMouseVY"
sgd_GetMouseVZ#():"sgd_GetMouseVZ"
sgd_SetMouseZ(z#):"sgd_SetMouseZ"
sgd_SetMouseCursorMode(cursorMode%):"sgd_SetMouseCursorMode"
sgd_IsMouseButtonDown%(button%):"sgd_IsMouseButtonDown"
sgd_IsMouseButtonHit%(button%):"sgd_IsMouseButtonHit"
sgd_IsGamepadConnected%(gamepad%):"sgd_IsGamepadConnected"
sgd_IsGamepadButtonDown%(gamepad%, button%):"sgd_IsGamepadButtonDown"
sgd_IsGamepadButtonHit%(gamepad%, button%):"sgd_IsGamepadButtonHit"
sgd_GetGamepadAxis#(gamepad%, axis%):"sgd_GetGamepadAxis"

; ========================================
; Texture Functions
; ========================================
sgd_Load2DTexture%(path$, format%, flags%):"sgd_Load2DTexture"
sgd_LoadCubeTexture%(path$, format%, flags%):"sgd_LoadCubeTexture"
sgd_LoadArrayTexture%(path$, format%, flags%):"sgd_LoadArrayTexture"
sgd_Create2DTexture%(width%, height%, format%, flags%):"sgd_Create2DTexture"
sgd_CreateCubeTexture%(size%, format%, flags%):"sgd_CreateCubeTexture"
sgd_CreateArrayTexture%(width%, height%, depth%, format%, flags%):"sgd_CreateArrayTexture"
sgd_GetTextureType%(texture%):"sgd_GetTextureType"
sgd_GetTextureWidth%(texture%):"sgd_GetTextureWidth"
sgd_GetTextureHeight%(texture%):"sgd_GetTextureHeight"
sgd_GetTextureDepth%(texture%):"sgd_GetTextureDepth"
sgd_GetTextureFormat%(texture%):"sgd_GetTextureFormat"
sgd_GetTextureFlags%(texture%):"sgd_GetTextureFlags"
sgd_SetTexelSRGBA(texture%, x%, y%, rgba%):"sgd_SetTexelSRGBA"
sgd_GetTexelSRGBA%(texture%, x%, y%):"sgd_GetTexelSRGBA"

; ========================================
; Material Functions
; ========================================
sgd_LoadPBRMaterial%(path$):"sgd_LoadPBRMaterial"
sgd_CreatePBRMaterial%():"sgd_CreatePBRMaterial"
sgd_LoadPrelitMaterial%(path$):"sgd_LoadPrelitMaterial"
sgd_CreatePrelitMaterial%():"sgd_CreatePrelitMaterial"
sgd_SetMaterialBlendMode(material%, blendMode%):"sgd_SetMaterialBlendMode"
sgd_SetMaterialDepthFunc(material%, depthFunc%):"sgd_SetMaterialDepthFunc"
sgd_SetMaterialCullMode(material%, cullMode%):"sgd_SetMaterialCullMode"
sgd_SetMaterialTexture(material%, parameter$, texture%):"sgd_SetMaterialTexture"
sgd_SetMaterialColor(material%, parameter$, red#, green#, blue#, alpha#):"sgd_SetMaterialColor"
sgd_SetMaterialFloat(material%, parameter$, value#):"sgd_SetMaterialFloat"

; ========================================
; Mesh Functions
; ========================================
sgd_LoadMesh%(path$):"sgd_LoadMesh"
sgd_CopyMesh%(mesh%):"sgd_CopyMesh"
sgd_CreateBoxMesh%(minX#, minY#, minZ#, maxX#, maxY#, maxZ#, material%):"sgd_CreateBoxMesh"
sgd_CreateSphereMesh%(radius#, xSegs%, ySegs%, material%):"sgd_CreateSphereMesh"
sgd_CreateCylinderMesh%(height#, radius#, segs%, material%):"sgd_CreateCylinderMesh"
sgd_CreateConeMesh%(height#, radius#, segs%, material%):"sgd_CreateConeMesh"
sgd_CreateTorusMesh%(outerRadius#, innerRadius#, outerSegs%, innerSegs%, material%):"sgd_CreateTorusMesh"
sgd_SetMeshShadowsEnabled(mesh%, enabled%):"sgd_SetMeshShadowsEnabled"
sgd_IsMeshShadowsEnabled%(mesh%):"sgd_IsMeshShadowsEnabled"
sgd_UpdateMeshNormals(mesh%):"sgd_UpdateMeshNormals"
sgd_UpdateMeshTangents(mesh%):"sgd_UpdateMeshTangents"
sgd_FitMesh(mesh%, minX#, minY#, minZ#, maxX#, maxY#, maxZ#, uniform%):"sgd_FitMesh"
sgd_TransformMesh(mesh%, tx#, ty#, tz#, rx#, ry#, rz#, sx#, sy#, sz#):"sgd_TransformMesh"
sgd_TransformTexCoords(mesh%, scaleX#, scaleY#, offsetX#, offsetY#):"sgd_TransformTexCoords"
sgd_FlipMesh(mesh%):"sgd_FlipMesh"
sgd_GetMeshBoundsMinX#(mesh%):"sgd_GetMeshBoundsMinX"
sgd_GetMeshBoundsMinY#(mesh%):"sgd_GetMeshBoundsMinY"
sgd_GetMeshBoundsMinZ#(mesh%):"sgd_GetMeshBoundsMinZ"
sgd_GetMeshBoundsMaxX#(mesh%):"sgd_GetMeshBoundsMaxX"
sgd_GetMeshBoundsMaxY#(mesh%):"sgd_GetMeshBoundsMaxY"
sgd_GetMeshBoundsMaxZ#(mesh%):"sgd_GetMeshBoundsMaxZ"
sgd_CreateMesh%(vertexCount%, flags%):"sgd_CreateMesh"
sgd_ResizeVertices(mesh%, count%):"sgd_ResizeVertices"
sgd_GetVertexCount%(mesh%):"sgd_GetVertexCount"
sgd_AddVertex%(mesh%, x#, y#, z#, nx#, ny#, nz#, s#, t#):"sgd_AddVertex"
sgd_SetVertex(mesh%, vertex%, x#, y#, z#, nx#, ny#, nz#, s#, t#):"sgd_SetVertex"
sgd_SetVertexPosition(mesh%, vertex%, x#, y#, z#):"sgd_SetVertexPosition"
sgd_SetVertexNormal(mesh%, vertex%, nx#, ny#, nz#):"sgd_SetVertexNormal"
sgd_SetVertexTangent(mesh%, vertex%, tx#, ty#, tz#, tw#):"sgd_SetVertexTangent"
sgd_SetVertexColor(mesh%, vertex%, r#, g#, b#, a#):"sgd_SetVertexColor"
sgd_SetVertexTexCoord0(mesh%, vertex%, u0#, v0#):"sgd_SetVertexTexCoord0"
sgd_GetVertexX#(mesh%, vertex%):"sgd_GetVertexX"
sgd_GetVertexY#(mesh%, vertex%):"sgd_GetVertexY"
sgd_GetVertexZ#(mesh%, vertex%):"sgd_GetVertexZ"
sgd_GetVertexNX#(mesh%, vertex%):"sgd_GetVertexNX"
sgd_GetVertexNY#(mesh%, vertex%):"sgd_GetVertexNY"
sgd_GetVertexNZ#(mesh%, vertex%):"sgd_GetVertexNZ"
sgd_GetVertexTX#(mesh%, vertex%):"sgd_GetVertexTX"
sgd_GetVertexTY#(mesh%, vertex%):"sgd_GetVertexTY"
sgd_GetVertexTZ#(mesh%, vertex%):"sgd_GetVertexTZ"
sgd_GetVertexTW#(mesh%, vertex%):"sgd_GetVertexTW"
sgd_GetVertexRed#(mesh%, vertex%):"sgd_GetVertexRed"
sgd_GetVertexGreen#(mesh%, vertex%):"sgd_GetVertexGreen"
sgd_GetVertexBlue#(mesh%, vertex%):"sgd_GetVertexBlue"
sgd_GetVertexAlpha#(mesh%, vertex%):"sgd_GetVertexAlpha"
sgd_GetVertexU0#(mesh%, vertex%):"sgd_GetVertexU0"
sgd_GetVertexV0#(mesh%, vertex%):"sgd_GetVertexV0"

; ========================================
; Surface Functions
; ========================================
sgd_CreateSurface%(mesh%, material%, triangleCount%):"sgd_CreateSurface"
sgd_GetSurfaceCount%(mesh%):"sgd_GetSurfaceCount"
sgd_GetSurface%(mesh%, surface%):"sgd_GetSurface"
sgd_GetMaterial%(surface%):"sgd_GetMaterial"
sgd_ResizeTriangles(surface%, count%):"sgd_ResizeTriangles"
sgd_GetTriangleCount%(surface%):"sgd_GetTriangleCount"
sgd_AddTriangle%(surface%, v0%, v1%, v2%):"sgd_AddTriangle"
sgd_SetTriangle(surface%, triangle%, v0%, v1%, v2%):"sgd_SetTriangle"
sgd_GetTriangleVertex%(surface%, triangle%, vertex%):"sgd_GetTriangleVertex"

; ========================================
; Font Functions
; ========================================
sgd_LoadFont%(path$, height#):"sgd_LoadFont"
sgd_GetTextWidth#(font%, text$):"sgd_GetTextWidth"
sgd_GetFontHeight#(font%):"sgd_GetFontHeight"

; ========================================
; Image Functions
; ========================================
sgd_LoadImage%(path$):"sgd_LoadImage"
sgd_LoadArrayImage%(path$, frameCount%, framesX%, framesY%, frameSpacing%):"sgd_LoadArrayImage"
sgd_CreateImage%(texture%):"sgd_CreateImage"
sgd_SetImageViewMode(image%, viewMode%):"sgd_SetImageViewMode"
sgd_SetImageBlendMode(image%, blendMode%):"sgd_SetImageBlendMode"
sgd_SetImageRect(image%, minX#, minY#, maxX#, maxY#):"sgd_SetImageRect"
sgd_GetImageTexture%(image%):"sgd_GetImageTexture"

; ========================================
; 2D Drawing Functions
; ========================================
sgd_Set2DFillColor(red#, green#, blue#, alpha#):"sgd_Set2DFillColor"
sgd_Set2DFillMaterial(material%):"sgd_Set2DFillMaterial"
sgd_Set2DFillEnabled(enabled%):"sgd_Set2DFillEnabled"
sgd_Set2DOutlineColor(red#, green#, blue#, alpha#):"sgd_Set2DOutlineColor"
sgd_Set2DOutlineWidth(width#):"sgd_Set2DOutlineWidth"
sgd_Set2DOutlineEnabled(enabled%):"sgd_Set2DOutlineEnabled"
sgd_Set2DLineWidth(width#):"sgd_Set2DLineWidth"
sgd_Set2DPointSize(size#):"sgd_Set2DPointSize"
sgd_Set2DFont(font%):"sgd_Set2DFont"
sgd_Set2DTextColor(red#, green#, blue#, alpha#):"sgd_Set2DTextColor"
sgd_Get2DTextWidth#(text$):"sgd_Get2DTextWidth"
sgd_Get2DFontHeight#():"sgd_Get2DFontHeight"
sgd_Clear2D():"sgd_Clear2D"
sgd_Push2DLayer():"sgd_Push2DLayer"
sgd_Pop2DLayer():"sgd_Pop2DLayer"
sgd_Draw2DPoint(x0#, y0#):"sgd_Draw2DPoint"
sgd_Draw2DLine(x0#, y0#, x1#, y1#):"sgd_Draw2DLine"
sgd_Draw2DRect(minX#, minY#, maxX#, maxY#):"sgd_Draw2DRect"
sgd_Draw2DImage(image%, x#, y#, frame#):"sgd_Draw2DImage"
sgd_Draw2DOval(minX#, minY#, maxX#, maxY#):"sgd_Draw2DOval"
sgd_Draw2DText(text$, x#, y#):"sgd_Draw2DText"

; ========================================
; Scene Functions
; ========================================
sgd_ClearScene():"sgd_ClearScene"
sgd_ResetScene(releaseAllHandles%):"sgd_ResetScene"
sgd_LoadScene(path$):"sgd_LoadScene"
sgd_SaveScene(path$):"sgd_SaveScene"
sgd_SetAmbientLightColor(red#, green#, blue#, alpha#):"sgd_SetAmbientLightColor"
sgd_SetClearColor(red#, green#, blue#, alpha#):"sgd_SetClearColor"
sgd_SetClearDepth(depth#):"sgd_SetClearDepth"
sgd_SetEnvTexture(texture%):"sgd_SetEnvTexture"
sgd_UpdateShadowMappingConfig():"sgd_UpdateShadowMappingConfig"
sgd_RenderScene():"sgd_RenderScene"
sgd_Present():"sgd_Present"
sgd_GetFPS#():"sgd_GetFPS"
sgd_GetRPS#():"sgd_GetRPS"

; ========================================
; Entity Functions
; ========================================
sgd_SetEntityEnabled(entity%, enabled%):"sgd_SetEntityEnabled"
sgd_IsEntityEnabled%(entity%):"sgd_IsEntityEnabled"
sgd_SetEntityVisible(entity%, visible%):"sgd_SetEntityVisible"
sgd_IsEntityVisible%(entity%):"sgd_IsEntityVisible"
sgd_DestroyEntity(entity%):"sgd_DestroyEntity"
sgd_ResetEntity(entity%):"sgd_ResetEntity"
sgd_CopyEntity%(entity%):"sgd_CopyEntity"
sgd_SetEntityName(entity%, name$):"sgd_SetEntityName"
sgd_GetEntityName$(entity%):"sgd_GetEntityName"
sgd_SetEntityParent(entity%, parent%):"sgd_SetEntityParent"
sgd_GetEntityParent%(entity%):"sgd_GetEntityParent"
sgd_GetEntityChildCount%(entity%):"sgd_GetEntityChildCount"
sgd_GetEntityChild%(entity%, childIndex%):"sgd_GetEntityChild"
sgd_FindEntityChild%(entity%, childName$):"sgd_FindEntityChild"
sgd_SetEntityPosition(entity%, tx!, ty!, tz!):"sgd_SetEntityPosition"
sgd_SetEntityRotation(entity%, rx!, ry!, rz!):"sgd_SetEntityRotation"
sgd_SetEntityScale(entity%, sx!, sy!, sz!):"sgd_SetEntityScale"
sgd_TranslateEntity(entity%, tx!, ty!, tz!):"sgd_TranslateEntity"
sgd_RotateEntity(entity%, rx!, ry!, rz!):"sgd_RotateEntity"
sgd_ScaleEntity(entity%, sx!, sy!, sz!):"sgd_ScaleEntity"
sgd_MoveEntity(entity%, tx!, ty!, tz!):"sgd_MoveEntity"
sgd_TurnEntity(entity%, rx!, ry!, rz!):"sgd_TurnEntity"
sgd_GetEntityX!(entity%):"sgd_GetEntityX"
sgd_GetEntityY!(entity%):"sgd_GetEntityY"
sgd_GetEntityZ!(entity%):"sgd_GetEntityZ"
sgd_GetEntityRX!(entity%):"sgd_GetEntityRX"
sgd_GetEntityRY!(entity%):"sgd_GetEntityRY"
sgd_GetEntityRZ!(entity%):"sgd_GetEntityRZ"
sgd_GetEntitySX!(entity%):"sgd_GetEntitySX"
sgd_GetEntitySY!(entity%):"sgd_GetEntitySY"
sgd_GetEntitySZ!(entity%):"sgd_GetEntitySZ"
sgd_GetEntityIX!(entity%):"sgd_GetEntityIX"
sgd_GetEntityIY!(entity%):"sgd_GetEntityIY"
sgd_GetEntityIZ!(entity%):"sgd_GetEntityIZ"
sgd_GetEntityJX!(entity%):"sgd_GetEntityJX"
sgd_GetEntityJY!(entity%):"sgd_GetEntityJY"
sgd_GetEntityJZ!(entity%):"sgd_GetEntityJZ"
sgd_GetEntityKX!(entity%):"sgd_GetEntityKX"
sgd_GetEntityKY!(entity%):"sgd_GetEntityKY"
sgd_GetEntityKZ!(entity%):"sgd_GetEntityKZ"
sgd_AimEntityAtEntity(entity%, target%, roll#):"sgd_AimEntityAtEntity"
sgd_AimEntityAtPoint(entity%, x!, y!, z!, roll#):"sgd_AimEntityAtPoint"
sgd_TransformPoint(x!, y!, z!, srcEntity%, dstEntity%):"sgd_TransformPoint"
sgd_TransformVector(x!, y!, z!, srcEntity%, dstEntity%):"sgd_TransformVector"
sgd_TransformNormal(x!, y!, z!, srcEntity%, dstEntity%):"sgd_TransformNormal"
sgd_GetTransformedX!():"sgd_GetTransformedX"
sgd_GetTransformedY!():"sgd_GetTransformedY"
sgd_GetTransformedZ!():"sgd_GetTransformedZ"

; ========================================
; Camera Functions
; ========================================
sgd_CreatePerspectiveCamera%():"sgd_CreatePerspectiveCamera"
sgd_CreateOrthographicCamera%():"sgd_CreateOrthographicCamera"
sgd_GetCameraType%(camera%):"sgd_GetCameraType"
sgd_SetCameraFOV(camera%, fovY#):"sgd_SetCameraFOV"
sgd_SetCameraNear(camera%, near#):"sgd_SetCameraNear"
sgd_SetCameraFar(camera%, far#):"sgd_SetCameraFar"
sgd_CameraProject%(camera%, x!, y!, z!):"sgd_CameraProject"
sgd_GetProjectedX#():"sgd_GetProjectedX"
sgd_GetProjectedY#():"sgd_GetProjectedY"
sgd_CameraUnproject%(camera%, windowX#, windowY#, viewZ#):"sgd_CameraUnproject"
sgd_GetUnprojectedX!():"sgd_GetUnprojectedX"
sgd_GetUnprojectedY!():"sgd_GetUnprojectedY"
sgd_GetUnprojectedZ!():"sgd_GetUnprojectedZ"

; ========================================
; Light Functions
; ========================================
sgd_CreateDirectionalLight%():"sgd_CreateDirectionalLight"
sgd_CreatePointLight%():"sgd_CreatePointLight"
sgd_CreateSpotLight%():"sgd_CreateSpotLight"
sgd_GetLightType%(light%):"sgd_GetLightType"
sgd_SetLightShadowsEnabled(light%, enabled%):"sgd_SetLightShadowsEnabled"
sgd_IsLightShadowsEnabled%(light%):"sgd_IsLightShadowsEnabled"
sgd_SetLightPriority(light%, priority%):"sgd_SetLightPriority"
sgd_GetLightPriority%(light%):"sgd_GetLightPriority"
sgd_SetLightColor(light%, red#, green#, blue#, alpha#):"sgd_SetLightColor"
sgd_SetLightRange(light%, range#):"sgd_SetLightRange"
sgd_SetLightFalloff(light%, falloff#):"sgd_SetLightFalloff"
sgd_SetLightInnerConeAngle(light%, angle#):"sgd_SetLightInnerConeAngle"
sgd_SetLightOuterConeAngle(light%, angle#):"sgd_SetLightOuterConeAngle"

; ========================================
; Model Functions
; ========================================
sgd_LoadModel%(path$):"sgd_LoadModel"
sgd_LoadBonedModel%(path$, skinned%):"sgd_LoadBonedModel"
sgd_CreateModel%(mesh%):"sgd_CreateModel"
sgd_SetModelMesh(model%, mesh%):"sgd_SetModelMesh"
sgd_GetModelMesh%(model%):"sgd_GetModelMesh"
sgd_SetModelColor(model%, red#, green#, blue#, alpha#):"sgd_SetModelColor"
sgd_AnimateModel(model%, animation%, time#, animationMode%, weight#):"sgd_AnimateModel"

; ========================================
; Skybox Functions
; ========================================
sgd_LoadSkybox%(path$, roughness#):"sgd_LoadSkybox"
sgd_CreateSkybox%(texture%):"sgd_CreateSkybox"
sgd_SetSkyboxTexture(skybox%, texture%):"sgd_SetSkyboxTexture"
sgd_SetSkyboxRoughness(skybox%, roughness#):"sgd_SetSkyboxRoughness"

; ========================================
; Terrain Functions
; ========================================
sgd_CreateTerrain%():"sgd_CreateTerrain"
sgd_SetTerrainSize(terrain%, size%):"sgd_SetTerrainSize"
sgd_SetTerrainLODs(terrain%, lods%):"sgd_SetTerrainLODs"
sgd_SetTerrainMaterial(terrain%, material%):"sgd_SetTerrainMaterial"
sgd_SetTerrainMaterialSize(terrain%, materialSize%):"sgd_SetTerrainMaterialSize"
sgd_SetTerrainHeightTexture(terrain%, texture%):"sgd_SetTerrainHeightTexture"
sgd_SetTerrainNormalTexture(terrain%, texture%):"sgd_SetTerrainNormalTexture"
sgd_SetTerrainDebugMode(terrain%, debugMode%):"sgd_SetTerrainDebugMode"

; ========================================
; Sprite Functions
; ========================================
sgd_CreateSprite%(image%):"sgd_CreateSprite"
sgd_SetSpriteImage(sprite%, image%):"sgd_SetSpriteImage"
sgd_SetSpriteColor(sprite%, red#, green#, blue#, alpha#):"sgd_SetSpriteColor"
sgd_SetSpriteFrame(sprite%, frame#):"sgd_SetSpriteFrame"

; ========================================
; Collision Functions
; ========================================
sgd_CreateSphereCollider%(entity%, colliderType%, radius#):"sgd_CreateSphereCollider"
sgd_CreateEllipsoidCollider%(entity%, colliderType%, radius#, height#):"sgd_CreateEllipsoidCollider"
sgd_CreateMeshCollider%(entity%, colliderType%, mesh%):"sgd_CreateMeshCollider"
sgd_GetColliderEntity%(collider%):"sgd_GetColliderEntity"
sgd_GetColliderType%(collider%):"sgd_GetColliderType"
sgd_SetColliderRadius(collider%, radius#):"sgd_SetColliderRadius"
sgd_SetColliderHeight(collider%, height#):"sgd_SetColliderHeight"
sgd_EnableCollisions(srcColliderType%, dstColliderType%, response%):"sgd_EnableCollisions"
sgd_UpdateColliders():"sgd_UpdateColliders"
sgd_GetCollisionCount%(collider%):"sgd_GetCollisionCount"
sgd_GetCollisionCollider%(collider%, index%):"sgd_GetCollisionCollider"
sgd_GetCollisionX!(collider%, index%):"sgd_GetCollisionX"
sgd_GetCollisionY!(collider%, index%):"sgd_GetCollisionY"
sgd_GetCollisionZ!(collider%, index%):"sgd_GetCollisionZ"
sgd_GetCollisionNX!(collider%, index%):"sgd_GetCollisionNX"
sgd_GetCollisionNY!(collider%, index%):"sgd_GetCollisionNY"
sgd_GetCollisionNZ!(collider%, index%):"sgd_GetCollisionNZ"

; ========================================
; Picking Functions
; ========================================
sgd_CameraPick%(camera%, windowX#, windowY#, colliderMask%):"sgd_CameraPick"
sgd_LinePick%(x0!, y0!, z0!, x1!, y1!, z1!, radius!, colliderMask%):"sgd_LinePick"
sgd_GetPickedX!():"sgd_GetPickedX"
sgd_GetPickedY!():"sgd_GetPickedY"
sgd_GetPickedZ!():"sgd_GetPickedZ"
sgd_GetPickedNX!():"sgd_GetPickedNX"
sgd_GetPickedNY!():"sgd_GetPickedNY"
sgd_GetPickedNZ!():"sgd_GetPickedNZ"

; ========================================
; Render Effect Functions
; ========================================
sgd_CreateBloomEffect%():"sgd_CreateBloomEffect"
sgd_SetBloomEffectRadius(effect%, radius%):"sgd_SetBloomEffectRadius"
sgd_GetBloomEffectRadius%(effect%):"sgd_GetBloomEffectRadius"
sgd_CreateBlurEffect%():"sgd_CreateBlurEffect"
sgd_SetBlurEffectRadius(effect%, radius%):"sgd_SetBlurEffectRadius"
sgd_GetBlurEffectRadius%(effect%):"sgd_GetBlurEffectRadius"
sgd_CreateFogEffect%():"sgd_CreateFogEffect"
sgd_SetFogEffectColor(effect%, red#, green#, blue#, alpha#):"sgd_SetFogEffectColor"
sgd_SetFogEffectRange(effect%, near#, far#):"sgd_SetFogEffectRange"
sgd_SetFogEffectPower(effect%, power#):"sgd_SetFogEffectPower"
sgd_CreateMonocolorEffect%():"sgd_CreateMonocolorEffect"
sgd_SetMonocolorEffectColor(effect%, red#, green#, blue#, alpha#):"sgd_SetMonocolorEffectColor"
sgd_SetRenderEffectEnabled(effect%, enabled%):"sgd_SetRenderEffectEnabled"
sgd_IsRenderEffectEnabled%(effect%):"sgd_IsRenderEffectEnabled"

; ========================================
; Audio Functions
; ========================================
sgd_LoadSound%(path$):"sgd_LoadSound"
sgd_PlaySound%(sound%):"sgd_PlaySound"
sgd_CueSound%(sound%):"sgd_CueSound"
sgd_SetAudioVolume(audio%, volume#):"sgd_SetAudioVolume"
sgd_SetAudioPan(audio%, pan#):"sgd_SetAudioPan"
sgd_SetAudioPitchScale(audio%, scale#):"sgd_SetAudioPitchScale"
sgd_SetAudioLooping(audio%, looping%):"sgd_SetAudioLooping"
sgd_SetAudioPaused(audio%, paused%):"sgd_SetAudioPaused"
sgd_IsAudioValid%(audio%):"sgd_IsAudioValid"
sgd_StopAudio(audio%):"sgd_StopAudio"
sgd_Set3DAudioConfig(rolloffScale#, dopplerScale#, distanceScale#):"sgd_Set3DAudioConfig"
sgd_Create3DAudioListener%(entity%):"sgd_Create3DAudioListener"
sgd_Play3DSound%(sound%, entity%):"sgd_Play3DSound"
sgd_Update3DAudio():"sgd_Update3DAudio"

; ========================================
; ImGui Functions
; ========================================
sgd_ImGui_ImplSGD_Init%(imguiProcs*):"sgd_ImGui_ImplSGD_Init"
sgd_ImGui_ImplSGD_Shutdown():"sgd_ImGui_ImplSGD_Shutdown"
sgd_ImGui_ImplSGD_NewFrame():"sgd_ImGui_ImplSGD_NewFrame"
sgd_ImGui_ImplSGD_RenderDrawData(imguiDrawData*):"sgd_ImGui_ImplSGD_RenderDrawData"

; LibSGD BlitzBasic DECLS File
; Generated for sgd_dynamic.dll (64-bit)
; Version: 0.16.0
; Total Functions: 324

.lib "sgd_dynamic.dll"

; ========================================
; System Functions
; ========================================
sgd_Init()
sgd_GetVersion$()
sgd_Terminate()
sgd_SetConfigVar(name$, value$)
sgd_GetConfigVar$(name$)
sgd_SetErrorHandler(handler*, context*)
sgd_Error(error$)
sgd_Alert(message$)
sgd_Log(line$)
sgd_GetDesktopWidth%()
sgd_GetDesktopHeight%()
sgd_PollEvents%()
sgd_ReleaseHandle(handle%)
sgd_ReleaseAllHandles()
sgd_DebugMemory()

; ========================================
; Window Functions
; ========================================
sgd_CreateWindow(width%, height%, title$, flags%)
sgd_DestroyWindow()
sgd_SetWindowPosition(x%, y%)
sgd_GetWindowX%()
sgd_GetWindowY%()
sgd_SetWindowSize(width%, height%)
sgd_GetWindowWidth%()
sgd_GetWindowHeight%()
sgd_SetWindowTitle(title$)
sgd_GetWindowTitle$()
sgd_SetFullscreenMode(width%, height%, hertz%)
sgd_SetWindowState(state%)
sgd_GetWindowState%()

; ========================================
; Input Functions
; ========================================
sgd_IsKeyDown%(key%)
sgd_IsKeyHit%(key%)
sgd_GetChar%()
sgd_FlushChars()
sgd_GetMouseX#()
sgd_GetMouseY#()
sgd_GetMouseZ#()
sgd_GetMouseVX#()
sgd_GetMouseVY#()
sgd_GetMouseVZ#()
sgd_SetMouseZ(z#)
sgd_SetMouseCursorMode(cursorMode%)
sgd_IsMouseButtonDown%(button%)
sgd_IsMouseButtonHit%(button%)
sgd_IsGamepadConnected%(gamepad%)
sgd_IsGamepadButtonDown%(gamepad%, button%)
sgd_IsGamepadButtonHit%(gamepad%, button%)
sgd_GetGamepadAxis#(gamepad%, axis%)

; ========================================
; Texture Functions
; ========================================
sgd_Load2DTexture%(path$, format%, flags%)
sgd_LoadCubeTexture%(path$, format%, flags%)
sgd_LoadArrayTexture%(path$, format%, flags%)
sgd_Create2DTexture%(width%, height%, format%, flags%)
sgd_CreateCubeTexture%(size%, format%, flags%)
sgd_CreateArrayTexture%(width%, height%, depth%, format%, flags%)
sgd_GetTextureType%(texture%)
sgd_GetTextureWidth%(texture%)
sgd_GetTextureHeight%(texture%)
sgd_GetTextureDepth%(texture%)
sgd_GetTextureFormat%(texture%)
sgd_GetTextureFlags%(texture%)
sgd_SetTexelSRGBA(texture%, x%, y%, rgba%)
sgd_GetTexelSRGBA%(texture%, x%, y%)

; ========================================
; Material Functions
; ========================================
sgd_LoadPBRMaterial%(path$)
sgd_CreatePBRMaterial%()
sgd_LoadPrelitMaterial%(path$)
sgd_CreatePrelitMaterial%()
sgd_SetMaterialBlendMode(material%, blendMode%)
sgd_SetMaterialDepthFunc(material%, depthFunc%)
sgd_SetMaterialCullMode(material%, cullMode%)
sgd_SetMaterialTexture(material%, parameter$, texture%)
sgd_SetMaterialColor(material%, parameter$, red#, green#, blue#, alpha#)
sgd_SetMaterialFloat(material%, parameter$, value#)

; ========================================
; Mesh Functions
; ========================================
sgd_LoadMesh%(path$)
sgd_CopyMesh%(mesh%)
sgd_CreateBoxMesh%(minX#, minY#, minZ#, maxX#, maxY#, maxZ#, material%)
sgd_CreateSphereMesh%(radius#, xSegs%, ySegs%, material%)
sgd_CreateCylinderMesh%(height#, radius#, segs%, material%)
sgd_CreateConeMesh%(height#, radius#, segs%, material%)
sgd_CreateTorusMesh%(outerRadius#, innerRadius#, outerSegs%, innerSegs%, material%)
sgd_SetMeshShadowsEnabled(mesh%, enabled%)
sgd_IsMeshShadowsEnabled%(mesh%)
sgd_UpdateMeshNormals(mesh%)
sgd_UpdateMeshTangents(mesh%)
sgd_FitMesh(mesh%, minX#, minY#, minZ#, maxX#, maxY#, maxZ#, uniform%)
sgd_TransformMesh(mesh%, tx#, ty#, tz#, rx#, ry#, rz#, sx#, sy#, sz#)
sgd_TransformTexCoords(mesh%, scaleX#, scaleY#, offsetX#, offsetY#)
sgd_FlipMesh(mesh%)
sgd_GetMeshBoundsMinX#(mesh%)
sgd_GetMeshBoundsMinY#(mesh%)
sgd_GetMeshBoundsMinZ#(mesh%)
sgd_GetMeshBoundsMaxX#(mesh%)
sgd_GetMeshBoundsMaxY#(mesh%)
sgd_GetMeshBoundsMaxZ#(mesh%)
sgd_CreateMesh%(vertexCount%, flags%)
sgd_ResizeVertices(mesh%, count%)
sgd_GetVertexCount%(mesh%)
sgd_AddVertex%(mesh%, x#, y#, z#, nx#, ny#, nz#, s#, t#)
sgd_SetVertex(mesh%, vertex%, x#, y#, z#, nx#, ny#, nz#, s#, t#)
sgd_SetVertexPosition(mesh%, vertex%, x#, y#, z#)
sgd_SetVertexNormal(mesh%, vertex%, nx#, ny#, nz#)
sgd_SetVertexTangent(mesh%, vertex%, tx#, ty#, tz#, tw#)
sgd_SetVertexColor(mesh%, vertex%, r#, g#, b#, a#)
sgd_SetVertexTexCoord0(mesh%, vertex%, u0#, v0#)
sgd_GetVertexX#(mesh%, vertex%)
sgd_GetVertexY#(mesh%, vertex%)
sgd_GetVertexZ#(mesh%, vertex%)
sgd_GetVertexNX#(mesh%, vertex%)
sgd_GetVertexNY#(mesh%, vertex%)
sgd_GetVertexNZ#(mesh%, vertex%)
sgd_GetVertexTX#(mesh%, vertex%)
sgd_GetVertexTY#(mesh%, vertex%)
sgd_GetVertexTZ#(mesh%, vertex%)
sgd_GetVertexTW#(mesh%, vertex%)
sgd_GetVertexRed#(mesh%, vertex%)
sgd_GetVertexGreen#(mesh%, vertex%)
sgd_GetVertexBlue#(mesh%, vertex%)
sgd_GetVertexAlpha#(mesh%, vertex%)
sgd_GetVertexU0#(mesh%, vertex%)
sgd_GetVertexV0#(mesh%, vertex%)

; ========================================
; Surface Functions
; ========================================
sgd_CreateSurface%(mesh%, material%, triangleCount%)
sgd_GetSurfaceCount%(mesh%)
sgd_GetSurface%(mesh%, surface%)
sgd_GetMaterial%(surface%)
sgd_ResizeTriangles(surface%, count%)
sgd_GetTriangleCount%(surface%)
sgd_AddTriangle%(surface%, v0%, v1%, v2%)
sgd_SetTriangle(surface%, triangle%, v0%, v1%, v2%)
sgd_GetTriangleVertex%(surface%, triangle%, vertex%)

; ========================================
; Font Functions
; ========================================
sgd_LoadFont%(path$, height#)
sgd_GetTextWidth#(font%, text$)
sgd_GetFontHeight#(font%)

; ========================================
; Image Functions
; ========================================
sgd_LoadImage%(path$)
sgd_LoadArrayImage%(path$, frameCount%, framesX%, framesY%, frameSpacing%)
sgd_CreateImage%(texture%)
sgd_SetImageViewMode(image%, viewMode%)
sgd_SetImageBlendMode(image%, blendMode%)
sgd_SetImageRect(image%, minX#, minY#, maxX#, maxY#)
sgd_GetImageTexture%(image%)

; ========================================
; 2D Drawing Functions
; ========================================
sgd_Set2DFillColor(red#, green#, blue#, alpha#)
sgd_Set2DFillMaterial(material%)
sgd_Set2DFillEnabled(enabled%)
sgd_Set2DOutlineColor(red#, green#, blue#, alpha#)
sgd_Set2DOutlineWidth(width#)
sgd_Set2DOutlineEnabled(enabled%)
sgd_Set2DLineWidth(width#)
sgd_Set2DPointSize(size#)
sgd_Set2DFont(font%)
sgd_Set2DTextColor(red#, green#, blue#, alpha#)
sgd_Get2DTextWidth#(text$)
sgd_Get2DFontHeight#()
sgd_Clear2D()
sgd_Push2DLayer()
sgd_Pop2DLayer()
sgd_Draw2DPoint(x0#, y0#)
sgd_Draw2DLine(x0#, y0#, x1#, y1#)
sgd_Draw2DRect(minX#, minY#, maxX#, maxY#)
sgd_Draw2DImage(image%, x#, y#, frame#)
sgd_Draw2DOval(minX#, minY#, maxX#, maxY#)
sgd_Draw2DText(text$, x#, y#)

; ========================================
; Scene Functions
; ========================================
sgd_ClearScene()
sgd_ResetScene(releaseAllHandles%)
sgd_LoadScene(path$)
sgd_SaveScene(path$)
sgd_SetAmbientLightColor(red#, green#, blue#, alpha#)
sgd_SetClearColor(red#, green#, blue#, alpha#)
sgd_SetClearDepth(depth#)
sgd_SetEnvTexture(texture%)
sgd_UpdateShadowMappingConfig()
sgd_RenderScene()
sgd_Present()
sgd_GetFPS#()
sgd_GetRPS#()

; ========================================
; Entity Functions
; ========================================
sgd_SetEntityEnabled(entity%, enabled%)
sgd_IsEntityEnabled%(entity%)
sgd_SetEntityVisible(entity%, visible%)
sgd_IsEntityVisible%(entity%)
sgd_DestroyEntity(entity%)
sgd_ResetEntity(entity%)
sgd_CopyEntity%(entity%)
sgd_SetEntityName(entity%, name$)
sgd_GetEntityName$(entity%)
sgd_SetEntityParent(entity%, parent%)
sgd_GetEntityParent%(entity%)
sgd_GetEntityChildCount%(entity%)
sgd_GetEntityChild%(entity%, childIndex%)
sgd_FindEntityChild%(entity%, childName$)
sgd_SetEntityPosition(entity%, tx!, ty!, tz!)
sgd_SetEntityRotation(entity%, rx!, ry!, rz!)
sgd_SetEntityScale(entity%, sx!, sy!, sz!)
sgd_TranslateEntity(entity%, tx!, ty!, tz!)
sgd_RotateEntity(entity%, rx!, ry!, rz!)
sgd_ScaleEntity(entity%, sx!, sy!, sz!)
sgd_MoveEntity(entity%, tx!, ty!, tz!)
sgd_TurnEntity(entity%, rx!, ry!, rz!)
sgd_GetEntityX!(entity%)
sgd_GetEntityY!(entity%)
sgd_GetEntityZ!(entity%)
sgd_GetEntityRX!(entity%)
sgd_GetEntityRY!(entity%)
sgd_GetEntityRZ!(entity%)
sgd_GetEntitySX!(entity%)
sgd_GetEntitySY!(entity%)
sgd_GetEntitySZ!(entity%)
sgd_GetEntityIX!(entity%)
sgd_GetEntityIY!(entity%)
sgd_GetEntityIZ!(entity%)
sgd_GetEntityJX!(entity%)
sgd_GetEntityJY!(entity%)
sgd_GetEntityJZ!(entity%)
sgd_GetEntityKX!(entity%)
sgd_GetEntityKY!(entity%)
sgd_GetEntityKZ!(entity%)
sgd_AimEntityAtEntity(entity%, target%, roll#)
sgd_AimEntityAtPoint(entity%, x!, y!, z!, roll#)
sgd_TransformPoint(x!, y!, z!, srcEntity%, dstEntity%)
sgd_TransformVector(x!, y!, z!, srcEntity%, dstEntity%)
sgd_TransformNormal(x!, y!, z!, srcEntity%, dstEntity%)
sgd_GetTransformedX!()
sgd_GetTransformedY!()
sgd_GetTransformedZ!()

; ========================================
; Camera Functions
; ========================================
sgd_CreatePerspectiveCamera%()
sgd_CreateOrthographicCamera%()
sgd_GetCameraType%(camera%)
sgd_SetCameraFOV(camera%, fovY#)
sgd_SetCameraNear(camera%, near#)
sgd_SetCameraFar(camera%, far#)
sgd_CameraProject%(camera%, x!, y!, z!)
sgd_GetProjectedX#()
sgd_GetProjectedY#()
sgd_CameraUnproject%(camera%, windowX#, windowY#, viewZ#)
sgd_GetUnprojectedX!()
sgd_GetUnprojectedY!()
sgd_GetUnprojectedZ!()

; ========================================
; Light Functions
; ========================================
sgd_CreateDirectionalLight%()
sgd_CreatePointLight%()
sgd_CreateSpotLight%()
sgd_GetLightType%(light%)
sgd_SetLightShadowsEnabled(light%, enabled%)
sgd_IsLightShadowsEnabled%(light%)
sgd_SetLightPriority(light%, priority%)
sgd_GetLightPriority%(light%)
sgd_SetLightColor(light%, red#, green#, blue#, alpha#)
sgd_SetLightRange(light%, range#)
sgd_SetLightFalloff(light%, falloff#)
sgd_SetLightInnerConeAngle(light%, angle#)
sgd_SetLightOuterConeAngle(light%, angle#)

; ========================================
; Model Functions
; ========================================
sgd_LoadModel%(path$)
sgd_LoadBonedModel%(path$, skinned%)
sgd_CreateModel%(mesh%)
sgd_SetModelMesh(model%, mesh%)
sgd_GetModelMesh%(model%)
sgd_SetModelColor(model%, red#, green#, blue#, alpha#)
sgd_AnimateModel(model%, animation%, time#, animationMode%, weight#)

; ========================================
; Skybox Functions
; ========================================
sgd_LoadSkybox%(path$, roughness#)
sgd_CreateSkybox%(texture%)
sgd_SetSkyboxTexture(skybox%, texture%)
sgd_SetSkyboxRoughness(skybox%, roughness#)

; ========================================
; Terrain Functions
; ========================================
sgd_CreateTerrain%()
sgd_SetTerrainSize(terrain%, size%)
sgd_SetTerrainLODs(terrain%, lods%)
sgd_SetTerrainMaterial(terrain%, material%)
sgd_SetTerrainMaterialSize(terrain%, materialSize%)
sgd_SetTerrainHeightTexture(terrain%, texture%)
sgd_SetTerrainNormalTexture(terrain%, texture%)
sgd_SetTerrainDebugMode(terrain%, debugMode%)

; ========================================
; Sprite Functions
; ========================================
sgd_CreateSprite%(image%)
sgd_SetSpriteImage(sprite%, image%)
sgd_SetSpriteColor(sprite%, red#, green#, blue#, alpha#)
sgd_SetSpriteFrame(sprite%, frame#)

; ========================================
; Collision Functions
; ========================================
sgd_CreateSphereCollider%(entity%, colliderType%, radius#)
sgd_CreateEllipsoidCollider%(entity%, colliderType%, radius#, height#)
sgd_CreateMeshCollider%(entity%, colliderType%, mesh%)
sgd_GetColliderEntity%(collider%)
sgd_GetColliderType%(collider%)
sgd_SetColliderRadius(collider%, radius#)
sgd_SetColliderHeight(collider%, height#)
sgd_EnableCollisions(srcColliderType%, dstColliderType%, response%)
sgd_UpdateColliders()
sgd_GetCollisionCount%(collider%)
sgd_GetCollisionCollider%(collider%, index%)
sgd_GetCollisionX!(collider%, index%)
sgd_GetCollisionY!(collider%, index%)
sgd_GetCollisionZ!(collider%, index%)
sgd_GetCollisionNX!(collider%, index%)
sgd_GetCollisionNY!(collider%, index%)
sgd_GetCollisionNZ!(collider%, index%)

; ========================================
; Picking Functions
; ========================================
sgd_CameraPick%(camera%, windowX#, windowY#, colliderMask%)
sgd_LinePick%(x0!, y0!, z0!, x1!, y1!, z1!, radius!, colliderMask%)
sgd_GetPickedX!()
sgd_GetPickedY!()
sgd_GetPickedZ!()
sgd_GetPickedNX!()
sgd_GetPickedNY!()
sgd_GetPickedNZ!()

; ========================================
; Render Effect Functions
; ========================================
sgd_CreateBloomEffect%()
sgd_SetBloomEffectRadius(effect%, radius%)
sgd_GetBloomEffectRadius%(effect%)
sgd_CreateBlurEffect%()
sgd_SetBlurEffectRadius(effect%, radius%)
sgd_GetBlurEffectRadius%(effect%)
sgd_CreateFogEffect%()
sgd_SetFogEffectColor(effect%, red#, green#, blue#, alpha#)
sgd_SetFogEffectRange(effect%, near#, far#)
sgd_SetFogEffectPower(effect%, power#)
sgd_CreateMonocolorEffect%()
sgd_SetMonocolorEffectColor(effect%, red#, green#, blue#, alpha#)
sgd_SetRenderEffectEnabled(effect%, enabled%)
sgd_IsRenderEffectEnabled%(effect%)

; ========================================
; Audio Functions
; ========================================
sgd_LoadSound%(path$)
sgd_PlaySound%(sound%)
sgd_CueSound%(sound%)
sgd_SetAudioVolume(audio%, volume#)
sgd_SetAudioPan(audio%, pan#)
sgd_SetAudioPitchScale(audio%, scale#)
sgd_SetAudioLooping(audio%, looping%)
sgd_SetAudioPaused(audio%, paused%)
sgd_IsAudioValid%(audio%)
sgd_StopAudio(audio%)
sgd_Set3DAudioConfig(rolloffScale#, dopplerScale#, distanceScale#)
sgd_Create3DAudioListener%(entity%)
sgd_Play3DSound%(sound%, entity%)
sgd_Update3DAudio()

; ========================================
; ImGui Functions
; ========================================
sgd_ImGui_ImplSGD_Init%(imguiProcs*)
sgd_ImGui_ImplSGD_Shutdown()
sgd_ImGui_ImplSGD_NewFrame()
sgd_ImGui_ImplSGD_RenderDrawData(imguiDrawData*)

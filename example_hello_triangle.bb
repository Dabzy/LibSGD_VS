; ============================================================================
; LibSGD Hello Triangle Example
; A simple BlitzBasic example demonstrating LibSGD usage
; ============================================================================

; Include the function declarations and constants
Include "sgd.decls"
Include "sgd_constants.bb"

; ============================================================================
; Initialize LibSGD
; ============================================================================
sgd_Init()

; ============================================================================
; Create a window
; ============================================================================
windowWidth = 1280
windowHeight = 720
windowTitle$ = "LibSGD - Hello Triangle"
windowFlags = SGD_WINDOW_FLAGS_CENTERED Or SGD_WINDOW_FLAGS_RESIZABLE

sgd_CreateWindow(windowWidth, windowHeight, windowTitle$, windowFlags)

; ============================================================================
; Create a perspective camera
; ============================================================================
camera = sgd_CreatePerspectiveCamera()
sgd_SetEntityPosition(camera, 0, 0, -5)

; ============================================================================
; Set scene properties
; ============================================================================
; Set clear color to dark blue
sgd_SetClearColor(0.1, 0.2, 0.3, 1.0)

; Set ambient light
sgd_SetAmbientLightColor(0.5, 0.5, 0.5, 1.0)

; ============================================================================
; Create a simple mesh (triangle)
; ============================================================================
; Create a mesh with 3 vertices
mesh = sgd_CreateMesh(3, SGD_MESH_FLAGS_NONE)

; Add vertices for a triangle
sgd_AddVertex(mesh, -1, -1, 0, 0, 0, 1, 0, 0)  ; Bottom left
sgd_AddVertex(mesh,  1, -1, 0, 0, 0, 1, 1, 0)  ; Bottom right
sgd_AddVertex(mesh,  0,  1, 0, 0, 0, 1, 0.5, 1) ; Top

; Create a material
material = sgd_CreatePBRMaterial()
sgd_SetMaterialColor(material, "albedoColor", 1.0, 0.5, 0.2, 1.0)

; Create a surface and add the triangle
surface = sgd_CreateSurface(mesh, material, 1)
sgd_AddTriangle(surface, 0, 1, 2)

; Update mesh normals
sgd_UpdateMeshNormals(mesh)

; ============================================================================
; Create a model from the mesh
; ============================================================================
model = sgd_CreateModel(mesh)

; ============================================================================
; Create a light
; ============================================================================
light = sgd_CreateDirectionalLight()
sgd_SetEntityRotation(light, -45, 45, 0)
sgd_SetLightColor(light, 1.0, 1.0, 1.0, 1.0)

; ============================================================================
; Set up 2D text properties
; ============================================================================
sgd_Set2DTextColor(1.0, 1.0, 1.0, 1.0)

; ============================================================================
; Main loop
; ============================================================================
rotation# = 0.0

While True
    ; Poll for events
    events = sgd_PollEvents()

    ; Check if window close was clicked
    If events And SGD_EVENT_MASK_CLOSE_CLICKED Then
        Exit
    EndIf

    ; Check for ESC key
    If sgd_IsKeyHit(SGD_KEY_ESCAPE) Then
        Exit
    EndIf

    ; Rotate the model
    rotation# = rotation# + 0.5
    If rotation# >= 360.0 Then rotation# = rotation# - 360.0
    sgd_SetEntityRotation(model, 0, rotation#, 0)

    ; Clear 2D overlay
    sgd_Clear2D()

    ; Draw some text
    fps# = sgd_GetFPS()
    sgd_Draw2DText("LibSGD - Hello Triangle", 10, 10)
    sgd_Draw2DText("FPS: " + Int(fps#), 10, 30)
    sgd_Draw2DText("Press ESC to exit", 10, 50)
    sgd_Draw2DText("Triangle Rotation: " + Int(rotation#) + " degrees", 10, 70)

    ; Render the 3D scene
    sgd_RenderScene()

    ; Present the frame
    sgd_Present()
Wend

; ============================================================================
; Cleanup
; ============================================================================
sgd_Terminate()

End

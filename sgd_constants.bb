; ============================================================================
; LibSGD Constants for BlitzBasic
; Version: 0.16.0
; ============================================================================
; Include this file in your BlitzBasic project to use LibSGD constants
; Example: Include "sgd_constants.bb"
; ============================================================================

; ============================================================================
; Core Constants
; ============================================================================
Const SGD_NULL = 0
Const SGD_TRUE = 1
Const SGD_FALSE = 0

; ============================================================================
; Event Masks
; ============================================================================
Const SGD_EVENT_MASK_CLOSE_CLICKED = $01
Const SGD_EVENT_MASK_SIZE_CHANGED = $02
Const SGD_EVENT_MASK_LOST_FOCUS = $04
Const SGD_EVENT_MASK_GOT_FOCUS = $08
Const SGD_EVENT_MASK_SUSPENDED = $10
Const SGD_EVENT_MASK_RESUMED = $20

; ============================================================================
; Window States
; ============================================================================
Const SGD_WINDOW_STATE_CLOSED = 0
Const SGD_WINDOW_STATE_MINIMIZED = 1
Const SGD_WINDOW_STATE_NORMAL = 2
Const SGD_WINDOW_STATE_MAXIMIZED = 3
Const SGD_WINDOW_STATE_FULLSCREEN = 4

; ============================================================================
; Window Flags
; ============================================================================
Const SGD_WINDOW_FLAGS_NONE = $00
Const SGD_WINDOW_FLAGS_FULLSCREEN = $01
Const SGD_WINDOW_FLAGS_RESIZABLE = $02
Const SGD_WINDOW_FLAGS_CENTERED = $04

; ============================================================================
; Mouse Cursor Modes
; ============================================================================
Const SGD_MOUSE_CURSOR_MODE_NORMAL = 1
Const SGD_MOUSE_CURSOR_MODE_HIDDEN = 2
Const SGD_MOUSE_CURSOR_MODE_DISABLED = 3
Const SGD_MOUSE_CURSOR_MODE_CAPTURED = 4

; ============================================================================
; Texture Types
; ============================================================================
Const SGD_TEXTURE_TYPE_2D = 1
Const SGD_TEXTURE_TYPE_CUBE = 2
Const SGD_TEXTURE_TYPE_ARRAY = 3

; ============================================================================
; Texture Formats
; ============================================================================
Const SGD_TEXTURE_FORMAT_ANY = 0
Const SGD_TEXTURE_FORMAT_R8 = 1
Const SGD_TEXTURE_FORMAT_RG8 = 2
Const SGD_TEXTURE_FORMAT_RGBA8 = 3
Const SGD_TEXTURE_FORMAT_SRGBA8 = 4
Const SGD_TEXTURE_FORMAT_R8S = 5
Const SGD_TEXTURE_FORMAT_RG8S = 6
Const SGD_TEXTURE_FORMAT_RGBA8S = 7
Const SGD_TEXTURE_FORMAT_R16F = 8
Const SGD_TEXTURE_FORMAT_RG16F = 9
Const SGD_TEXTURE_FORMAT_RGBA16F = 10

; ============================================================================
; Texture Flags
; ============================================================================
Const SGD_TEXTURE_FLAGS_NONE = $00
Const SGD_TEXTURE_FLAGS_CLAMP_U = $01
Const SGD_TEXTURE_FLAGS_CLAMP_V = $02
Const SGD_TEXTURE_FLAGS_CLAMP_W = $04
Const SGD_TEXTURE_FLAGS_FILTER = $08
Const SGD_TEXTURE_FLAGS_MIPMAP = $10
Const SGD_TEXTURE_FLAGS_DEFAULT = $18
Const SGD_TEXTURE_FLAGS_IMAGE = $1F

; ============================================================================
; Blend Modes
; ============================================================================
Const SGD_BLEND_MODE_OPAQUE = 1
Const SGD_BLEND_MODE_ALPHA_MASK = 2
Const SGD_BLEND_MODE_ALPHA_BLEND = 3

; ============================================================================
; Depth Functions
; ============================================================================
Const SGD_DEPTH_FUNC_NEVER = 1
Const SGD_DEPTH_FUNC_LESS = 2
Const SGD_DEPTH_FUNC_EQUAL = 3
Const SGD_DEPTH_FUNC_LESS_EQUAL = 4
Const SGD_DEPTH_FUNC_GREATER = 5
Const SGD_DEPTH_FUNC_NOT_EQUAL = 6
Const SGD_DEPTH_FUNC_GREATER_EQUAL = 7
Const SGD_DEPTH_FUNC_ALWAYS = 8

; ============================================================================
; Cull Modes
; ============================================================================
Const SGD_CULL_MODE_NONE = 1
Const SGD_CULL_MODE_FRONT = 2
Const SGD_CULL_MODE_BACK = 3

; ============================================================================
; Mesh Flags
; ============================================================================
Const SGD_MESH_FLAGS_NONE = 0
Const SGD_MESH_FLAGS_TANGENTS_ENABLED = 1
Const SGD_MESH_FLAGS_BLENDED_SURFACES = 2

; ============================================================================
; Image View Modes
; ============================================================================
Const SGD_IMAGE_VIEW_MODE_FIXED = 1
Const SGD_IMAGE_VIEW_MODE_FREE = 2
Const SGD_IMAGE_VIEW_MODE_UPRIGHT = 3

; ============================================================================
; Camera Types
; ============================================================================
Const SGD_CAMERA_TYPE_PERSPECTIVE = 1
Const SGD_CAMERA_TYPE_ORTHOGRAPHIC = 2

; ============================================================================
; Light Types
; ============================================================================
Const SGD_LIGHT_TYPE_DIRECTIONAL = 1
Const SGD_LIGHT_TYPE_POINT = 2
Const SGD_LIGHT_TYPE_SPOT = 3

; ============================================================================
; Animation Modes
; ============================================================================
Const SGD_ANIMATION_MODE_ONE_SHOT = 1
Const SGD_ANIMATION_MODE_LOOP = 2
Const SGD_ANIMATION_MODE_PING_PONG = 3

; ============================================================================
; Collision Responses
; ============================================================================
Const SGD_COLLISION_RESPONSE_NONE = 0
Const SGD_COLLISION_RESPONSE_STOP = 1
Const SGD_COLLISION_RESPONSE_SLIDE = 2
Const SGD_COLLISION_RESPONSE_SLIDEXZ = 3

; ============================================================================
; Keyboard Keys
; ============================================================================
Const SGD_KEY_SPACE = 32
Const SGD_KEY_APOSTROPHE = 39
Const SGD_KEY_COMMA = 44
Const SGD_KEY_MINUS = 45
Const SGD_KEY_PERIOD = 46
Const SGD_KEY_SLASH = 47
Const SGD_KEY_0 = 48
Const SGD_KEY_1 = 49
Const SGD_KEY_2 = 50
Const SGD_KEY_3 = 51
Const SGD_KEY_4 = 52
Const SGD_KEY_5 = 53
Const SGD_KEY_6 = 54
Const SGD_KEY_7 = 55
Const SGD_KEY_8 = 56
Const SGD_KEY_9 = 57
Const SGD_KEY_SEMICOLON = 59
Const SGD_KEY_EQUAL = 61
Const SGD_KEY_A = 65
Const SGD_KEY_B = 66
Const SGD_KEY_C = 67
Const SGD_KEY_D = 68
Const SGD_KEY_E = 69
Const SGD_KEY_F = 70
Const SGD_KEY_G = 71
Const SGD_KEY_H = 72
Const SGD_KEY_I = 73
Const SGD_KEY_J = 74
Const SGD_KEY_K = 75
Const SGD_KEY_L = 76
Const SGD_KEY_M = 77
Const SGD_KEY_N = 78
Const SGD_KEY_O = 79
Const SGD_KEY_P = 80
Const SGD_KEY_Q = 81
Const SGD_KEY_R = 82
Const SGD_KEY_S = 83
Const SGD_KEY_T = 84
Const SGD_KEY_U = 85
Const SGD_KEY_V = 86
Const SGD_KEY_W = 87
Const SGD_KEY_X = 88
Const SGD_KEY_Y = 89
Const SGD_KEY_Z = 90
Const SGD_KEY_LEFT_BRACKET = 91
Const SGD_KEY_BACKSLASH = 92
Const SGD_KEY_RIGHT_BRACKET = 93
Const SGD_KEY_GRAVE_ACCENT = 96
Const SGD_KEY_WORLD_1 = 161
Const SGD_KEY_WORLD_2 = 162

; Function Keys
Const SGD_KEY_ESCAPE = 256
Const SGD_KEY_ENTER = 257
Const SGD_KEY_TAB = 258
Const SGD_KEY_BACKSPACE = 259
Const SGD_KEY_INSERT = 260
Const SGD_KEY_DELETE = 261
Const SGD_KEY_RIGHT = 262
Const SGD_KEY_LEFT = 263
Const SGD_KEY_DOWN = 264
Const SGD_KEY_UP = 265
Const SGD_KEY_PAGE_UP = 266
Const SGD_KEY_PAGE_DOWN = 267
Const SGD_KEY_HOME = 268
Const SGD_KEY_END = 269
Const SGD_KEY_CAPS_LOCK = 280
Const SGD_KEY_SCROLL_LOCK = 281
Const SGD_KEY_NUM_LOCK = 282
Const SGD_KEY_PRINT_SCREEN = 283
Const SGD_KEY_PAUSE = 284
Const SGD_KEY_F1 = 290
Const SGD_KEY_F2 = 291
Const SGD_KEY_F3 = 292
Const SGD_KEY_F4 = 293
Const SGD_KEY_F5 = 294
Const SGD_KEY_F6 = 295
Const SGD_KEY_F7 = 296
Const SGD_KEY_F8 = 297
Const SGD_KEY_F9 = 298
Const SGD_KEY_F10 = 299
Const SGD_KEY_F11 = 300
Const SGD_KEY_F12 = 301
Const SGD_KEY_F13 = 302
Const SGD_KEY_F14 = 303
Const SGD_KEY_F15 = 304
Const SGD_KEY_F16 = 305
Const SGD_KEY_F17 = 306
Const SGD_KEY_F18 = 307
Const SGD_KEY_F19 = 308
Const SGD_KEY_F20 = 309
Const SGD_KEY_F21 = 310
Const SGD_KEY_F22 = 311
Const SGD_KEY_F23 = 312
Const SGD_KEY_F24 = 313
Const SGD_KEY_F25 = 314

; Keypad Keys
Const SGD_KEY_KP_0 = 320
Const SGD_KEY_KP_1 = 321
Const SGD_KEY_KP_2 = 322
Const SGD_KEY_KP_3 = 323
Const SGD_KEY_KP_4 = 324
Const SGD_KEY_KP_5 = 325
Const SGD_KEY_KP_6 = 326
Const SGD_KEY_KP_7 = 327
Const SGD_KEY_KP_8 = 328
Const SGD_KEY_KP_9 = 329
Const SGD_KEY_KP_DECIMAL = 330
Const SGD_KEY_KP_DIVIDE = 331
Const SGD_KEY_KP_MULTIPLY = 332
Const SGD_KEY_KP_SUBTRACT = 333
Const SGD_KEY_KP_ADD = 334
Const SGD_KEY_KP_ENTER = 335
Const SGD_KEY_KP_EQUAL = 336

; Modifier Keys
Const SGD_KEY_LEFT_SHIFT = 340
Const SGD_KEY_LEFT_CONTROL = 341
Const SGD_KEY_LEFT_ALT = 342
Const SGD_KEY_LEFT_SUPER = 343
Const SGD_KEY_RIGHT_SHIFT = 344
Const SGD_KEY_RIGHT_CONTROL = 345
Const SGD_KEY_RIGHT_ALT = 346
Const SGD_KEY_RIGHT_SUPER = 347
Const SGD_KEY_MENU = 348
Const SGD_KEY_LAST = 348

; ============================================================================
; Key Modifiers
; ============================================================================
Const SGD_KEY_MODIFIERS_SHIFT = $0001
Const SGD_KEY_MODIFIERS_CONTROL = $0002
Const SGD_KEY_MODIFIERS_ALT = $0004
Const SGD_KEY_MODIFIERS_SUPER = $0008
Const SGD_KEY_MODIFIERS_CAPS_LOCK = $0010
Const SGD_KEY_MODIFIERS_NUM_LOCK = $0020

; ============================================================================
; Mouse Buttons
; ============================================================================
Const SGD_MOUSE_BUTTON_LEFT = 0
Const SGD_MOUSE_BUTTON_RIGHT = 1
Const SGD_MOUSE_BUTTON_MIDDLE = 2

; ============================================================================
; Gamepad Buttons
; ============================================================================
Const SGD_GAMEPAD_BUTTON_A = 0
Const SGD_GAMEPAD_BUTTON_B = 1
Const SGD_GAMEPAD_BUTTON_X = 2
Const SGD_GAMEPAD_BUTTON_Y = 3
Const SGD_GAMEPAD_BUTTON_LEFT_BUMPER = 4
Const SGD_GAMEPAD_BUTTON_RIGHT_BUMPER = 5
Const SGD_GAMEPAD_BUTTON_BACK = 6
Const SGD_GAMEPAD_BUTTON_START = 7
Const SGD_GAMEPAD_BUTTON_GUIDE = 8
Const SGD_GAMEPAD_BUTTON_LEFT_THUMB = 9
Const SGD_GAMEPAD_BUTTON_RIGHT_THUMB = 10
Const SGD_GAMEPAD_BUTTON_DPAD_UP = 11
Const SGD_GAMEPAD_BUTTON_DPAD_RIGHT = 12
Const SGD_GAMEPAD_BUTTON_DPAD_DOWN = 13
Const SGD_GAMEPAD_BUTTON_DPAD_LEFT = 14

; PlayStation Style Names
Const SGD_GAMEPAD_BUTTON_CROSS = 0
Const SGD_GAMEPAD_BUTTON_CIRCLE = 1
Const SGD_GAMEPAD_BUTTON_SQUARE = 2
Const SGD_GAMEPAD_BUTTON_TRIANGLE = 3

; ============================================================================
; Gamepad Axes
; ============================================================================
Const SGD_GAMEPAD_AXIS_LEFT_X = 0
Const SGD_GAMEPAD_AXIS_LEFT_Y = 1
Const SGD_GAMEPAD_AXIS_RIGHT_X = 2
Const SGD_GAMEPAD_AXIS_RIGHT_Y = 3
Const SGD_GAMEPAD_AXIS_LEFT_TRIGGER = 4
Const SGD_GAMEPAD_AXIS_RIGHT_TRIGGER = 5

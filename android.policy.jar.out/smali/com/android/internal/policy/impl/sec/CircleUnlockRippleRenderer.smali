.class public Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;
.super Ljava/lang/Object;
.source "CircleUnlockRippleRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer$SoundPoolThread;
    }
.end annotation


# static fields
.field private static final DEFAULT_WALLPAPER_IMAGE_PATH:Ljava/lang/String; = "/system/wallpaper/lockscreen_default_wallpaper.jpg"

.field private static final DEFAULT_WALLPAPER_IMAGE_PATH_MULTI_CSC:Ljava/lang/String; = "/system/csc_contents/lockscreen_default_wallpaper.jpg"

.field private static final DEFAULT_WALLPAPER_IMAGE_PATH_MULTI_CSC_PNG:Ljava/lang/String; = "/system/csc_contents/lockscreen_default_wallpaper.png"

.field private static final DEFAULT_WALLPAPER_IMAGE_PATH_PNG:Ljava/lang/String; = "/system/wallpaper/lockscreen_default_wallpaper.png"

.field private static final LANDSCAPE_WALLPAPER_IMAGE_PATH:Ljava/lang/String; = "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper_land.jpg"

.field public static final MISSED_CALL:I = 0x0

.field public static final MISSED_SMS:I = 0x1

.field public static final NORMAL_EVENT:I = -0x1

.field private static final PORTRAIT_WALLPAPER_IMAGE_PATH:Ljava/lang/String; = "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper_ripple.jpg"


# instance fields
.field BGResId:I

.field private final DBG:Z

.field private HDMI_VIEW_HEIGHT_FOR_P4_NOTE_10_1:I

.field private HDMI_WIDOW_HEIGHT_FOR_P4_NOTE_10_1:I

.field private MESH_SIZE_HEIGHT:I

.field private MESH_SIZE_WIDTH:I

.field MISSED_DRAG_DISATANCE:D

.field MISSED_DRAG_THRESHOLD:D

.field MISSED_RELEASE_THRESHOLD:D

.field private MISSED_UNLOCK_RELEASE_MARGIN:I

.field private NUM_DETAILS_HEIGHT:I

.field private NUM_DETAILS_WIDTH:I

.field RIPPLE_DRAG_THRESHOLD:D

.field final SOUND_ID_DOWN:I

.field final SOUND_ID_UP:I

.field private SURFACE_DETAILS_HEIGHT:I

.field private SURFACE_DETAILS_WIDTH:I

.field private final TAG:Ljava/lang/String;

.field UNLOCK_DRAG_THRESHOLD:D

.field UNLOCK_RELEASE_THRESHOLD:D

.field private VCOUNT:I

.field XRatioAdjustLandscape:F

.field XRatioAdjustPortrait:F

.field XRatioForLandscape:F

.field XRatioForPortrait:F

.field YRatioForLandscape:F

.field YRatioForPortrait:F

.field alphaRatio1:F

.field alphaRatio2:F

.field bitmapOriginal:Landroid/graphics/Bitmap;

.field bitmapWater:Landroid/graphics/Bitmap;

.field private diffPressTime:J

.field private distance:D

.field private downX:F

.field private downX2:F

.field private downY:F

.field private downY2:F

.field private drawCount:I

.field glX:F

.field glY:F

.field private gpuHeights:[F

.field private h:Ljava/nio/FloatBuffer;

.field private h_buf:I

.field private h_handle:I

.field private hasSystemNavBar:Z

.field private heights:[F

.field private i:Ljava/nio/ShortBuffer;

.field private i_buf:I

.field private indices:[S

.field intensityForLandscape:F

.field intensityForLandscapeTicker:F

.field intensityForPortrait:F

.field intensityForPortraitTicker:F

.field intensityForRipple:F

.field private isSystemSoundChecked:Z

.field private isUnlocked:Z

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mContext:Landroid/content/Context;

.field private mEnhancedWallpaper:Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;

.field mFragmentShader:Ljava/lang/String;

.field private mLongPressRunnable:Ljava/lang/Runnable;

.field mParent:Landroid/view/View;

.field private mRDownId:I

.field private mRUpId:I

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSoundPool:Landroid/media/SoundPool;

.field private mVelocityCheckCnt:I

.field mVertexShader:Ljava/lang/String;

.field private mWallpaperPath:Ljava/lang/String;

.field private m_handle:I

.field private mouseInputCount:I

.field private mouseX:F

.field private mouseY:F

.field private moveCount:I

.field private prevPressTime:J

.field private proj:[F

.field reflectionRatio:F

.field refractiveIndex:F

.field private rippleDistance:I

.field rippleDragThreshold:D

.field private shader:I

.field private soundNum:I

.field private soundTime:I

.field private sounds:[I

.field spanXForLandscape:I

.field spanXForPortrait:I

.field spanYForLandscape:I

.field spanYForPortrait:I

.field startLocation:I

.field private texture0:I

.field private texture1:I

.field textures0:[I

.field textures1:[I

.field tickerAjustYForLandscape:F

.field tickerAjustYForPortrait:F

.field private tickerCloseLandscapeY:F

.field private tickerClosePortraitY:F

.field private tickerMoveCriteria:I

.field private tickerOpenLandscapeY:F

.field private tickerOpenPortraitY:F

.field private tickerTotalCount:I

.field private tmp_buffer:[I

.field tmx:F

.field tmy:F

.field translateXForLandscape:F

.field translateXForPortrait:F

.field translateYForLandscape:F

.field translateYForPortrait:F

.field translateZForLandscape:F

.field translateZForPortrait:F

.field unitCellHeight:F

.field unitCellWidth:F

.field unlockDragThreshold:D

.field unlockReleaseThreshold:D

.field private v:Ljava/nio/FloatBuffer;

.field private v_buf:I

.field private v_handle:I

.field private velocity:[F

.field private vertices:[F

.field private view:[F

.field windowHeight:I

.field windowWidth:I

.field private world:[F

.field private wvp:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 10
    .parameter "context"
    .parameter "view"
    .parameter "callback"

    .prologue
    const/high16 v9, 0x3f80

    const/4 v8, 0x1

    const/16 v5, 0x10

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 366
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->DBG:Z

    .line 89
    const-string v4, "CircleUnlockRippleRenderer"

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->TAG:Ljava/lang/String;

    .line 91
    iput v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mVelocityCheckCnt:I

    .line 94
    const-string v4, "uniform mat4 uMVPMatrix;\nattribute vec4 aPosition;\nattribute vec4 aHeights;\nvarying vec2 vTexture0Coord;\nvarying vec2 vTexture1Coord;\nuniform float uMESH_SIZE_WIDTH;\n uniform float uMESH_SIZE_HEIGHT;\n uniform float uNUM_DETAILS_WIDTH;\n uniform float uNUM_DETAILS_HEIGHT;\n uniform float uRefractiveIndex;\n uniform float uRotate;\n void main() { \n  float maxX = uMESH_SIZE_WIDTH / 2.0; \n  float maxY = uMESH_SIZE_HEIGHT / 2.0; \n  float rimo = uRefractiveIndex - 1.0;\n   vec4 pos = aPosition;\n  vec4 heights = aHeights; \n  float len = heights.x; \n  vec3 v = vec3( pos.x, pos.y, len * 0.25 ); \n  vec2 n = ( vec2( len ) - heights.yz ) * 0.25; \n  float nz = sqrt(dot( n, n ) + 1.0 ); \n  n = n / nz; \n  vec3 d = vec3( v.x, v.y, v.z + 30.0 ); \n   len = sqrt( dot( d, d ) ); \n  d = d / len; \n  float t = dot( d, vec3( n.x, n.y, 1.0 ) ) * rimo; \n  d.x += n.x * t; \n  d.y += n.y * t; \n  float r0, u0, v0; \n  r0 = ( 30.9 - v.z ) / d.z; \n  u0 = ( d.x * r0 + v.x ) / maxX * 0.25 + 0.5; \n  v0 = ( d.y * r0 + v.y ) / maxY * -0.25 + 0.5; \n  float uxx = n.x * 0.5 + 0.5 + pos.y / uMESH_SIZE_WIDTH * 0.25; \n  float vxx = n.y * 0.5 + 0.5 + pos.x / uMESH_SIZE_HEIGHT * 0.25; \n  vTexture0Coord = vec2( uxx, vxx ); \n  vTexture1Coord = vec2( u0, v0 ); \n  gl_Position = uMVPMatrix * aPosition;\n}\n"

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mVertexShader:Ljava/lang/String;

    .line 143
    const-string v4, "precision mediump float;\nvarying vec2 vTexture0Coord;\nvarying vec2 vTexture1Coord;\nuniform sampler2D texture0;\nuniform sampler2D texture1;\nuniform highp float reflectionRatio;\nuniform highp float alphaRatio1;\nuniform highp float alphaRatio2;\nvoid main() {\n  highp float iReflectionRatio = 1.0 - reflectionRatio;\n  vec4 texCoord0 = texture2D(texture0, vec2(vTexture0Coord.s, vTexture0Coord.t));\n  vec4 texCoord1 = texture2D(texture1, vec2(vTexture1Coord.s, vTexture1Coord.t));\n  gl_FragColor = texCoord0 * reflectionRatio * (alphaRatio1) + texCoord1 * iReflectionRatio * (alphaRatio2);\n}\n"

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mFragmentShader:Ljava/lang/String;

    .line 161
    iput v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    .line 162
    iput v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    .line 164
    iput v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    .line 165
    iput v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    .line 167
    iput v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    .line 168
    iput v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    .line 170
    iput v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->VCOUNT:I

    .line 179
    new-array v4, v6, [F

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->vertices:[F

    .line 180
    new-array v4, v6, [F

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    .line 181
    new-array v4, v6, [S

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->indices:[S

    .line 205
    new-array v4, v5, [F

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->view:[F

    .line 206
    new-array v4, v5, [F

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->proj:[F

    .line 207
    new-array v4, v5, [F

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->world:[F

    .line 208
    new-array v4, v5, [F

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->wvp:[F

    .line 220
    const v4, 0x3f6e147b

    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->refractiveIndex:F

    .line 221
    const v4, 0x3e051eb8

    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->reflectionRatio:F

    .line 222
    iput v9, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->alphaRatio1:F

    .line 223
    iput v9, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->alphaRatio2:F

    .line 228
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->bitmapOriginal:Landroid/graphics/Bitmap;

    .line 229
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    .line 234
    iput v7, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->glY:F

    .line 235
    iput v7, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->glX:F

    .line 244
    const/high16 v4, 0x3f00

    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForLandscape:F

    .line 245
    iput v9, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForPortrait:F

    .line 249
    iput v7, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateXForLandscape:F

    .line 250
    const/high16 v4, -0x8000

    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateXForPortrait:F

    .line 253
    iput v7, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateYForLandscape:F

    .line 254
    const/high16 v4, -0x8000

    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateYForPortrait:F

    .line 257
    const/high16 v4, -0x3dd0

    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateZForPortrait:F

    .line 258
    const/high16 v4, -0x3e48

    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateZForLandscape:F

    .line 261
    iput v8, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanXForLandscape:I

    .line 262
    iput v5, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanYForLandscape:I

    .line 263
    iput v5, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanXForPortrait:I

    .line 264
    iput v8, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanYForPortrait:I

    .line 267
    const/high16 v4, 0x4234

    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioForLandscape:F

    .line 268
    const/high16 v4, 0x41c8

    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    .line 269
    const/high16 v4, 0x41c8

    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioForPortrait:F

    .line 270
    const/high16 v4, 0x4238

    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    .line 271
    iput v7, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioAdjustPortrait:F

    .line 272
    iput v7, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioAdjustLandscape:F

    .line 275
    const/high16 v4, 0x42c8

    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerAjustYForPortrait:F

    .line 276
    const/high16 v4, 0x42c8

    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerAjustYForLandscape:F

    .line 281
    iput v9, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForRipple:F

    .line 288
    iput v5, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerTotalCount:I

    .line 289
    const/high16 v4, 0x3f00

    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForLandscapeTicker:F

    .line 290
    iput v9, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForPortraitTicker:F

    .line 291
    const/high16 v4, 0x4416

    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerOpenPortraitY:F

    .line 292
    const/high16 v4, 0x44a0

    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerClosePortraitY:F

    .line 293
    const/high16 v4, 0x4416

    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerOpenLandscapeY:F

    .line 294
    const/high16 v4, 0x44a0

    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerCloseLandscapeY:F

    .line 295
    const/16 v4, 0x19

    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerMoveCriteria:I

    .line 298
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->distance:D

    .line 299
    iput v7, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->downX:F

    .line 300
    iput v7, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->downY:F

    .line 301
    iput v7, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->downX2:F

    .line 302
    iput v7, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->downY2:F

    .line 303
    iput v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->rippleDistance:I

    .line 304
    iput v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseInputCount:I

    .line 305
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->isUnlocked:Z

    .line 312
    const/4 v4, 0x5

    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->soundNum:I

    .line 313
    const/16 v4, 0xa

    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->soundTime:I

    .line 314
    iput v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SOUND_ID_DOWN:I

    .line 315
    iput v8, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SOUND_ID_UP:I

    .line 318
    iput v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->drawCount:I

    .line 319
    iput v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->moveCount:I

    .line 320
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->isSystemSoundChecked:Z

    .line 321
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->hasSystemNavBar:Z

    .line 323
    const-wide/high16 v4, 0x4072

    iput-wide v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->UNLOCK_RELEASE_THRESHOLD:D

    .line 324
    const-wide/high16 v4, 0x407b

    iput-wide v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->UNLOCK_DRAG_THRESHOLD:D

    .line 325
    const-wide v4, 0x4062c00000000000L

    iput-wide v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->RIPPLE_DRAG_THRESHOLD:D

    .line 327
    const-wide/high16 v4, 0x406b

    iput-wide v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MISSED_RELEASE_THRESHOLD:D

    .line 328
    const-wide/high16 v4, 0x406b

    iput-wide v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MISSED_DRAG_THRESHOLD:D

    .line 329
    iget-wide v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->UNLOCK_RELEASE_THRESHOLD:D

    iput-wide v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->unlockReleaseThreshold:D

    .line 330
    iget-wide v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->UNLOCK_DRAG_THRESHOLD:D

    iput-wide v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->unlockDragThreshold:D

    .line 331
    iget-wide v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->RIPPLE_DRAG_THRESHOLD:D

    iput-wide v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->rippleDragThreshold:D

    .line 332
    const-wide/high16 v4, 0x403e

    iput-wide v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MISSED_DRAG_DISATANCE:D

    .line 338
    const/16 v4, 0x28

    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MISSED_UNLOCK_RELEASE_MARGIN:I

    .line 340
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->startLocation:I

    .line 355
    const/16 v4, 0x2f0

    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->HDMI_WIDOW_HEIGHT_FOR_P4_NOTE_10_1:I

    .line 356
    const/16 v4, 0x2d0

    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->HDMI_VIEW_HEIGHT_FOR_P4_NOTE_10_1:I

    .line 369
    :try_start_0
    const-string v4, "window"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    .line 370
    .local v3, wm:Landroid/view/IWindowManager;
    invoke-interface {v3}, Landroid/view/IWindowManager;->hasSystemNavBar()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->hasSystemNavBar:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    .end local v3           #wm:Landroid/view/IWindowManager;
    :goto_0
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    .line 376
    iput-object p3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 378
    iput-object p2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    .line 379
    new-instance v4, Landroid/media/SoundPool;

    const/16 v5, 0xa

    invoke-direct {v4, v5, v8, v6}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    .line 380
    const/4 v4, 0x2

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->sounds:[I

    .line 382
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 383
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 384
    .local v2, mWindowManager:Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 385
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowWidth:I

    .line 386
    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowHeight:I

    .line 387
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->setModeleConfiguration()V

    .line 389
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->initWaters()V

    .line 390
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->checkSound()V

    .line 391
    iput v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->drawCount:I

    .line 393
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->enhancedLockScreen()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 394
    invoke-static {}, Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;->getInstance()Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mEnhancedWallpaper:Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;

    .line 396
    :cond_0
    return-void

    .line 371
    .end local v0           #displayMetrics:Landroid/util/DisplayMetrics;
    .end local v2           #mWindowManager:Landroid/view/WindowManager;
    :catch_0
    move-exception v1

    .line 372
    .local v1, ex:Landroid/os/RemoteException;
    const-string v4, "Navigation"

    const-string v5, "RemoteException Occured"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;FFF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 86
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->ripple(FFF)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->soundNum:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->isSystemSoundChecked:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;)Landroid/media/SoundPool;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->soundTime:I

    return v0
.end method

.method private checkSound()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1717
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1718
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v2, 0x0

    .line 1722
    .local v2, result:I
    :try_start_0
    const-string v3, "lockscreen_sounds_enabled"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1730
    :goto_0
    if-ne v2, v4, :cond_0

    .line 1731
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->isSystemSoundChecked:Z

    .line 1735
    :goto_1
    return-void

    .line 1724
    :catch_0
    move-exception v1

    .line 1726
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 1733
    .end local v1           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->isSystemSoundChecked:Z

    goto :goto_1
.end method

.method private clearRipple()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1679
    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    iget v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    mul-int v1, v2, v3

    .line 1681
    .local v1, max:I
    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    if-nez v2, :cond_1

    .line 1692
    :cond_0
    return-void

    .line 1684
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->velocity:[F

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->heights:[F

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->velocity:[F

    array-length v2, v2

    if-lt v2, v1, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->heights:[F

    array-length v2, v2

    if-lt v2, v1, :cond_0

    .line 1688
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1689
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->velocity:[F

    aput v4, v2, v0

    .line 1690
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->heights:[F

    aput v4, v2, v0

    .line 1688
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private createBuffers()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 1215
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tmp_buffer:[I

    .line 1216
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tmp_buffer:[I

    const/4 v1, 0x0

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 1217
    return-void
.end method

.method public static createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .parameter "vertexSource"
    .parameter "fragmentSource"

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 1313
    const v5, 0x8b31

    invoke-static {v5, p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->loadShader(ILjava/lang/String;)I

    move-result v3

    .line 1315
    .local v3, vertexShader:I
    if-nez v3, :cond_1

    move v2, v4

    .line 1341
    :cond_0
    :goto_0
    return v2

    .line 1319
    :cond_1
    const v5, 0x8b30

    invoke-static {v5, p1}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->loadShader(ILjava/lang/String;)I

    move-result v1

    .line 1321
    .local v1, pixelShader:I
    if-nez v1, :cond_2

    move v2, v4

    .line 1322
    goto :goto_0

    .line 1325
    :cond_2
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    .line 1327
    .local v2, program:I
    if-eqz v2, :cond_0

    .line 1329
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 1330
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 1331
    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 1332
    new-array v0, v6, [I

    .line 1333
    .local v0, linkStatus:[I
    const v5, 0x8b82

    invoke-static {v2, v5, v0, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 1335
    aget v4, v0, v4

    if-eq v4, v6, :cond_0

    .line 1336
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 1337
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private initWaters()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1382
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->VCOUNT:I

    mul-int/lit8 v0, v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->vertices:[F

    .line 1383
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x6

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->indices:[S

    .line 1384
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    mul-int/2addr v0, v1

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->heights:[F

    .line 1385
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    mul-int/2addr v0, v1

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->velocity:[F

    .line 1386
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->VCOUNT:I

    mul-int/lit8 v0, v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    .line 1388
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->vertices:[F

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->indices:[S

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->VCOUNT:I

    iget v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    iget v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    iget v5, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    iget v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    invoke-static/range {v0 .. v6}, Lcom/android/internal/policy/impl/sec/JniWaterRippleRender;->initWaters([F[SIIIII)V

    .line 1391
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->heights:[F

    invoke-static {v0, v7}, Ljava/util/Arrays;->fill([FF)V

    .line 1392
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->velocity:[F

    invoke-static {v0, v7}, Ljava/util/Arrays;->fill([FF)V

    .line 1393
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    invoke-static {v0, v7}, Ljava/util/Arrays;->fill([FF)V

    .line 1394
    return-void
.end method

.method private loadBuffers()V
    .locals 6

    .prologue
    const v5, 0x88e4

    const v4, 0x8893

    const v3, 0x8892

    const/4 v2, 0x0

    .line 1233
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->v:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->vertices:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 1234
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->v:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 1236
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->h:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 1237
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->h:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 1239
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->i:Ljava/nio/ShortBuffer;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->indices:[S

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    .line 1240
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->i:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 1242
    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 1243
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->v_buf:I

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 1244
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->vertices:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->v:Ljava/nio/FloatBuffer;

    invoke-static {v3, v0, v1, v5}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 1245
    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 1246
    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 1247
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->h_buf:I

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 1248
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->h:Ljava/nio/FloatBuffer;

    invoke-static {v3, v0, v1, v5}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 1249
    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 1250
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->i_buf:I

    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 1251
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->indices:[S

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->i:Ljava/nio/ShortBuffer;

    invoke-static {v4, v0, v1, v5}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 1252
    invoke-static {v4, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 1254
    return-void
.end method

.method private static loadShader(ILjava/lang/String;)I
    .locals 4
    .parameter "shaderType"
    .parameter "source"

    .prologue
    const/4 v3, 0x0

    .line 1346
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 1348
    .local v1, shader:I
    if-eqz v1, :cond_0

    .line 1350
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 1351
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 1352
    const/4 v2, 0x1

    new-array v0, v2, [I

    .line 1353
    .local v0, compiled:[I
    const v2, 0x8b81

    invoke-static {v1, v2, v0, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 1355
    aget v2, v0, v3

    if-nez v2, :cond_0

    .line 1356
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 1357
    const/4 v1, 0x0

    .line 1361
    .end local v0           #compiled:[I
    :cond_0
    return v1
.end method

.method private loadShaderProp()V
    .locals 2

    .prologue
    .line 1365
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mVertexShader:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mFragmentShader:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->shader:I

    .line 1366
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->shader:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->v_handle:I

    .line 1367
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->shader:I

    const-string v1, "aHeights"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->h_handle:I

    .line 1368
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->shader:I

    const-string v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->m_handle:I

    .line 1369
    return-void
.end method

.method private loadTexture()V
    .locals 7

    .prologue
    const v6, 0x47012f00

    const v5, 0x46180400

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v2, 0xde1

    .line 1258
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->bitmapOriginal:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 1260
    :cond_0
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "Ink Effect, bitmapOriginal == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->enhancedLockScreen()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1264
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->setEnhancedBackground()V

    .line 1272
    :cond_1
    :goto_0
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->textures0:[I

    .line 1273
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->textures0:[I

    invoke-static {v4, v0, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 1275
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->textures0:[I

    aget v0, v0, v3

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->texture0:I

    .line 1276
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->texture0:I

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1277
    const/16 v0, 0x2801

    invoke-static {v2, v0, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 1278
    const/16 v0, 0x2800

    invoke-static {v2, v0, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 1279
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    invoke-static {v2, v3, v0, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 1281
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 1283
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1284
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    .line 1288
    :cond_2
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->textures1:[I

    .line 1289
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->textures1:[I

    invoke-static {v4, v0, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 1290
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->textures1:[I

    aget v0, v0, v3

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->texture1:I

    .line 1292
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->texture1:I

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1293
    const/16 v0, 0x2801

    invoke-static {v2, v0, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 1294
    const/16 v0, 0x2800

    invoke-static {v2, v0, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 1296
    const/16 v0, 0x2802

    invoke-static {v2, v0, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 1297
    const/16 v0, 0x2803

    invoke-static {v2, v0, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 1299
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->bitmapOriginal:Landroid/graphics/Bitmap;

    invoke-static {v2, v3, v0, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 1301
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->enhancedLockScreen()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1303
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->bitmapOriginal:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 1305
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->bitmapOriginal:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1306
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->bitmapOriginal:Landroid/graphics/Bitmap;

    .line 1309
    :cond_3
    return-void

    .line 1267
    :cond_4
    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->setBackground(Z)V

    goto :goto_0
.end method

.method private makeBuffers()V
    .locals 2

    .prologue
    .line 1220
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->vertices:[F

    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->makeFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->v:Ljava/nio/FloatBuffer;

    .line 1221
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->makeFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->h:Ljava/nio/FloatBuffer;

    .line 1222
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->indices:[S

    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->makeShortBuffer([S)Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->i:Ljava/nio/ShortBuffer;

    .line 1224
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tmp_buffer:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->v_buf:I

    .line 1225
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tmp_buffer:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->i_buf:I

    .line 1226
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tmp_buffer:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->h_buf:I

    .line 1227
    return-void
.end method

.method public static final makeFloatBuffer([F)Ljava/nio/FloatBuffer;
    .locals 3
    .parameter "arr"

    .prologue
    .line 1516
    array-length v2, p0

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1517
    .local v0, bb:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1518
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 1519
    .local v1, fb:Ljava/nio/FloatBuffer;
    return-object v1
.end method

.method public static final makeShortBuffer([S)Ljava/nio/ShortBuffer;
    .locals 3
    .parameter "arr"

    .prologue
    .line 1524
    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1525
    .local v0, bb:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1526
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    .line 1527
    .local v1, fb:Ljava/nio/ShortBuffer;
    return-object v1
.end method

.method private move()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    .line 1402
    const/4 v3, 0x1

    .line 1403
    .local v3, xSpan:I
    const/4 v2, 0x1

    .line 1405
    .local v2, ySpan:I
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    if-le v0, v1, :cond_0

    .line 1406
    iget v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanXForLandscape:I

    .line 1407
    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanYForLandscape:I

    .line 1408
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    sub-int v4, v0, v2

    .line 1409
    .local v4, imax:I
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    sub-int v5, v0, v3

    .line 1417
    .local v5, jmax:I
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->velocity:[F

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->heights:[F

    iget v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    iget v7, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static/range {v0 .. v8}, Lcom/android/internal/policy/impl/sec/JniWaterRippleRender;->move([F[FIIIIIILjava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 1419
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mVelocityCheckCnt:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mVelocityCheckCnt:I

    if-lez v0, :cond_3

    .line 1420
    iput v12, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mVelocityCheckCnt:I

    .line 1422
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    check-cast v0, Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v12}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 1423
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "RENDERMODE_WHEN_DIRTY!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    move v9, v2

    .local v9, i:I
    :goto_1
    if-ge v9, v4, :cond_3

    .line 1426
    move v11, v3

    .local v11, j:I
    :goto_2
    if-ge v11, v5, :cond_1

    .line 1427
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v0, v11

    add-int v10, v0, v9

    .line 1428
    .local v10, idx:I
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->heights:[F

    aput v13, v0, v10

    .line 1429
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->velocity:[F

    aput v13, v0, v10

    .line 1426
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1411
    .end local v4           #imax:I
    .end local v5           #jmax:I
    .end local v9           #i:I
    .end local v10           #idx:I
    .end local v11           #j:I
    :cond_0
    iget v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanXForPortrait:I

    .line 1412
    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanYForPortrait:I

    .line 1413
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    sub-int v4, v0, v2

    .line 1414
    .restart local v4       #imax:I
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    sub-int v5, v0, v3

    .restart local v5       #jmax:I
    goto :goto_0

    .line 1425
    .restart local v9       #i:I
    .restart local v11       #j:I
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1434
    .end local v9           #i:I
    .end local v11           #j:I
    :cond_2
    iput v12, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mVelocityCheckCnt:I

    .line 1437
    :cond_3
    const/4 v9, 0x0

    .restart local v9       #i:I
    :goto_3
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    if-ge v9, v0, :cond_5

    .line 1438
    const/4 v11, 0x0

    .restart local v11       #j:I
    :goto_4
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    if-ge v11, v0, :cond_4

    .line 1439
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    mul-int/2addr v0, v11

    add-int/2addr v0, v9

    mul-int/lit8 v10, v0, 0x3

    .line 1440
    .restart local v10       #idx:I
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    add-int/lit8 v1, v10, 0x0

    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->heights:[F

    add-int/lit8 v7, v11, 0x2

    iget v8, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v7, v8

    add-int/2addr v7, v9

    add-int/lit8 v7, v7, 0x2

    aget v6, v6, v7

    aput v6, v0, v1

    .line 1441
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    add-int/lit8 v1, v10, 0x1

    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->heights:[F

    add-int/lit8 v7, v11, 0x2

    iget v8, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v7, v8

    add-int/2addr v7, v9

    add-int/lit8 v7, v7, 0x1

    aget v6, v6, v7

    aput v6, v0, v1

    .line 1442
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    add-int/lit8 v1, v10, 0x2

    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->heights:[F

    add-int/lit8 v7, v11, 0x1

    iget v8, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v7, v8

    add-int/2addr v7, v9

    add-int/lit8 v7, v7, 0x2

    aget v6, v6, v7

    aput v6, v0, v1

    .line 1438
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 1437
    .end local v10           #idx:I
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 1445
    .end local v11           #j:I
    :cond_5
    return-void
.end method

.method private perspectiveM([FFFFF)V
    .locals 9
    .parameter "m"
    .parameter "angle"
    .parameter "aspect"
    .parameter "near"
    .parameter "far"

    .prologue
    const/4 v8, 0x0

    .line 1494
    const-wide/high16 v2, 0x3fe0

    const-wide v4, 0x400921fb54442d18L

    float-to-double v6, p2

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 1495
    .local v0, f:F
    sub-float v1, p4, p5

    .line 1496
    .local v1, range:F
    const/4 v2, 0x0

    div-float v3, v0, p3

    aput v3, p1, v2

    .line 1497
    const/4 v2, 0x1

    aput v8, p1, v2

    .line 1498
    const/4 v2, 0x2

    aput v8, p1, v2

    .line 1499
    const/4 v2, 0x3

    aput v8, p1, v2

    .line 1500
    const/4 v2, 0x4

    aput v8, p1, v2

    .line 1501
    const/4 v2, 0x5

    aput v0, p1, v2

    .line 1502
    const/4 v2, 0x6

    aput v8, p1, v2

    .line 1503
    const/4 v2, 0x7

    aput v8, p1, v2

    .line 1504
    const/16 v2, 0x8

    aput v8, p1, v2

    .line 1505
    const/16 v2, 0x9

    aput v8, p1, v2

    .line 1506
    const/16 v2, 0xa

    div-float v3, p5, v1

    aput v3, p1, v2

    .line 1507
    const/16 v2, 0xb

    const/high16 v3, -0x4080

    aput v3, p1, v2

    .line 1508
    const/16 v2, 0xc

    aput v8, p1, v2

    .line 1509
    const/16 v2, 0xd

    aput v8, p1, v2

    .line 1510
    const/16 v2, 0xe

    mul-float v3, p4, p5

    div-float/2addr v3, v1

    aput v3, p1, v2

    .line 1511
    const/16 v2, 0xf

    aput v8, p1, v2

    .line 1512
    return-void
.end method

.method private playDragSound(I)V
    .locals 9
    .parameter "soundId"

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f80

    .line 1135
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->isSystemSoundChecked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 1136
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->sounds:[I

    aget v1, v1, p1

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v8

    .line 1137
    .local v8, streanID:I
    add-int/lit8 v8, v8, -0x1

    .line 1138
    new-instance v7, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer$SoundPoolThread;

    invoke-direct {v7, p0, v8}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer$SoundPoolThread;-><init>(Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;I)V

    .line 1139
    .local v7, soundpoolThread:Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer$SoundPoolThread;
    invoke-virtual {v7}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer$SoundPoolThread;->run()V

    .line 1141
    .end local v7           #soundpoolThread:Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer$SoundPoolThread;
    .end local v8           #streanID:I
    :cond_0
    return-void
.end method

.method private playSound(I)V
    .locals 7
    .parameter "soundId"

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f80

    .line 1126
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->isSystemSoundChecked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 1127
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->sounds:[I

    aget v1, v1, p1

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 1129
    :cond_0
    return-void
.end method

.method private ripple(FFF)V
    .locals 8
    .parameter "mx"
    .parameter "my"
    .parameter "intensity"

    .prologue
    .line 1457
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    check-cast v0, Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 1458
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->velocity:[F

    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    iget v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    iget v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    move v5, p1

    move v6, p2

    move v7, p3

    invoke-static/range {v0 .. v7}, Lcom/android/internal/policy/impl/sec/JniWaterRippleRender;->ripple([FIIIIFFF)V

    .line 1459
    return-void
.end method

.method private setBackground(Z)V
    .locals 12
    .parameter "isLoadWaterBitmap"

    .prologue
    .line 1763
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "lockscreen_wallpaper_path_ripple"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mWallpaperPath:Ljava/lang/String;

    .line 1764
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mWallpaperPath:Ljava/lang/String;

    if-nez v9, :cond_0

    .line 1765
    const-string v9, "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper_ripple.jpg"

    iput-object v9, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mWallpaperPath:Ljava/lang/String;

    .line 1768
    :cond_0
    invoke-static {}, Lcom/android/internal/policy/impl/sec/MultiSimUtils;->isMultiSIMDevice()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1769
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/internal/policy/impl/sec/MultiSimUtils;->getCurrenRippletWallpaper(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mWallpaperPath:Ljava/lang/String;

    .line 1772
    :cond_1
    const/4 v5, 0x0

    .line 1773
    .local v5, inputStream:Ljava/io/InputStream;
    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mWallpaperPath:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1775
    .local v8, wallpaperFile:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1776
    new-instance v5, Ljava/io/FileInputStream;

    .end local v5           #inputStream:Ljava/io/InputStream;
    invoke-direct {v5, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1808
    .restart local v5       #inputStream:Ljava/io/InputStream;
    :goto_0
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->enhancedLockScreen()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 1809
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v7, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    .line 1810
    .local v7, tempBitmap:Landroid/graphics/drawable/BitmapDrawable;
    if-nez v7, :cond_2

    .line 1812
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1080420

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    .line 1813
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    .end local v7           #tempBitmap:Landroid/graphics/drawable/BitmapDrawable;
    invoke-direct {v7, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    .line 1815
    .restart local v7       #tempBitmap:Landroid/graphics/drawable/BitmapDrawable;
    :cond_2
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mEnhancedWallpaper:Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;

    invoke-virtual {v9, v7}, Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;->setRippleLockscreenBackground(Landroid/graphics/drawable/BitmapDrawable;)V

    .line 1816
    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->setTexture(Landroid/graphics/Bitmap;)V

    .line 1839
    .end local v7           #tempBitmap:Landroid/graphics/drawable/BitmapDrawable;
    :goto_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 1840
    if-eqz p1, :cond_3

    .line 1841
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x108064b

    invoke-static {v9, v10}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->setWaterTexture(Landroid/graphics/Bitmap;)V

    .line 1849
    .end local v5           #inputStream:Ljava/io/InputStream;
    .end local v8           #wallpaperFile:Ljava/io/File;
    :cond_3
    :goto_2
    return-void

    .line 1780
    .restart local v5       #inputStream:Ljava/io/InputStream;
    .restart local v8       #wallpaperFile:Ljava/io/File;
    :cond_4
    new-instance v0, Ljava/io/File;

    const-string v9, "/system/wallpaper/lockscreen_default_wallpaper.jpg"

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1781
    .local v0, defaultWallpaperFile:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v9, "/system/csc_contents/lockscreen_default_wallpaper.jpg"

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1782
    .local v1, defaultWallpaperFileMultiCSC:Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v9, "/system/wallpaper/lockscreen_default_wallpaper.png"

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1783
    .local v3, defaultWallpaperFilePng:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v9, "/system/csc_contents/lockscreen_default_wallpaper.png"

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1785
    .local v2, defaultWallpaperFileMultiCSCPng:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1787
    new-instance v5, Ljava/io/FileInputStream;

    .end local v5           #inputStream:Ljava/io/InputStream;
    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .restart local v5       #inputStream:Ljava/io/InputStream;
    goto :goto_0

    .line 1789
    :cond_5
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1791
    new-instance v5, Ljava/io/FileInputStream;

    .end local v5           #inputStream:Ljava/io/InputStream;
    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .restart local v5       #inputStream:Ljava/io/InputStream;
    goto :goto_0

    .line 1793
    :cond_6
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1795
    new-instance v5, Ljava/io/FileInputStream;

    .end local v5           #inputStream:Ljava/io/InputStream;
    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .restart local v5       #inputStream:Ljava/io/InputStream;
    goto :goto_0

    .line 1797
    :cond_7
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1799
    new-instance v5, Ljava/io/FileInputStream;

    .end local v5           #inputStream:Ljava/io/InputStream;
    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .restart local v5       #inputStream:Ljava/io/InputStream;
    goto/16 :goto_0

    .line 1803
    :cond_8
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1080420

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    goto/16 :goto_0

    .line 1819
    .end local v0           #defaultWallpaperFile:Ljava/io/File;
    .end local v1           #defaultWallpaperFileMultiCSC:Ljava/io/File;
    .end local v2           #defaultWallpaperFileMultiCSCPng:Ljava/io/File;
    .end local v3           #defaultWallpaperFilePng:Ljava/io/File;
    :cond_9
    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v9, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1821
    .local v6, pBitmap:Landroid/graphics/Bitmap;
    if-eqz v6, :cond_a

    if-eqz v6, :cond_b

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    if-nez v9, :cond_b

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    if-nez v9, :cond_b

    .line 1823
    :cond_a
    if-nez v6, :cond_c

    .line 1825
    const-string v9, "CircleUnlockRippleRenderer"

    const-string v10, "pBitmap is null"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1832
    :goto_3
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1080420

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    .line 1833
    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v9, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1836
    :cond_b
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->setTexture(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 1844
    .end local v5           #inputStream:Ljava/io/InputStream;
    .end local v6           #pBitmap:Landroid/graphics/Bitmap;
    .end local v8           #wallpaperFile:Ljava/io/File;
    :catch_0
    move-exception v4

    .line 1846
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 1829
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v5       #inputStream:Ljava/io/InputStream;
    .restart local v6       #pBitmap:Landroid/graphics/Bitmap;
    .restart local v8       #wallpaperFile:Ljava/io/File;
    :cond_c
    :try_start_1
    const-string v9, "CircleUnlockRippleRenderer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "pBitmap.width = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", pBitmap.height = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method private setEnhancedBackground()V
    .locals 2

    .prologue
    .line 1748
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mEnhancedWallpaper:Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;->getRippleLockscreenBackground()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1749
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mEnhancedWallpaper:Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;->getRippleLockscreenBackground()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->setTexture(Landroid/graphics/Bitmap;)V

    .line 1750
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108064b

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->setWaterTexture(Landroid/graphics/Bitmap;)V

    .line 1751
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "Re-used Wallpaper bitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1756
    :goto_0
    return-void

    .line 1753
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->setBackground(Z)V

    .line 1754
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "Created Wallpaper bitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setModeleConfiguration()V
    .locals 7

    .prologue
    const/16 v6, 0x15

    const/16 v5, 0x68

    const/16 v4, 0x32

    const/high16 v3, 0x42c8

    const/4 v2, 0x0

    .line 401
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v1, 0x2d0

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v1, 0x500

    if-eq v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v1, 0x500

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v1, 0x2d0

    if-ne v0, v1, :cond_4

    .line 403
    :cond_1
    iput v5, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    .line 404
    iput v5, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    .line 405
    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    .line 406
    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    .line 407
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    .line 408
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    .line 409
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->VCOUNT:I

    .line 412
    const v0, 0x3f333333

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForLandscape:F

    .line 413
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForPortrait:F

    .line 417
    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateXForPortrait:F

    .line 418
    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateXForLandscape:F

    .line 421
    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateYForPortrait:F

    .line 422
    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateYForLandscape:F

    .line 425
    const v0, -0x3dd3cccd

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateZForPortrait:F

    .line 426
    const v0, -0x3e41999a

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateZForLandscape:F

    .line 429
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanXForLandscape:I

    .line 430
    iput v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanYForLandscape:I

    .line 431
    iput v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanXForPortrait:I

    .line 432
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanYForPortrait:I

    .line 435
    const/high16 v0, 0x4234

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioForLandscape:F

    .line 436
    const/high16 v0, 0x41c8

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    .line 437
    const/high16 v0, 0x41f0

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioForPortrait:F

    .line 438
    const/high16 v0, 0x4238

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    .line 439
    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioAdjustPortrait:F

    .line 440
    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioAdjustLandscape:F

    .line 443
    iput v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerAjustYForPortrait:F

    .line 444
    iput v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerAjustYForLandscape:F

    .line 445
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForLandscapeTicker:F

    .line 446
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForPortraitTicker:F

    .line 447
    const/high16 v0, 0x4416

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerOpenPortraitY:F

    .line 448
    const/high16 v0, 0x44a0

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerClosePortraitY:F

    .line 449
    const/high16 v0, 0x43a9

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerOpenLandscapeY:F

    .line 450
    const/high16 v0, 0x4434

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerCloseLandscapeY:F

    .line 451
    const/16 v0, 0x19

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerMoveCriteria:I

    .line 691
    :goto_0
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isTMODevice()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 693
    const-wide v0, 0x4063e00000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->UNLOCK_RELEASE_THRESHOLD:D

    .line 694
    const-wide v0, 0x4063e00000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->UNLOCK_DRAG_THRESHOLD:D

    .line 695
    const-wide v0, 0x4062c00000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->RIPPLE_DRAG_THRESHOLD:D

    .line 699
    :cond_2
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isCanadaFeature()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 701
    const-wide v0, 0x4063e00000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->UNLOCK_RELEASE_THRESHOLD:D

    .line 702
    const-wide v0, 0x4063e00000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->UNLOCK_DRAG_THRESHOLD:D

    .line 703
    const-wide v0, 0x4062c00000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->RIPPLE_DRAG_THRESHOLD:D

    .line 707
    :cond_3
    return-void

    .line 454
    :cond_4
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v1, 0x21c

    if-ne v0, v1, :cond_5

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v1, 0x3c0

    if-eq v0, v1, :cond_6

    :cond_5
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v1, 0x3c0

    if-ne v0, v1, :cond_7

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v1, 0x21c

    if-ne v0, v1, :cond_7

    .line 457
    :cond_6
    iput v5, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    .line 458
    iput v5, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    .line 460
    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    .line 461
    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    .line 462
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    .line 463
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    .line 464
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->VCOUNT:I

    .line 467
    const v0, 0x3f19999a

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForLandscape:F

    .line 468
    const v0, 0x3f666666

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForPortrait:F

    .line 472
    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateXForPortrait:F

    .line 473
    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateXForLandscape:F

    .line 476
    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateYForPortrait:F

    .line 477
    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateYForLandscape:F

    .line 480
    const v0, -0x3dd3cccd

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateZForPortrait:F

    .line 481
    const v0, -0x3e41999a

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateZForLandscape:F

    .line 484
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanXForLandscape:I

    .line 485
    iput v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanYForLandscape:I

    .line 486
    iput v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanXForPortrait:I

    .line 487
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanYForPortrait:I

    .line 490
    const/high16 v0, 0x4234

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioForLandscape:F

    .line 491
    const/high16 v0, 0x41c8

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    .line 492
    const/high16 v0, 0x41f0

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioForPortrait:F

    .line 493
    const/high16 v0, 0x4238

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    .line 494
    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioAdjustPortrait:F

    .line 495
    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioAdjustLandscape:F

    .line 498
    iput v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerAjustYForPortrait:F

    .line 499
    iput v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerAjustYForLandscape:F

    .line 500
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForLandscapeTicker:F

    .line 501
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForPortraitTicker:F

    .line 502
    const/high16 v0, 0x43e1

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerOpenPortraitY:F

    .line 503
    const/high16 v0, 0x4470

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerClosePortraitY:F

    .line 504
    const/high16 v0, 0x4383

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerOpenLandscapeY:F

    .line 505
    const/high16 v0, 0x440c

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerCloseLandscapeY:F

    .line 506
    const/16 v0, 0x19

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerMoveCriteria:I

    .line 507
    const-wide/high16 v0, 0x406b

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->UNLOCK_RELEASE_THRESHOLD:D

    .line 508
    const-wide v0, 0x4077a00000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->UNLOCK_DRAG_THRESHOLD:D

    .line 509
    const-wide v0, 0x4061800000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->RIPPLE_DRAG_THRESHOLD:D

    .line 510
    const-wide v0, 0x4064400000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MISSED_RELEASE_THRESHOLD:D

    .line 511
    const-wide v0, 0x4064400000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MISSED_DRAG_THRESHOLD:D

    goto/16 :goto_0

    .line 515
    :cond_7
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v1, 0x500

    if-ne v0, v1, :cond_8

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v1, 0x320

    if-eq v0, v1, :cond_9

    :cond_8
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v1, 0x320

    if-ne v0, v1, :cond_b

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v1, 0x500

    if-ne v0, v1, :cond_b

    .line 518
    :cond_9
    iput v5, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    .line 519
    iput v5, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    .line 520
    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    .line 521
    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    .line 522
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    .line 523
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    .line 524
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->VCOUNT:I

    .line 527
    const v0, 0x3f333333

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForLandscape:F

    .line 528
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForPortrait:F

    .line 532
    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateXForPortrait:F

    .line 533
    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateXForLandscape:F

    .line 536
    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateYForPortrait:F

    .line 537
    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateYForLandscape:F

    .line 542
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->hasSystemNavBar:Z

    if-eqz v0, :cond_a

    const v0, -0x3ddacccd

    :goto_1
    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateZForPortrait:F

    .line 543
    const v0, -0x3e388937

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateZForLandscape:F

    .line 546
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanXForLandscape:I

    .line 547
    iput v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanYForLandscape:I

    .line 548
    const/16 v0, 0x13

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanXForPortrait:I

    .line 549
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanYForPortrait:I

    .line 552
    const/high16 v0, 0x4240

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioForLandscape:F

    .line 553
    const/high16 v0, 0x41d8

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    .line 554
    const/high16 v0, 0x41f0

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioForPortrait:F

    .line 555
    const/high16 v0, 0x4238

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    .line 556
    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioAdjustPortrait:F

    .line 557
    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioAdjustLandscape:F

    .line 560
    iput v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerAjustYForPortrait:F

    .line 561
    iput v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerAjustYForLandscape:F

    .line 562
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForLandscapeTicker:F

    .line 563
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForPortraitTicker:F

    .line 564
    const/high16 v0, 0x4416

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerOpenPortraitY:F

    .line 565
    const v0, 0x4499c000

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerClosePortraitY:F

    .line 566
    const v0, 0x43bb8000

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerOpenLandscapeY:F

    .line 567
    const v0, 0x443b8000

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerCloseLandscapeY:F

    .line 568
    const/16 v0, 0x19

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerMoveCriteria:I

    goto/16 :goto_0

    .line 542
    :cond_a
    const v0, -0x3dd3cccd

    goto :goto_1

    .line 573
    :cond_b
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v1, 0x1e0

    if-ne v0, v1, :cond_c

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v1, 0x320

    if-eq v0, v1, :cond_d

    :cond_c
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v1, 0x320

    if-ne v0, v1, :cond_e

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v1, 0x1e0

    if-ne v0, v1, :cond_e

    .line 576
    :cond_d
    iput v5, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    .line 577
    iput v5, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    .line 578
    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    .line 579
    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    .line 580
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    .line 581
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    .line 582
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->VCOUNT:I

    .line 585
    const v0, 0x3f19999a

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForLandscape:F

    .line 586
    const v0, 0x3f59999a

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForPortrait:F

    .line 590
    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateXForPortrait:F

    .line 591
    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateXForLandscape:F

    .line 594
    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateYForPortrait:F

    .line 595
    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateYForLandscape:F

    .line 598
    const v0, -0x3dd3cccd

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateZForPortrait:F

    .line 599
    const v0, -0x3e41999a

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateZForLandscape:F

    .line 602
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanXForLandscape:I

    .line 603
    iput v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanYForLandscape:I

    .line 604
    iput v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanXForPortrait:I

    .line 605
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanYForPortrait:I

    .line 608
    const/high16 v0, 0x4234

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioForLandscape:F

    .line 609
    const/high16 v0, 0x41c8

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    .line 610
    const/high16 v0, 0x41e0

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioForPortrait:F

    .line 611
    const/high16 v0, 0x4234

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    .line 614
    iput v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerAjustYForPortrait:F

    .line 615
    iput v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerAjustYForLandscape:F

    .line 616
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForLandscapeTicker:F

    .line 617
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForPortraitTicker:F

    .line 618
    const/high16 v0, 0x43e1

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerOpenPortraitY:F

    .line 619
    const/high16 v0, 0x4470

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerClosePortraitY:F

    .line 620
    const/high16 v0, 0x4383

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerOpenLandscapeY:F

    .line 621
    const/high16 v0, 0x440c

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerCloseLandscapeY:F

    .line 622
    const/16 v0, 0x19

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerMoveCriteria:I

    .line 624
    const-wide/high16 v0, 0x4068

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->UNLOCK_RELEASE_THRESHOLD:D

    .line 625
    const-wide/high16 v0, 0x4075

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->UNLOCK_DRAG_THRESHOLD:D

    .line 626
    const-wide v0, 0x4060400000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->RIPPLE_DRAG_THRESHOLD:D

    .line 627
    const-wide/high16 v0, 0x4062

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MISSED_RELEASE_THRESHOLD:D

    .line 628
    const-wide/high16 v0, 0x4062

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MISSED_DRAG_THRESHOLD:D

    goto/16 :goto_0

    .line 633
    :cond_e
    iput v5, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    .line 634
    iput v5, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    .line 635
    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    .line 636
    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    .line 637
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    .line 638
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    .line 639
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->VCOUNT:I

    .line 642
    const v0, 0x3f333333

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForLandscape:F

    .line 643
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForPortrait:F

    .line 647
    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateXForPortrait:F

    .line 648
    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateXForLandscape:F

    .line 651
    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateYForPortrait:F

    .line 652
    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateYForLandscape:F

    .line 655
    const v0, -0x3dd3cccd

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateZForPortrait:F

    .line 656
    const v0, -0x3e41999a

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateZForLandscape:F

    .line 659
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanXForLandscape:I

    .line 660
    iput v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanYForLandscape:I

    .line 661
    iput v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanXForPortrait:I

    .line 662
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanYForPortrait:I

    .line 665
    const/high16 v0, 0x4234

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioForLandscape:F

    .line 666
    const/high16 v0, 0x41c8

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    .line 667
    const/high16 v0, 0x41f0

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioForPortrait:F

    .line 668
    const/high16 v0, 0x4238

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    .line 669
    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioAdjustPortrait:F

    .line 670
    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioAdjustLandscape:F

    .line 673
    iput v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerAjustYForPortrait:F

    .line 674
    iput v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerAjustYForLandscape:F

    .line 675
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForLandscapeTicker:F

    .line 676
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForPortraitTicker:F

    .line 677
    const/high16 v0, 0x43e1

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerOpenPortraitY:F

    .line 678
    const/high16 v0, 0x4470

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerClosePortraitY:F

    .line 679
    const/high16 v0, 0x4383

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerOpenLandscapeY:F

    .line 680
    const/high16 v0, 0x440c

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerCloseLandscapeY:F

    .line 681
    const/16 v0, 0x19

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerMoveCriteria:I

    .line 683
    const-wide/high16 v0, 0x406b

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->UNLOCK_RELEASE_THRESHOLD:D

    .line 684
    const-wide v0, 0x4077a00000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->UNLOCK_DRAG_THRESHOLD:D

    .line 685
    const-wide v0, 0x4061800000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->RIPPLE_DRAG_THRESHOLD:D

    .line 686
    const-wide v0, 0x4064400000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MISSED_RELEASE_THRESHOLD:D

    .line 687
    const-wide v0, 0x4064400000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MISSED_DRAG_THRESHOLD:D

    goto/16 :goto_0
.end method

.method private tickAnimation(FF)V
    .locals 4
    .parameter "startY"
    .parameter "intensity"

    .prologue
    .line 1655
    const/4 v1, 0x0

    .line 1656
    .local v1, tempX:F
    move v2, p1

    .line 1658
    .local v2, tempY:F
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerTotalCount:I

    if-ge v0, v3, :cond_0

    .line 1660
    int-to-float v1, v0

    .line 1661
    invoke-direct {p0, v2, v1, p2}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->ripple(FFF)V

    .line 1662
    neg-float v3, v1

    invoke-direct {p0, v2, v3, p2}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->ripple(FFF)V

    .line 1658
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1666
    :cond_0
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->playDragSound(I)V

    .line 1668
    return-void
.end method


# virtual methods
.method public alphaAnimation()V
    .locals 1

    .prologue
    .line 1531
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->reflectionRatio:F

    .line 1532
    return-void
.end method

.method public cleanUp()V
    .locals 1

    .prologue
    .line 1739
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 1740
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 1741
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    .line 1744
    :cond_0
    return-void
.end method

.method public getReflection()F
    .locals 1

    .prologue
    .line 1483
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->reflectionRatio:F

    return v0
.end method

.method public getRefraction()F
    .locals 1

    .prologue
    .line 1478
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->refractiveIndex:F

    return v0
.end method

.method public getSoundNum()I
    .locals 1

    .prologue
    .line 1146
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->soundNum:I

    return v0
.end method

.method public getSoundTime()I
    .locals 1

    .prologue
    .line 1152
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->soundTime:I

    return v0
.end method

.method public mouseMove(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 17
    .parameter "view"
    .parameter "event"

    .prologue
    .line 899
    const-string v1, "CircleUnlockRippleRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleTouchEvent event : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", view = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseX:F

    .line 902
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseY:F

    .line 904
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 906
    const/4 v1, 0x2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseInputCount:I

    .line 907
    const/4 v1, 0x0

    .line 1066
    :goto_0
    return v1

    .line 911
    :cond_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseInputCount:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 913
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseInputCount:I

    .line 914
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseX:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->downX2:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->downX:F

    .line 915
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseY:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->downY2:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->downY:F

    .line 920
    :cond_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    if-le v1, v2, :cond_5

    .line 922
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseX:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    int-to-float v2, v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioAdjustLandscape:F

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->glX:F

    .line 923
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->glX:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioForLandscape:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->glX:F

    .line 924
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseY:F

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v2, v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->glY:F

    .line 925
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->glY:F

    neg-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->glY:F

    .line 936
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_7

    .line 938
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->isUnlocked:Z

    if-eqz v1, :cond_3

    .line 940
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    if-nez v1, :cond_2

    .line 943
    const-string v1, "CircleUnlockRippleRenderer"

    const-string v2, "handleTouchEvent isUnlocked is true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    new-instance v1, Landroid/media/SoundPool;

    const/16 v2, 0xa

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/media/SoundPool;-><init>(III)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    .line 946
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->sounds:[I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mRDownId:I

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    aput v3, v1, v2

    .line 947
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->sounds:[I

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mRUpId:I

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    aput v3, v1, v2

    .line 951
    :cond_2
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->isUnlocked:Z

    .line 955
    :cond_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->startLocation:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_6

    .line 957
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MISSED_RELEASE_THRESHOLD:D

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->unlockReleaseThreshold:D

    .line 958
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MISSED_DRAG_THRESHOLD:D

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->unlockDragThreshold:D

    .line 967
    :goto_2
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseInputCount:I

    .line 968
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseX:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->downX2:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->downX:F

    .line 969
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseY:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->downY2:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->downY:F

    .line 970
    const-wide/16 v1, 0x0

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->distance:D

    .line 971
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->rippleDistance:I

    .line 972
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->prevPressTime:J

    .line 973
    const-wide/16 v1, 0x0

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->diffPressTime:J

    .line 974
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->glY:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->glX:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForRipple:F

    const/high16 v4, 0x4080

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->ripple(FFF)V

    .line 975
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->playSound(I)V

    .line 1066
    :cond_4
    :goto_3
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 929
    :cond_5
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseX:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    int-to-float v2, v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioAdjustPortrait:F

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->glX:F

    .line 930
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->glX:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioForPortrait:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->glX:F

    .line 931
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseY:F

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v2, v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->glY:F

    .line 932
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->glY:F

    neg-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->glY:F

    goto/16 :goto_1

    .line 962
    :cond_6
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->UNLOCK_RELEASE_THRESHOLD:D

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->unlockReleaseThreshold:D

    .line 963
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->UNLOCK_DRAG_THRESHOLD:D

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->unlockDragThreshold:D

    goto/16 :goto_2

    .line 977
    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_a

    .line 979
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseX:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->downX:F

    sub-float v13, v1, v2

    .line 980
    .local v13, dx:F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseY:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->downY:F

    sub-float v15, v1, v2

    .line 981
    .local v15, dy:F
    float-to-double v1, v13

    const-wide/high16 v3, 0x4000

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    float-to-double v3, v15

    const-wide/high16 v5, 0x4000

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double v11, v1, v3

    .line 982
    .local v11, distance_square:D
    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    .line 983
    .local v8, distForUnlock:D
    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->distance:D

    .line 984
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseX:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->downX2:F

    sub-float v14, v1, v2

    .line 985
    .local v14, dx2:F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseY:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->downY2:F

    sub-float v16, v1, v2

    .line 986
    .local v16, dy2:F
    float-to-double v1, v14

    const-wide/high16 v3, 0x4000

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    move/from16 v0, v16

    float-to-double v3, v0

    const-wide/high16 v5, 0x4000

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-int v10, v1

    .line 987
    .local v10, distForwWave:I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->rippleDistance:I

    add-int/2addr v1, v10

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->rippleDistance:I

    .line 988
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseX:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->downX2:F

    .line 989
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseY:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->downY2:F

    .line 991
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->distance:D

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->unlockDragThreshold:D

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_9

    .line 993
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->isUnlocked:Z

    if-eqz v1, :cond_8

    .line 995
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->cleanUp()V

    .line 996
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1000
    :cond_8
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->isUnlocked:Z

    .line 1001
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseInputCount:I

    .line 1002
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1006
    :cond_9
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->rippleDistance:I

    int-to-double v1, v1

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->rippleDragThreshold:D

    cmpl-double v1, v1, v3

    if-lez v1, :cond_4

    .line 1008
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->glY:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->glX:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForRipple:F

    const/high16 v4, 0x4040

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->ripple(FFF)V

    .line 1009
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->glY:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->glX:F

    const-wide/16 v5, 0x14

    const/high16 v7, 0x4040

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->startLongPressCheck2(Landroid/view/View;FFJF)V

    .line 1011
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->rippleDistance:I

    .line 1012
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseX:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->downX2:F

    .line 1013
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseY:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->downY2:F

    .line 1015
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->isUnlocked:Z

    if-nez v1, :cond_4

    .line 1017
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->playDragSound(I)V

    goto/16 :goto_3

    .line 1023
    .end local v8           #distForUnlock:D
    .end local v10           #distForwWave:I
    .end local v11           #distance_square:D
    .end local v13           #dx:F
    .end local v14           #dx2:F
    .end local v15           #dy:F
    .end local v16           #dy2:F
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 1025
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->unlockReleaseThreshold:D

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->distance:D

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_c

    .line 1027
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->isUnlocked:Z

    if-eqz v1, :cond_b

    .line 1028
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1030
    :cond_b
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->isUnlocked:Z

    .line 1031
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseInputCount:I

    .line 1032
    const/4 v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->startLocation:I

    .line 1033
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1035
    :cond_c
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isDivideMissedEventEnable()Z

    move-result v1

    if-eqz v1, :cond_10

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->startLocation:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_10

    .line 1036
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseX:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MISSED_UNLOCK_RELEASE_MARGIN:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_d

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseX:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MISSED_UNLOCK_RELEASE_MARGIN:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_10

    .line 1037
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->isUnlocked:Z

    if-eqz v1, :cond_e

    .line 1038
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1040
    :cond_e
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseX:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->downX:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v13

    .line 1041
    .restart local v13       #dx:F
    float-to-double v1, v13

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MISSED_DRAG_DISATANCE:D

    cmpg-double v1, v1, v3

    if-gez v1, :cond_f

    .line 1042
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1044
    :cond_f
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->isUnlocked:Z

    .line 1045
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseInputCount:I

    .line 1046
    const/4 v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->startLocation:I

    .line 1047
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1051
    .end local v13           #dx:F
    :cond_10
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->prevPressTime:J

    sub-long/2addr v1, v3

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->diffPressTime:J

    .line 1052
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseInputCount:I

    .line 1054
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->diffPressTime:J

    const-wide/16 v3, 0x12c

    cmp-long v1, v1, v3

    if-lez v1, :cond_11

    .line 1056
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->glY:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->glX:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForRipple:F

    const/high16 v4, 0x4080

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->ripple(FFF)V

    .line 1058
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->isUnlocked:Z

    if-nez v1, :cond_11

    .line 1059
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->playSound(I)V

    .line 1063
    :cond_11
    const/4 v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->startLocation:I

    goto/16 :goto_3
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 8
    .parameter "gl"

    .prologue
    const/16 v7, 0xde1

    const/4 v1, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 823
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->drawCount:I

    if-nez v0, :cond_2

    .line 825
    const-string v0, "CircleUnlockRippleRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ondrawfrmae drawCount = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->drawCount:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->loadTexture()V

    .line 827
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->loadBuffers()V

    .line 828
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->drawCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->drawCount:I

    .line 831
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    if-eqz v0, :cond_0

    .line 832
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->setLockScreenReady()V

    .line 833
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v2, "CircleUnlockRippleRenderer setLockScreenReady"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    :cond_0
    :goto_0
    invoke-static {v5, v5, v5, v5}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 849
    const/16 v0, 0x4100

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 850
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->shader:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 851
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->m_handle:I

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->wvp:[F

    invoke-static {v0, v6, v3, v2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 854
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->shader:I

    const-string v2, "uMESH_SIZE_WIDTH"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    int-to-float v2, v2

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 855
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->shader:I

    const-string v2, "uMESH_SIZE_HEIGHT"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    int-to-float v2, v2

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 856
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->shader:I

    const-string v2, "uNUM_DETAILS_WIDTH"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    int-to-float v2, v2

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 857
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->shader:I

    const-string v2, "uNUM_DETAILS_HEIGHT"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    int-to-float v2, v2

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 858
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->shader:I

    const-string v2, "uRefractiveIndex"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->refractiveIndex:F

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 860
    const v0, 0x8892

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->h_buf:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 861
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->h_handle:I

    const/16 v2, 0x1406

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 862
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->h_handle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 865
    const v0, 0x8892

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->v_buf:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 866
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->v_handle:I

    const/16 v2, 0x1406

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 867
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->v_handle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 870
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 871
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->textures0:[I

    aget v0, v0, v3

    invoke-static {v7, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 872
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->shader:I

    const-string v1, "texture0"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 875
    const v0, 0x84c1

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 876
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->texture1:I

    invoke-static {v7, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 877
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->shader:I

    const-string v1, "texture1"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    invoke-static {v0, v6}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 880
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->shader:I

    const-string v1, "reflectionRatio"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->reflectionRatio:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 881
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->shader:I

    const-string v1, "alphaRatio1"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->alphaRatio1:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 882
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->shader:I

    const-string v1, "alphaRatio2"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->alphaRatio2:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 885
    const v0, 0x8893

    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->i_buf:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 886
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->indices:[S

    array-length v1, v1

    const/16 v2, 0x1403

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glDrawElements(IIII)V

    .line 887
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->v_handle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 888
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->h_handle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 890
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->drawCount:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 892
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->drawCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->drawCount:I

    .line 894
    :cond_1
    return-void

    .line 839
    :cond_2
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->drawCount:I

    if-ne v0, v6, :cond_3

    .line 841
    const-string v0, "CircleUnlockRippleRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ondrawfrmae drawCount = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->drawCount:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->loadBuffers()V

    .line 845
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->move()V

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 1672
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->stopLongPressCheck(Landroid/view/View;)V

    .line 1673
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->clearRipple()V

    .line 1675
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1697
    const-string v0, "CircleUnlockRippleRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume isUnlocked = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->isUnlocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1699
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->isUnlocked:Z

    if-eqz v0, :cond_1

    .line 1700
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->clearRipple()V

    .line 1702
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    .line 1704
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "onResume mSoundPool is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1706
    new-instance v0, Landroid/media/SoundPool;

    const/16 v1, 0xa

    invoke-direct {v0, v1, v4, v5}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    .line 1707
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->sounds:[I

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mRDownId:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v5

    .line 1708
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->sounds:[I

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mRUpId:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v4

    .line 1710
    :cond_0
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->isUnlocked:Z

    .line 1712
    :cond_1
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 17
    .parameter "gl"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 734
    const-string v2, "CircleUnlockRippleRenderer"

    const-string v3, "onSurfaceChanged"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    const-string v2, "CircleUnlockRippleRenderer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "windowWidth = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", windowHeight = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", width = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", height = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    move/from16 v0, p2

    move/from16 v1, p3

    if-le v0, v1, :cond_2

    .line 740
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForLandscape:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForRipple:F

    .line 741
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    .line 742
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    .line 744
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->hasSystemNavBar:Z

    if-eqz v2, :cond_0

    .line 747
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->HDMI_VIEW_HEIGHT_FOR_P4_NOTE_10_1:I

    move/from16 v0, p3

    if-ne v0, v2, :cond_1

    .line 749
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    .line 750
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->HDMI_WIDOW_HEIGHT_FOR_P4_NOTE_10_1:I

    move/from16 v0, p2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    .line 776
    :cond_0
    :goto_0
    move/from16 v0, p2

    move/from16 v1, p3

    if-le v0, v1, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->HDMI_WIDOW_HEIGHT_FOR_P4_NOTE_10_1:I

    if-ne v2, v3, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->HDMI_VIEW_HEIGHT_FOR_P4_NOTE_10_1:I

    move/from16 v0, p3

    if-ne v0, v2, :cond_3

    .line 778
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->HDMI_VIEW_HEIGHT_FOR_P4_NOTE_10_1:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->HDMI_WIDOW_HEIGHT_FOR_P4_NOTE_10_1:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    invoke-static {v2, v3, v4, v5}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 785
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v3, v3

    div-float v13, v2, v3

    .line 787
    .local v13, ratio:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->view:[F

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f80

    const/4 v12, 0x0

    invoke-static/range {v2 .. v12}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    .line 788
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->proj:[F

    const/high16 v4, 0x4234

    const v6, 0x3dcccccd

    const/high16 v7, 0x43fa

    move-object/from16 v2, p0

    move v5, v13

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->perspectiveM([FFFFF)V

    .line 790
    const/4 v14, 0x0

    .line 791
    .local v14, translateX:F
    const/4 v15, 0x0

    .line 792
    .local v15, translateY:F
    const/16 v16, 0x0

    .line 794
    .local v16, translateZ:F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    if-le v2, v3, :cond_4

    .line 796
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateXForLandscape:F

    .line 797
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateYForLandscape:F

    .line 798
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateZForLandscape:F

    move/from16 v16, v0

    .line 808
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->world:[F

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 809
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->wvp:[F

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->view:[F

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->world:[F

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 810
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->wvp:[F

    const/4 v3, 0x0

    move/from16 v0, v16

    invoke-static {v2, v3, v14, v15, v0}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 811
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->wvp:[F

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->proj:[F

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->wvp:[F

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 813
    return-void

    .line 754
    .end local v13           #ratio:F
    .end local v14           #translateX:F
    .end local v15           #translateY:F
    .end local v16           #translateZ:F
    :cond_1
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    .line 755
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    goto/16 :goto_0

    .line 762
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForPortrait:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForRipple:F

    .line 763
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    .line 764
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    .line 766
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->hasSystemNavBar:Z

    if-eqz v2, :cond_0

    .line 768
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    .line 769
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    goto/16 :goto_0

    .line 782
    :cond_3
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    invoke-static {v2, v3, v4, v5}, Landroid/opengl/GLES20;->glViewport(IIII)V

    goto/16 :goto_1

    .line 802
    .restart local v13       #ratio:F
    .restart local v14       #translateX:F
    .restart local v15       #translateY:F
    .restart local v16       #translateZ:F
    :cond_4
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateXForPortrait:F

    .line 803
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateYForPortrait:F

    .line 804
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateZForPortrait:F

    move/from16 v16, v0

    goto/16 :goto_2
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2
    .parameter "gl"
    .parameter "config"

    .prologue
    .line 715
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "onSurfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->enhancedLockScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 718
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->setEnhancedBackground()V

    .line 722
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->createBuffers()V

    .line 723
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->loadShaderProp()V

    .line 724
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->makeBuffers()V

    .line 726
    return-void

    .line 720
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->setBackground(Z)V

    goto :goto_0
.end method

.method public setReflection(F)V
    .locals 0
    .parameter "reflec"

    .prologue
    .line 1474
    iput p1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->reflectionRatio:F

    .line 1475
    return-void
.end method

.method public setRefraction(F)V
    .locals 1
    .parameter "refrac"

    .prologue
    .line 1469
    const/high16 v0, 0x3f80

    add-float/2addr v0, p1

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->refractiveIndex:F

    .line 1470
    return-void
.end method

.method public setRippleBackground()V
    .locals 2

    .prologue
    .line 1853
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "setRippleBackground()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1854
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->setBackground(Z)V

    .line 1855
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->drawCount:I

    .line 1856
    return-void
.end method

.method public setSoundNum(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 1158
    iput p1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->soundNum:I

    .line 1159
    return-void
.end method

.method public setSoundRID(II)V
    .locals 5
    .parameter "RDownId"
    .parameter "RUpId"

    .prologue
    const/4 v4, 0x1

    .line 1563
    iput p1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mRDownId:I

    .line 1564
    iput p2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mRUpId:I

    .line 1565
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->sounds:[I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, p1, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v0, v1

    .line 1566
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->sounds:[I

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p2, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v4

    .line 1568
    return-void
.end method

.method public setSoundTime(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 1164
    iput p1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->soundTime:I

    .line 1165
    return-void
.end method

.method public setStartLocation(I)V
    .locals 0
    .parameter "startLocation"

    .prologue
    .line 1572
    iput p1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->startLocation:I

    .line 1574
    return-void
.end method

.method public setTexture(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "pBitmap"

    .prologue
    .line 1536
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->enhancedLockScreen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1538
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->bitmapOriginal:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1540
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->bitmapOriginal:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1541
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->bitmapOriginal:Landroid/graphics/Bitmap;

    .line 1545
    :cond_0
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->bitmapOriginal:Landroid/graphics/Bitmap;

    .line 1547
    return-void
.end method

.method public setWaterTexture(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "pBitmap"

    .prologue
    .line 1551
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1553
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1554
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    .line 1557
    :cond_0
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    .line 1559
    return-void
.end method

.method public startLongPressCheck(Landroid/view/View;FFJF)V
    .locals 1
    .parameter "view"
    .parameter "mouseX"
    .parameter "mouseY"
    .parameter "delay"
    .parameter "pIntensity"

    .prologue
    .line 1072
    iput p2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tmx:F

    .line 1073
    iput p3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tmy:F

    .line 1075
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 1077
    new-instance v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer$1;

    invoke-direct {v0, p0, p6}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer$1;-><init>(Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;F)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    .line 1088
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0, p4, p5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1089
    return-void
.end method

.method public startLongPressCheck2(Landroid/view/View;FFJF)V
    .locals 1
    .parameter "view"
    .parameter "mouseX"
    .parameter "mouseY"
    .parameter "delay"
    .parameter "pIntensity"

    .prologue
    .line 1095
    iput p2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tmx:F

    .line 1096
    iput p3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tmy:F

    .line 1098
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 1100
    new-instance v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer$2;

    invoke-direct {v0, p0, p6, p4, p5}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer$2;-><init>(Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;FJ)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    .line 1114
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0, p4, p5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1115
    return-void
.end method

.method public stopLongPressCheck(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 1120
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1121
    return-void
.end method

.method public tikerRippleForClose()V
    .locals 4

    .prologue
    const/high16 v3, 0x4000

    .line 1603
    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    if-le v1, v2, :cond_0

    .line 1605
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerCloseLandscapeY:F

    .line 1606
    .local v0, tickerStartY:F
    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float v0, v1, v2

    .line 1607
    neg-float v1, v0

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    iget v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float v0, v1, v2

    .line 1618
    :goto_0
    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForPortraitTicker:F

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickAnimation(FF)V

    .line 1619
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->moveCount:I

    .line 1621
    return-void

    .line 1612
    .end local v0           #tickerStartY:F
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerClosePortraitY:F

    .line 1613
    .restart local v0       #tickerStartY:F
    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float v0, v1, v2

    .line 1614
    neg-float v1, v0

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    iget v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float v0, v1, v2

    goto :goto_0
.end method

.method public tikerRippleForMove(F)V
    .locals 4
    .parameter "startY"

    .prologue
    const/high16 v3, 0x4000

    .line 1625
    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->moveCount:I

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerMoveCriteria:I

    if-eq v1, v2, :cond_0

    .line 1627
    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->moveCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->moveCount:I

    .line 1651
    :goto_0
    return-void

    .line 1632
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->moveCount:I

    .line 1633
    const/4 v0, 0x0

    .line 1635
    .local v0, tickerStartY:F
    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    if-le v1, v2, :cond_1

    .line 1636
    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerAjustYForPortrait:F

    add-float/2addr p1, v1

    .line 1641
    :goto_1
    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    if-le v1, v2, :cond_2

    .line 1642
    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v1, v1

    sub-float/2addr v1, p1

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float v0, v1, v2

    .line 1643
    neg-float v1, v0

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    iget v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float v0, v1, v2

    .line 1649
    :goto_2
    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForPortraitTicker:F

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickAnimation(FF)V

    goto :goto_0

    .line 1638
    :cond_1
    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerAjustYForLandscape:F

    add-float/2addr p1, v1

    goto :goto_1

    .line 1645
    :cond_2
    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v1, v1

    sub-float/2addr v1, p1

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float v0, v1, v2

    .line 1646
    neg-float v1, v0

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    iget v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float v0, v1, v2

    goto :goto_2
.end method

.method public tikerRippleForOpen()V
    .locals 4

    .prologue
    const/high16 v3, 0x4000

    .line 1580
    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    if-le v1, v2, :cond_0

    .line 1582
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerOpenLandscapeY:F

    .line 1583
    .local v0, tickerStartY:F
    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float v0, v1, v2

    .line 1584
    neg-float v1, v0

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    iget v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float v0, v1, v2

    .line 1594
    :goto_0
    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForPortraitTicker:F

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickAnimation(FF)V

    .line 1595
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->moveCount:I

    .line 1597
    return-void

    .line 1588
    .end local v0           #tickerStartY:F
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerOpenPortraitY:F

    .line 1589
    .restart local v0       #tickerStartY:F
    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float v0, v1, v2

    .line 1590
    neg-float v1, v0

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    iget v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float v0, v1, v2

    goto :goto_0
.end method

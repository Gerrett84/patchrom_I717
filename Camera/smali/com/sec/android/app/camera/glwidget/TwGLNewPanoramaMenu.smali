.class public Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLNewPanoramaMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu$OnNewPanoramaCaptureCancelListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_SPEED_FAST:I = 0x96

.field private static final ANIMATION_SPEED_SLOW:I = 0x12c

#the value of this static final field might be set in the static constructor
.field private static final HELP_TEXT_HEIGHT:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final HELP_TEXT_POS_X:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final HELP_TEXT_POS_Y:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final HELP_TEXT_SIZE:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final HELP_TEXT_WIDTH:F = 0.0f

.field private static final LANDSCAPE_GUIDE_TRI_MARGIN:I = 0x3c

#the value of this static final field might be set in the static constructor
.field private static final LANDSCAPE_PRIEVIEW_THUMB_RECT_WIDTH:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final LANDSCAPE_STANDBY_RECT_HEIGHT:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final LANDSCAPE_STANDBY_RECT_WIDTH:F = 0.0f

.field private static final LIVEPREVIEW_ALPHA_ANIM_TIME:I = 0x1f4

#the value of this static final field might be set in the static constructor
.field private static final LIVEPREVIEW_LANDSCAPE_HEIGHT:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final LIVEPREVIEW_LANDSCAPE_RECT_WIDTH:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final LIVEPREVIEW_LANDSCAPE_WIDTH:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final LIVEPREVIEW_LANDSCAPE_X:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final LIVEPREVIEW_LANDSCAPE_Y:F = 0.0f

.field private static final LIVEPREVIEW_MOVE_ANIM_TIME:I = 0xb2

#the value of this static final field might be set in the static constructor
.field private static final LIVEPREVIEW_PORTRAIT_HEIGHT:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final LIVEPREVIEW_PORTRAIT_RECT_HEIGHT:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final LIVEPREVIEW_PORTRAIT_RECT_WIDTH:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final LIVEPREVIEW_PORTRAIT_WIDTH:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final LIVEPREVIEW_PORTRAIT_X:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final LIVEPREVIEW_PORTRAIT_Y:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final LIVEPREVIEW_RECT_THICKNESS:F = 0.0f

.field private static LIVEPREVIEW_SINGLE_HEIGHT:F = 0.0f

.field private static LIVEPREVIEW_SINGLE_WIDTH:F = 0.0f

.field private static LIVEPREVIEW_SINGLE_X:F = 0.0f

.field private static LIVEPREVIEW_SINGLE_Y:F = 0.0f

.field private static final MESSAGE_PANORAMA_PROCESSING:I = 0x4

.field private static final MESSAGE_PANORAMA_WARNING_HIGH:I = 0x3

.field private static final MESSAGE_PANORAMA_WARNING_LOW:I = 0x2

.field protected static final MESSAGE_TIMEOUT_CANCEL:I = 0x1

.field protected static NORMAL_PREVIEW_WIDTH:I = 0x0

.field private static PANORAMASHOT_POPUP_GROUP_HEIGHT:F = 0.0f

.field private static PANORAMASHOT_POPUP_GROUP_WIDTH:F = 0.0f

.field private static PANORAMASHOT_POPUP_GROUP_X:F = 0.0f

.field private static PANORAMASHOT_POPUP_GROUP_Y:F = 0.0f

.field private static PANORAMASHOT_POSTCAPTURE_PROGRESSBAR_POS_X:[F = null

.field private static PANORAMASHOT_POSTCAPTURE_PROGRESSBAR_POS_Y:[F = null

.field private static PANORAMASHOT_PROGRESSBAR_HEIGHT:F = 0.0f

.field private static PANORAMASHOT_PROGRESSBAR_WIDTH:F = 0.0f

.field private static PANORAMASHOT_PROGRESSBAR_X:F = 0.0f

.field private static PANORAMASHOT_PROGRESSBAR_Y:F = 0.0f

.field private static PANORAMASHOT_PROGRESS_TEXT_HEIGHT:F = 0.0f

.field private static PANORAMASHOT_PROGRESS_TEXT_SIZE:F = 0.0f

.field private static PANORAMASHOT_PROGRESS_TEXT_WIDTH:F = 0.0f

.field private static PANORAMASHOT_PROGRESS_TEXT_X:F = 0.0f

.field private static PANORAMASHOT_PROGRESS_TEXT_Y:F = 0.0f

#the value of this static final field might be set in the static constructor
.field public static final PANORAMAX_MAX_IMAGE_COUNT:I = 0x0

.field private static final PORTRAIT_GUIDE_TRI_MARGIN:I = 0x14

#the value of this static final field might be set in the static constructor
.field private static final PORTRAIT_PRIEVIEW_THUMB_RECT_HEIGTH:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final PORTRAIT_STANDBY_RECT_HEIGHT:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final PORTRAIT_STANDBY_RECT_WIDTH:F = 0.0f

.field public static final PROCESS_TIMER_TIMEOUT:I = 0x4e20

.field protected static SCREEN_HEIGHT:F = 0.0f

.field protected static SCREEN_WIDTH:F = 0.0f

.field protected static SIDE_WIDTH:I = 0x0

.field private static STATUSBAR_HEIGHT:F = 0.0f

.field protected static final TAG:Ljava/lang/String; = "TwGLNewPanoramaMenu"

.field private static final VIEWFINDER_DESTINATION_X:F

.field private static final VIEWFINDER_DESTINATION_Y:F


# instance fields
.field private mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

.field private mCaptureCount:I

.field private mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

.field private mCurrentOrientation:I

.field private mDetectedDirection:I

.field private mHelpText:Lcom/sec/android/glview/TwGLText;

.field mHideLivePreview:Ljava/lang/Runnable;

.field private mIsPanoramaCapturing:Z

.field private mIsPanoramaStitching:Z

.field private mListener:Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu$OnNewPanoramaCaptureCancelListener;

.field private mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

.field private mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mLivePreviewPrevious:Lcom/sec/android/glview/TwGLBitmapTexture;

.field private mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

.field protected mOrientationListener:Landroid/view/OrientationEventListener;

.field private mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

.field protected mPanoramaMsgHandler:Landroid/os/Handler;

.field private mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

.field private mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

.field private mPanoramaWarning:Z

.field private mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

.field private mProgressText:Lcom/sec/android/glview/TwGLText;

.field private mStandByBackgroundRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

.field private mStandByGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mStandByPreviewRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

.field private mTri:[[Lcom/sec/android/glview/TwGLImage;

.field private mViewFinderDestination:Lcom/sec/android/glview/TwGLRectangle;

.field private mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

.field private mWarningBox:[Lcom/sec/android/glview/TwGLImage;

.field private mWarningText:Lcom/sec/android/glview/TwGLText;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x4080

    const/high16 v5, 0x4040

    const/high16 v4, 0x3f80

    const/high16 v3, 0x4000

    .line 60
    const-string v0, "13"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMAX_MAX_IMAGE_COUNT:I

    .line 62
    const v0, 0x7f070099

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->SCREEN_WIDTH:F

    .line 63
    const v0, 0x7f07009a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->SCREEN_HEIGHT:F

    .line 64
    const v0, 0x7f0700b7

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->SIDE_WIDTH:I

    .line 65
    const v0, 0x7f07009d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->NORMAL_PREVIEW_WIDTH:I

    .line 67
    const v0, 0x7f070184

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMASHOT_POPUP_GROUP_X:F

    .line 68
    const v0, 0x7f070185

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMASHOT_POPUP_GROUP_Y:F

    .line 69
    const v0, 0x7f070186

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMASHOT_POPUP_GROUP_WIDTH:F

    .line 70
    const v0, 0x7f070187

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMASHOT_POPUP_GROUP_HEIGHT:F

    .line 71
    const v0, 0x7f070199

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMASHOT_PROGRESS_TEXT_X:F

    .line 72
    const v0, 0x7f07019a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMASHOT_PROGRESS_TEXT_Y:F

    .line 73
    const v0, 0x7f07019b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMASHOT_PROGRESS_TEXT_WIDTH:F

    .line 74
    const v0, 0x7f07019c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMASHOT_PROGRESS_TEXT_HEIGHT:F

    .line 75
    const v0, 0x7f080023

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMASHOT_PROGRESS_TEXT_SIZE:F

    .line 76
    const v0, 0x7f07018a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMASHOT_PROGRESSBAR_WIDTH:F

    .line 77
    const v0, 0x7f07018b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMASHOT_PROGRESSBAR_HEIGHT:F

    .line 78
    const v0, 0x7f070195

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMASHOT_PROGRESSBAR_X:F

    .line 79
    const v0, 0x7f070196

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMASHOT_PROGRESSBAR_Y:F

    .line 80
    const/4 v0, 0x2

    new-array v0, v0, [F

    const v1, 0x7f07019d

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v7

    const/4 v1, 0x1

    const v2, 0x7f07019e

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    aput v2, v0, v1

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMASHOT_POSTCAPTURE_PROGRESSBAR_POS_X:[F

    .line 82
    const/4 v0, 0x2

    new-array v0, v0, [F

    const v1, 0x7f07019f

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v7

    const/4 v1, 0x1

    const v2, 0x7f0701a0

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    aput v2, v0, v1

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMASHOT_POSTCAPTURE_PROGRESSBAR_POS_Y:[F

    .line 84
    const v0, 0x7f07009b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->STATUSBAR_HEIGHT:F

    .line 87
    const v0, 0x7f07008e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->HELP_TEXT_WIDTH:F

    .line 88
    const v0, 0x7f0701a2

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->HELP_TEXT_HEIGHT:F

    .line 89
    const v0, 0x7f070099

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->HELP_TEXT_WIDTH:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v3

    const v1, 0x7f0700b7

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    sub-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->HELP_TEXT_POS_X:F

    .line 90
    const v0, 0x7f07009a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->HELP_TEXT_HEIGHT:F

    sub-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->HELP_TEXT_POS_Y:F

    .line 91
    const v0, 0x7f080024

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->HELP_TEXT_SIZE:F

    .line 93
    const v0, 0x7f070092

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LANDSCAPE_STANDBY_RECT_WIDTH:F

    .line 94
    const v0, 0x7f070093

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PORTRAIT_STANDBY_RECT_WIDTH:F

    .line 96
    const v0, 0x7f07008f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    .line 97
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    mul-float/2addr v0, v3

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMAX_MAX_IMAGE_COUNT:I

    int-to-float v1, v1

    add-float/2addr v1, v4

    div-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LANDSCAPE_PRIEVIEW_THUMB_RECT_WIDTH:F

    .line 98
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LANDSCAPE_PRIEVIEW_THUMB_RECT_WIDTH:F

    mul-float/2addr v0, v5

    div-float/2addr v0, v6

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    .line 99
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LANDSCAPE_STANDBY_RECT_HEIGHT:F

    .line 100
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->NORMAL_PREVIEW_WIDTH:I

    int-to-float v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_X:F

    .line 101
    const v0, 0x7f070090

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    .line 103
    const v0, 0x7f070091

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    .line 104
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    mul-float/2addr v0, v3

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMAX_MAX_IMAGE_COUNT:I

    int-to-float v1, v1

    add-float/2addr v1, v4

    div-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PORTRAIT_PRIEVIEW_THUMB_RECT_HEIGTH:F

    .line 105
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PORTRAIT_PRIEVIEW_THUMB_RECT_HEIGTH:F

    mul-float/2addr v0, v6

    div-float/2addr v0, v5

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    .line 106
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PORTRAIT_STANDBY_RECT_HEIGHT:F

    .line 107
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->NORMAL_PREVIEW_WIDTH:I

    int-to-float v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PORTRAIT_STANDBY_RECT_HEIGHT:F

    sub-float/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->HELP_TEXT_HEIGHT:F

    sub-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X:F

    .line 108
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->SCREEN_HEIGHT:F

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_Y:F

    .line 110
    const v0, 0x7f070094

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    .line 111
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LANDSCAPE_PRIEVIEW_THUMB_RECT_WIDTH:F

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    .line 112
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    .line 113
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LANDSCAPE_STANDBY_RECT_WIDTH:F

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LANDSCAPE_PRIEVIEW_THUMB_RECT_WIDTH:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_SINGLE_X:F

    .line 114
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_SINGLE_Y:F

    .line 119
    const v0, 0x7f070095

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->VIEWFINDER_DESTINATION_X:F

    .line 120
    const v0, 0x7f070096

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->VIEWFINDER_DESTINATION_Y:F

    .line 125
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    mul-float/2addr v0, v3

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMAX_MAX_IMAGE_COUNT:I

    int-to-float v1, v1

    add-float/2addr v1, v4

    div-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_RECT_WIDTH:F

    .line 126
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_RECT_WIDTH:F

    .line 127
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    mul-float/2addr v0, v3

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMAX_MAX_IMAGE_COUNT:I

    int-to-float v1, v1

    add-float/2addr v1, v4

    div-float/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_RECT_HEIGHT:F

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V
    .locals 11
    .parameter "activityContext"
    .parameter "viewId"
    .parameter "glParentView"
    .parameter "menuResourceDepot"

    .prologue
    .line 234
    const/4 v5, 0x5

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    .line 141
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sec/android/glview/TwGLViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    .line 142
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sec/android/glview/TwGLViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mStandByGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mStandByBackgroundRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mStandByPreviewRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    .line 153
    const/4 v0, 0x4

    const/4 v1, 0x2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, Lcom/sec/android/glview/TwGLImage;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/sec/android/glview/TwGLImage;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    .line 154
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sec/android/glview/TwGLImage;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    .line 155
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sec/android/glview/TwGLImage;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    .line 156
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sec/android/glview/TwGLImage;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewPrevious:Lcom/sec/android/glview/TwGLBitmapTexture;

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mViewFinderDestination:Lcom/sec/android/glview/TwGLRectangle;

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 169
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureCount:I

    .line 170
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mDetectedDirection:I

    .line 171
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCurrentOrientation:I

    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaWarning:Z

    .line 174
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mIsPanoramaStitching:Z

    .line 176
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    .line 592
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu$2;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mHideLivePreview:Ljava/lang/Runnable;

    .line 236
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->setCaptureEnabled(Z)V

    .line 239
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 240
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    const v6, 0x7f02019b

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    .line 241
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 242
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 243
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 246
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->NORMAL_PREVIEW_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LANDSCAPE_STANDBY_RECT_WIDTH:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LANDSCAPE_STANDBY_RECT_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LANDSCAPE_STANDBY_RECT_HEIGHT:F

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mStandByGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 247
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LANDSCAPE_STANDBY_RECT_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LANDSCAPE_STANDBY_RECT_HEIGHT:F

    const v6, 0x7f02019c

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mStandByBackgroundRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    .line 248
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LANDSCAPE_PRIEVIEW_THUMB_RECT_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LANDSCAPE_STANDBY_RECT_HEIGHT:F

    const v6, 0x7f02019d

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mStandByPreviewRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    .line 249
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mStandByGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mStandByBackgroundRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 250
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mStandByGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mStandByPreviewRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 251
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mStandByGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 252
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mStandByGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    .line 253
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mStandByGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->NORMAL_PREVIEW_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->HELP_TEXT_HEIGHT:F

    sub-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->SCREEN_HEIGHT:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PORTRAIT_STANDBY_RECT_WIDTH:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 254
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mStandByGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->NORMAL_PREVIEW_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LANDSCAPE_STANDBY_RECT_WIDTH:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LANDSCAPE_STANDBY_RECT_WIDTH:F

    add-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    add-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 255
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mStandByGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->NORMAL_PREVIEW_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PORTRAIT_STANDBY_RECT_HEIGHT:F

    sub-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->HELP_TEXT_HEIGHT:F

    sub-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->SCREEN_HEIGHT:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PORTRAIT_STANDBY_RECT_WIDTH:F

    add-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 256
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mStandByGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLViewGroup;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    .line 257
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mStandByGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 260
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x0

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f020196

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    .line 261
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getImageWidth()F

    move-result v4

    const/4 v5, 0x0

    const v6, 0x7f020195

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    .line 262
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x0

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f020193

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    .line 263
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getImageWidth()F

    move-result v4

    const/4 v5, 0x0

    const v6, 0x7f020194

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    .line 264
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/4 v1, 0x0

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f020197

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    .line 265
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLImage;->getImageWidth()F

    move-result v5

    const v6, 0x7f020198

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    .line 266
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const/4 v1, 0x0

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f020192

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    .line 267
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLImage;->getImageWidth()F

    move-result v5

    const v6, 0x7f020191

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    .line 268
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    new-instance v2, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    aput-object v2, v0, v1

    .line 269
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    new-instance v2, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    aput-object v2, v0, v1

    .line 270
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x2

    new-instance v2, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    aput-object v2, v0, v1

    .line 271
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x3

    new-instance v2, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    aput-object v2, v0, v1

    .line 272
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 273
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 274
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 275
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 276
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 277
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 278
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 279
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 280
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    const/4 v0, 0x4

    if-ge v9, v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v0, v0, v9

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 282
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v0, v0, v9

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 283
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v0, v0, v9

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->setAlphaArrow(Lcom/sec/android/glview/TwGLView;)V

    .line 280
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 287
    :cond_0
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMASHOT_POPUP_GROUP_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMASHOT_POPUP_GROUP_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMASHOT_POPUP_GROUP_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMASHOT_POPUP_GROUP_HEIGHT:F

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 289
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMASHOT_PROGRESS_TEXT_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMASHOT_PROGRESS_TEXT_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMASHOT_PROGRESS_TEXT_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMASHOT_PROGRESS_TEXT_HEIGHT:F

    const v6, 0x7f09000e

    invoke-virtual {p1, v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMASHOT_PROGRESS_TEXT_SIZE:F

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    .line 292
    new-instance v0, Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMASHOT_PROGRESSBAR_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMASHOT_PROGRESSBAR_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMASHOT_PROGRESSBAR_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMASHOT_PROGRESSBAR_HEIGHT:F

    const v6, 0x7f020217

    const v7, 0x7f020216

    const/4 v8, 0x1

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/glview/TwGLProgressBar;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    .line 294
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    .line 295
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setRotatable(Z)V

    .line 296
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setCenterPivot(Z)V

    .line 297
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 299
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 300
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    .line 301
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 302
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 305
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->HELP_TEXT_POS_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->HELP_TEXT_POS_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->HELP_TEXT_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->HELP_TEXT_HEIGHT:F

    const v6, 0x7f0900da

    invoke-virtual {p1, v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->HELP_TEXT_SIZE:F

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    .line 307
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setRotatable(Z)V

    .line 308
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 309
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 311
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f020196

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    .line 312
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getImageWidth()F

    move-result v4

    const/4 v5, 0x0

    const v6, 0x7f020195

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    .line 314
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v7, 0x0

    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x4000

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    const/4 v8, 0x0

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLImage;->getImageWidth()F

    move-result v5

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    const/4 v8, 0x0

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLImage;->getImageHeight()F

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    aput-object v0, v6, v7

    .line 315
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 316
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 317
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 319
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x2

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f020197

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    .line 320
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x3

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLImage;->getImageHeight()F

    move-result v5

    const v6, 0x7f020198

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    .line 322
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v7, 0x1

    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getImageHeight()F

    move-result v4

    const/high16 v5, 0x4000

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    const/4 v10, 0x0

    aget-object v8, v8, v10

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLImage;->getImageWidth()F

    move-result v8

    mul-float/2addr v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    aput-object v0, v6, v7

    .line 323
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 324
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 325
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 327
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 328
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 330
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201a2

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    .line 331
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f02019f

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    .line 332
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x2

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201a0

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    .line 333
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x3

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201a1

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    .line 335
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201a3

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    .line 336
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 337
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201a5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    .line 338
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 339
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x2

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201a4

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    .line 340
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 341
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x3

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201a6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    .line 342
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 344
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const v2, 0x7f090192

    invoke-virtual {p1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    .line 345
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setFontSize(I)V

    .line 346
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setColor(I)V

    .line 347
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setStrokeStyle(F)V

    .line 348
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 349
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setRotatable(Z)V

    .line 350
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setCenterPivot(Z)V

    .line 351
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLText;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    .line 352
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 355
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f02019d

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    .line 356
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setVisibility(I)V

    .line 359
    new-instance v0, Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->VIEWFINDER_DESTINATION_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->VIEWFINDER_DESTINATION_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->NORMAL_PREVIEW_WIDTH:I

    int-to-float v4, v4

    const/high16 v5, 0x4000

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->VIEWFINDER_DESTINATION_X:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->SCREEN_HEIGHT:F

    const/high16 v6, 0x4000

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->VIEWFINDER_DESTINATION_Y:F

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLRectangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mViewFinderDestination:Lcom/sec/android/glview/TwGLRectangle;

    .line 361
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mViewFinderDestination:Lcom/sec/android/glview/TwGLRectangle;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    .line 363
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 364
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 365
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 366
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 367
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 370
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->updateLivePreviewLayout(Z)V

    .line 372
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 373
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 374
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 375
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 376
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 377
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 378
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 379
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 380
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->setAlphaArrow(Lcom/sec/android/glview/TwGLView;)V

    .line 381
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->setAlphaArrow(Lcom/sec/android/glview/TwGLView;)V

    .line 382
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 384
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->onOrientationChanged(I)V

    .line 386
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->init()V

    .line 387
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;)Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu$OnNewPanoramaCaptureCancelListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mListener:Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu$OnNewPanoramaCaptureCancelListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;)Lcom/sec/android/app/camera/AbstractCameraActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;)Lcom/sec/android/app/camera/AbstractCameraActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaWarning:Z

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;)Lcom/sec/android/app/camera/AbstractCameraActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;)Lcom/sec/android/app/camera/AbstractCameraActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;)Lcom/sec/android/app/camera/AbstractCameraActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    return-object v0
.end method

.method private enterOrientation(I)V
    .locals 4
    .parameter "orientation"

    .prologue
    const/high16 v3, 0x4000

    .line 1600
    const-string v0, "TwGLNewPanoramaMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enterOrientation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    packed-switch p1, :pswitch_data_0

    .line 1620
    :goto_0
    return-void

    .line 1604
    :pswitch_0
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->NORMAL_PREVIEW_WIDTH:I

    int-to-float v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LANDSCAPE_PRIEVIEW_THUMB_RECT_WIDTH:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_SINGLE_X:F

    .line 1605
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_SINGLE_Y:F

    .line 1606
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LANDSCAPE_PRIEVIEW_THUMB_RECT_WIDTH:F

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    .line 1607
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    goto :goto_0

    .line 1611
    :pswitch_1
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X:F

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_SINGLE_X:F

    .line 1612
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PORTRAIT_STANDBY_RECT_HEIGHT:F

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    .line 1613
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PORTRAIT_PRIEVIEW_THUMB_RECT_HEIGTH:F

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    .line 1614
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->SCREEN_HEIGHT:F

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_SINGLE_Y:F

    goto :goto_0

    .line 1601
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private hideWarningText()V
    .locals 2

    .prologue
    .line 1212
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->resetTranslate()V

    .line 1213
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 1214
    return-void
.end method

.method private updateLivePreviewLayout(Z)V
    .locals 41
    .parameter "detectedDirection"

    .prologue
    .line 1235
    const-string v5, "TwGLNewPanoramaMenu"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateLivePreviewLayout: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureCount:I

    if-gtz v5, :cond_1

    .line 1237
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x4

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1238
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->showPreviewGroup()V

    .line 1415
    :cond_0
    :goto_0
    return-void

    .line 1239
    :cond_1
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureCount:I

    const/4 v8, 0x1

    if-ne v5, v8, :cond_2

    if-nez p1, :cond_2

    .line 1240
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->hidePreviewGroup()V

    .line 1241
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCurrentOrientation:I

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->enterOrientation(I)V

    .line 1242
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mStandByGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1245
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->updateArrow()V

    .line 1246
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLViewGroup;->resetTranslate()V

    .line 1247
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLViewGroup;->resetTranslate()V

    .line 1248
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    aget-object v5, v5, v8

    const/4 v8, 0x4

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1249
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x1

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLViewGroup;->resetTranslate()V

    .line 1250
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x1

    aget-object v5, v5, v8

    const/4 v8, 0x4

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1251
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    const/4 v8, 0x4

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setVisibility(I)V

    .line 1252
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    invoke-virtual {v5, v8, v9}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    .line 1253
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_SINGLE_X:F

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_SINGLE_Y:F

    invoke-virtual {v5, v8, v9, v10}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 1254
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLViewGroup;->setOrientation(I)V

    .line 1255
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    invoke-virtual {v5, v8, v9}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setSize(FF)V

    .line 1256
    new-instance v16, Landroid/view/animation/AlphaAnimation;

    const/4 v5, 0x0

    const/high16 v8, 0x3f80

    move-object/from16 v0, v16

    invoke-direct {v0, v5, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1257
    .local v16, aa:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v8, 0x1f4

    move-object/from16 v0, v16

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1258
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/sec/android/glview/TwGLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1259
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLViewGroup;->startAnimation()V

    .line 1260
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    goto/16 :goto_0

    .line 1261
    .end local v16           #aa:Landroid/view/animation/AlphaAnimation;
    :cond_2
    if-eqz p1, :cond_0

    .line 1262
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mStandByGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x4

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1263
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1271
    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    const/high16 v8, 0x4000

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v8, v9

    sub-float v39, v5, v8

    .line 1272
    .local v39, widthFocus:F
    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    const/high16 v8, 0x4000

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v8, v9

    sub-float v22, v5, v8

    .line 1274
    .local v22, heightFocus:F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLViewGroup;->getLeftTop(I)[F

    move-result-object v5

    const/4 v8, 0x0

    aget v30, v5, v8

    .line 1275
    .local v30, oldLeftGroup:F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLViewGroup;->getLeftTop(I)[F

    move-result-object v5

    const/4 v8, 0x1

    aget v32, v5, v8

    .line 1276
    .local v32, oldTopGroup:F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLBitmapTexture;->getLeft()F

    move-result v29

    .line 1277
    .local v29, oldLeft:F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLBitmapTexture;->getTop()F

    move-result v31

    .line 1278
    .local v31, oldTop:F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLViewGroup;->getWidth()F

    move-result v33

    .line 1279
    .local v33, oldWidth:F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v28

    .line 1280
    .local v28, oldHeight:F
    const/16 v24, 0x1

    .line 1281
    .local v24, landscape:Z
    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LANDSCAPE_STANDBY_RECT_WIDTH:F

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LANDSCAPE_PRIEVIEW_THUMB_RECT_WIDTH:F

    sub-float/2addr v5, v8

    const/high16 v8, 0x4000

    div-float/2addr v5, v8

    sput v5, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_SINGLE_X:F

    .line 1282
    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    sput v5, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_SINGLE_Y:F

    .line 1283
    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LANDSCAPE_PRIEVIEW_THUMB_RECT_WIDTH:F

    sput v5, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    .line 1284
    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    sput v5, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    .line 1286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v40, v0

    monitor-enter v40

    .line 1287
    :try_start_0
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mDetectedDirection:I

    packed-switch v5, :pswitch_data_0

    .line 1355
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLViewGroup;->getLeftTop(I)[F

    move-result-object v5

    const/4 v8, 0x0

    aget v5, v5, v8

    sub-float v18, v30, v5

    .line 1356
    .local v18, fromXDeltaRect:F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLViewGroup;->getLeftTop(I)[F

    move-result-object v5

    const/4 v8, 0x1

    aget v5, v5, v8

    sub-float v20, v32, v5

    .line 1357
    .local v20, fromYDeltaRect:F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLViewGroup;->getLeftTop(I)[F

    move-result-object v5

    const/4 v8, 0x0

    aget v5, v5, v8

    sub-float v5, v30, v5

    add-float v29, v29, v5

    .line 1358
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLBitmapTexture;->getLeft()F

    move-result v5

    sub-float v17, v29, v5

    .line 1359
    .local v17, fromXDelta:F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLViewGroup;->getLeftTop(I)[F

    move-result-object v5

    const/4 v8, 0x1

    aget v5, v5, v8

    sub-float v5, v32, v5

    add-float v31, v31, v5

    .line 1360
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLBitmapTexture;->getTop()F

    move-result v5

    sub-float v19, v31, v5

    .line 1361
    .local v19, fromYDelta:F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLViewGroup;->getWidth()F

    move-result v5

    div-float v4, v33, v5

    .line 1362
    .local v4, scaleX:F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v5

    div-float v6, v28, v5

    .line 1364
    .local v6, scaleY:F
    new-instance v23, Landroid/view/animation/LinearInterpolator;

    invoke-direct/range {v23 .. v23}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 1369
    .local v23, interpol:Landroid/view/animation/Interpolator;
    if-eqz v24, :cond_3

    .line 1370
    new-instance v3, Landroid/view/animation/ScaleAnimation;

    const/high16 v5, 0x3f80

    const/high16 v7, 0x3f80

    const/4 v8, 0x2

    const/high16 v9, 0x3f00

    const/4 v10, 0x1

    const/high16 v11, 0x3f80

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1371
    .local v3, animRect:Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getWidth()F

    move-result v5

    float-to-int v5, v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getHeight()F

    move-result v8

    float-to-int v8, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/MenuBase;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLViewGroup;->getWidth()F

    move-result v9

    float-to-int v9, v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v10}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {v3, v5, v8, v9, v10}, Landroid/view/animation/ScaleAnimation;->initialize(IIII)V

    .line 1372
    const-wide/16 v8, 0xb2

    invoke-virtual {v3, v8, v9}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 1373
    const-wide/16 v8, 0x0

    invoke-virtual {v3, v8, v9}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    .line 1374
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 1375
    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1400
    :goto_2
    new-instance v35, Landroid/view/animation/TranslateAnimation;

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-direct {v0, v1, v5, v2, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1401
    .local v35, ta:Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getWidth()F

    move-result v5

    float-to-int v5, v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getHeight()F

    move-result v8

    float-to-int v8, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLViewGroup;->getWidth()F

    move-result v9

    float-to-int v9, v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v10}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v10

    float-to-int v10, v10

    move-object/from16 v0, v35

    invoke-virtual {v0, v5, v8, v9, v10}, Landroid/view/animation/TranslateAnimation;->initialize(IIII)V

    .line 1402
    const-wide/16 v8, 0xb2

    move-object/from16 v0, v35

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1403
    const-wide/16 v8, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 1404
    const/4 v5, 0x1

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 1405
    move-object/from16 v0, v35

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1407
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/MenuBase;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLViewGroup;->getClipRect()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLViewGroup;->setClipRect(Landroid/graphics/Rect;)V

    .line 1408
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v5, v3}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1409
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Lcom/sec/android/glview/TwGLBitmapTexture;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1411
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLNinePatchTexture;->startAnimation()V

    .line 1412
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLBitmapTexture;->startAnimation()V

    .line 1413
    monitor-exit v40

    goto/16 :goto_0

    .end local v3           #animRect:Landroid/view/animation/Animation;
    .end local v4           #scaleX:F
    .end local v6           #scaleY:F
    .end local v17           #fromXDelta:F
    .end local v18           #fromXDeltaRect:F
    .end local v19           #fromYDelta:F
    .end local v20           #fromYDeltaRect:F
    .end local v23           #interpol:Landroid/view/animation/Interpolator;
    .end local v35           #ta:Landroid/view/animation/Animation;
    :catchall_0
    move-exception v5

    monitor-exit v40
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1289
    :pswitch_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    invoke-virtual {v5, v8, v9}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    .line 1290
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_X:F

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    invoke-virtual {v5, v8, v9, v10}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 1291
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLViewGroup;->setOrientation(I)V

    .line 1292
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    invoke-virtual {v5, v8, v9}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setSize(FF)V

    .line 1294
    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_X:F

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LANDSCAPE_PRIEVIEW_THUMB_RECT_WIDTH:F

    const/high16 v9, 0x4000

    div-float/2addr v8, v9

    add-float v26, v5, v8

    .line 1295
    .local v26, leftFocus:F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    const/4 v8, 0x0

    aget-object v5, v5, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLImage;->getImageHeight()F

    move-result v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    sub-float/2addr v9, v10

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    move/from16 v0, v26

    invoke-virtual {v5, v0, v8}, Lcom/sec/android/glview/TwGLImage;->moveLayoutAbsolute(FF)V

    .line 1296
    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    const/high16 v8, 0x4000

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v8, v9

    sub-float/2addr v5, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureCount:I

    int-to-float v8, v8

    const/high16 v9, 0x3f80

    add-float/2addr v8, v9

    mul-float/2addr v5, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMAX_MAX_IMAGE_COUNT:I

    int-to-float v8, v8

    const/high16 v9, 0x3f80

    add-float/2addr v8, v9

    div-float v38, v5, v8

    .line 1297
    .local v38, width:F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    const/high16 v9, 0x4000

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    move/from16 v0, v38

    invoke-virtual {v5, v0, v8}, Lcom/sec/android/glview/TwGLBitmapTexture;->setSize(FF)V

    .line 1298
    add-float v5, v26, v39

    const/high16 v8, 0x4140

    sub-float v38, v5, v8

    .line 1299
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    aget-object v5, v5, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLImage;->getImageHeight()F

    move-result v9

    sub-float/2addr v8, v9

    const/high16 v9, 0x4000

    div-float/2addr v8, v9

    move/from16 v0, v38

    invoke-virtual {v5, v0, v8}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    .line 1300
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    aget-object v5, v5, v8

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    goto/16 :goto_1

    .line 1304
    .end local v26           #leftFocus:F
    .end local v38           #width:F
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    invoke-virtual {v5, v8, v9}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    .line 1305
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_X:F

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    invoke-virtual {v5, v8, v9, v10}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 1306
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLViewGroup;->setOrientation(I)V

    .line 1307
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    invoke-virtual {v5, v8, v9}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setSize(FF)V

    .line 1308
    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    const/high16 v8, 0x4000

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v8, v9

    sub-float/2addr v5, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureCount:I

    int-to-float v8, v8

    const/high16 v9, 0x3f80

    add-float/2addr v8, v9

    mul-float/2addr v5, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMAX_MAX_IMAGE_COUNT:I

    int-to-float v8, v8

    const/high16 v9, 0x3f80

    add-float/2addr v8, v9

    div-float v38, v5, v8

    .line 1309
    .restart local v38       #width:F
    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    const/high16 v8, 0x4000

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v8, v9

    sub-float/2addr v5, v8

    sub-float v25, v5, v38

    .line 1310
    .local v25, left:F
    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_X:F

    add-float v5, v5, v25

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    const/high16 v9, 0x4000

    div-float/2addr v8, v9

    sub-float/2addr v5, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    add-float v26, v5, v8

    .line 1311
    .restart local v26       #leftFocus:F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    const/high16 v9, 0x4000

    div-float/2addr v8, v9

    move/from16 v0, v25

    invoke-virtual {v5, v0, v8}, Lcom/sec/android/glview/TwGLBitmapTexture;->moveLayoutAbsolute(FF)V

    .line 1312
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    const/high16 v9, 0x4000

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    move/from16 v0, v38

    invoke-virtual {v5, v0, v8}, Lcom/sec/android/glview/TwGLBitmapTexture;->setSize(FF)V

    .line 1313
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    const/4 v8, 0x0

    aget-object v5, v5, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLImage;->getImageHeight()F

    move-result v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    sub-float/2addr v9, v10

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    move/from16 v0, v26

    invoke-virtual {v5, v0, v8}, Lcom/sec/android/glview/TwGLImage;->moveLayoutAbsolute(FF)V

    .line 1314
    const/high16 v5, 0x4000

    div-float v5, v39, v5

    sub-float v5, v26, v5

    const/high16 v8, 0x4140

    sub-float/2addr v5, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_X:F

    sub-float v38, v5, v8

    .line 1315
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    aget-object v5, v5, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLImage;->getImageHeight()F

    move-result v9

    sub-float/2addr v8, v9

    const/high16 v9, 0x4000

    div-float/2addr v8, v9

    move/from16 v0, v38

    invoke-virtual {v5, v0, v8}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    .line 1316
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    aget-object v5, v5, v8

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    goto/16 :goto_1

    .line 1320
    .end local v25           #left:F
    .end local v26           #leftFocus:F
    .end local v38           #width:F
    :pswitch_3
    const/16 v24, 0x0

    .line 1321
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    invoke-virtual {v5, v8, v9}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    .line 1322
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X:F

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_Y:F

    invoke-virtual {v5, v8, v9, v10}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 1323
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLViewGroup;->setOrientation(I)V

    .line 1324
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    invoke-virtual {v5, v8, v9}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setSize(FF)V

    .line 1325
    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    const/high16 v8, 0x4000

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v8, v9

    sub-float/2addr v5, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureCount:I

    int-to-float v8, v8

    const/high16 v9, 0x3f80

    add-float/2addr v8, v9

    mul-float/2addr v5, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMAX_MAX_IMAGE_COUNT:I

    int-to-float v8, v8

    const/high16 v9, 0x3f80

    add-float/2addr v8, v9

    div-float v21, v5, v8

    .line 1326
    .local v21, height:F
    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    sub-float v5, v5, v21

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float v36, v5, v8

    .line 1327
    .local v36, top:F
    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    const/high16 v8, 0x4000

    div-float/2addr v5, v8

    sub-float v5, v36, v5

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    add-float/2addr v5, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_Y:F

    add-float v37, v5, v8

    .line 1328
    .local v37, topFocus:F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    const/high16 v9, 0x4000

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float v9, v21, v9

    invoke-virtual {v5, v8, v9}, Lcom/sec/android/glview/TwGLBitmapTexture;->setSize(FF)V

    .line 1329
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    const/4 v8, 0x2

    aget-object v5, v5, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    const/4 v10, 0x2

    aget-object v9, v9, v10

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLImage;->getImageWidth()F

    move-result v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    sub-float/2addr v9, v10

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    move/from16 v0, v37

    invoke-virtual {v5, v8, v0}, Lcom/sec/android/glview/TwGLImage;->moveLayoutAbsolute(FF)V

    .line 1330
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    const/4 v8, 0x0

    move/from16 v0, v36

    invoke-virtual {v5, v8, v0}, Lcom/sec/android/glview/TwGLBitmapTexture;->moveLayoutAbsolute(FF)V

    .line 1331
    const/high16 v5, 0x4000

    div-float v5, v22, v5

    sub-float v5, v36, v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLImage;->getImageHeight()F

    move-result v8

    sub-float/2addr v5, v8

    const/high16 v8, 0x41b0

    sub-float v21, v5, v8

    .line 1332
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x1

    aget-object v5, v5, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_RECT_WIDTH:F

    const/high16 v9, 0x4000

    div-float/2addr v8, v9

    const/high16 v9, 0x4190

    sub-float/2addr v8, v9

    move/from16 v0, v21

    invoke-virtual {v5, v8, v0}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    .line 1333
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x1

    aget-object v5, v5, v8

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    goto/16 :goto_1

    .line 1337
    .end local v21           #height:F
    .end local v36           #top:F
    .end local v37           #topFocus:F
    :pswitch_4
    const/16 v24, 0x0

    .line 1338
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    invoke-virtual {v5, v8, v9}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    .line 1339
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X:F

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_Y:F

    invoke-virtual {v5, v8, v9, v10}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 1340
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLViewGroup;->setOrientation(I)V

    .line 1341
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    invoke-virtual {v5, v8, v9}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setSize(FF)V

    .line 1342
    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    const/high16 v8, 0x4000

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v8, v9

    sub-float/2addr v5, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureCount:I

    int-to-float v8, v8

    const/high16 v9, 0x3f80

    add-float/2addr v8, v9

    mul-float/2addr v5, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMAX_MAX_IMAGE_COUNT:I

    int-to-float v8, v8

    const/high16 v9, 0x3f80

    add-float/2addr v8, v9

    div-float v21, v5, v8

    .line 1343
    .restart local v21       #height:F
    const/16 v36, 0x0

    .line 1344
    .restart local v36       #top:F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    const/high16 v9, 0x4000

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float v9, v21, v9

    invoke-virtual {v5, v8, v9}, Lcom/sec/android/glview/TwGLBitmapTexture;->setSize(FF)V

    .line 1345
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    const/4 v8, 0x0

    move/from16 v0, v36

    invoke-virtual {v5, v8, v0}, Lcom/sec/android/glview/TwGLBitmapTexture;->moveLayoutAbsolute(FF)V

    .line 1346
    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    const/high16 v8, 0x4000

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v8, v9

    sub-float/2addr v5, v8

    const/high16 v8, 0x4000

    mul-float/2addr v5, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMAX_MAX_IMAGE_COUNT:I

    int-to-float v8, v8

    const/high16 v9, 0x3f80

    add-float/2addr v8, v9

    div-float/2addr v5, v8

    const/high16 v8, 0x4000

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v8, v9

    add-float v22, v5, v8

    .line 1347
    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_Y:F

    const/high16 v8, 0x4000

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v8, v9

    add-float/2addr v5, v8

    add-float v5, v5, v21

    const/high16 v8, 0x4000

    div-float v8, v22, v8

    sub-float v37, v5, v8

    .line 1348
    .restart local v37       #topFocus:F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    const/4 v8, 0x2

    aget-object v5, v5, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    const/4 v10, 0x2

    aget-object v9, v9, v10

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLImage;->getImageWidth()F

    move-result v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    sub-float/2addr v9, v10

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    move/from16 v0, v37

    invoke-virtual {v5, v8, v0}, Lcom/sec/android/glview/TwGLImage;->moveLayoutAbsolute(FF)V

    .line 1349
    add-float v5, v21, v22

    const/high16 v8, 0x4000

    div-float v8, v22, v8

    sub-float v21, v5, v8

    .line 1350
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x1

    aget-object v5, v5, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_RECT_WIDTH:F

    const/high16 v9, 0x4000

    div-float/2addr v8, v9

    const/high16 v9, 0x4190

    sub-float/2addr v8, v9

    move/from16 v0, v21

    invoke-virtual {v5, v8, v0}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    .line 1351
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x1

    aget-object v5, v5, v8

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    goto/16 :goto_1

    .line 1377
    .end local v21           #height:F
    .end local v36           #top:F
    .end local v37           #topFocus:F
    .restart local v4       #scaleX:F
    .restart local v6       #scaleY:F
    .restart local v17       #fromXDelta:F
    .restart local v18       #fromXDeltaRect:F
    .restart local v19       #fromYDelta:F
    .restart local v20       #fromYDeltaRect:F
    .restart local v23       #interpol:Landroid/view/animation/Interpolator;
    :cond_3
    new-instance v7, Landroid/view/animation/ScaleAnimation;

    const/high16 v9, 0x3f80

    const/high16 v11, 0x3f80

    const/4 v12, 0x1

    const/high16 v13, 0x3f00

    const/4 v14, 0x1

    const/high16 v15, 0x3f80

    move v8, v4

    move v10, v6

    invoke-direct/range {v7 .. v15}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1378
    .local v7, scaleRect:Landroid/view/animation/ScaleAnimation;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getWidth()F

    move-result v5

    float-to-int v5, v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getHeight()F

    move-result v8

    float-to-int v8, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLViewGroup;->getWidth()F

    move-result v9

    float-to-int v9, v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v10}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {v7, v5, v8, v9, v10}, Landroid/view/animation/ScaleAnimation;->initialize(IIII)V

    .line 1379
    const-wide/16 v8, 0xb2

    invoke-virtual {v7, v8, v9}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 1380
    const-wide/16 v8, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    .line 1381
    const/4 v5, 0x1

    invoke-virtual {v7, v5}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 1382
    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1384
    new-instance v27, Landroid/view/animation/TranslateAnimation;

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v18

    move/from16 v2, v20

    invoke-direct {v0, v1, v5, v2, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1385
    .local v27, moveRect:Landroid/view/animation/TranslateAnimation;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getWidth()F

    move-result v5

    float-to-int v5, v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getHeight()F

    move-result v8

    float-to-int v8, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLViewGroup;->getWidth()F

    move-result v9

    float-to-int v9, v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v10}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v10

    float-to-int v10, v10

    move-object/from16 v0, v27

    invoke-virtual {v0, v5, v8, v9, v10}, Landroid/view/animation/TranslateAnimation;->initialize(IIII)V

    .line 1386
    const-wide/16 v8, 0xb2

    move-object/from16 v0, v27

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1387
    const-wide/16 v8, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 1388
    const/4 v5, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 1389
    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1391
    new-instance v34, Landroid/view/animation/AnimationSet;

    const/4 v5, 0x1

    move-object/from16 v0, v34

    invoke-direct {v0, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1392
    .local v34, set:Landroid/view/animation/AnimationSet;
    move-object/from16 v0, v34

    invoke-virtual {v0, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1393
    move-object/from16 v0, v34

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1394
    const-wide/16 v8, 0xb2

    move-object/from16 v0, v34

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 1395
    move-object/from16 v0, v34

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1396
    move-object/from16 v3, v34

    .restart local v3       #animRect:Landroid/view/animation/Animation;
    goto/16 :goto_2

    .line 1287
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public clearPanoramaRect()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 1217
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_0

    .line 1218
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setVisibility(I)V

    .line 1219
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->resetTranslate()V

    .line 1226
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mViewFinderDestination:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    .line 1228
    return-void
.end method

.method public getAnimation(II)Landroid/view/animation/AnimationSet;
    .locals 10
    .parameter "speed"
    .parameter "direction"

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 411
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 412
    .local v1, animation:Landroid/view/animation/AnimationSet;
    const/4 v0, 0x0

    .line 414
    .local v0, anim:Landroid/view/animation/Animation;
    packed-switch p2, :pswitch_data_0

    .line 440
    :goto_0
    :pswitch_0
    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 441
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 442
    invoke-virtual {v0, v7}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 443
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 444
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 446
    return-object v1

    .line 417
    :pswitch_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0           #anim:Landroid/view/animation/Animation;
    const/high16 v2, -0x3df0

    invoke-direct {v0, v3, v3, v3, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 418
    .restart local v0       #anim:Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v6

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v6

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/animation/TranslateAnimation;->initialize(IIII)V

    goto :goto_0

    .line 423
    :pswitch_2
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0           #anim:Landroid/view/animation/Animation;
    const/high16 v2, 0x4210

    invoke-direct {v0, v3, v3, v3, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 424
    .restart local v0       #anim:Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v8

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v8

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/animation/TranslateAnimation;->initialize(IIII)V

    goto :goto_0

    .line 429
    :pswitch_3
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0           #anim:Landroid/view/animation/Animation;
    const/high16 v2, -0x3df0

    invoke-direct {v0, v3, v2, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 430
    .restart local v0       #anim:Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v7

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v7

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v7

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v7

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/animation/TranslateAnimation;->initialize(IIII)V

    goto/16 :goto_0

    .line 435
    :pswitch_4
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0           #anim:Landroid/view/animation/Animation;
    const/high16 v2, 0x4210

    invoke-direct {v0, v3, v2, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 436
    .restart local v0       #anim:Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v9

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v9

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v9

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v9

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/animation/TranslateAnimation;->initialize(IIII)V

    goto/16 :goto_0

    .line 414
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getCaptureProgressIncreased()I
    .locals 1

    .prologue
    .line 573
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureCount:I

    return v0
.end method

.method public hideCaptureTri()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 540
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 541
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 542
    return-void
.end method

.method public hideLivePreview()V
    .locals 2

    .prologue
    .line 611
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->hideWarningArrow(Z)V

    .line 612
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->hideWarningText()V

    .line 613
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 614
    return-void
.end method

.method public hidePostCaptureLayout()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 1623
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1624
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    .line 1625
    return-void
.end method

.method public hidePreviewGroup()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 483
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mStandByGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 484
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mStandByGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 487
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 488
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 489
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 488
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 491
    :cond_1
    return-void
.end method

.method public hideWarningArrow(Z)V
    .locals 3
    .parameter "all"

    .prologue
    const/4 v2, 0x4

    .line 1197
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 1198
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLImage;->resetTranslate()V

    .line 1199
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1200
    if-eqz p1, :cond_0

    .line 1201
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1197
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1204
    :cond_1
    return-void
.end method

.method public hideWarningBox(I)V
    .locals 3
    .parameter "direction"

    .prologue
    const/4 v2, 0x4

    .line 1207
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1208
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1209
    return-void
.end method

.method public init()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    const/high16 v6, 0x4000

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 390
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const v1, 0x7f020211

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setNinePatchBackground(I)Z

    .line 391
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 392
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    .line 393
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v4, v5}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 394
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMASHOT_POSTCAPTURE_PROGRESSBAR_POS_X:[F

    aget v1, v1, v7

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMASHOT_POSTCAPTURE_PROGRESSBAR_POS_Y:[F

    aget v2, v2, v7

    invoke-virtual {v0, v4, v1, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setLeftTop(IFF)V

    .line 396
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMASHOT_PROGRESSBAR_X:F

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLProgressBar;->getWidth()F

    move-result v2

    add-float/2addr v1, v2

    const v2, 0x7f07009a

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMASHOT_PROGRESSBAR_Y:F

    sub-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->STATUSBAR_HEIGHT:F

    div-float/2addr v3, v6

    sub-float/2addr v2, v3

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setLeftTop(IFF)V

    .line 398
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMASHOT_POSTCAPTURE_PROGRESSBAR_POS_X:[F

    aget v1, v1, v4

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMASHOT_POSTCAPTURE_PROGRESSBAR_POS_Y:[F

    aget v2, v2, v4

    invoke-virtual {v0, v8, v1, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setLeftTop(IFF)V

    .line 401
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v5, v5}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 402
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->HELP_TEXT_POS_X:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->HELP_TEXT_POS_Y:F

    invoke-virtual {v0, v7, v1, v2}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 403
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const v1, 0x7f07009d

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    const v2, 0x7f07009e

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->HELP_TEXT_WIDTH:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v6

    invoke-virtual {v0, v4, v1, v2}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 404
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->HELP_TEXT_WIDTH:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->HELP_TEXT_POS_X:F

    add-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->SCREEN_HEIGHT:F

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 405
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const v1, 0x7f07009d

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->HELP_TEXT_HEIGHT:F

    sub-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->HELP_TEXT_WIDTH:F

    const v3, 0x7f07009e

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    div-float/2addr v2, v6

    invoke-virtual {v0, v8, v1, v2}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 407
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setMax(I)V

    .line 408
    return-void
.end method

.method public isPanoramaCapturing()Z
    .locals 1

    .prologue
    .line 698
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mIsPanoramaCapturing:Z

    return v0
.end method

.method public isPanoramaStitching()Z
    .locals 1

    .prologue
    .line 702
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mIsPanoramaStitching:Z

    return v0
.end method

.method public onBack()V
    .locals 2

    .prologue
    .line 451
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureCount:I

    if-lez v0, :cond_1

    .line 452
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mListener:Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu$OnNewPanoramaCaptureCancelListener;

    invoke-interface {v0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu$OnNewPanoramaCaptureCancelListener;->onPanoramaCaptureCancelled()V

    .line 453
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->reset()V

    .line 457
    :cond_0
    :goto_0
    return-void

    .line 454
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 455
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto :goto_0
.end method

.method public onHide()V
    .locals 1

    .prologue
    .line 501
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->hidePreviewGroup()V

    .line 502
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->hideLivePreview()V

    .line 503
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->clearPanoramaRect()V

    .line 504
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->stopPanoramaSound()V

    .line 505
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->hideWarningArrow(Z)V

    .line 506
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->hideWarningText()V

    .line 508
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onHide()V

    .line 509
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v2, 0x1b

    const/4 v0, 0x1

    .line 623
    const/16 v1, 0x18

    if-eq p1, v1, :cond_0

    const/16 v1, 0x19

    if-ne p1, v1, :cond_1

    .line 646
    :cond_0
    :goto_0
    return v0

    .line 628
    :cond_1
    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    if-ne p1, v2, :cond_3

    .line 629
    :cond_2
    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mIsPanoramaStitching:Z

    if-nez v1, :cond_0

    .line 634
    :cond_3
    if-ne p1, v2, :cond_4

    .line 635
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->getCaptureProgressIncreased()I

    move-result v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMAX_MAX_IMAGE_COUNT:I

    if-ne v1, v2, :cond_4

    .line 636
    const-string v1, "TwGLNewPanoramaMenu"

    const-string v2, "onKeyDown - PANORAMAX_MAX_IMAGE_COUNT"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 641
    :cond_4
    const/16 v1, 0xa8

    if-eq p1, v1, :cond_5

    const/16 v1, 0xa9

    if-ne p1, v1, :cond_6

    :cond_5
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureCount:I

    if-lez v1, :cond_6

    .line 642
    const-string v1, "TwGLNewPanoramaMenu"

    const-string v2, "onKeyDown - ZoomKEY"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 646
    :cond_6
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/MenuBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v2, 0x1b

    const/4 v0, 0x1

    .line 652
    const/16 v1, 0x18

    if-eq p1, v1, :cond_0

    const/16 v1, 0x19

    if-ne p1, v1, :cond_1

    .line 675
    :cond_0
    :goto_0
    return v0

    .line 657
    :cond_1
    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    if-ne p1, v2, :cond_3

    .line 658
    :cond_2
    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mIsPanoramaStitching:Z

    if-nez v1, :cond_0

    .line 663
    :cond_3
    if-ne p1, v2, :cond_4

    .line 664
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->getCaptureProgressIncreased()I

    move-result v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMAX_MAX_IMAGE_COUNT:I

    if-ne v1, v2, :cond_4

    .line 665
    const-string v1, "TwGLNewPanoramaMenu"

    const-string v2, "onKeyUp - PANORAMAX_MAX_IMAGE_COUNT"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 670
    :cond_4
    const/16 v1, 0xa8

    if-eq p1, v1, :cond_5

    const/16 v1, 0xa9

    if-ne p1, v1, :cond_6

    :cond_5
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureCount:I

    if-lez v1, :cond_6

    .line 671
    const-string v1, "TwGLNewPanoramaMenu"

    const-string v2, "onKeyDown - ZoomKEY"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 675
    :cond_6
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/MenuBase;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onLivePreviewData([B)V
    .locals 16
    .parameter "data"

    .prologue
    .line 1430
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    if-eqz v1, :cond_1

    .line 1431
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewPrevious:Lcom/sec/android/glview/TwGLBitmapTexture;

    if-eqz v1, :cond_0

    .line 1432
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewPrevious:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 1433
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewPrevious:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLBitmapTexture;->clear()V

    .line 1434
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewPrevious:Lcom/sec/android/glview/TwGLBitmapTexture;

    .line 1436
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewPrevious:Lcom/sec/android/glview/TwGLBitmapTexture;

    .line 1438
    :cond_1
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/Util;->decodeRgbaBitmap([B[Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1439
    .local v7, bmp:Landroid/graphics/Bitmap;
    if-nez v7, :cond_2

    .line 1440
    const-string v1, "TwGLNewPanoramaMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unable to decode RGBA data for live preview. Data: "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    :goto_0
    return-void

    .line 1444
    :cond_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureCount:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 1445
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->updateLivePreviewLayout(Z)V

    .line 1447
    :cond_3
    const/4 v8, 0x0

    .local v8, arrowleft:F
    const/4 v9, 0x0

    .line 1448
    .local v9, arrowtop:F
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_X:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    add-float v11, v1, v2

    .line 1449
    .local v11, leftFocus:F
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_Y:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    const/high16 v14, 0x4000

    div-float/2addr v2, v14

    add-float v12, v1, v2

    .line 1450
    .local v12, topFocus:F
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    const/high16 v2, 0x4000

    sget v14, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v2, v14

    sub-float v13, v1, v2

    .line 1451
    .local v13, widthFocus:F
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    const/high16 v2, 0x4000

    sget v14, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v2, v14

    sub-float v10, v1, v2

    .line 1452
    .local v10, heightFocus:F
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    .line 1453
    .local v3, left:F
    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    .line 1455
    .local v4, top:F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureCount:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    .line 1456
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    const/high16 v2, 0x4000

    sget v14, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v2, v14

    sub-float v5, v1, v2

    .line 1457
    .local v5, width:F
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    const/high16 v2, 0x4000

    sget v14, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v2, v14

    sub-float v6, v1, v2

    .line 1516
    .local v6, height:F
    :goto_1
    new-instance v1, Lcom/sec/android/glview/TwGLBitmapTexture;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/MenuBase;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLViewGroup;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/glview/TwGLBitmapTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLandroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    .line 1517
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 1519
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureCount:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMAX_MAX_IMAGE_COUNT:I

    if-ge v1, v2, :cond_b

    .line 1520
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureCount:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_5

    .line 1521
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mDetectedDirection:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mDetectedDirection:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_a

    .line 1522
    :cond_4
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    const/high16 v14, 0x4000

    div-float/2addr v2, v14

    add-float/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    const/4 v14, 0x0

    aget-object v2, v2, v14

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->getImageHeight()F

    move-result v2

    sget v14, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    sub-float/2addr v2, v14

    const/high16 v14, 0x4000

    div-float/2addr v2, v14

    sub-float v12, v1, v2

    .line 1523
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLViewGroup;->resetTranslate()V

    .line 1524
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1525
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1, v11, v12}, Lcom/sec/android/glview/TwGLImage;->moveLayoutAbsolute(FF)V

    .line 1526
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/high16 v2, 0x4160

    add-float/2addr v2, v8

    invoke-virtual {v1, v2, v9}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    .line 1545
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mDetectedDirection:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mDetectedDirection:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_e

    .line 1546
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLViewGroup;->bringToFront()V

    goto/16 :goto_0

    .line 1459
    .end local v5           #width:F
    .end local v6           #height:F
    :cond_7
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mDetectedDirection:I

    packed-switch v1, :pswitch_data_0

    .line 1511
    :pswitch_0
    const-string v1, "TwGLNewPanoramaMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "PANORAMA Invalid direction: "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mDetectedDirection:I

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1461
    :pswitch_1
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    const/high16 v2, 0x4000

    sget v14, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v2, v14

    sub-float v6, v1, v2

    .line 1462
    .restart local v6       #height:F
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    const/high16 v2, 0x4000

    sget v14, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v2, v14

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureCount:I

    int-to-float v2, v2

    const/high16 v14, 0x3f80

    add-float/2addr v2, v14

    mul-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMAX_MAX_IMAGE_COUNT:I

    int-to-float v2, v2

    const/high16 v14, 0x3f80

    add-float/2addr v2, v14

    div-float v5, v1, v2

    .line 1463
    .restart local v5       #width:F
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    const/high16 v2, 0x4000

    sget v14, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v2, v14

    sub-float/2addr v1, v2

    const/high16 v2, 0x4000

    mul-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMAX_MAX_IMAGE_COUNT:I

    int-to-float v2, v2

    const/high16 v14, 0x3f80

    add-float/2addr v2, v14

    div-float v13, v1, v2

    .line 1465
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LANDSCAPE_PRIEVIEW_THUMB_RECT_WIDTH:F

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureCount:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v11, v1

    .line 1466
    add-float v1, v11, v13

    const/high16 v2, 0x4140

    add-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_X:F

    sub-float v8, v1, v2

    .line 1467
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    const/high16 v2, 0x4230

    sub-float/2addr v1, v2

    const/high16 v2, 0x4000

    div-float v9, v1, v2

    .line 1468
    goto/16 :goto_1

    .line 1471
    .end local v5           #width:F
    .end local v6           #height:F
    :pswitch_2
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    const/high16 v2, 0x4000

    sget v14, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v2, v14

    sub-float v6, v1, v2

    .line 1472
    .restart local v6       #height:F
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    const/high16 v2, 0x4000

    sget v14, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v2, v14

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureCount:I

    int-to-float v2, v2

    const/high16 v14, 0x3f80

    add-float/2addr v2, v14

    mul-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMAX_MAX_IMAGE_COUNT:I

    int-to-float v2, v2

    const/high16 v14, 0x3f80

    add-float/2addr v2, v14

    div-float v5, v1, v2

    .line 1473
    .restart local v5       #width:F
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    const/high16 v2, 0x4000

    sget v14, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v2, v14

    sub-float/2addr v1, v2

    sub-float v3, v1, v5

    .line 1474
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    const/high16 v2, 0x4000

    sget v14, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v2, v14

    sub-float/2addr v1, v2

    const/high16 v2, 0x4000

    mul-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMAX_MAX_IMAGE_COUNT:I

    int-to-float v2, v2

    const/high16 v14, 0x3f80

    add-float/2addr v2, v14

    div-float v13, v1, v2

    .line 1475
    const/high16 v1, 0x4000

    div-float v1, v13, v1

    sub-float v1, v3, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float/2addr v1, v2

    add-float/2addr v11, v1

    .line 1476
    const/high16 v1, 0x4000

    div-float v1, v13, v1

    sub-float v1, v11, v1

    const/high16 v2, 0x4140

    sub-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_X:F

    sub-float v8, v1, v2

    .line 1477
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    const/high16 v2, 0x4230

    sub-float/2addr v1, v2

    const/high16 v2, 0x4000

    div-float v9, v1, v2

    .line 1478
    goto/16 :goto_1

    .line 1481
    .end local v5           #width:F
    .end local v6           #height:F
    :pswitch_3
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    const/high16 v2, 0x4000

    sget v14, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v2, v14

    sub-float v5, v1, v2

    .line 1482
    .restart local v5       #width:F
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    const/high16 v2, 0x4000

    sget v14, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v2, v14

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureCount:I

    int-to-float v2, v2

    const/high16 v14, 0x3f80

    add-float/2addr v2, v14

    mul-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMAX_MAX_IMAGE_COUNT:I

    int-to-float v2, v2

    const/high16 v14, 0x3f80

    add-float/2addr v2, v14

    div-float v6, v1, v2

    .line 1483
    .restart local v6       #height:F
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    const/high16 v2, 0x4000

    sget v14, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v2, v14

    sub-float v13, v1, v2

    .line 1484
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    const/high16 v2, 0x4000

    sget v14, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v2, v14

    sub-float/2addr v1, v2

    const/high16 v2, 0x4000

    mul-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMAX_MAX_IMAGE_COUNT:I

    int-to-float v2, v2

    const/high16 v14, 0x3f80

    add-float/2addr v2, v14

    div-float v10, v1, v2

    .line 1485
    const/high16 v1, 0x4000

    div-float v1, v10, v1

    sub-float v1, v6, v1

    add-float/2addr v12, v1

    .line 1486
    const-string v1, "TwGLNewPanoramaMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "topFocus 22=="

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureCount:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMAX_MAX_IMAGE_COUNT:I

    if-ne v1, v2, :cond_8

    .line 1488
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    const/high16 v2, 0x4000

    sget v14, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v2, v14

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureCount:I

    int-to-float v2, v2

    const/high16 v14, 0x3f80

    add-float/2addr v2, v14

    mul-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMAX_MAX_IMAGE_COUNT:I

    int-to-float v2, v2

    const/high16 v14, 0x3f80

    add-float/2addr v2, v14

    div-float v6, v1, v2

    .line 1489
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    sub-float/2addr v1, v6

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float v4, v1, v2

    .line 1491
    :cond_8
    add-float v1, v6, v10

    const/high16 v2, 0x4000

    div-float v2, v10, v2

    sub-float v9, v1, v2

    .line 1492
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_RECT_WIDTH:F

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    const/high16 v2, 0x4190

    sub-float v8, v1, v2

    .line 1493
    goto/16 :goto_1

    .line 1496
    .end local v5           #width:F
    .end local v6           #height:F
    :pswitch_4
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    const/high16 v2, 0x4000

    sget v14, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v2, v14

    sub-float v5, v1, v2

    .line 1497
    .restart local v5       #width:F
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    const/high16 v2, 0x4000

    sget v14, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v2, v14

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureCount:I

    int-to-float v2, v2

    const/high16 v14, 0x3f80

    add-float/2addr v2, v14

    mul-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMAX_MAX_IMAGE_COUNT:I

    int-to-float v2, v2

    const/high16 v14, 0x3f80

    add-float/2addr v2, v14

    div-float v6, v1, v2

    .line 1498
    .restart local v6       #height:F
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    const/high16 v2, 0x4000

    sget v14, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v2, v14

    sub-float v13, v1, v2

    .line 1499
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    const/high16 v2, 0x4000

    sget v14, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v2, v14

    sub-float/2addr v1, v2

    const/high16 v2, 0x4000

    mul-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMAX_MAX_IMAGE_COUNT:I

    int-to-float v2, v2

    const/high16 v14, 0x3f80

    add-float/2addr v2, v14

    div-float v10, v1, v2

    .line 1500
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float/2addr v1, v2

    sub-float v4, v1, v6

    .line 1501
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    const/high16 v2, 0x4000

    sget v14, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v2, v14

    sub-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMAX_MAX_IMAGE_COUNT:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureCount:I

    sub-int/2addr v2, v14

    int-to-float v2, v2

    mul-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMAX_MAX_IMAGE_COUNT:I

    int-to-float v2, v2

    const/high16 v14, 0x3f80

    add-float/2addr v2, v14

    div-float/2addr v1, v2

    add-float/2addr v12, v1

    .line 1502
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureCount:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMAX_MAX_IMAGE_COUNT:I

    if-ne v1, v2, :cond_9

    .line 1503
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    const/high16 v2, 0x4000

    sget v14, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v2, v14

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureCount:I

    int-to-float v2, v2

    const/high16 v14, 0x3f80

    add-float/2addr v2, v14

    mul-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMAX_MAX_IMAGE_COUNT:I

    int-to-float v2, v2

    const/high16 v14, 0x3f80

    add-float/2addr v2, v14

    div-float v6, v1, v2

    .line 1504
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    sub-float/2addr v1, v6

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float v4, v1, v2

    .line 1506
    :cond_9
    const/high16 v1, 0x4000

    div-float v1, v10, v1

    sub-float v1, v4, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    const/4 v14, 0x0

    aget-object v2, v2, v14

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->getImageHeight()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x41b0

    sub-float v9, v1, v2

    .line 1507
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_RECT_WIDTH:F

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    const/high16 v2, 0x4190

    sub-float v8, v1, v2

    .line 1508
    goto/16 :goto_1

    .line 1528
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLViewGroup;->resetTranslate()V

    .line 1529
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1530
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X:F

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    const/4 v15, 0x2

    aget-object v14, v14, v15

    invoke-virtual {v14}, Lcom/sec/android/glview/TwGLImage;->getImageWidth()F

    move-result v14

    sget v15, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    sub-float/2addr v14, v15

    const/high16 v15, 0x4000

    div-float/2addr v14, v15

    sub-float/2addr v2, v14

    invoke-virtual {v1, v2, v12}, Lcom/sec/android/glview/TwGLImage;->moveLayoutAbsolute(FF)V

    .line 1531
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1, v8, v9}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    goto/16 :goto_2

    .line 1535
    :cond_b
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mDetectedDirection:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_c

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mDetectedDirection:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_d

    .line 1536
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1540
    :goto_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureCount:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMAX_MAX_IMAGE_COUNT:I

    if-ne v1, v2, :cond_5

    .line 1541
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const/16 v2, 0x9

    const/4 v14, 0x0

    invoke-virtual {v1, v2, v14}, Lcom/sec/android/app/camera/AbstractCameraActivity;->playCameraSound(II)V

    goto/16 :goto_2

    .line 1538
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    goto :goto_3

    .line 1548
    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLViewGroup;->bringToFront()V

    goto/16 :goto_0

    .line 1459
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onOrientationChanged(I)V
    .locals 9
    .parameter "orientation"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/high16 v6, 0x4000

    const/4 v5, 0x0

    const/4 v4, 0x4

    .line 1554
    const-string v1, "TwGLNewPanoramaMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onOrientationChanged="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCurrentOrientation:I

    .line 1557
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureCount:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mStandByGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 1558
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->updateArrow()V

    .line 1561
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1597
    :cond_1
    return-void

    .line 1564
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mStandByBackgroundRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LANDSCAPE_STANDBY_RECT_WIDTH:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LANDSCAPE_STANDBY_RECT_HEIGHT:F

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setSize(FF)V

    .line 1565
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mStandByPreviewRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LANDSCAPE_PRIEVIEW_THUMB_RECT_WIDTH:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LANDSCAPE_STANDBY_RECT_HEIGHT:F

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setSize(FF)V

    .line 1566
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mStandByGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LANDSCAPE_STANDBY_RECT_WIDTH:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LANDSCAPE_STANDBY_RECT_HEIGHT:F

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    .line 1567
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mStandByPreviewRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LANDSCAPE_STANDBY_RECT_WIDTH:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LANDSCAPE_PRIEVIEW_THUMB_RECT_WIDTH:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v6

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/glview/TwGLNinePatchTexture;->moveLayoutAbsolute(FF)V

    .line 1569
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_1

    .line 1570
    if-ge v0, v8, :cond_3

    .line 1571
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureCount:I

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mStandByGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 1572
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v1, v1, v0

    invoke-virtual {v1, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1569
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1575
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v1, v1, v0

    invoke-virtual {v1, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 1581
    .end local v0           #i:I
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mStandByBackgroundRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PORTRAIT_STANDBY_RECT_WIDTH:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PORTRAIT_STANDBY_RECT_HEIGHT:F

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setSize(FF)V

    .line 1582
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mStandByPreviewRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PORTRAIT_PRIEVIEW_THUMB_RECT_HEIGTH:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PORTRAIT_STANDBY_RECT_HEIGHT:F

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setSize(FF)V

    .line 1583
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mStandByGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PORTRAIT_STANDBY_RECT_WIDTH:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PORTRAIT_STANDBY_RECT_HEIGHT:F

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    .line 1584
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mStandByPreviewRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PORTRAIT_STANDBY_RECT_WIDTH:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PORTRAIT_PRIEVIEW_THUMB_RECT_HEIGTH:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v6

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/glview/TwGLNinePatchTexture;->moveLayoutAbsolute(FF)V

    .line 1586
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    if-ge v0, v4, :cond_1

    .line 1587
    if-ge v0, v8, :cond_5

    .line 1588
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v1, v1, v0

    invoke-virtual {v1, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1586
    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1590
    :cond_5
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureCount:I

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mStandByGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    .line 1591
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v1, v1, v0

    invoke-virtual {v1, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    goto :goto_3

    .line 1561
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 680
    const-string v0, "TwGLNewPanoramaMenu"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->getCaptureProgressIncreased()I

    move-result v0

    if-lez v0, :cond_0

    .line 682
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onPanoramaCaptureCancelled()V

    .line 683
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->reset()V

    .line 686
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onPause()V

    .line 687
    return-void
.end method

.method public onShow()V
    .locals 0

    .prologue
    .line 495
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->showPreviewGroup()V

    .line 496
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    .line 497
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 691
    const-string v0, "TwGLNewPanoramaMenu"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->stopCancelTimer()V

    .line 694
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onStop()V

    .line 695
    return-void
.end method

.method public panoramaDirectionChanged(I)V
    .locals 7
    .parameter "orientation"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x4

    const/4 v6, 0x1

    const/4 v2, 0x0

    const/high16 v5, 0x4000

    .line 706
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mDetectedDirection:I

    if-nez v0, :cond_2

    .line 707
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCurrentOrientation:I

    packed-switch v0, :pswitch_data_0

    .line 730
    :goto_0
    packed-switch p1, :pswitch_data_1

    .line 750
    :goto_1
    :pswitch_0
    if-eqz p1, :cond_1

    .line 751
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mViewFinderDestination:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    .line 752
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mDetectedDirection:I

    if-nez v0, :cond_1

    .line 753
    if-eq p1, v3, :cond_0

    const/16 v0, 0x8

    if-ne p1, v0, :cond_3

    .line 754
    :cond_0
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mDetectedDirection:I

    .line 755
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v2, v5

    sub-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v3, v5

    sub-float/2addr v2, v3

    mul-float/2addr v2, v5

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMAX_MAX_IMAGE_COUNT:I

    int-to-float v3, v3

    const/high16 v4, 0x3f80

    add-float/2addr v3, v4

    div-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v3, v5

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setSize(FF)V

    .line 756
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v2, v5

    sub-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v3, v5

    sub-float/2addr v2, v3

    mul-float/2addr v2, v5

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMAX_MAX_IMAGE_COUNT:I

    int-to-float v3, v3

    const/high16 v4, 0x3f80

    add-float/2addr v3, v4

    div-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v3, v5

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 757
    invoke-direct {p0, v6}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->updateLivePreviewLayout(Z)V

    .line 766
    :cond_1
    :goto_2
    return-void

    .line 710
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v0, v0, v2

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 711
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v0, v0, v6

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 712
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v0, v0, v4

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 713
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 717
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v0, v0, v2

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 718
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v0, v0, v6

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 719
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v0, v0, v4

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 720
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    goto/16 :goto_0

    .line 724
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v0, v0, v2

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 725
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v0, v0, v6

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 726
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v0, v0, v4

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 727
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    goto/16 :goto_0

    .line 732
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    aget-object v0, v0, v4

    const v1, 0x7f020197

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setImage(I)V

    .line 733
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const v1, 0x7f020198

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setImage(I)V

    goto/16 :goto_1

    .line 736
    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    aget-object v0, v0, v4

    const v1, 0x7f020192

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setImage(I)V

    .line 737
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const v1, 0x7f020191

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setImage(I)V

    goto/16 :goto_1

    .line 740
    :pswitch_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    aget-object v0, v0, v2

    const v1, 0x7f020193

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setImage(I)V

    .line 741
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    aget-object v0, v0, v6

    const v1, 0x7f020194

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setImage(I)V

    goto/16 :goto_1

    .line 744
    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    aget-object v0, v0, v2

    const v1, 0x7f020196

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setImage(I)V

    .line 745
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    aget-object v0, v0, v6

    const v1, 0x7f020195

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setImage(I)V

    goto/16 :goto_1

    .line 758
    :cond_3
    if-eq p1, v6, :cond_4

    if-ne p1, v4, :cond_1

    .line 759
    :cond_4
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mDetectedDirection:I

    .line 760
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v2, v5

    sub-float/2addr v1, v2

    mul-float/2addr v1, v5

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMAX_MAX_IMAGE_COUNT:I

    int-to-float v2, v2

    const/high16 v3, 0x3f80

    add-float/2addr v2, v3

    div-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v3, v5

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setSize(FF)V

    .line 761
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v0, v0, v6

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v2, v5

    sub-float/2addr v1, v2

    mul-float/2addr v1, v5

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMAX_MAX_IMAGE_COUNT:I

    int-to-float v2, v2

    const/high16 v3, 0x3f80

    add-float/2addr v2, v3

    div-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v3, v5

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 762
    invoke-direct {p0, v6}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->updateLivePreviewLayout(Z)V

    goto/16 :goto_2

    .line 707
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 730
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public panoramaRectChanged(II)V
    .locals 13
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x3

    const/high16 v8, 0x4000

    .line 824
    const/4 v0, 0x0

    .line 825
    .local v0, rect_x:F
    const/4 v1, 0x0

    .line 826
    .local v1, rect_y:F
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mDetectedDirection:I

    packed-switch v2, :pswitch_data_0

    .line 850
    :goto_0
    :pswitch_0
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1194
    :cond_0
    :goto_1
    return-void

    .line 828
    :pswitch_1
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X:F

    neg-int v3, p1

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->SCREEN_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    div-float/2addr v4, v5

    div-float/2addr v3, v4

    add-float v0, v2, v3

    .line 829
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_Y:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    add-float/2addr v2, v3

    int-to-float v3, p2

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->SCREEN_HEIGHT:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_RECT_HEIGHT:F

    div-float/2addr v4, v5

    div-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v5, v8

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureCount:I

    int-to-float v5, v5

    const/high16 v6, 0x3f80

    add-float/2addr v5, v6

    mul-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMAX_MAX_IMAGE_COUNT:I

    int-to-float v5, v5

    const/high16 v6, 0x3f80

    add-float/2addr v5, v6

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    sub-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_RECT_HEIGHT:F

    div-float/2addr v3, v8

    sub-float v1, v2, v3

    .line 831
    goto :goto_0

    .line 833
    :pswitch_2
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X:F

    neg-int v3, p1

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->SCREEN_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    div-float/2addr v4, v5

    div-float/2addr v3, v4

    add-float v0, v2, v3

    .line 834
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_Y:F

    neg-int v3, p2

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->SCREEN_HEIGHT:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_RECT_HEIGHT:F

    div-float/2addr v4, v5

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v4, v8

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureCount:I

    int-to-float v4, v4

    const/high16 v5, 0x3f80

    add-float/2addr v4, v5

    mul-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PANORAMAX_MAX_IMAGE_COUNT:I

    int-to-float v4, v4

    const/high16 v5, 0x3f80

    add-float/2addr v4, v5

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_RECT_HEIGHT:F

    div-float/2addr v3, v8

    sub-float v1, v2, v3

    .line 836
    goto :goto_0

    .line 838
    :pswitch_3
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_X:F

    neg-int v3, p1

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->SCREEN_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_RECT_WIDTH:F

    div-float/2addr v4, v5

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_RECT_WIDTH:F

    div-float/2addr v3, v8

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureCount:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-float v0, v2, v3

    .line 839
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    neg-int v3, p2

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->SCREEN_HEIGHT:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    div-float/2addr v4, v5

    div-float/2addr v3, v4

    add-float v1, v2, v3

    .line 840
    const-string v2, "TwGLNewPanoramaMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCaptureCount!!!!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", x!!!!!!!!!!!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", rect_x!!!!!!!!!!!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 843
    :pswitch_4
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    add-float/2addr v2, v3

    int-to-float v3, p1

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->SCREEN_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_RECT_WIDTH:F

    div-float/2addr v4, v5

    div-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_RECT_WIDTH:F

    div-float/2addr v4, v8

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureCount:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    sub-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_RECT_WIDTH:F

    sub-float v0, v2, v3

    .line 844
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    neg-int v3, p2

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->SCREEN_HEIGHT:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    div-float/2addr v4, v5

    div-float/2addr v3, v4

    add-float v1, v2, v3

    goto/16 :goto_0

    .line 853
    :cond_1
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mDetectedDirection:I

    packed-switch v2, :pswitch_data_1

    .line 1185
    :goto_2
    :pswitch_5
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureCount:I

    if-le v2, v11, :cond_0

    .line 1186
    int-to-float v2, p1

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->SCREEN_WIDTH:F

    neg-float v3, v3

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_2

    int-to-float v2, p1

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->SCREEN_WIDTH:F

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_2

    int-to-float v2, p2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->SCREEN_HEIGHT:F

    neg-float v3, v3

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_2

    int-to-float v2, p2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->SCREEN_HEIGHT:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 1187
    :cond_2
    iput-boolean v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaWarning:Z

    .line 1188
    invoke-virtual {p0, v11}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->hideWarningArrow(Z)V

    .line 1189
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->hideWarningText()V

    .line 1190
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->stopPanoramaSound()V

    .line 1191
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStopPanorama()V

    goto/16 :goto_1

    .line 856
    :pswitch_6
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v10

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 857
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v12

    invoke-virtual {v2, v10}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 858
    const/16 v2, 0xc0

    if-le p1, v2, :cond_3

    const/16 v2, 0x200

    if-lt p1, v2, :cond_4

    :cond_3
    const/16 v2, -0xc0

    if-ge p1, v2, :cond_b

    const/16 v2, -0x200

    if-le p1, v2, :cond_b

    .line 859
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v2, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 860
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v2, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 861
    iput-boolean v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaWarning:Z

    .line 864
    :cond_5
    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaWarning:Z

    if-nez v2, :cond_6

    .line 865
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v2, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 866
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v10

    const/16 v3, 0x12c

    const/4 v4, 0x4

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 867
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v11

    const/16 v3, 0x12c

    const/16 v4, 0x8

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 868
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v12

    const/16 v3, 0x12c

    invoke-virtual {p0, v3, v12}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 869
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v9

    const/16 v3, 0x12c

    invoke-virtual {p0, v3, v11}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 870
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v10

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 871
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v11

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 872
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v12

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 873
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v9

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 874
    iput-boolean v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaWarning:Z

    .line 899
    :cond_6
    :goto_3
    const/16 v2, -0xc0

    if-ge p1, v2, :cond_7

    int-to-float v2, p1

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->SCREEN_HEIGHT:F

    neg-float v3, v3

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_9

    :cond_7
    const/16 v2, 0xc0

    if-le p1, v2, :cond_8

    int-to-float v2, p1

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->SCREEN_HEIGHT:F

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_9

    :cond_8
    const/16 v2, -0x1f8

    if-lt p2, v2, :cond_9

    const/16 v2, 0x1f8

    if-le p2, v2, :cond_15

    .line 900
    :cond_9
    const/16 v2, -0xc0

    if-ge p1, v2, :cond_11

    int-to-float v2, p1

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->SCREEN_HEIGHT:F

    neg-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_11

    .line 901
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCurrentOrientation:I

    packed-switch v2, :pswitch_data_2

    .line 920
    :goto_4
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v12

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v9

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v12

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v8

    add-float/2addr v3, v0

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v9

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v12

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v8

    add-float/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    .line 921
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v10

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 922
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v11

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 923
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v12

    invoke-virtual {v2, v10}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 924
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v9

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1004
    :cond_a
    :goto_5
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setVisibility(I)V

    .line 1005
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v10}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 1006
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v9

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    .line 1007
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v9

    invoke-virtual {v2, v10}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto/16 :goto_2

    .line 876
    :cond_b
    const/16 v2, 0x200

    if-le p1, v2, :cond_c

    int-to-float v2, p1

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->SCREEN_HEIGHT:F

    neg-float v3, v3

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_e

    :cond_c
    const/16 v2, -0x200

    if-ge p1, v2, :cond_d

    int-to-float v2, p1

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->SCREEN_HEIGHT:F

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_e

    :cond_d
    const/16 v2, -0x1f8

    if-lt p2, v2, :cond_e

    const/16 v2, 0x1f8

    if-le p2, v2, :cond_10

    .line 877
    :cond_e
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v2, v12}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 878
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v2, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 879
    iput-boolean v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaWarning:Z

    .line 882
    :cond_f
    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaWarning:Z

    if-nez v2, :cond_6

    .line 883
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v2, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 884
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v10

    const/16 v3, 0x96

    const/4 v4, 0x4

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 885
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v11

    const/16 v3, 0x96

    const/16 v4, 0x8

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 886
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v12

    const/16 v3, 0x96

    invoke-virtual {p0, v3, v12}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 887
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v9

    const/16 v3, 0x96

    invoke-virtual {p0, v3, v11}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 888
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v10

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 889
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v11

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 890
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v12

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 891
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v9

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 892
    iput-boolean v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaWarning:Z

    goto/16 :goto_3

    .line 895
    :cond_10
    iput-boolean v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaWarning:Z

    .line 896
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->stopPanoramaSound()V

    goto/16 :goto_3

    .line 903
    :pswitch_7
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v4, 0x7f090194

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 904
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLText;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v12

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v9

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v8

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v9

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLText;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v8

    add-float/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->translateAbsolute(FF)V

    goto/16 :goto_4

    .line 907
    :pswitch_8
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v4, 0x7f090195

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 908
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLText;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v12

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v9

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v8

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v9

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLText;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v8

    add-float/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->translateAbsolute(FF)V

    goto/16 :goto_4

    .line 911
    :pswitch_9
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v4, 0x7f090193

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 912
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLText;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v12

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v9

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v8

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLText;->getWidth()F

    move-result v4

    div-float/2addr v4, v8

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLText;->getHeight()F

    move-result v5

    div-float/2addr v5, v8

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v9

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLText;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v8

    add-float/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->translateAbsolute(FF)V

    goto/16 :goto_4

    .line 915
    :pswitch_a
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v4, 0x7f090192

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 916
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLText;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v12

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v9

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v8

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLText;->getWidth()F

    move-result v4

    div-float/2addr v4, v8

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLText;->getHeight()F

    move-result v5

    div-float/2addr v5, v8

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v9

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLText;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v8

    add-float/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->translateAbsolute(FF)V

    goto/16 :goto_4

    .line 925
    :cond_11
    const/16 v2, 0xc0

    if-le p1, v2, :cond_12

    int-to-float v2, p1

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->SCREEN_HEIGHT:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_12

    .line 926
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCurrentOrientation:I

    packed-switch v2, :pswitch_data_3

    .line 945
    :goto_6
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v9

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v9

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v9

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v8

    add-float/2addr v3, v0

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v9

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v9

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v8

    add-float/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    .line 946
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v10

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 947
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v11

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 948
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v12

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 949
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v9

    invoke-virtual {v2, v10}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto/16 :goto_5

    .line 928
    :pswitch_b
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v4, 0x7f090195

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 929
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v12

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v9

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v8

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v9

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLText;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v8

    add-float/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->translateAbsolute(FF)V

    goto/16 :goto_6

    .line 932
    :pswitch_c
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v4, 0x7f090194

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 933
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v12

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v9

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v8

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v9

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLText;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v8

    add-float/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->translateAbsolute(FF)V

    goto/16 :goto_6

    .line 936
    :pswitch_d
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v4, 0x7f090192

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 937
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v12

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->getLeft()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v12

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v9

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v8

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLText;->getWidth()F

    move-result v4

    div-float/2addr v4, v8

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLText;->getHeight()F

    move-result v5

    div-float/2addr v5, v8

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v9

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLText;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v8

    add-float/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->translateAbsolute(FF)V

    goto/16 :goto_6

    .line 940
    :pswitch_e
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v4, 0x7f090193

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 941
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v12

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->getLeft()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v12

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v9

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v8

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLText;->getWidth()F

    move-result v4

    div-float/2addr v4, v8

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLText;->getHeight()F

    move-result v5

    div-float/2addr v5, v8

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v9

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLText;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v8

    add-float/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->translateAbsolute(FF)V

    goto/16 :goto_6

    .line 950
    :cond_12
    const/16 v2, -0x1f8

    if-lt p2, v2, :cond_13

    const/16 v2, 0x1f8

    if-le p2, v2, :cond_a

    .line 951
    :cond_13
    const/16 v2, -0x1f8

    if-ge p2, v2, :cond_14

    .line 952
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCurrentOrientation:I

    packed-switch v2, :pswitch_data_4

    .line 972
    :goto_7
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v10

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v9

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v10

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v8

    add-float/2addr v3, v0

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v9

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v10

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v8

    add-float/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    .line 973
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v10

    invoke-virtual {v2, v10}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 974
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v11

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 975
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v12

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 976
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v9

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto/16 :goto_5

    .line 954
    :pswitch_f
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v4, 0x7f090192

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 955
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v12

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v9

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v8

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v9

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLText;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v8

    add-float/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->translateAbsolute(FF)V

    goto/16 :goto_7

    .line 958
    :pswitch_10
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v4, 0x7f090193

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 959
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v12

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v9

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v8

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v9

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLText;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v8

    add-float/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->translateAbsolute(FF)V

    goto/16 :goto_7

    .line 963
    :pswitch_11
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v4, 0x7f090194

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 964
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v12

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->getLeft()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v12

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v9

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v8

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLText;->getWidth()F

    move-result v4

    div-float/2addr v4, v8

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLText;->getHeight()F

    move-result v5

    div-float/2addr v5, v8

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v9

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLText;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v8

    add-float/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->translateAbsolute(FF)V

    goto/16 :goto_7

    .line 967
    :pswitch_12
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v4, 0x7f090195

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 968
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v12

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->getLeft()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v12

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v9

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v8

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLText;->getWidth()F

    move-result v4

    div-float/2addr v4, v8

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLText;->getHeight()F

    move-result v5

    div-float/2addr v5, v8

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v9

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLText;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v8

    add-float/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->translateAbsolute(FF)V

    goto/16 :goto_7

    .line 978
    :cond_14
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCurrentOrientation:I

    packed-switch v2, :pswitch_data_5

    .line 997
    :goto_8
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v11

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v9

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v11

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v8

    add-float/2addr v3, v0

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v9

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v11

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v8

    add-float/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    .line 998
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v10

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 999
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v11

    invoke-virtual {v2, v10}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1000
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v12

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1001
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v9

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto/16 :goto_5

    .line 980
    :pswitch_13
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v4, 0x7f090193

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 981
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLText;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v12

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v9

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v8

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v9

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLText;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v8

    add-float/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->translateAbsolute(FF)V

    goto/16 :goto_8

    .line 984
    :pswitch_14
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v4, 0x7f090192

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 985
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLText;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v12

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v9

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v8

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v9

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLText;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v8

    add-float/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->translateAbsolute(FF)V

    goto/16 :goto_8

    .line 988
    :pswitch_15
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v4, 0x7f090195

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 989
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLText;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v12

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v9

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v8

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLText;->getWidth()F

    move-result v4

    div-float/2addr v4, v8

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLText;->getHeight()F

    move-result v5

    div-float/2addr v5, v8

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v9

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLText;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v8

    add-float/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->translateAbsolute(FF)V

    goto/16 :goto_8

    .line 992
    :pswitch_16
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v4, 0x7f090194

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 993
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLText;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v12

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v9

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v8

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLText;->getWidth()F

    move-result v4

    div-float/2addr v4, v8

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLText;->getHeight()F

    move-result v5

    div-float/2addr v5, v8

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v9

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLText;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v8

    add-float/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->translateAbsolute(FF)V

    goto/16 :goto_8

    .line 1009
    :cond_15
    iput-boolean v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaWarning:Z

    .line 1010
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/glview/TwGLNinePatchTexture;->translateAbsolute(FF)V

    .line 1011
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v2, v10}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setVisibility(I)V

    .line 1012
    invoke-virtual {p0, v10}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->hideWarningArrow(Z)V

    .line 1013
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mDetectedDirection:I

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->hideWarningBox(I)V

    .line 1014
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->hideWarningText()V

    goto/16 :goto_2

    .line 1019
    :pswitch_17
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v12

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1020
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v10

    invoke-virtual {v2, v10}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1021
    const/16 v2, -0xb4

    if-ge p2, v2, :cond_16

    const/16 v2, -0x140

    if-gt p2, v2, :cond_17

    :cond_16
    const/16 v2, 0x64

    if-le p2, v2, :cond_1d

    const/16 v2, 0x120

    if-ge p2, v2, :cond_1d

    .line 1022
    :cond_17
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v2, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1023
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v2, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 1024
    iput-boolean v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaWarning:Z

    .line 1027
    :cond_18
    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaWarning:Z

    if-nez v2, :cond_19

    .line 1028
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v2, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1029
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v10

    const/16 v3, 0x12c

    const/4 v4, 0x4

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1030
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v11

    const/16 v3, 0x12c

    const/16 v4, 0x8

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1031
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v12

    const/16 v3, 0x12c

    invoke-virtual {p0, v3, v12}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1032
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v9

    const/16 v3, 0x12c

    invoke-virtual {p0, v3, v11}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1033
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v10

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 1034
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v11

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 1035
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v12

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 1036
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v9

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 1037
    iput-boolean v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaWarning:Z

    .line 1062
    :cond_19
    :goto_9
    const/16 v2, -0xb4

    if-ge p2, v2, :cond_1a

    int-to-float v2, p2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->SCREEN_HEIGHT:F

    neg-float v3, v3

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_1b

    :cond_1a
    const/16 v2, 0x64

    if-le p2, v2, :cond_24

    int-to-float v2, p2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->SCREEN_HEIGHT:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_24

    .line 1063
    :cond_1b
    const/16 v2, -0xb4

    if-ge p2, v2, :cond_23

    int-to-float v2, p2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->SCREEN_HEIGHT:F

    neg-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_23

    .line 1064
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCurrentOrientation:I

    packed-switch v2, :pswitch_data_6

    .line 1082
    :goto_a
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v10

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v11

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v10

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v8

    add-float/2addr v3, v0

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v11

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v10

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v8

    add-float/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    .line 1083
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v10

    invoke-virtual {v2, v10}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1084
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v11

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1085
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v12

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1086
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v9

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1112
    :cond_1c
    :goto_b
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setVisibility(I)V

    .line 1114
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v11

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    .line 1115
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v11

    invoke-virtual {v2, v10}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1116
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v10}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    goto/16 :goto_2

    .line 1039
    :cond_1d
    const/16 v2, -0x140

    if-ge p2, v2, :cond_1e

    int-to-float v2, p2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->SCREEN_HEIGHT:F

    neg-float v3, v3

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_20

    :cond_1e
    const/16 v2, 0x120

    if-le p2, v2, :cond_1f

    int-to-float v2, p2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->SCREEN_HEIGHT:F

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_20

    :cond_1f
    const/16 v2, -0x380

    if-lt p1, v2, :cond_20

    const/16 v2, 0x380

    if-le p1, v2, :cond_22

    .line 1040
    :cond_20
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v2, v12}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 1041
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v2, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 1042
    iput-boolean v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaWarning:Z

    .line 1045
    :cond_21
    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaWarning:Z

    if-nez v2, :cond_19

    .line 1046
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v2, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1047
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v10

    const/16 v3, 0x96

    const/4 v4, 0x4

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1048
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v11

    const/16 v3, 0x96

    const/16 v4, 0x8

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1049
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v12

    const/16 v3, 0x96

    invoke-virtual {p0, v3, v12}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1050
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v9

    const/16 v3, 0x96

    invoke-virtual {p0, v3, v11}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1051
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v10

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 1052
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v11

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 1053
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v12

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 1054
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v9

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 1055
    iput-boolean v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaWarning:Z

    goto/16 :goto_9

    .line 1058
    :cond_22
    iput-boolean v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaWarning:Z

    .line 1059
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->stopPanoramaSound()V

    goto/16 :goto_9

    .line 1066
    :pswitch_18
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v4, 0x7f090192

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1067
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v11

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLText;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v8

    add-float/2addr v3, v0

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v10

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getTop()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLText;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->translateAbsolute(FF)V

    goto/16 :goto_a

    .line 1070
    :pswitch_19
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v4, 0x7f090193

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1071
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v11

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLText;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v8

    add-float/2addr v3, v0

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v10

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getTop()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLText;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->translateAbsolute(FF)V

    goto/16 :goto_a

    .line 1074
    :pswitch_1a
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v4, 0x7f090194

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1075
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v11

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLText;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v8

    add-float/2addr v3, v0

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v10

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getTop()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLText;->getWidth()F

    move-result v5

    div-float/2addr v5, v8

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLText;->getHeight()F

    move-result v6

    div-float/2addr v6, v8

    add-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->translateAbsolute(FF)V

    goto/16 :goto_a

    .line 1078
    :pswitch_1b
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v4, 0x7f090195

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1079
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v11

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLText;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v8

    add-float/2addr v3, v0

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v10

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getTop()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLText;->getWidth()F

    move-result v5

    div-float/2addr v5, v8

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLText;->getHeight()F

    move-result v6

    div-float/2addr v6, v8

    add-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->translateAbsolute(FF)V

    goto/16 :goto_a

    .line 1087
    :cond_23
    const/16 v2, 0x64

    if-le p2, v2, :cond_1c

    int-to-float v2, p2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->SCREEN_HEIGHT:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1c

    .line 1088
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCurrentOrientation:I

    packed-switch v2, :pswitch_data_7

    .line 1106
    :goto_c
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v11

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v11

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v11

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v8

    add-float/2addr v3, v0

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v11

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v11

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v8

    add-float/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    .line 1107
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v10

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1108
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v11

    invoke-virtual {v2, v10}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1109
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v12

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1110
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v9

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto/16 :goto_b

    .line 1090
    :pswitch_1c
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v4, 0x7f090193

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1091
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v11

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLText;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v8

    add-float/2addr v3, v0

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v10

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getBottom()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->translateAbsolute(FF)V

    goto :goto_c

    .line 1094
    :pswitch_1d
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v4, 0x7f090192

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1095
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v11

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLText;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v8

    add-float/2addr v3, v0

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v10

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getBottom()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->translateAbsolute(FF)V

    goto/16 :goto_c

    .line 1098
    :pswitch_1e
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v4, 0x7f090195

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1099
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v11

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLText;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v8

    add-float/2addr v3, v0

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v10

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getBottom()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLText;->getWidth()F

    move-result v5

    div-float/2addr v5, v8

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLText;->getHeight()F

    move-result v6

    div-float/2addr v6, v8

    sub-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->translateAbsolute(FF)V

    goto/16 :goto_c

    .line 1102
    :pswitch_1f
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v4, 0x7f090194

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1103
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v11

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLText;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v8

    add-float/2addr v3, v0

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v10

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getBottom()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLText;->getWidth()F

    move-result v5

    div-float/2addr v5, v8

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLText;->getHeight()F

    move-result v6

    div-float/2addr v6, v8

    sub-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->translateAbsolute(FF)V

    goto/16 :goto_c

    .line 1117
    :cond_24
    const/16 v2, -0x380

    if-lt p1, v2, :cond_25

    const/16 v2, 0x380

    if-le p1, v2, :cond_27

    .line 1118
    :cond_25
    const/16 v2, -0x380

    if-ge p1, v2, :cond_26

    .line 1119
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCurrentOrientation:I

    packed-switch v2, :pswitch_data_8

    .line 1137
    :goto_d
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v12

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v11

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v12

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v8

    add-float/2addr v3, v0

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v11

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v12

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v8

    add-float/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    .line 1138
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v10

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1139
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v11

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1140
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v12

    invoke-virtual {v2, v10}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1141
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v9

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1168
    :goto_e
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setVisibility(I)V

    .line 1170
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v11

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    .line 1171
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v11

    invoke-virtual {v2, v10}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1172
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v10}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    goto/16 :goto_2

    .line 1121
    :pswitch_20
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v4, 0x7f090194

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1122
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v11

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLText;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v8

    add-float/2addr v3, v0

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v10

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getBottom()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->translateAbsolute(FF)V

    goto/16 :goto_d

    .line 1125
    :pswitch_21
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v4, 0x7f090195

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1126
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v11

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLText;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v8

    add-float/2addr v3, v0

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v10

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getBottom()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->translateAbsolute(FF)V

    goto/16 :goto_d

    .line 1129
    :pswitch_22
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v4, 0x7f090193

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1130
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v11

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLText;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v8

    add-float/2addr v3, v0

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v10

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getBottom()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLText;->getWidth()F

    move-result v5

    div-float/2addr v5, v8

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLText;->getHeight()F

    move-result v6

    div-float/2addr v6, v8

    sub-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->translateAbsolute(FF)V

    goto/16 :goto_d

    .line 1133
    :pswitch_23
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v4, 0x7f090192

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1134
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v11

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLText;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v8

    add-float/2addr v3, v0

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v10

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getBottom()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLText;->getWidth()F

    move-result v5

    div-float/2addr v5, v8

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLText;->getHeight()F

    move-result v6

    div-float/2addr v6, v8

    sub-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->translateAbsolute(FF)V

    goto/16 :goto_d

    .line 1143
    :cond_26
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCurrentOrientation:I

    packed-switch v2, :pswitch_data_9

    .line 1162
    :goto_f
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v9

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v11

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v9

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v8

    add-float/2addr v3, v0

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v11

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v9

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v8

    add-float/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    .line 1163
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v10

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1164
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v11

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1165
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v12

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1166
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v9

    invoke-virtual {v2, v10}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto/16 :goto_e

    .line 1145
    :pswitch_24
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v4, 0x7f090195

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1146
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v11

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLText;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v8

    add-float/2addr v3, v0

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v10

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getTop()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLText;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->translateAbsolute(FF)V

    goto/16 :goto_f

    .line 1149
    :pswitch_25
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v4, 0x7f090194

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1150
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v11

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLText;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v8

    add-float/2addr v3, v0

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v10

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getTop()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLText;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->translateAbsolute(FF)V

    goto/16 :goto_f

    .line 1153
    :pswitch_26
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v4, 0x7f090192

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1154
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v11

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLText;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v8

    add-float/2addr v3, v0

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v10

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getTop()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLText;->getWidth()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->translateAbsolute(FF)V

    goto/16 :goto_f

    .line 1157
    :pswitch_27
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v4, 0x7f090193

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1158
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v11

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLText;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v8

    add-float/2addr v3, v0

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v10

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getTop()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLText;->getWidth()F

    move-result v5

    div-float/2addr v5, v8

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLText;->getHeight()F

    move-result v6

    div-float/2addr v6, v8

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v6, v6, v10

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mWarningBox:[Lcom/sec/android/glview/TwGLImage;

    aget-object v7, v7, v11

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v7

    sub-float/2addr v6, v7

    div-float/2addr v6, v8

    add-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->translateAbsolute(FF)V

    goto/16 :goto_f

    .line 1174
    :cond_27
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/glview/TwGLNinePatchTexture;->translateAbsolute(FF)V

    .line 1175
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v2, v10}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setVisibility(I)V

    .line 1176
    invoke-virtual {p0, v10}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->hideWarningArrow(Z)V

    .line 1177
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mDetectedDirection:I

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->hideWarningBox(I)V

    .line 1178
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->hideWarningText()V

    goto/16 :goto_2

    .line 826
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 853
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_17
        :pswitch_17
        :pswitch_5
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 901
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_9
        :pswitch_8
        :pswitch_a
    .end packed-switch

    .line 926
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_b
        :pswitch_d
        :pswitch_c
        :pswitch_e
    .end packed-switch

    .line 952
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_f
        :pswitch_11
        :pswitch_10
        :pswitch_12
    .end packed-switch

    .line 978
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_13
        :pswitch_15
        :pswitch_14
        :pswitch_16
    .end packed-switch

    .line 1064
    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_18
        :pswitch_1a
        :pswitch_19
        :pswitch_1b
    .end packed-switch

    .line 1088
    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1e
        :pswitch_1d
        :pswitch_1f
    .end packed-switch

    .line 1119
    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_20
        :pswitch_22
        :pswitch_21
        :pswitch_23
    .end packed-switch

    .line 1143
    :pswitch_data_9
    .packed-switch 0x0
        :pswitch_24
        :pswitch_26
        :pswitch_25
        :pswitch_27
    .end packed-switch
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 512
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 513
    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mIsPanoramaCapturing:Z

    .line 514
    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mIsPanoramaStitching:Z

    .line 515
    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureCount:I

    .line 516
    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mDetectedDirection:I

    .line 517
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->setTouchHandled(Z)V

    .line 518
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->clearPanoramaRect()V

    .line 519
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->stopCancelTimer()V

    .line 520
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->stopPanoramaSound()V

    .line 521
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->hideWarningArrow(Z)V

    .line 522
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->hideWarningText()V

    .line 523
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->updateLivePreviewLayout(Z)V

    .line 524
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewPrevious:Lcom/sec/android/glview/TwGLBitmapTexture;

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewPrevious:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 526
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewPrevious:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLBitmapTexture;->clear()V

    .line 528
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    if-eqz v0, :cond_1

    .line 529
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 530
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLBitmapTexture;->clear()V

    .line 532
    :cond_1
    iput-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewPrevious:Lcom/sec/android/glview/TwGLBitmapTexture;

    .line 533
    iput-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    .line 534
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->hideCaptureTri()V

    .line 535
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->hidePostCaptureLayout()V

    .line 536
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showSideMenuItems()V

    .line 537
    return-void
.end method

.method public restartCancelTimer()V
    .locals 2

    .prologue
    .line 552
    const-string v0, "TwGLNewPanoramaMenu"

    const-string v1, "call restartCancelTimer..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->stopCancelTimer()V

    .line 554
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->startCancelTimer()V

    .line 555
    return-void
.end method

.method public setAlphaArrow(Lcom/sec/android/glview/TwGLView;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 785
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_0

    .line 786
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    .line 787
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 788
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 789
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    .line 791
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p1, v0}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 792
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 793
    return-void
.end method

.method public setCaptureProgressIncreased()V
    .locals 3

    .prologue
    .line 565
    const-string v0, "TwGLNewPanoramaMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "panoramaRectChanged mCaptureCount"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mIsPanoramaCapturing:Z

    .line 568
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCaptureCount:I

    .line 569
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->setTouchHandled(Z)V

    .line 570
    return-void
.end method

.method public setLowResolutionBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bmp"

    .prologue
    .line 1422
    const-string v0, "TwGLNewPanoramaMenu"

    const-string v1, "Fancy progress bar is not implemented yet."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    return-void
.end method

.method public setOnNewPanoramaCaptureCancelledListener(Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu$OnNewPanoramaCaptureCancelListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 617
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mListener:Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu$OnNewPanoramaCaptureCancelListener;

    .line 618
    return-void
.end method

.method public setPostCaptureProgress(I)V
    .locals 4
    .parameter "progress"

    .prologue
    .line 577
    const-string v0, "TwGLNewPanoramaMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPostCaptureProgress :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLProgressBar;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 580
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->showPostCaptureLayout()V

    .line 583
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mHideLivePreview:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 585
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 587
    if-nez p1, :cond_1

    .line 588
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mIsPanoramaStitching:Z

    .line 590
    :cond_1
    return-void
.end method

.method public showCaptureLayout()V
    .locals 2

    .prologue
    .line 605
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 606
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->hideWarningArrow(Z)V

    .line 607
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->hideWarningText()V

    .line 608
    return-void
.end method

.method public showPostCaptureLayout()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1628
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->hidePreviewGroup()V

    .line 1629
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1630
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    .line 1631
    return-void
.end method

.method public showPreviewGroup()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 460
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mStandByGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLViewGroup;->getVisibility()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 461
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mStandByGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 463
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 464
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->updateArrow()V

    .line 466
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCurrentOrientation:I

    packed-switch v1, :pswitch_data_0

    .line 480
    :cond_1
    return-void

    .line 469
    :pswitch_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 470
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 469
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 475
    .end local v0           #i:I
    :pswitch_1
    const/4 v0, 0x2

    .restart local v0       #i:I
    :goto_1
    if-ge v0, v3, :cond_1

    .line 476
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 475
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 466
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public startCancelTimer()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 545
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 548
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x4e20

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 549
    return-void
.end method

.method public stopCancelTimer()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 558
    const-string v0, "TwGLNewPanoramaMenu"

    const-string v1, "stopCancelTimer..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 562
    :cond_0
    return-void
.end method

.method public stopPanoramaSound()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x2

    .line 796
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 797
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 798
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 801
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-eqz v0, :cond_3

    .line 802
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->stopCameraSound(I)V

    .line 803
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->stopCameraSound(I)V

    .line 805
    :cond_3
    return-void
.end method

.method public updateArrow()V
    .locals 8

    .prologue
    const/high16 v7, 0x4270

    const/high16 v6, 0x41a0

    const/4 v5, 0x0

    const/high16 v4, 0x4000

    .line 769
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mCurrentOrientation:I

    packed-switch v0, :pswitch_data_0

    .line 782
    :goto_0
    return-void

    .line 772
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v0, v0, v5

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->NORMAL_PREVIEW_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LANDSCAPE_PRIEVIEW_THUMB_RECT_WIDTH:F

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    add-float/2addr v1, v7

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LANDSCAPE_STANDBY_RECT_HEIGHT:F

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v5

    aget-object v3, v3, v5

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->getImageHeight()F

    move-result v3

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    .line 773
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->NORMAL_PREVIEW_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LANDSCAPE_PRIEVIEW_THUMB_RECT_WIDTH:F

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    sub-float/2addr v1, v7

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v5

    aget-object v2, v2, v5

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->getImageWidth()F

    move-result v2

    mul-float/2addr v2, v4

    sub-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->LANDSCAPE_STANDBY_RECT_HEIGHT:F

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v5

    aget-object v3, v3, v5

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->getImageHeight()F

    move-result v3

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    goto :goto_0

    .line 777
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->SCREEN_WIDTH:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->SIDE_WIDTH:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PORTRAIT_STANDBY_RECT_HEIGHT:F

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v5

    aget-object v2, v2, v5

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->getImageHeight()F

    move-result v2

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->HELP_TEXT_HEIGHT:F

    sub-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->SCREEN_HEIGHT:F

    div-float/2addr v2, v4

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PORTRAIT_PRIEVIEW_THUMB_RECT_HEIGTH:F

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    sub-float/2addr v2, v6

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v5

    aget-object v3, v3, v5

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->getImageWidth()F

    move-result v3

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    .line 778
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->SCREEN_WIDTH:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->SIDE_WIDTH:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PORTRAIT_STANDBY_RECT_HEIGHT:F

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v5

    aget-object v2, v2, v5

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->getImageHeight()F

    move-result v2

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->HELP_TEXT_HEIGHT:F

    sub-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->SCREEN_HEIGHT:F

    div-float/2addr v2, v4

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->PORTRAIT_PRIEVIEW_THUMB_RECT_HEIGTH:F

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    add-float/2addr v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    goto/16 :goto_0

    .line 769
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

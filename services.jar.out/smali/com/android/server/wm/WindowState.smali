.class final Lcom/android/server/wm/WindowState;
.super Ljava/lang/Object;
.source "WindowState.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$WindowState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowState$1;,
        Lcom/android/server/wm/WindowState$DeathRecipient;
    }
.end annotation


# static fields
.field static final DEBUG_VISIBILITY:Z = false

.field static final SHOW_LIGHT_TRANSACTIONS:Z = false

.field static final SHOW_SURFACE_ALLOC:Z = false

.field static final SHOW_TRANSACTIONS:Z = false

.field static final TAG:Ljava/lang/String; = "WindowState"


# instance fields
.field mAppFreezing:Z

.field mAppToken:Lcom/android/server/wm/AppWindowToken;

.field mAttachedHidden:Z

.field final mAttachedWindow:Lcom/android/server/wm/WindowState;

.field final mAttrs:Landroid/view/WindowManager$LayoutParams;

.field final mBaseLayer:I

.field final mChildWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field final mClient:Landroid/view/IWindow;

.field final mCompatFrame:Landroid/graphics/Rect;

.field mConfiguration:Landroid/content/res/Configuration;

.field final mContainingFrame:Landroid/graphics/Rect;

.field mContentChanged:Z

.field final mContentFrame:Landroid/graphics/Rect;

.field final mContentInsets:Landroid/graphics/Rect;

.field mContentInsetsChanged:Z

.field final mContext:Landroid/content/Context;

.field final mDeathRecipient:Lcom/android/server/wm/WindowState$DeathRecipient;

.field mDestroying:Z

.field final mDisplayFrame:Landroid/graphics/Rect;

.field mEnforceSizeCompat:Z

.field mExiting:Z

.field final mFrame:Landroid/graphics/Rect;

.field final mGivenContentInsets:Landroid/graphics/Rect;

.field mGivenInsetsPending:Z

.field final mGivenTouchableRegion:Landroid/graphics/Region;

.field final mGivenVisibleInsets:Landroid/graphics/Rect;

.field mGlobalScale:F

.field mHScale:F

.field mHasSurface:Z

.field mHaveFrame:Z

.field mInputChannel:Landroid/view/InputChannel;

.field final mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

.field mInvGlobalScale:F

.field final mIsControlBar:Z

.field final mIsFloatingLayer:Z

.field final mIsImWindow:Z

.field final mIsWallpaper:Z

.field final mLastContentInsets:Landroid/graphics/Rect;

.field final mLastFrame:Landroid/graphics/Rect;

.field mLastHScale:F

.field mLastRequestedHeight:I

.field mLastRequestedWidth:I

.field final mLastSystemDecorRect:Landroid/graphics/Rect;

.field mLastTitle:Ljava/lang/CharSequence;

.field mLastVScale:F

.field final mLastVisibleInsets:Landroid/graphics/Rect;

.field mLayer:I

.field final mLayoutAttached:Z

.field mLayoutNeeded:Z

.field mLayoutSeq:I

.field mObscured:Z

.field mOrientationChanging:Z

.field final mParentFrame:Landroid/graphics/Rect;

.field final mPolicy:Landroid/view/WindowManagerPolicy;

.field mPolicyVisibility:Z

.field mPolicyVisibilityAfterAnim:Z

.field mRebuilding:Z

.field mRelayoutCalled:Z

.field mRemoveOnExit:Z

.field mRemoved:Z

.field mRequestedHeight:I

.field mRequestedWidth:I

.field mRootToken:Lcom/android/server/wm/WindowToken;

.field mSeq:I

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field final mSession:Lcom/android/server/wm/Session;

.field final mShownFrame:Landroid/graphics/RectF;

.field mStringNameCache:Ljava/lang/String;

.field final mSubLayer:I

.field final mSystemDecorRect:Landroid/graphics/Rect;

.field mSystemUiVisibility:I

.field mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

.field mTempHidden:Z

.field final mTmpMatrix:Landroid/graphics/Matrix;

.field mToken:Lcom/android/server/wm/WindowToken;

.field mTouchableInsets:I

.field mTurnOnScreen:Z

.field mVScale:F

.field mViewVisibility:I

.field final mVisibleFrame:Landroid/graphics/Rect;

.field final mVisibleInsets:Landroid/graphics/Rect;

.field mVisibleInsetsChanged:Z

.field mWallpaperVisible:Z

.field mWallpaperX:F

.field mWallpaperXStep:F

.field mWallpaperY:F

.field mWallpaperYStep:F

.field mWasPaused:Z

.field final mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

.field mXOffset:I

.field mYOffset:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/Session;Landroid/view/IWindow;Lcom/android/server/wm/WindowToken;Lcom/android/server/wm/WindowState;ILandroid/view/WindowManager$LayoutParams;I)V
    .locals 7
    .parameter "service"
    .parameter "s"
    .parameter "c"
    .parameter "token"
    .parameter "attachedWindow"
    .parameter "seq"
    .parameter "a"
    .parameter "viewVisibility"

    .prologue
    .line 279
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v5, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v5}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v5, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 93
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    .line 107
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    .line 108
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    .line 113
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/wm/WindowState;->mTempHidden:Z

    .line 130
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    .line 132
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    .line 139
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iput-object v5, p0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    .line 145
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    .line 146
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/server/wm/WindowState;->mLastVisibleInsets:Landroid/graphics/Rect;

    .line 154
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    .line 155
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/server/wm/WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    .line 168
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    .line 174
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    .line 179
    new-instance v5, Landroid/graphics/Region;

    invoke-direct {v5}, Landroid/graphics/Region;-><init>()V

    iput-object v5, p0, Lcom/android/server/wm/WindowState;->mGivenTouchableRegion:Landroid/graphics/Region;

    .line 187
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    .line 193
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    .line 194
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/server/wm/WindowState;->mLastSystemDecorRect:Landroid/graphics/Rect;

    .line 197
    const/high16 v5, 0x3f80

    iput v5, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    .line 198
    const/high16 v5, 0x3f80

    iput v5, p0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    .line 199
    const/high16 v5, 0x3f80

    iput v5, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    const/high16 v5, 0x3f80

    iput v5, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    .line 200
    const/high16 v5, 0x3f80

    iput v5, p0, Lcom/android/server/wm/WindowState;->mLastHScale:F

    const/high16 v5, 0x3f80

    iput v5, p0, Lcom/android/server/wm/WindowState;->mLastVScale:F

    .line 201
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iput-object v5, p0, Lcom/android/server/wm/WindowState;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 204
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    .line 205
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    .line 208
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    .line 210
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    .line 211
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    .line 212
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    .line 213
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/server/wm/WindowState;->mParentFrame:Landroid/graphics/Rect;

    .line 214
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    .line 220
    const/high16 v5, -0x4080

    iput v5, p0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    .line 221
    const/high16 v5, -0x4080

    iput v5, p0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    .line 225
    const/high16 v5, -0x4080

    iput v5, p0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    .line 226
    const/high16 v5, -0x4080

    iput v5, p0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    .line 275
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    .line 280
    iput-object p1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 281
    iput-object p2, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    .line 282
    iput-object p3, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 283
    iput-object p4, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 284
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v5, p7}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 285
    iput p8, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    .line 286
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iput-object v5, p0, Lcom/android/server/wm/WindowState;->mPolicy:Landroid/view/WindowManagerPolicy;

    .line 287
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-object v5, p0, Lcom/android/server/wm/WindowState;->mContext:Landroid/content/Context;

    .line 288
    new-instance v2, Lcom/android/server/wm/WindowState$DeathRecipient;

    const/4 v5, 0x0

    invoke-direct {v2, p0, v5}, Lcom/android/server/wm/WindowState$DeathRecipient;-><init>(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState$1;)V

    .line 289
    .local v2, deathRecipient:Lcom/android/server/wm/WindowState$DeathRecipient;
    iput p6, p0, Lcom/android/server/wm/WindowState;->mSeq:I

    .line 290
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v6, 0x2000

    and-int/2addr v5, v6

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    :goto_0
    iput-boolean v5, p0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    .line 295
    :try_start_0
    invoke-interface {p3}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v2, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    iput-object v2, p0, Lcom/android/server/wm/WindowState;->mDeathRecipient:Lcom/android/server/wm/WindowState$DeathRecipient;

    .line 314
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x3e8

    if-lt v5, v6, :cond_8

    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7cf

    if-gt v5, v6, :cond_8

    .line 318
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v6, p5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-interface {v5, v6}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v5

    mul-int/lit16 v5, v5, 0x2710

    add-int/lit16 v5, v5, 0x3e8

    iput v5, p0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    .line 321
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget v6, p7, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-interface {v5, v6}, Landroid/view/WindowManagerPolicy;->subWindowTypeToLayerLw(I)I

    move-result v5

    iput v5, p0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    .line 322
    iput-object p5, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    .line 324
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x3eb

    if-eq v5, v6, :cond_3

    const/4 v5, 0x1

    :goto_1
    iput-boolean v5, p0, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    .line 327
    iget-object v5, p5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7db

    if-eq v5, v6, :cond_0

    iget-object v5, p5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7dc

    if-ne v5, v6, :cond_4

    :cond_0
    const/4 v5, 0x1

    :goto_2
    iput-boolean v5, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    .line 329
    iget-object v5, p5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7dd

    if-ne v5, v6, :cond_5

    const/4 v5, 0x1

    :goto_3
    iput-boolean v5, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    .line 330
    iget-boolean v5, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v5, :cond_6

    :cond_1
    const/4 v5, 0x1

    :goto_4
    iput-boolean v5, p0, Lcom/android/server/wm/WindowState;->mIsFloatingLayer:Z

    .line 332
    iget-object v5, p5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x898

    if-ne v5, v6, :cond_7

    const/4 v5, 0x1

    :goto_5
    iput-boolean v5, p0, Lcom/android/server/wm/WindowState;->mIsControlBar:Z

    .line 352
    :goto_6
    new-instance v5, Lcom/android/server/wm/WindowStateAnimator;

    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    invoke-direct {v5, p1, p0, v6}, Lcom/android/server/wm/WindowStateAnimator;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    iput-object v5, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 353
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v6, p7, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iput v6, v5, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    .line 355
    move-object v1, p0

    .line 356
    .local v1, appWin:Lcom/android/server/wm/WindowState;
    :goto_7
    iget-object v5, v1, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v5, :cond_f

    .line 357
    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    goto :goto_7

    .line 290
    .end local v1           #appWin:Lcom/android/server/wm/WindowState;
    :cond_2
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 296
    :catch_0
    move-exception v3

    .line 297
    .local v3, e:Landroid/os/RemoteException;
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/wm/WindowState;->mDeathRecipient:Lcom/android/server/wm/WindowState$DeathRecipient;

    .line 298
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    .line 299
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    .line 300
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    .line 301
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    .line 302
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/wm/WindowState;->mIsFloatingLayer:Z

    .line 304
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/wm/WindowState;->mIsControlBar:Z

    .line 306
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    .line 307
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    .line 308
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    .line 309
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 379
    .end local v3           #e:Landroid/os/RemoteException;
    :goto_8
    return-void

    .line 325
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 327
    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    .line 329
    :cond_5
    const/4 v5, 0x0

    goto :goto_3

    .line 330
    :cond_6
    const/4 v5, 0x0

    goto :goto_4

    .line 332
    :cond_7
    const/4 v5, 0x0

    goto :goto_5

    .line 337
    :cond_8
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget v6, p7, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-interface {v5, v6}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v5

    mul-int/lit16 v5, v5, 0x2710

    add-int/lit16 v5, v5, 0x3e8

    iput v5, p0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    .line 340
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    .line 341
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    .line 342
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    .line 343
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7db

    if-eq v5, v6, :cond_9

    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7dc

    if-ne v5, v6, :cond_b

    :cond_9
    const/4 v5, 0x1

    :goto_9
    iput-boolean v5, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    .line 345
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7dd

    if-ne v5, v6, :cond_c

    const/4 v5, 0x1

    :goto_a
    iput-boolean v5, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    .line 346
    iget-boolean v5, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-nez v5, :cond_a

    iget-boolean v5, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v5, :cond_d

    :cond_a
    const/4 v5, 0x1

    :goto_b
    iput-boolean v5, p0, Lcom/android/server/wm/WindowState;->mIsFloatingLayer:Z

    .line 348
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x898

    if-ne v5, v6, :cond_e

    const/4 v5, 0x1

    :goto_c
    iput-boolean v5, p0, Lcom/android/server/wm/WindowState;->mIsControlBar:Z

    goto/16 :goto_6

    .line 343
    :cond_b
    const/4 v5, 0x0

    goto :goto_9

    .line 345
    :cond_c
    const/4 v5, 0x0

    goto :goto_a

    .line 346
    :cond_d
    const/4 v5, 0x0

    goto :goto_b

    .line 348
    :cond_e
    const/4 v5, 0x0

    goto :goto_c

    .line 359
    .restart local v1       #appWin:Lcom/android/server/wm/WindowState;
    :cond_f
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 360
    .local v0, appToken:Lcom/android/server/wm/WindowToken;
    :goto_d
    iget-object v5, v0, Lcom/android/server/wm/WindowToken;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v5, :cond_10

    .line 361
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    iget-object v6, v0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowToken;

    .line 362
    .local v4, parent:Lcom/android/server/wm/WindowToken;
    if-eqz v4, :cond_10

    if-ne v0, v4, :cond_11

    .line 367
    .end local v4           #parent:Lcom/android/server/wm/WindowToken;
    :cond_10
    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    .line 368
    iget-object v5, v0, Lcom/android/server/wm/WindowToken;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    iput-object v5, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 370
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    .line 371
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    .line 372
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/wm/WindowState;->mLastRequestedWidth:I

    .line 373
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/wm/WindowState;->mLastRequestedHeight:I

    .line 374
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/wm/WindowState;->mXOffset:I

    .line 375
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/wm/WindowState;->mYOffset:I

    .line 376
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/wm/WindowState;->mLayer:I

    .line 377
    new-instance v6, Lcom/android/server/input/InputWindowHandle;

    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v5, :cond_12

    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v5, v5, Lcom/android/server/wm/AppWindowToken;->mInputApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    :goto_e
    invoke-direct {v6, v5, p0}, Lcom/android/server/input/InputWindowHandle;-><init>(Lcom/android/server/input/InputApplicationHandle;Ljava/lang/Object;)V

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    goto/16 :goto_8

    .line 365
    .restart local v4       #parent:Lcom/android/server/wm/WindowToken;
    :cond_11
    move-object v0, v4

    .line 366
    goto :goto_d

    .line 377
    .end local v4           #parent:Lcom/android/server/wm/WindowToken;
    :cond_12
    const/4 v5, 0x0

    goto :goto_e
.end method

.method private static applyInsets(Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 5
    .parameter "outRegion"
    .parameter "frame"
    .parameter "inset"

    .prologue
    .line 1040
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/Region;->set(IIII)Z

    .line 1043
    return-void
.end method


# virtual methods
.method attach()V
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v0}, Lcom/android/server/wm/Session;->windowAddedLocked()V

    .line 386
    return-void
.end method

.method public final canReceiveKeys()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 941
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mSkipWidgetFocus:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x834

    if-eq v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mSkipWidgetFocus:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x836

    if-ne v1, v2, :cond_2

    .line 947
    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleOrAdding()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 24
    .parameter "pf"
    .parameter "df"
    .parameter "cf"
    .parameter "vf"

    .prologue
    .line 390
    const/4 v7, 0x1

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    .line 392
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    .line 393
    .local v6, container:Landroid/graphics/Rect;
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 395
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    .line 396
    .local v13, display:Landroid/graphics/Rect;
    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 398
    iget v7, v6, Landroid/graphics/Rect;->right:I

    iget v8, v6, Landroid/graphics/Rect;->left:I

    sub-int v17, v7, v8

    .line 399
    .local v17, pw:I
    iget v7, v6, Landroid/graphics/Rect;->bottom:I

    iget v8, v6, Landroid/graphics/Rect;->top:I

    sub-int v16, v7, v8

    .line 402
    .local v16, ph:I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v7, v7, 0x4000

    if-eqz v7, :cond_15

    .line 403
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gez v7, :cond_11

    .line 404
    move/from16 v4, v17

    .line 410
    .local v4, w:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gez v7, :cond_13

    .line 411
    move/from16 v5, v16

    .line 434
    .local v5, h:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mParentFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 437
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mParentFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 438
    const/4 v7, 0x1

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/android/server/wm/WindowState;->mContentChanged:Z

    .line 440
    :cond_0
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/WindowState;->mLastRequestedWidth:I

    if-ne v7, v8, :cond_1

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/WindowState;->mLastRequestedHeight:I

    if-eq v7, v8, :cond_4

    .line 441
    :cond_1
    const/4 v11, 0x1

    .line 443
    .local v11, contentChanged:Z
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/server/wm/WindowState;->mLastRequestedWidth:I

    .line 444
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/server/wm/WindowState;->mLastRequestedHeight:I

    .line 446
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v8, 0x200

    and-int/2addr v7, v8

    if-nez v7, :cond_2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v7, :cond_3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v7, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v8, 0x200

    and-int/2addr v7, v8

    if-eqz v7, :cond_3

    .line 448
    :cond_2
    const/4 v11, 0x0

    .line 451
    :cond_3
    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/server/wm/WindowState;->mContentChanged:Z

    .line 454
    .end local v11           #contentChanged:Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    .line 455
    .local v10, content:Landroid/graphics/Rect;
    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    .line 458
    .local v18, visible:Landroid/graphics/Rect;
    move-object/from16 v0, v18

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 460
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    .line 461
    .local v9, frame:Landroid/graphics/Rect;
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v15

    .line 462
    .local v15, fw:I
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v14

    .line 468
    .local v14, fh:I
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    if-eqz v7, :cond_1a

    .line 469
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float v20, v7, v8

    .line 470
    .local v20, x:F
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float v21, v7, v8

    .line 477
    .local v21, y:F
    :goto_2
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v7, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 478
    .local v3, gravity:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getWindowModeLw()I

    move-result v7

    invoke-static {v7}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v7

    const/high16 v8, 0x200

    if-ne v7, v8, :cond_5

    .line 479
    const v7, -0x11000001

    and-int/2addr v3, v7

    .line 483
    :cond_5
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    move/from16 v0, v17

    int-to-float v8, v0

    mul-float/2addr v7, v8

    add-float v7, v7, v20

    float-to-int v7, v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v8, v8, v22

    add-float v8, v8, v21

    float-to-int v8, v8

    invoke-static/range {v3 .. v9}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V

    .line 490
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move-object/from16 v0, p2

    invoke-static {v7, v0, v9}, Landroid/view/Gravity;->applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 494
    iget v7, v10, Landroid/graphics/Rect;->left:I

    iget v8, v9, Landroid/graphics/Rect;->left:I

    if-ge v7, v8, :cond_6

    iget v7, v9, Landroid/graphics/Rect;->left:I

    iput v7, v10, Landroid/graphics/Rect;->left:I

    .line 495
    :cond_6
    iget v7, v10, Landroid/graphics/Rect;->top:I

    iget v8, v9, Landroid/graphics/Rect;->top:I

    if-ge v7, v8, :cond_7

    iget v7, v9, Landroid/graphics/Rect;->top:I

    iput v7, v10, Landroid/graphics/Rect;->top:I

    .line 496
    :cond_7
    iget v7, v10, Landroid/graphics/Rect;->right:I

    iget v8, v9, Landroid/graphics/Rect;->right:I

    if-le v7, v8, :cond_8

    iget v7, v9, Landroid/graphics/Rect;->right:I

    iput v7, v10, Landroid/graphics/Rect;->right:I

    .line 497
    :cond_8
    iget v7, v10, Landroid/graphics/Rect;->bottom:I

    iget v8, v9, Landroid/graphics/Rect;->bottom:I

    if-le v7, v8, :cond_9

    iget v7, v9, Landroid/graphics/Rect;->bottom:I

    iput v7, v10, Landroid/graphics/Rect;->bottom:I

    .line 498
    :cond_9
    move-object/from16 v0, v18

    iget v7, v0, Landroid/graphics/Rect;->left:I

    iget v8, v9, Landroid/graphics/Rect;->left:I

    if-ge v7, v8, :cond_a

    iget v7, v9, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v18

    iput v7, v0, Landroid/graphics/Rect;->left:I

    .line 499
    :cond_a
    move-object/from16 v0, v18

    iget v7, v0, Landroid/graphics/Rect;->top:I

    iget v8, v9, Landroid/graphics/Rect;->top:I

    if-ge v7, v8, :cond_b

    iget v7, v9, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v18

    iput v7, v0, Landroid/graphics/Rect;->top:I

    .line 500
    :cond_b
    move-object/from16 v0, v18

    iget v7, v0, Landroid/graphics/Rect;->right:I

    iget v8, v9, Landroid/graphics/Rect;->right:I

    if-le v7, v8, :cond_c

    iget v7, v9, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v18

    iput v7, v0, Landroid/graphics/Rect;->right:I

    .line 501
    :cond_c
    move-object/from16 v0, v18

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    iget v8, v9, Landroid/graphics/Rect;->bottom:I

    if-le v7, v8, :cond_d

    iget v7, v9, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v18

    iput v7, v0, Landroid/graphics/Rect;->bottom:I

    .line 503
    :cond_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    .line 504
    .local v12, contentInsets:Landroid/graphics/Rect;
    iget v7, v10, Landroid/graphics/Rect;->left:I

    iget v8, v9, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    iput v7, v12, Landroid/graphics/Rect;->left:I

    .line 505
    iget v7, v10, Landroid/graphics/Rect;->top:I

    iget v8, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    iput v7, v12, Landroid/graphics/Rect;->top:I

    .line 506
    iget v7, v9, Landroid/graphics/Rect;->right:I

    iget v8, v10, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v8

    iput v7, v12, Landroid/graphics/Rect;->right:I

    .line 507
    iget v7, v9, Landroid/graphics/Rect;->bottom:I

    iget v8, v10, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    iput v7, v12, Landroid/graphics/Rect;->bottom:I

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    .line 510
    .local v19, visibleInsets:Landroid/graphics/Rect;
    move-object/from16 v0, v18

    iget v7, v0, Landroid/graphics/Rect;->left:I

    iget v8, v9, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    move-object/from16 v0, v19

    iput v7, v0, Landroid/graphics/Rect;->left:I

    .line 511
    move-object/from16 v0, v18

    iget v7, v0, Landroid/graphics/Rect;->top:I

    iget v8, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    move-object/from16 v0, v19

    iput v7, v0, Landroid/graphics/Rect;->top:I

    .line 512
    iget v7, v9, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v18

    iget v8, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v8

    move-object/from16 v0, v19

    iput v7, v0, Landroid/graphics/Rect;->right:I

    .line 513
    iget v7, v9, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v18

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    move-object/from16 v0, v19

    iput v7, v0, Landroid/graphics/Rect;->bottom:I

    .line 515
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v7, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 516
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    if-eqz v7, :cond_e

    .line 520
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    invoke-virtual {v12, v7}, Landroid/graphics/Rect;->scale(F)V

    .line 521
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/graphics/Rect;->scale(F)V

    .line 525
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->scale(F)V

    .line 528
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v7, :cond_10

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-ne v15, v7, :cond_f

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-eq v14, v7, :cond_10

    .line 529
    :cond_f
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v8, v8, Lcom/android/server/wm/WindowManagerService;->mAppDisplayWidth:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayHeight:I

    move/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v7, v0, v8, v1, v2}, Lcom/android/server/wm/WindowManagerService;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;IIZ)Z

    .line 544
    :cond_10
    return-void

    .line 405
    .end local v3           #gravity:I
    .end local v4           #w:I
    .end local v5           #h:I
    .end local v9           #frame:Landroid/graphics/Rect;
    .end local v10           #content:Landroid/graphics/Rect;
    .end local v12           #contentInsets:Landroid/graphics/Rect;
    .end local v14           #fh:I
    .end local v15           #fw:I
    .end local v18           #visible:Landroid/graphics/Rect;
    .end local v19           #visibleInsets:Landroid/graphics/Rect;
    .end local v20           #x:F
    .end local v21           #y:F
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    if-eqz v7, :cond_12

    .line 406
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v7, v8

    const/high16 v8, 0x3f00

    add-float/2addr v7, v8

    float-to-int v4, v7

    .restart local v4       #w:I
    goto/16 :goto_0

    .line 408
    .end local v4           #w:I
    :cond_12
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .restart local v4       #w:I
    goto/16 :goto_0

    .line 412
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    if-eqz v7, :cond_14

    .line 413
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v7, v8

    const/high16 v8, 0x3f00

    add-float/2addr v7, v8

    float-to-int v5, v7

    .restart local v5       #h:I
    goto/16 :goto_1

    .line 415
    .end local v5           #h:I
    :cond_14
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .restart local v5       #h:I
    goto/16 :goto_1

    .line 418
    .end local v4           #w:I
    .end local v5           #h:I
    :cond_15
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_16

    .line 419
    move/from16 v4, v17

    .line 425
    .restart local v4       #w:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_18

    .line 426
    move/from16 v5, v16

    .restart local v5       #h:I
    goto/16 :goto_1

    .line 420
    .end local v4           #w:I
    .end local v5           #h:I
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    if-eqz v7, :cond_17

    .line 421
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v7, v8

    const/high16 v8, 0x3f00

    add-float/2addr v7, v8

    float-to-int v4, v7

    .restart local v4       #w:I
    goto :goto_3

    .line 423
    .end local v4           #w:I
    :cond_17
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    .restart local v4       #w:I
    goto :goto_3

    .line 427
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    if-eqz v7, :cond_19

    .line 428
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v7, v8

    const/high16 v8, 0x3f00

    add-float/2addr v7, v8

    float-to-int v5, v7

    .restart local v5       #h:I
    goto/16 :goto_1

    .line 430
    .end local v5           #h:I
    :cond_19
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    .restart local v5       #h:I
    goto/16 :goto_1

    .line 472
    .restart local v9       #frame:Landroid/graphics/Rect;
    .restart local v10       #content:Landroid/graphics/Rect;
    .restart local v14       #fh:I
    .restart local v15       #fw:I
    .restart local v18       #visible:Landroid/graphics/Rect;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v0, v7

    move/from16 v20, v0

    .line 473
    .restart local v20       #x:F
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v0, v7

    move/from16 v21, v0

    .restart local v21       #y:F
    goto/16 :goto_2
.end method

.method disposeInputChannel()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 909
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_0

    .line 910
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->unregisterInputChannel(Landroid/view/InputChannel;)V

    .line 912
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 913
    iput-object v2, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    .line 916
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-object v2, v0, Lcom/android/server/input/InputWindowHandle;->inputChannel:Landroid/view/InputChannel;

    .line 917
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 5
    .parameter "pw"
    .parameter "prefix"
    .parameter "dumpAll"

    .prologue
    const/high16 v4, 0x3f80

    const/high16 v3, -0x4080

    .line 1092
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mSession="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1093
    const-string v1, " mClient="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1094
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mAttrs="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1095
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Requested w="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1096
    const-string v1, " h="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1097
    const-string v1, " mLayoutSeq="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 1098
    iget v1, p0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    iget v2, p0, Lcom/android/server/wm/WindowState;->mLastRequestedWidth:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    iget v2, p0, Lcom/android/server/wm/WindowState;->mLastRequestedHeight:I

    if-eq v1, v2, :cond_1

    .line 1099
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "LastRequested w="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/WindowState;->mLastRequestedWidth:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1100
    const-string v1, " h="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/WindowState;->mLastRequestedHeight:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 1102
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    if-eqz v1, :cond_3

    .line 1103
    :cond_2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mAttachedWindow="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1104
    const-string v1, " mLayoutAttached="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1106
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mIsFloatingLayer:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mIsControlBar:Z

    if-eqz v1, :cond_5

    .line 1108
    :cond_4
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mIsControlBar="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mIsControlBar:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 1110
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mIsImWindow="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 1111
    const-string v1, " mIsWallpaper="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 1112
    const-string v1, " mIsFloatingLayer="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mIsFloatingLayer:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 1113
    const-string v1, " mWallpaperVisible="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1115
    :cond_5
    if-eqz p3, :cond_6

    .line 1116
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mBaseLayer="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1117
    const-string v1, " mSubLayer="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1118
    const-string v1, " mAnimLayer="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/WindowState;->mLayer:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, "+"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1119
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget v1, v1, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1122
    const-string v1, "="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1123
    const-string v1, " mLastLayer="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mLastLayer:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 1125
    :cond_6
    if-eqz p3, :cond_9

    .line 1126
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mToken="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1127
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mRootToken="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1128
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_7

    .line 1129
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mAppToken="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1131
    :cond_7
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_8

    .line 1132
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mTargetAppToken="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1134
    :cond_8
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mViewVisibility=0x"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1135
    iget v1, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1136
    const-string v1, " mHaveFrame="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 1137
    const-string v1, " mObscured="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mObscured:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1138
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mSeq="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/WindowState;->mSeq:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1139
    const-string v1, " mSystemUiVisibility=0x"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1140
    iget v1, p0, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1142
    :cond_9
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-eqz v1, :cond_b

    .line 1143
    :cond_a
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mPolicyVisibility="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1144
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 1145
    const-string v1, " mPolicyVisibilityAfterAnim="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1146
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 1147
    const-string v1, " mAttachedHidden="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1149
    :cond_b
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    if-eqz v1, :cond_c

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    if-eqz v1, :cond_d

    .line 1150
    :cond_c
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mRelayoutCalled="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 1151
    const-string v1, " mLayoutNeeded="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1153
    :cond_d
    iget v1, p0, Lcom/android/server/wm/WindowState;->mXOffset:I

    if-nez v1, :cond_e

    iget v1, p0, Lcom/android/server/wm/WindowState;->mYOffset:I

    if-eqz v1, :cond_f

    .line 1154
    :cond_e
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Offsets x="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/WindowState;->mXOffset:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1155
    const-string v1, " y="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/WindowState;->mYOffset:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 1157
    :cond_f
    if-eqz p3, :cond_12

    .line 1158
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mGivenContentInsets="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1159
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 1160
    const-string v1, " mGivenVisibleInsets="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1161
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 1162
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1163
    iget v1, p0, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    if-nez v1, :cond_10

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    if-eqz v1, :cond_11

    .line 1164
    :cond_10
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mTouchableInsets="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1165
    const-string v1, " mGivenInsetsPending="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1167
    :cond_11
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mConfiguration="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1169
    :cond_12
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mHasSurface="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 1170
    const-string v1, " mShownFrame="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    invoke-virtual {v1, p1}, Landroid/graphics/RectF;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1171
    if-eqz p3, :cond_13

    .line 1172
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mFrame="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 1173
    const-string v1, " last="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 1174
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1175
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mSystemDecorRect="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 1176
    const-string v1, " last="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mLastSystemDecorRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 1177
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1179
    :cond_13
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    if-eqz v1, :cond_14

    .line 1180
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mCompatFrame="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 1181
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1183
    :cond_14
    if-eqz p3, :cond_15

    .line 1184
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Frames: containing="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1185
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 1186
    const-string v1, " parent="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mParentFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 1187
    const-string v1, " display="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 1188
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1189
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "    content="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 1190
    const-string v1, " visible="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 1191
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1192
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Cur insets: content="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1193
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 1194
    const-string v1, " visible="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 1195
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1196
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Lst insets: content="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1197
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 1198
    const-string v1, " visible="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mLastVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 1199
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1201
    :cond_15
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wm/WindowStateAnimator;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 1202
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-nez v1, :cond_16

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    if-nez v1, :cond_16

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v1, :cond_16

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-eqz v1, :cond_17

    .line 1203
    :cond_16
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mExiting="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 1204
    const-string v1, " mRemoveOnExit="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 1205
    const-string v1, " mDestroying="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 1206
    const-string v1, " mRemoved="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1208
    :cond_17
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    if-nez v1, :cond_18

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    if-nez v1, :cond_18

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    if-eqz v1, :cond_19

    .line 1209
    :cond_18
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mOrientationChanging="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1210
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 1211
    const-string v1, " mAppFreezing="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 1212
    const-string v1, " mTurnOnScreen="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1214
    :cond_19
    iget v1, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    cmpl-float v1, v1, v4

    if-nez v1, :cond_1a

    iget v1, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_1b

    .line 1215
    :cond_1a
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mHScale="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(F)V

    .line 1216
    const-string v1, " mVScale="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(F)V

    .line 1218
    :cond_1b
    iget v1, p0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_1c

    iget v1, p0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_1d

    .line 1219
    :cond_1c
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mWallpaperX="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(F)V

    .line 1220
    const-string v1, " mWallpaperY="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(F)V

    .line 1222
    :cond_1d
    iget v1, p0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_1e

    iget v1, p0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_1f

    .line 1223
    :cond_1e
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mWallpaperXStep="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(F)V

    .line 1224
    const-string v1, " mWallpaperYStep="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(F)V

    .line 1227
    :cond_1f
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowModeLw()I

    move-result v1

    invoke-static {v1}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v0

    .line 1228
    .local v0, windowMode:I
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "appWindowMode="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1229
    const/high16 v1, 0x100

    if-ne v0, v1, :cond_23

    .line 1230
    const-string v1, "normal"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1235
    :cond_20
    :goto_1
    return-void

    .line 1119
    .end local v0           #windowMode:I
    :cond_21
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget v1, v1, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    goto/16 :goto_0

    :cond_22
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1231
    .restart local v0       #windowMode:I
    :cond_23
    const/high16 v1, 0x200

    if-ne v0, v1, :cond_20

    .line 1232
    const-string v1, "freestyle"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getAppToken()Landroid/view/IApplicationToken;
    .locals 1

    .prologue
    .line 627
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAttrs()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public getContentFrameLw()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getDisplayFrameLw()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getFrameLw()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getGivenContentInsetsLw()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getGivenInsetsPendingLw()Z
    .locals 1

    .prologue
    .line 573
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    return v0
.end method

.method public getGivenVisibleInsetsLw()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getInputDispatchingTimeoutNanos()J
    .locals 2

    .prologue
    .line 631
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-wide v0, v0, Lcom/android/server/wm/AppWindowToken;->inputDispatchingTimeoutNanos:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x12a05f200L

    goto :goto_0
.end method

.method public getNeedsMenuLw(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .locals 5
    .parameter "bottom"

    .prologue
    const/4 v2, 0x0

    .line 592
    const/4 v0, -0x1

    .line 593
    .local v0, index:I
    move-object v1, p0

    .line 595
    .local v1, ws:Lcom/android/server/wm/WindowState;
    :goto_0
    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_1

    .line 597
    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x800

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 612
    :cond_0
    return v2

    .line 601
    :cond_1
    if-eq v1, p1, :cond_0

    .line 607
    if-gez v0, :cond_2

    .line 608
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 610
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 611
    if-ltz v0, :cond_0

    .line 614
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #ws:Lcom/android/server/wm/WindowState;
    check-cast v1, Lcom/android/server/wm/WindowState;

    .restart local v1       #ws:Lcom/android/server/wm/WindowState;
    goto :goto_0
.end method

.method public getShownFrameLw()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getSurfaceLayer()I
    .locals 1

    .prologue
    .line 623
    iget v0, p0, Lcom/android/server/wm/WindowState;->mLayer:I

    return v0
.end method

.method public getSystemUiVisibility()I
    .locals 1

    .prologue
    .line 619
    iget v0, p0, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    return v0
.end method

.method public getTouchableRegion(Landroid/graphics/Region;)V
    .locals 4
    .parameter "outRegion"

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    .line 1047
    .local v0, frame:Landroid/graphics/Rect;
    iget v2, p0, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    packed-switch v2, :pswitch_data_0

    .line 1050
    invoke-virtual {p1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 1065
    :goto_0
    return-void

    .line 1053
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    invoke-static {p1, v0, v2}, Lcom/android/server/wm/WindowState;->applyInsets(Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1056
    :pswitch_1
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    invoke-static {p1, v0, v2}, Lcom/android/server/wm/WindowState;->applyInsets(Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1059
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mGivenTouchableRegion:Landroid/graphics/Region;

    .line 1060
    .local v1, givenTouchableRegion:Landroid/graphics/Region;
    invoke-virtual {p1, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 1061
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Region;->translate(II)V

    goto :goto_0

    .line 1047
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getVisibleFrameLw()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getWindowModeLw()I
    .locals 3

    .prologue
    .line 1070
    const/high16 v0, 0x100

    .line 1073
    .local v0, windowMode:I
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_3

    .line 1074
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v0, v1, Lcom/android/server/wm/WindowToken;->appWindowMode:I

    .line 1082
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    if-eqz v1, :cond_2

    .line 1083
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x3ec

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x3e9

    if-ne v1, v2, :cond_2

    .line 1084
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iget v0, v1, Lcom/android/server/wm/WindowToken;->appWindowMode:I

    .line 1087
    :cond_2
    return v0

    .line 1076
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    if-eqz v1, :cond_0

    .line 1077
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iget v0, v1, Lcom/android/server/wm/WindowToken;->appWindowMode:I

    goto :goto_0
.end method

.method public hasAppShownWindows()Z
    .locals 1

    .prologue
    .line 637
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDrawnLw()Z
    .locals 2

    .prologue
    .line 954
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideLw(Z)Z
    .locals 1
    .parameter "doAnimation"

    .prologue
    .line 993
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    move-result v0

    return v0
.end method

.method hideLw(ZZ)Z
    .locals 5
    .parameter "doAnimation"
    .parameter "requestAnim"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 997
    if-eqz p1, :cond_0

    .line 998
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v3

    if-nez v3, :cond_0

    .line 999
    const/4 p1, 0x0

    .line 1002
    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    .line 1004
    .local v0, current:Z
    :goto_0
    if-nez v0, :cond_2

    .line 1031
    :goto_1
    return v1

    .line 1002
    .end local v0           #current:Z
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    goto :goto_0

    .line 1008
    .restart local v0       #current:Z
    :cond_2
    if-eqz p1, :cond_3

    .line 1009
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/16 v4, 0x2002

    invoke-virtual {v3, v4, v1}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    .line 1010
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-nez v3, :cond_3

    .line 1011
    const/4 p1, 0x0

    .line 1014
    :cond_3
    if-eqz p1, :cond_6

    .line 1015
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    .line 1028
    :cond_4
    :goto_2
    if-eqz p2, :cond_5

    .line 1029
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    :cond_5
    move v1, v2

    .line 1031
    goto :goto_1

    .line 1018
    :cond_6
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    .line 1019
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    .line 1023
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->enableScreenIfNeededLocked()V

    .line 1024
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-ne v1, p0, :cond_4

    .line 1025
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v2, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    goto :goto_2
.end method

.method public isAlive()Z
    .locals 1

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    return v0
.end method

.method public isAllDrawnLw()Z
    .locals 6

    .prologue
    .line 836
    const/4 v1, 0x0

    .line 837
    .local v1, allDrawn:Z
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 838
    const/4 v4, 0x0

    .line 839
    .local v4, numDrawnChildWindows:I
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 840
    .local v0, NC:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 841
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 842
    .local v2, cw:Lcom/android/server/wm/WindowState;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 843
    add-int/lit8 v4, v4, 0x1

    .line 840
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 846
    .end local v2           #cw:Lcom/android/server/wm/WindowState;
    :cond_1
    if-ne v0, v4, :cond_2

    .line 847
    const/4 v1, 0x1

    .line 850
    .end local v0           #NC:I
    .end local v3           #i:I
    .end local v4           #numDrawnChildWindows:I
    :cond_2
    return v1
.end method

.method public isAnimatingLw()Z
    .locals 1

    .prologue
    .line 808
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDisplayedLw()Z
    .locals 2

    .prologue
    .line 796
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 797
    .local v0, atoken:Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDrawnLw()Z
    .locals 2

    .prologue
    .line 826
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isFullscreen(II)Z
    .locals 1
    .parameter "screenWidth"
    .parameter "screenHeight"

    .prologue
    .line 877
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-lt v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-lt v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGoneForLayoutLw()Z
    .locals 3

    .prologue
    .line 812
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 813
    .local v0, atoken:Lcom/android/server/wm/AppWindowToken;
    iget v1, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowToken;->hidden:Z

    if-nez v1, :cond_2

    :cond_0
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v1, :cond_2

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isIdentityMatrix(FFFF)Z
    .locals 6
    .parameter "dsdx"
    .parameter "dtdx"
    .parameter "dsdy"
    .parameter "dtdy"

    .prologue
    const v5, 0x3f800054

    const v4, 0x3f7fff58

    const v3, 0x358637bd

    const v2, -0x4a79c843

    const/4 v0, 0x0

    .line 641
    cmpg-float v1, p1, v4

    if-ltz v1, :cond_0

    cmpl-float v1, p1, v5

    if-lez v1, :cond_1

    .line 645
    :cond_0
    :goto_0
    return v0

    .line 642
    :cond_1
    cmpg-float v1, p4, v4

    if-ltz v1, :cond_0

    cmpl-float v1, p4, v5

    if-gtz v1, :cond_0

    .line 643
    cmpg-float v1, p2, v2

    if-ltz v1, :cond_0

    cmpl-float v1, p2, v3

    if-gtz v1, :cond_0

    .line 644
    cmpg-float v1, p3, v2

    if-ltz v1, :cond_0

    cmpl-float v1, p3, v3

    if-gtz v1, :cond_0

    .line 645
    const/4 v0, 0x1

    goto :goto_0
.end method

.method isOnScreen()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 741
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-eqz v3, :cond_1

    .line 749
    :cond_0
    :goto_0
    return v1

    .line 744
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 745
    .local v0, atoken:Lcom/android/server/wm/AppWindowToken;
    if-eqz v0, :cond_4

    .line 746
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-nez v3, :cond_2

    iget-boolean v3, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eqz v3, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-nez v3, :cond_3

    iget-object v3, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v3, v3, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 749
    :cond_4
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_0

    :cond_5
    move v1, v2

    goto :goto_0
.end method

.method isOpaqueDrawn()Z
    .locals 2

    .prologue
    .line 858
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7dd

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isPotentialDragTarget()Z
    .locals 1

    .prologue
    .line 719
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isReadyForDisplay()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 757
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowToken;->waitingToShow:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v1, v1, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 761
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowToken;->hidden:Z

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method isReadyForDisplayIgnoringKeyguard()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 773
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowToken;->waitingToShow:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v2, v2, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 783
    :cond_0
    :goto_0
    return v1

    .line 777
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 778
    .local v0, atoken:Lcom/android/server/wm/AppWindowToken;
    if-nez v0, :cond_2

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v2, :cond_0

    .line 783
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-nez v2, :cond_3

    iget v2, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowToken;->hidden:Z

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-nez v2, :cond_4

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v2, v2, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowStateAnimator;->isDummyAnimation()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isVisibleLw()Z
    .locals 2

    .prologue
    .line 663
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 664
    .local v0, atoken:Lcom/android/server/wm/AppWindowToken;
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isVisibleNow()Z
    .locals 1

    .prologue
    .line 709
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowToken;->hidden:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isVisibleOrAdding()Z
    .locals 2

    .prologue
    .line 728
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 729
    .local v0, atoken:Lcom/android/server/wm/AppWindowToken;
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v1, :cond_2

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-nez v1, :cond_2

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v1, :cond_2

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isVisibleOrBehindKeyguardLw()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 678
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowToken;->waitingToShow:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v4, v4, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 685
    :goto_0
    return v3

    .line 682
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 683
    .local v1, atoken:Lcom/android/server/wm/AppWindowToken;
    if-eqz v1, :cond_5

    iget-object v4, v1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v4, v4, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v4, :cond_4

    move v0, v2

    .line 685
    .local v0, animating:Z
    :goto_1
    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v4, :cond_7

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v4, :cond_7

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-nez v4, :cond_7

    if-nez v1, :cond_6

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v4, :cond_7

    :cond_1
    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-nez v4, :cond_2

    iget v4, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowToken;->hidden:Z

    if-eqz v4, :cond_3

    :cond_2
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-nez v4, :cond_3

    if-eqz v0, :cond_7

    :cond_3
    :goto_2
    move v3, v2

    goto :goto_0

    .end local v0           #animating:Z
    :cond_4
    move v0, v3

    .line 683
    goto :goto_1

    :cond_5
    move v0, v3

    goto :goto_1

    .line 685
    .restart local v0       #animating:Z
    :cond_6
    iget-boolean v4, v1, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eqz v4, :cond_1

    :cond_7
    move v2, v3

    goto :goto_2
.end method

.method public isWinVisibleLw()Z
    .locals 2

    .prologue
    .line 698
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 699
    .local v0, atoken:Lcom/android/server/wm/AppWindowToken;
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v1, v1, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    if-eqz v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method makeInputChannelName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method prelayout()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f80

    .line 649
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    if-eqz v0, :cond_0

    .line 650
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mCompatibleScreenScale:F

    iput v0, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    .line 651
    iget v0, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    div-float v0, v1, v0

    iput v0, p0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    .line 655
    :goto_0
    return-void

    .line 653
    :cond_0
    iput v1, p0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    iput v1, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    goto :goto_0
.end method

.method removeLocked()V
    .locals 3

    .prologue
    .line 882
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->disposeInputChannel()V

    .line 884
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    .line 886
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 888
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->destroyDeferredSurfaceLocked()V

    .line 889
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->destroySurfaceLocked()V

    .line 890
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v0}, Lcom/android/server/wm/Session;->windowRemovedLocked()V

    .line 892
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mDeathRecipient:Lcom/android/server/wm/WindowState$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 897
    :goto_0
    return-void

    .line 893
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method setInputChannel(Landroid/view/InputChannel;)V
    .locals 2
    .parameter "inputChannel"

    .prologue
    .line 900
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_0

    .line 901
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Window already has an input channel."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 904
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    .line 905
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-object p1, v0, Lcom/android/server/input/InputWindowHandle;->inputChannel:Landroid/view/InputChannel;

    .line 906
    return-void
.end method

.method shouldAnimateMove()Z
    .locals 2

    .prologue
    .line 870
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mContentChanged:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-eq v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->shouldAnimateMove()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showLw(Z)Z
    .locals 1
    .parameter "doAnimation"

    .prologue
    .line 959
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowState;->showLw(ZZ)Z

    move-result v0

    return v0
.end method

.method showLw(ZZ)Z
    .locals 3
    .parameter "doAnimation"
    .parameter "requestAnim"

    .prologue
    const/4 v0, 0x1

    .line 963
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    if-eqz v1, :cond_1

    .line 965
    const/4 v0, 0x0

    .line 988
    :cond_0
    :goto_0
    return v0

    .line 968
    :cond_1
    if-eqz p1, :cond_2

    .line 971
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v1

    if-nez v1, :cond_4

    .line 972
    const/4 p1, 0x0

    .line 980
    :cond_2
    :goto_1
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    .line 981
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    .line 982
    if-eqz p1, :cond_3

    .line 983
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/16 v2, 0x1001

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    .line 985
    :cond_3
    if-eqz p2, :cond_0

    .line 986
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    goto :goto_0

    .line 973
    :cond_4
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-nez v1, :cond_2

    .line 977
    const/4 p1, 0x0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1244
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mStringNameCache:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastTitle:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mWasPaused:Z

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowToken;->paused:Z

    if-eq v0, v1, :cond_1

    .line 1246
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mLastTitle:Ljava/lang/CharSequence;

    .line 1247
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowToken;->paused:Z

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mWasPaused:Z

    .line 1248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Window{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mLastTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " paused="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mWasPaused:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mStringNameCache:Ljava/lang/String;

    .line 1251
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mStringNameCache:Ljava/lang/String;

    return-object v0
.end method

.class public Lcom/android/server/wm/WindowAnimator;
.super Ljava/lang/Object;
.source "WindowAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowAnimator$SetAnimationParams;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowAnimator"

.field static final WALLPAPER_ACTION_PENDING:I = 0x1


# instance fields
.field mAdjResult:I

.field private mAnimTransactionSequence:I

.field mAnimating:Z

.field mBulkUpdateParams:I

.field final mContext:Landroid/content/Context;

.field mCurrentFocus:Lcom/android/server/wm/WindowState;

.field mCurrentTime:J

.field mDetachedWallpaper:Lcom/android/server/wm/WindowState;

.field mDh:I

.field mDimAnimator:Lcom/android/server/wm/DimAnimator;

.field mDimParams:Lcom/android/server/wm/DimAnimator$Parameters;

.field mDw:I

.field mForceHiding:Z

.field mInnerDh:I

.field mInnerDw:I

.field mPendingActions:I

.field mPendingLayoutChanges:I

.field final mPolicy:Landroid/view/WindowManagerPolicy;

.field mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field mWinAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowStateAnimator;",
            ">;"
        }
    .end annotation
.end field

.field mWindowAnimationBackground:Lcom/android/server/wm/WindowState;

.field mWindowAnimationBackgroundColor:I

.field mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

.field mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/content/Context;Landroid/view/WindowManagerPolicy;)V
    .locals 2
    .parameter "service"
    .parameter "context"
    .parameter "policy"

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mWinAnimators:Ljava/util/ArrayList;

    .line 63
    iput-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 69
    iput-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    .line 70
    iput-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDetachedWallpaper:Lcom/android/server/wm/WindowState;

    .line 71
    iput-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 75
    iput-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    .line 76
    iput-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDimParams:Lcom/android/server/wm/DimAnimator$Parameters;

    .line 83
    iput-object p1, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 84
    iput-object p2, p0, Lcom/android/server/wm/WindowAnimator;->mContext:Landroid/content/Context;

    .line 85
    iput-object p3, p0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    .line 86
    return-void
.end method

.method private performAnimationsLocked()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 443
    iput-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:Z

    .line 444
    iput-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDetachedWallpaper:Lcom/android/server/wm/WindowState;

    .line 445
    iput-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mWindowAnimationBackground:Lcom/android/server/wm/WindowState;

    .line 446
    iput v0, p0, Lcom/android/server/wm/WindowAnimator;->mWindowAnimationBackgroundColor:I

    .line 448
    invoke-direct {p0}, Lcom/android/server/wm/WindowAnimator;->updateWindowsAndWallpaperLocked()V

    .line 449
    iget v0, p0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 450
    iget v0, p0, Lcom/android/server/wm/WindowAnimator;->mPendingActions:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/WindowAnimator;->mPendingActions:I

    .line 453
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/WindowAnimator;->testTokenMayBeDrawnLocked()V

    .line 454
    return-void
.end method

.method private testTokenMayBeDrawnLocked()V
    .locals 8

    .prologue
    .line 406
    iget-object v5, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v5, Lcom/android/server/wm/WindowManagerService;->mAnimatingAppTokens:Ljava/util/ArrayList;

    .line 407
    .local v2, appTokens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 408
    .local v0, NT:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 409
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/AppWindowToken;

    .line 410
    .local v4, wtoken:Lcom/android/server/wm/AppWindowToken;
    iget-boolean v1, v4, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    .line 411
    .local v1, allDrawn:Z
    iget-object v5, v4, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v5, v5, Lcom/android/server/wm/AppWindowAnimator;->allDrawn:Z

    if-eq v1, v5, :cond_0

    .line 412
    iget-object v5, v4, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iput-boolean v1, v5, Lcom/android/server/wm/AppWindowAnimator;->allDrawn:Z

    .line 413
    if-eqz v1, :cond_0

    .line 416
    iget-object v5, v4, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v5, v5, Lcom/android/server/wm/AppWindowAnimator;->freezingScreen:Z

    if-eqz v5, :cond_1

    .line 417
    iget-object v5, v4, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowAnimator;->showAllWindowsLocked()Z

    .line 418
    iget-object v5, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v5, v4, v6, v7}, Lcom/android/server/wm/WindowManagerService;->unsetAppFreezingScreenLocked(Lcom/android/server/wm/AppWindowToken;ZZ)V

    .line 424
    iget v5, p0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:I

    .line 408
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 426
    :cond_1
    iget v5, p0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:I

    .line 428
    iget-object v5, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string v6, "testTokenMayBeDrawnLocked"

    iget v7, p0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:I

    invoke-virtual {v5, v6, v7}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 433
    iget-object v5, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 434
    iget-boolean v5, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    iget-object v6, v4, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    invoke-virtual {v6}, Lcom/android/server/wm/AppWindowAnimator;->showAllWindowsLocked()Z

    move-result v6

    or-int/2addr v5, v6

    iput-boolean v5, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    goto :goto_1

    .line 440
    .end local v1           #allDrawn:Z
    .end local v4           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_2
    return-void
.end method

.method private testWallpaperAndBackgroundLocked()V
    .locals 9

    .prologue
    const/high16 v8, 0x200

    .line 106
    iget-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    iget-object v7, p0, Lcom/android/server/wm/WindowAnimator;->mDetachedWallpaper:Lcom/android/server/wm/WindowState;

    if-eq v6, v7, :cond_0

    .line 110
    iget-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mDetachedWallpaper:Lcom/android/server/wm/WindowState;

    iput-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    .line 111
    iget v6, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 114
    :cond_0
    iget v6, p0, Lcom/android/server/wm/WindowAnimator;->mWindowAnimationBackgroundColor:I

    if-eqz v6, :cond_7

    .line 118
    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mWindowAnimationBackground:Lcom/android/server/wm/WindowState;

    .line 119
    .local v4, target:Lcom/android/server/wm/WindowState;
    iget-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eq v6, v4, :cond_1

    iget-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eq v6, v4, :cond_1

    iget-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-ne v6, v4, :cond_2

    .line 122
    :cond_1
    iget-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 123
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 124
    iget-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    .line 125
    .local v5, w:Lcom/android/server/wm/WindowState;
    iget-boolean v6, v5, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v6, :cond_5

    .line 126
    move-object v4, v5

    .line 131
    .end local v0           #N:I
    .end local v3           #i:I
    .end local v5           #w:Lcom/android/server/wm/WindowState;
    :cond_2
    iget-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

    if-nez v6, :cond_3

    .line 132
    new-instance v6, Lcom/android/server/wm/DimSurface;

    iget-object v7, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    invoke-direct {v6, v7}, Lcom/android/server/wm/DimSurface;-><init>(Landroid/view/SurfaceSession;)V

    iput-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

    .line 134
    :cond_3
    iget v2, p0, Lcom/android/server/wm/WindowAnimator;->mDw:I

    .line 135
    .local v2, dw:I
    iget v1, p0, Lcom/android/server/wm/WindowAnimator;->mDh:I

    .line 138
    .local v1, dh:I
    iget-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v6, v6, Lcom/android/server/wm/WindowManagerService;->mIsMultiWindowEnabled:Z

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mWindowAnimationBackground:Lcom/android/server/wm/WindowState;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getWindowModeLw()I

    move-result v6

    invoke-static {v6}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v6

    if-eq v6, v8, :cond_4

    iget-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mWindowAnimationBackground:Lcom/android/server/wm/WindowState;

    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mWindowAnimationBackground:Lcom/android/server/wm/WindowState;

    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getWindowModeLw()I

    move-result v6

    invoke-static {v6}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v6

    if-ne v6, v8, :cond_6

    .line 150
    .end local v1           #dh:I
    .end local v2           #dw:I
    .end local v4           #target:Lcom/android/server/wm/WindowState;
    :cond_4
    :goto_1
    return-void

    .line 123
    .restart local v0       #N:I
    .restart local v3       #i:I
    .restart local v4       #target:Lcom/android/server/wm/WindowState;
    .restart local v5       #w:Lcom/android/server/wm/WindowState;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 144
    .end local v0           #N:I
    .end local v3           #i:I
    .end local v5           #w:Lcom/android/server/wm/WindowState;
    .restart local v1       #dh:I
    .restart local v2       #dw:I
    :cond_6
    iget-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

    iget-object v7, v4, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v7, v7, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    add-int/lit8 v7, v7, -0x1

    iget v8, p0, Lcom/android/server/wm/WindowAnimator;->mWindowAnimationBackgroundColor:I

    invoke-virtual {v6, v2, v1, v7, v8}, Lcom/android/server/wm/DimSurface;->show(IIII)V

    goto :goto_1

    .line 147
    .end local v1           #dh:I
    .end local v2           #dw:I
    .end local v4           #target:Lcom/android/server/wm/WindowState;
    :cond_7
    iget-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

    if-eqz v6, :cond_4

    .line 148
    iget-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

    invoke-virtual {v6}, Lcom/android/server/wm/DimSurface;->hide()V

    goto :goto_1
.end method

.method private updateWindowsAndWallpaperLocked()V
    .locals 22

    .prologue
    .line 205
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    .line 207
    const/16 v18, 0x0

    .line 208
    .local v18, unForceHiding:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowStateAnimator;>;"
    const/16 v19, 0x0

    .line 209
    .local v19, wallpaperInUnForceHiding:Z
    const/16 v16, 0x0

    .line 211
    .local v16, keyguard:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v14, v2, -0x1

    .local v14, i:I
    :goto_0
    if-ltz v14, :cond_1d

    .line 212
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 213
    .local v3, win:Lcom/android/server/wm/WindowState;
    iget-object v0, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v21, v0

    .line 214
    .local v21, winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    move-object/from16 v0, v21

    iget v13, v0, Lcom/android/server/wm/WindowStateAnimator;->mAttrFlags:I

    .line 216
    .local v13, flags:I
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurface:Landroid/view/Surface;

    if-eqz v2, :cond_9

    .line 217
    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWasAnimating:Z

    move/from16 v20, v0

    .line 218
    .local v20, wasAnimating:Z
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Lcom/android/server/wm/WindowStateAnimator;->stepAnimationLocked(J)Z

    move-result v17

    .line 228
    .local v17, nowAnimating:Z
    if-eqz v17, :cond_3

    .line 229
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_2

    .line 230
    const/high16 v2, 0x10

    and-int/2addr v2, v13

    if-eqz v2, :cond_0

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2}, Landroid/view/animation/Animation;->getDetachWallpaper()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 232
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/wm/WindowAnimator;->mDetachedWallpaper:Lcom/android/server/wm/WindowState;

    .line 234
    :cond_0
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2}, Landroid/view/animation/Animation;->getBackgroundColor()I

    move-result v11

    .line 235
    .local v11, backgroundColor:I
    if-eqz v11, :cond_2

    .line 236
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mWindowAnimationBackground:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_1

    move-object/from16 v0, v21

    iget v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowAnimator;->mWindowAnimationBackground:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-ge v2, v4, :cond_2

    .line 239
    :cond_1
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/wm/WindowAnimator;->mWindowAnimationBackground:Lcom/android/server/wm/WindowState;

    .line 240
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/wm/WindowAnimator;->mWindowAnimationBackgroundColor:I

    .line 244
    .end local v11           #backgroundColor:I
    :cond_2
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 250
    :cond_3
    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v2, :cond_e

    const/4 v9, 0x0

    .line 252
    .local v9, appAnimator:Lcom/android/server/wm/AppWindowAnimator;
    :goto_1
    if-eqz v9, :cond_6

    iget-object v2, v9, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_6

    iget-boolean v2, v9, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    if-eqz v2, :cond_6

    .line 254
    const/high16 v2, 0x10

    and-int/2addr v2, v13

    if-eqz v2, :cond_4

    iget-object v2, v9, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v2}, Landroid/view/animation/Animation;->getDetachWallpaper()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 256
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/wm/WindowAnimator;->mDetachedWallpaper:Lcom/android/server/wm/WindowState;

    .line 258
    :cond_4
    iget-object v2, v9, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v2}, Landroid/view/animation/Animation;->getBackgroundColor()I

    move-result v11

    .line 259
    .restart local v11       #backgroundColor:I
    if-eqz v11, :cond_6

    .line 260
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mWindowAnimationBackground:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_5

    move-object/from16 v0, v21

    iget v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowAnimator;->mWindowAnimationBackground:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-ge v2, v4, :cond_6

    .line 263
    :cond_5
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/wm/WindowAnimator;->mWindowAnimationBackground:Lcom/android/server/wm/WindowState;

    .line 264
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/wm/WindowAnimator;->mWindowAnimationBackgroundColor:I

    .line 269
    .end local v11           #backgroundColor:I
    :cond_6
    if-eqz v20, :cond_7

    move-object/from16 v0, v21

    iget-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-ne v2, v3, :cond_7

    .line 270
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 271
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:I

    or-int/lit8 v2, v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:I

    .line 273
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string v4, "updateWindowsAndWallpaperLocked 2"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:I

    invoke-virtual {v2, v4, v5}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 278
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManagerPolicy;->doesForceHide(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 279
    move-object/from16 v16, v3

    .line 280
    if-nez v20, :cond_8

    if-eqz v17, :cond_8

    .line 284
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v2, v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 285
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:I

    or-int/lit8 v2, v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:I

    .line 287
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string v4, "updateWindowsAndWallpaperLocked 3"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:I

    invoke-virtual {v2, v4, v5}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 290
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 292
    :cond_8
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isReadyForDisplay()Z

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-nez v2, :cond_9

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isAllDrawnLw()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 293
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:Z

    .line 363
    .end local v9           #appAnimator:Lcom/android/server/wm/AppWindowAnimator;
    .end local v17           #nowAnimating:Z
    .end local v20           #wasAnimating:Z
    :cond_9
    :goto_2
    iget-object v10, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 364
    .local v10, atoken:Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, v21

    iget v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_b

    .line 365
    if-eqz v10, :cond_a

    iget-boolean v2, v10, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-eqz v2, :cond_b

    .line 366
    :cond_a
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/WindowStateAnimator;->performShowLocked()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 367
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:I

    or-int/lit8 v2, v2, 0x8

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:I

    .line 369
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string v4, "updateWindowsAndWallpaperLocked 5"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:I

    invoke-virtual {v2, v4, v5}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 375
    :cond_b
    if-nez v10, :cond_1c

    const/4 v9, 0x0

    .line 377
    .restart local v9       #appAnimator:Lcom/android/server/wm/AppWindowAnimator;
    :goto_3
    if-eqz v9, :cond_d

    iget-object v2, v9, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/Surface;

    if-eqz v2, :cond_d

    .line 378
    iget v2, v9, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransactionSeq:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    if-eq v2, v4, :cond_c

    .line 379
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    iput v2, v9, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransactionSeq:I

    .line 380
    const/4 v2, 0x0

    iput v2, v9, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    .line 382
    :cond_c
    iget v2, v9, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    move-object/from16 v0, v21

    iget v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-ge v2, v4, :cond_d

    .line 383
    move-object/from16 v0, v21

    iget v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iput v2, v9, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    .line 211
    :cond_d
    add-int/lit8 v14, v14, -0x1

    goto/16 :goto_0

    .line 250
    .end local v9           #appAnimator:Lcom/android/server/wm/AppWindowAnimator;
    .end local v10           #atoken:Lcom/android/server/wm/AppWindowToken;
    .restart local v17       #nowAnimating:Z
    .restart local v20       #wasAnimating:Z
    :cond_e
    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v9, v2, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    goto/16 :goto_1

    .line 304
    .restart local v9       #appAnimator:Lcom/android/server/wm/AppWindowAnimator;
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManagerPolicy;->canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 306
    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_13

    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7d4

    if-ne v2, v4, :cond_13

    const/4 v15, 0x1

    .line 308
    .local v15, isAttachedWindowToKeyguard:Z
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:Z

    if-eqz v2, :cond_10

    if-nez v15, :cond_10

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/WindowStateAnimator;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_11

    move-object/from16 v0, v21

    iget v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAttrFlags:I

    const/high16 v4, 0x8

    and-int/2addr v2, v4

    if-eqz v2, :cond_11

    :cond_10
    if-eqz v15, :cond_14

    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-nez v2, :cond_14

    .line 310
    :cond_11
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    move-result v12

    .line 352
    .local v12, changed:Z
    :cond_12
    :goto_5
    if-eqz v12, :cond_9

    const/high16 v2, 0x10

    and-int/2addr v2, v13

    if-eqz v2, :cond_9

    .line 353
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 354
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:I

    or-int/lit8 v2, v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:I

    .line 356
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string v4, "updateWindowsAndWallpaperLocked 4"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:I

    invoke-virtual {v2, v4, v5}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 306
    .end local v12           #changed:Z
    .end local v15           #isAttachedWindowToKeyguard:Z
    :cond_13
    const/4 v15, 0x0

    goto :goto_4

    .line 315
    .restart local v15       #isAttachedWindowToKeyguard:Z
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v5, v3, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v5, :cond_15

    iget-object v5, v3, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    :goto_6
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getWindowModeLw()I

    move-result v6

    iget-object v7, v3, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v7, :cond_16

    iget-object v7, v3, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getWindowModeLw()I

    move-result v7

    :goto_7
    invoke-interface/range {v2 .. v7}, Landroid/view/WindowManagerPolicy;->mustBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager$LayoutParams;II)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 316
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    move-result v12

    .line 317
    .restart local v12       #changed:Z
    if-eqz v12, :cond_12

    const-string v2, "WindowAnimator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Now policy mustBeForceHidden hideLw: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 315
    .end local v12           #changed:Z
    :cond_15
    const/4 v5, 0x0

    goto :goto_6

    :cond_16
    const/4 v7, 0x0

    goto :goto_7

    .line 320
    :cond_17
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/server/wm/WindowState;->showLw(ZZ)Z

    move-result v12

    .line 323
    .restart local v12       #changed:Z
    if-eqz v12, :cond_12

    .line 324
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_19

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 326
    if-nez v18, :cond_18

    .line 327
    new-instance v18, Ljava/util/ArrayList;

    .end local v18           #unForceHiding:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowStateAnimator;>;"
    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 329
    .restart local v18       #unForceHiding:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowStateAnimator;>;"
    :cond_18
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x10

    and-int/2addr v2, v4

    if-eqz v2, :cond_19

    .line 331
    const/16 v19, 0x1

    .line 334
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iget v2, v2, Lcom/android/server/wm/WindowState;->mLayer:I

    iget v4, v3, Lcom/android/server/wm/WindowState;->mLayer:I

    if-ge v2, v4, :cond_1b

    .line 338
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 342
    :cond_1b
    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7db

    if-ne v2, v4, :cond_12

    .line 343
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    goto/16 :goto_5

    .line 375
    .end local v9           #appAnimator:Lcom/android/server/wm/AppWindowAnimator;
    .end local v12           #changed:Z
    .end local v15           #isAttachedWindowToKeyguard:Z
    .end local v17           #nowAnimating:Z
    .end local v20           #wasAnimating:Z
    .restart local v10       #atoken:Lcom/android/server/wm/AppWindowToken;
    :cond_1c
    iget-object v9, v10, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    goto/16 :goto_3

    .line 391
    .end local v3           #win:Lcom/android/server/wm/WindowState;
    .end local v10           #atoken:Lcom/android/server/wm/AppWindowToken;
    .end local v13           #flags:I
    .end local v21           #winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    :cond_1d
    if-eqz v18, :cond_1f

    .line 392
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v14, v2, -0x1

    :goto_8
    if-ltz v14, :cond_1f

    .line 393
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move/from16 v0, v19

    invoke-interface {v2, v0}, Landroid/view/WindowManagerPolicy;->createForceHideEnterAnimation(Z)Landroid/view/animation/Animation;

    move-result-object v8

    .line 394
    .local v8, a:Landroid/view/animation/Animation;
    if-eqz v8, :cond_1e

    .line 395
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/wm/WindowStateAnimator;

    .line 396
    .restart local v21       #winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;)V

    .line 397
    const/4 v2, 0x1

    move-object/from16 v0, v21

    iput-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    .line 392
    .end local v21           #winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    :cond_1e
    add-int/lit8 v14, v14, -0x1

    goto :goto_8

    .line 401
    .end local v8           #a:Landroid/view/animation/Animation;
    :cond_1f
    return-void
.end method

.method private updateWindowsAppsAndRotationAnimationsLocked()V
    .locals 12

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 153
    iget-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v6, Lcom/android/server/wm/WindowManagerService;->mAnimatingAppTokens:Ljava/util/ArrayList;

    .line 155
    .local v3, appTokens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 156
    .local v0, NAT:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v0, :cond_3

    .line 157
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    iget-object v2, v6, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 158
    .local v2, appAnimator:Lcom/android/server/wm/AppWindowAnimator;
    iget-object v6, v2, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v6, :cond_1

    iget-object v6, v2, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    sget-object v9, Lcom/android/server/wm/AppWindowAnimator;->sDummyAnimation:Landroid/view/animation/Animation;

    if-eq v6, v9, :cond_1

    move v5, v7

    .line 160
    .local v5, wasAnimating:Z
    :goto_1
    iget-wide v9, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    iget v6, p0, Lcom/android/server/wm/WindowAnimator;->mInnerDw:I

    iget v11, p0, Lcom/android/server/wm/WindowAnimator;->mInnerDh:I

    invoke-virtual {v2, v9, v10, v6, v11}, Lcom/android/server/wm/AppWindowAnimator;->stepAnimationLocked(JII)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 161
    iput-boolean v7, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 156
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v5           #wasAnimating:Z
    :cond_1
    move v5, v8

    .line 158
    goto :goto_1

    .line 162
    .restart local v5       #wasAnimating:Z
    :cond_2
    if-eqz v5, :cond_0

    .line 164
    iget v6, p0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:I

    .line 166
    iget-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "appToken "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v2, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " done"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget v10, p0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:I

    invoke-virtual {v6, v9, v10}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    goto :goto_2

    .line 174
    .end local v2           #appAnimator:Lcom/android/server/wm/AppWindowAnimator;
    .end local v5           #wasAnimating:Z
    :cond_3
    iget-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 175
    .local v1, NEAT:I
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v1, :cond_7

    .line 176
    iget-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    iget-object v2, v6, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 177
    .restart local v2       #appAnimator:Lcom/android/server/wm/AppWindowAnimator;
    iget-object v6, v2, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v6, :cond_5

    iget-object v6, v2, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    sget-object v9, Lcom/android/server/wm/AppWindowAnimator;->sDummyAnimation:Landroid/view/animation/Animation;

    if-eq v6, v9, :cond_5

    move v5, v7

    .line 179
    .restart local v5       #wasAnimating:Z
    :goto_4
    iget-wide v9, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    iget v6, p0, Lcom/android/server/wm/WindowAnimator;->mInnerDw:I

    iget v11, p0, Lcom/android/server/wm/WindowAnimator;->mInnerDh:I

    invoke-virtual {v2, v9, v10, v6, v11}, Lcom/android/server/wm/AppWindowAnimator;->stepAnimationLocked(JII)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 180
    iput-boolean v7, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 175
    :cond_4
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .end local v5           #wasAnimating:Z
    :cond_5
    move v5, v8

    .line 177
    goto :goto_4

    .line 181
    .restart local v5       #wasAnimating:Z
    :cond_6
    if-eqz v5, :cond_4

    .line 183
    iget v6, p0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:I

    .line 185
    iget-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "exiting appToken "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v2, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " done"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget v10, p0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:I

    invoke-virtual {v6, v9, v10}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    goto :goto_5

    .line 193
    .end local v2           #appAnimator:Lcom/android/server/wm/AppWindowAnimator;
    .end local v5           #wasAnimating:Z
    :cond_7
    iget-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v6}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 194
    iget-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    iget-wide v8, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    invoke-virtual {v6, v8, v9}, Lcom/android/server/wm/ScreenRotationAnimation;->stepAnimationLocked(J)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 195
    iput-boolean v7, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 202
    :cond_8
    :goto_6
    return-void

    .line 197
    :cond_9
    iget v6, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 198
    iget-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v6}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    .line 199
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    goto :goto_6
.end method


# virtual methods
.method declared-synchronized animate()V
    .locals 12

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 457
    monitor-enter p0

    const/4 v4, 0x0

    :try_start_0
    iput v4, p0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:I

    .line 458
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    .line 459
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 460
    iget-boolean v3, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 461
    .local v3, wasAnimating:Z
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 468
    invoke-static {}, Landroid/view/Surface;->openTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 471
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/wm/WindowAnimator;->updateWindowsAppsAndRotationAnimationsLocked()V

    .line 472
    invoke-direct {p0}, Lcom/android/server/wm/WindowAnimator;->performAnimationsLocked()V

    .line 473
    invoke-direct {p0}, Lcom/android/server/wm/WindowAnimator;->testWallpaperAndBackgroundLocked()V

    .line 477
    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v4, :cond_0

    .line 478
    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v4}, Lcom/android/server/wm/ScreenRotationAnimation;->updateSurfaces()V

    .line 481
    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mWinAnimators:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 482
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 483
    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mWinAnimators:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowStateAnimator;

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Lcom/android/server/wm/WindowStateAnimator;->prepareSurfaceLocked(Z)V

    .line 482
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 486
    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mDimParams:Lcom/android/server/wm/DimAnimator$Parameters;

    if-eqz v4, :cond_2

    .line 487
    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    iget-object v7, p0, Lcom/android/server/wm/WindowAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mDimParams:Lcom/android/server/wm/DimAnimator$Parameters;

    iget-wide v9, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    invoke-virtual {v4, v7, v8, v9, v10}, Lcom/android/server/wm/DimAnimator;->updateParameters(Landroid/content/res/Resources;Lcom/android/server/wm/DimAnimator$Parameters;J)V

    .line 489
    :cond_2
    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    iget-boolean v4, v4, Lcom/android/server/wm/DimAnimator;->mDimShown:Z

    if-eqz v4, :cond_3

    .line 490
    iget-boolean v7, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowAnimator;->isDimming()Z

    move-result v9

    iget-wide v10, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v4

    if-nez v4, :cond_7

    move v4, v5

    :goto_1
    invoke-virtual {v8, v9, v10, v11, v4}, Lcom/android/server/wm/DimAnimator;->updateSurface(ZJZ)Z

    move-result v4

    or-int/2addr v4, v7

    iput-boolean v4, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 494
    :cond_3
    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v4, :cond_4

    .line 495
    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v4, :cond_8

    .line 496
    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mBlackFrame:Lcom/android/server/wm/BlackFrame;

    iget-object v5, p0, Lcom/android/server/wm/WindowAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v5}, Lcom/android/server/wm/ScreenRotationAnimation;->getEnterTransformation()Landroid/view/animation/Transformation;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wm/BlackFrame;->setMatrix(Landroid/graphics/Matrix;)V

    .line 503
    :cond_4
    :goto_2
    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    if-eqz v4, :cond_5

    .line 504
    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    invoke-virtual {v4}, Lcom/android/server/wm/Watermark;->drawIfNeeded()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 509
    :cond_5
    :try_start_2
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 512
    .end local v0           #N:I
    .end local v2           #i:I
    :goto_3
    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v5, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    iget v6, p0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/wm/WindowManagerService;->bulkSetParameters(II)V

    .line 514
    iget-boolean v4, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    if-eqz v4, :cond_9

    .line 515
    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 524
    :cond_6
    :goto_4
    monitor-exit p0

    return-void

    .restart local v0       #N:I
    .restart local v2       #i:I
    :cond_7
    move v4, v6

    .line 490
    goto :goto_1

    .line 499
    :cond_8
    :try_start_3
    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mBlackFrame:Lcom/android/server/wm/BlackFrame;

    invoke-virtual {v4}, Lcom/android/server/wm/BlackFrame;->clearMatrix()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 506
    .end local v0           #N:I
    .end local v2           #i:I
    :catch_0
    move-exception v1

    .line 507
    .local v1, e:Ljava/lang/RuntimeException;
    :try_start_4
    const-string v4, "WindowAnimator"

    const-string v5, "Unhandled exception in Window Manager"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 509
    :try_start_5
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 457
    .end local v1           #e:Ljava/lang/RuntimeException;
    .end local v3           #wasAnimating:Z
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 509
    .restart local v3       #wasAnimating:Z
    :catchall_1
    move-exception v4

    :try_start_6
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    throw v4

    .line 516
    :cond_9
    if-eqz v3, :cond_6

    .line 517
    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->requestTraversalLocked()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4
.end method

.method declared-synchronized clearPendingActions()V
    .locals 1

    .prologue
    .line 606
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/android/server/wm/WindowAnimator;->mPendingActions:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 607
    monitor-exit p0

    return-void

    .line 606
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 3
    .parameter "pw"
    .parameter "prefix"
    .parameter "dumpAll"

    .prologue
    .line 571
    if-eqz p3, :cond_2

    .line 572
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    .line 573
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mWindowDetachedWallpaper="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 574
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 576
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAnimTransactionSequence="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 577
    iget v0, p0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 578
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

    if-eqz v0, :cond_1

    .line 579
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mWindowAnimationBackgroundSurface:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 580
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/DimSurface;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 582
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    if-eqz v0, :cond_3

    .line 583
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDimAnimator:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 584
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/DimAnimator;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 589
    :cond_2
    :goto_0
    return-void

    .line 586
    :cond_3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "no DimAnimator "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0
.end method

.method hideWallpapersLocked(Lcom/android/server/wm/WindowState;)V
    .locals 7
    .parameter "w"

    .prologue
    .line 89
    iget-object v5, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-ne v5, p1, :cond_0

    iget-object v5, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v5, :cond_1

    :cond_0
    iget-object v5, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v5, :cond_4

    .line 91
    :cond_1
    iget-object v5, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowToken;

    .line 92
    .local v2, token:Lcom/android/server/wm/WindowToken;
    iget-object v5, v2, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 93
    .local v3, wallpaper:Lcom/android/server/wm/WindowState;
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 94
    .local v4, winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    iget-boolean v5, v4, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    if-nez v5, :cond_2

    .line 95
    invoke-virtual {v4}, Lcom/android/server/wm/WindowStateAnimator;->hide()V

    .line 96
    iget-object v5, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Lcom/android/server/wm/WindowManagerService;->dispatchWallpaperVisibility(Lcom/android/server/wm/WindowState;Z)V

    .line 97
    iget v5, p0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:I

    goto :goto_1

    .line 100
    .end local v3           #wallpaper:Lcom/android/server/wm/WindowState;
    .end local v4           #winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    :cond_3
    const/4 v5, 0x1

    iput-boolean v5, v2, Lcom/android/server/wm/WindowToken;->hidden:Z

    goto :goto_0

    .line 103
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #token:Lcom/android/server/wm/WindowToken;
    :cond_4
    return-void
.end method

.method isDimming()Z
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mDimParams:Lcom/android/server/wm/DimAnimator$Parameters;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isDimming(Lcom/android/server/wm/WindowStateAnimator;)Z
    .locals 1
    .parameter "winAnimator"

    .prologue
    .line 567
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mDimParams:Lcom/android/server/wm/DimAnimator$Parameters;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mDimParams:Lcom/android/server/wm/DimAnimator$Parameters;

    iget-object v0, v0, Lcom/android/server/wm/DimAnimator$Parameters;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setCurrentFocus(Lcom/android/server/wm/WindowState;)V
    .locals 0
    .parameter "currentFocus"

    .prologue
    .line 528
    iput-object p1, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 529
    return-void
.end method

.method setDisplayDimensions(IIII)V
    .locals 0
    .parameter "curWidth"
    .parameter "curHeight"
    .parameter "appWidth"
    .parameter "appHeight"

    .prologue
    .line 533
    iput p1, p0, Lcom/android/server/wm/WindowAnimator;->mDw:I

    .line 534
    iput p2, p0, Lcom/android/server/wm/WindowAnimator;->mDh:I

    .line 535
    iput p3, p0, Lcom/android/server/wm/WindowAnimator;->mInnerDw:I

    .line 536
    iput p4, p0, Lcom/android/server/wm/WindowAnimator;->mInnerDh:I

    .line 537
    return-void
.end method

.method startDimming(Lcom/android/server/wm/WindowStateAnimator;FII)V
    .locals 5
    .parameter "winAnimator"
    .parameter "target"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 541
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    if-nez v1, :cond_0

    .line 542
    new-instance v1, Lcom/android/server/wm/DimAnimator;

    iget-object v2, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    invoke-direct {v1, v2}, Lcom/android/server/wm/DimAnimator;-><init>(Landroid/view/SurfaceSession;)V

    iput-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    .line 545
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDimParams:Lcom/android/server/wm/DimAnimator$Parameters;

    if-nez v1, :cond_3

    const/4 v0, 0x0

    .line 548
    .local v0, dimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;
    :goto_0
    iget-boolean v1, p1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    if-eqz v1, :cond_1

    iget v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget v2, p1, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDimParams:Lcom/android/server/wm/DimAnimator$Parameters;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDimParams:Lcom/android/server/wm/DimAnimator$Parameters;

    iget v1, v1, Lcom/android/server/wm/DimAnimator$Parameters;->mDimWidth:I

    if-ne v1, p3, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDimParams:Lcom/android/server/wm/DimAnimator$Parameters;

    iget v1, v1, Lcom/android/server/wm/DimAnimator$Parameters;->mDimHeight:I

    if-eq v1, p4, :cond_2

    .line 552
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v2, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const v3, 0x186a3

    new-instance v4, Lcom/android/server/wm/DimAnimator$Parameters;

    invoke-direct {v4, p1, p3, p4, p2}, Lcom/android/server/wm/DimAnimator$Parameters;-><init>(Lcom/android/server/wm/WindowStateAnimator;IIF)V

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 555
    :cond_2
    return-void

    .line 545
    .end local v0           #dimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDimParams:Lcom/android/server/wm/DimAnimator$Parameters;

    iget-object v0, v1, Lcom/android/server/wm/DimAnimator$Parameters;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    goto :goto_0
.end method

.method stopDimming()V
    .locals 4

    .prologue
    .line 559
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const v2, 0x186a3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 560
    return-void
.end method

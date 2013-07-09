.class public Lcom/android/internal/policy/impl/sec/CircleLockScreen;
.super Landroid/widget/FrameLayout;
.source "CircleLockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MissedEventCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;
    }
.end annotation


# static fields
.field private static final HELP_OVERLAY_CHECKED:Ljava/lang/String; = "help_overlay_checked"

.field private static final INTENT_ACTION_HELPHUB:Ljava/lang/String; = "com.samsung.helphub.HELP"


# instance fields
.field private DBG:Z

.field private final FADE_IN_OUT_ANIMATION_DURATION:I

.field private final MSG_GO_TO_UNLOCK_SCREEN:I

.field private final MSG_SET_VOICE_RECOGNITION_FAIL:I

.field private TAG:Ljava/lang/String;

.field private helpOverlayTip:I

.field private isHelpOverlayUSA:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCircleLockScreenMotion:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

.field private mCircleTouchListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleTouchListener;

.field private mCircleUnlockListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;

.field private mClockWidget:Lcom/android/internal/policy/impl/sec/ClockWidget;

.field private mContext:Landroid/content/Context;

.field private mCreationOrientation:I

.field private mDefaultHelpOverlay:Z

.field private mDefaultHelpText:Ljava/lang/String;

.field private mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

.field private mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

.field private mHandler:Landroid/os/Handler;

.field private mHelpText:Landroid/widget/TextView;

.field private mIsCameraShortCut:Z

.field private mIsHelpTextEnabled:Z

.field private mIsMotionLockscreen:Z

.field private mIsMultipleWakeUpOn:Z

.field private mIsTouchExplorationEnabled:Z

.field private mIsWaterRipple:Z

.field private mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

.field private mLockIcon:Landroid/widget/ImageView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;

.field private mMissedCallList:Landroid/view/View;

.field private mMissedEventWidget:Landroid/view/View;

.field private mMissedMsgList:Landroid/view/View;

.field private mRootLayout:Landroid/widget/RelativeLayout;

.field private mShortcutWidget:Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;

.field private mTalkbackEnabled:Z

.field private mTickerWidget:Lcom/android/internal/policy/impl/sec/TickerWidget;

.field private mUnlockWidget:Landroid/view/View;

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private mUsimWidget:Lcom/android/internal/policy/impl/sec/UsimWidget;

.field private mVoiceEngineThread:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

.field private mVoiceHelpText:Landroid/widget/TextView;

.field private mVoiceIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 25
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    .line 410
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 75
    const-string v3, "CircleLockScreen"

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    .line 76
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->DBG:Z

    .line 105
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->helpOverlayTip:I

    .line 111
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    invoke-direct {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    .line 112
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3f80

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    .line 113
    const/16 v3, 0x12c

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->FADE_IN_OUT_ANIMATION_DURATION:I

    .line 119
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    .line 123
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedCallList:Landroid/view/View;

    .line 124
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedMsgList:Landroid/view/View;

    .line 387
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsMultipleWakeUpOn:Z

    .line 389
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->MSG_SET_VOICE_RECOGNITION_FAIL:I

    .line 390
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->MSG_GO_TO_UNLOCK_SCREEN:I

    .line 404
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsHelpTextEnabled:Z

    .line 405
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mTalkbackEnabled:Z

    .line 406
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsTouchExplorationEnabled:Z

    .line 412
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    .line 413
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 414
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 415
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 416
    move-object/from16 v0, p2

    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCreationOrientation:I

    .line 418
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 419
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 421
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 422
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 424
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mAudioManager:Landroid/media/AudioManager;

    .line 426
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "enabled_accessibility_services"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 427
    .local v10, accesibilityService:Ljava/lang/String;
    if-eqz v10, :cond_0

    .line 428
    const-string v3, "(?i).*talkback.*"

    invoke-virtual {v10, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mTalkbackEnabled:Z

    .line 429
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mTalkbackEnabled:Z

    if-eqz v3, :cond_10

    .line 430
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v4, "tb on"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mTalkbackEnabled:Z

    if-nez v3, :cond_1

    .line 437
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "driving_mode_on"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 438
    .local v11, drivingMode:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "driving_mode_unlock_screen_contents"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v24

    .line 440
    .local v24, unlockDrivingMode:I
    const/4 v3, 0x1

    if-ne v11, v3, :cond_11

    const/4 v3, 0x1

    move/from16 v0, v24

    if-ne v0, v3, :cond_11

    .line 441
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mTalkbackEnabled:Z

    .line 442
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v4, "drv mode on"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    .end local v11           #drivingMode:I
    .end local v24           #unlockDrivingMode:I
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mTalkbackEnabled ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mTalkbackEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsTouchExplorationEnabled:Z

    if-nez v3, :cond_2

    .line 451
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "touch_exploration_enabled"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    .line 453
    .local v13, exploreByTouchMode:I
    const/4 v3, 0x1

    if-ne v13, v3, :cond_12

    .line 454
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsTouchExplorationEnabled:Z

    .line 455
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v4, "explore by touch mode on"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    .end local v13           #exploreByTouchMode:I
    :cond_2
    :goto_2
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->setFocusable(Z)V

    .line 462
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->setFocusableInTouchMode(Z)V

    .line 463
    const/high16 v3, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->setDescendantFocusability(I)V

    .line 465
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v15

    .line 466
    .local v15, inflater:Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCreationOrientation:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_13

    .line 468
    const v3, 0x109005b

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v15, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 478
    :goto_3
    const v3, 0x10202fb

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    .line 481
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "easy_mode_switch"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_14

    const/16 v17, 0x0

    .line 482
    .local v17, isEasyUxOn:Z
    :goto_4
    if-eqz v17, :cond_15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1110050

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_15

    const/16 v17, 0x1

    .line 484
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lock_motion_tilt_to_unlock"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_16

    const/4 v3, 0x1

    :goto_6
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsMotionLockscreen:Z

    .line 485
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "motion_unlock_camera_short_cut"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_17

    const/4 v3, 0x1

    :goto_7
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsCameraShortCut:Z

    .line 486
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsMotionLockscreen:Z

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsCameraShortCut:Z

    if-eqz v3, :cond_4

    if-nez v17, :cond_4

    .line 487
    :cond_3
    new-instance v3, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-direct {v3, v0, v1}, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    .line 491
    :cond_4
    const v3, 0x1020300

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    .line 492
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 494
    const v3, 0x1020301

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceHelpText:Landroid/widget/TextView;

    .line 495
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceHelpText:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 496
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceHelpText:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 497
    const v3, 0x10202fe

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceIcon:Landroid/widget/ImageView;

    .line 498
    const v3, 0x10202ff

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockIcon:Landroid/widget/ImageView;

    .line 500
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isVZWDevice()Z

    move-result v3

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockIcon:Landroid/widget/ImageView;

    if-eqz v3, :cond_5

    .line 501
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockIcon:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 505
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wake_up_lock_screen"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_18

    const/4 v3, 0x1

    :goto_8
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsMultipleWakeUpOn:Z

    .line 506
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsMultipleWakeUpOn:Z

    if-eqz v3, :cond_7

    .line 508
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.vlingo.midas"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v16

    .line 509
    .local v16, info:Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, v16

    iget-boolean v3, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v3, :cond_6

    .line 510
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsMultipleWakeUpOn:Z

    .line 511
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v4, "package disabled"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 518
    .end local v16           #info:Landroid/content/pm/ApplicationInfo;
    :cond_6
    :goto_9
    if-eqz v17, :cond_7

    .line 520
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsMultipleWakeUpOn:Z

    .line 524
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isIccBlockedPermanently()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->freezeforPermBlockedSim()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 525
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsHelpTextEnabled:Z

    .line 529
    :goto_a
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsHelpTextEnabled:Z

    if-eqz v3, :cond_1b

    .line 530
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 535
    :goto_b
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isUSAFeature()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isTabletDevice()Z

    move-result v3

    if-nez v3, :cond_1c

    const/4 v3, 0x1

    :goto_c
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->isHelpOverlayUSA:Z

    .line 537
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lockscreen_wallpaper"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1d

    const/16 v18, 0x0

    .line 538
    .local v18, isLiveWallpaper:Z
    :goto_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x111004a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v22

    .line 539
    .local v22, isWaterRippleConfig:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lockscreen_ripple_effect"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1e

    const/16 v20, 0x1

    .line 540
    .local v20, isRippleEffect:Z
    :goto_e
    if-nez v18, :cond_1f

    if-eqz v22, :cond_1f

    if-eqz v20, :cond_1f

    const/4 v3, 0x1

    :goto_f
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsWaterRipple:Z

    .line 542
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->createUnlockWidget()Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    .line 544
    new-instance v3, Lcom/android/internal/policy/impl/sec/CircleLockScreen$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$1;-><init>(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCircleTouchListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleTouchListener;

    .line 617
    new-instance v3, Lcom/android/internal/policy/impl/sec/CircleLockScreen$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$2;-><init>(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCircleUnlockListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;

    .line 628
    new-instance v3, Lcom/android/internal/policy/impl/sec/ClockWidget;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    invoke-direct {v3, v0, v1, v2, v4}, Lcom/android/internal/policy/impl/sec/ClockWidget;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/sec/ClockWidget;

    .line 631
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isUsimWidgetEnable()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 632
    new-instance v3, Lcom/android/internal/policy/impl/sec/UsimWidget;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    invoke-direct {v3, v0, v1, v2, v4}, Lcom/android/internal/policy/impl/sec/UsimWidget;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/sec/UsimWidget;

    .line 637
    :goto_10
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isDivideMissedEventEnable()Z

    move-result v19

    .line 638
    .local v19, isNewMissedWidgetIsUsed:Z
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isKoreaFeature()Z

    move-result v3

    if-eqz v3, :cond_21

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isIccBlockedPermanently()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 640
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    .line 650
    :goto_11
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "information_ticker"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_23

    const/16 v21, 0x1

    .line 651
    .local v21, isTickerOn:Z
    :goto_12
    if-eqz v21, :cond_25

    if-nez v17, :cond_25

    .line 652
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsWaterRipple:Z

    if-eqz v3, :cond_24

    .line 653
    new-instance v3, Lcom/android/internal/policy/impl/sec/TickerWidget;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v7, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p5

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/policy/impl/sec/TickerWidget;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/sec/TickerWidget;

    .line 663
    :goto_13
    new-instance v3, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v6, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v4, p1

    move-object/from16 v5, p5

    move-object/from16 v7, p2

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;Landroid/content/res/Configuration;ZLcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mShortcutWidget:Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;

    .line 670
    const v3, 0x10202fc

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/sec/ClockWidget;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 674
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->isKioskModeEnabled()Z

    move-result v3

    if-nez v3, :cond_8

    .line 678
    const v3, 0x1020302

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mShortcutWidget:Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 681
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    if-eqz v3, :cond_8

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isVZWDevice()Z

    move-result v3

    if-nez v3, :cond_8

    .line 682
    const v3, 0x10202fd

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 691
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/sec/TickerWidget;

    if-eqz v3, :cond_9

    .line 692
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/sec/TickerWidget;

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 695
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsWaterRipple:Z

    if-eqz v3, :cond_26

    .line 696
    new-instance v23, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    move-object/from16 v0, v23

    invoke-direct {v0, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 698
    .local v23, params:Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    const/4 v5, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v3, v4, v5, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 704
    .end local v23           #params:Landroid/widget/FrameLayout$LayoutParams;
    :goto_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.sec.feature.hovering_ui"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_b

    .line 705
    if-eqz v19, :cond_27

    .line 706
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    if-eqz v3, :cond_b

    .line 707
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    check-cast v3, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->getMissedCallList()Lcom/android/internal/policy/impl/sec/CircleMissedCallList;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedCallList:Landroid/view/View;

    .line 708
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedCallList:Landroid/view/View;

    if-eqz v3, :cond_a

    .line 709
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedCallList:Landroid/view/View;

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 711
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    check-cast v3, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->getMissedMsgList()Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedMsgList:Landroid/view/View;

    .line 712
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedMsgList:Landroid/view/View;

    if-eqz v3, :cond_b

    .line 713
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedMsgList:Landroid/view/View;

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 730
    :cond_b
    :goto_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x111004b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isTabletDevice()Z

    move-result v3

    if-nez v3, :cond_29

    const/4 v3, 0x1

    :goto_16
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mDefaultHelpOverlay:Z

    .line 732
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;

    .line 734
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsMotionLockscreen:Z

    if-nez v3, :cond_d

    .line 735
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mDefaultHelpOverlay:Z

    if-eqz v3, :cond_d

    .line 739
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->isHelpHubInstalled()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 740
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->needToShowHelpPage()I

    move-result v8

    .line 744
    .local v8, mChecked:I
    :goto_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mChecked = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isVZWDevice()Z

    move-result v3

    if-eqz v3, :cond_2c

    const/16 v3, 0xb

    if-ge v8, v3, :cond_2b

    const/4 v14, 0x1

    .line 747
    .local v14, flag:Z
    :goto_18
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isShortcutApplied()Z

    move-result v3

    if-nez v3, :cond_c

    .line 748
    const/16 v3, 0x65

    if-ge v8, v3, :cond_2e

    const/4 v14, 0x1

    .line 751
    :cond_c
    :goto_19
    if-eqz v14, :cond_d

    .line 754
    new-instance v7, Lcom/android/internal/policy/impl/sec/CircleLockScreen$3;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$3;-><init>(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)V

    .line 770
    .local v7, helpCallback:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface$HelpOverlayCallback;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->isHelpOverlayUSA:Z

    if-eqz v3, :cond_2f

    .line 771
    new-instance v3, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mShortcutWidget:Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->getItemCount()I

    move-result v9

    move-object/from16 v5, p5

    move-object/from16 v6, p2

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface$HelpOverlayCallback;II)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;

    .line 777
    :goto_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;

    invoke-interface {v3}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;->getWhichTip()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->helpOverlayTip:I

    .line 782
    .end local v7           #helpCallback:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface$HelpOverlayCallback;
    .end local v8           #mChecked:I
    .end local v14           #flag:Z
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsMotionLockscreen:Z

    if-eqz v3, :cond_e

    .line 783
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 786
    :cond_e
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isUsimWidgetEnable()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 787
    const v3, 0x1020302

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/sec/UsimWidget;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 790
    :cond_f
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 791
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerSimStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;)V

    .line 794
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerMissedEventCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MissedEventCallback;)V

    .line 797
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportClockVisible(Z)V

    .line 801
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v3, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCircleTouchListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleTouchListener;

    invoke-interface {v3, v4}, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;->setOnCircleTouchListener(Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleTouchListener;)V

    .line 804
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->startVoiceEngineThread(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    .line 806
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->refreshDefaultHelpText(Z)V

    .line 808
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mDefaultHelpText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 810
    return-void

    .line 432
    .end local v15           #inflater:Landroid/view/LayoutInflater;
    .end local v17           #isEasyUxOn:Z
    .end local v18           #isLiveWallpaper:Z
    .end local v19           #isNewMissedWidgetIsUsed:Z
    .end local v20           #isRippleEffect:Z
    .end local v21           #isTickerOn:Z
    .end local v22           #isWaterRippleConfig:Z
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v4, "tb off"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 444
    .restart local v11       #drivingMode:I
    .restart local v24       #unlockDrivingMode:I
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v4, "drv mode off"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 457
    .end local v11           #drivingMode:I
    .end local v24           #unlockDrivingMode:I
    .restart local v13       #exploreByTouchMode:I
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v4, "explore by touch mode off"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 471
    .end local v13           #exploreByTouchMode:I
    .restart local v15       #inflater:Landroid/view/LayoutInflater;
    :cond_13
    const v3, 0x109005c

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v15, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_3

    .line 481
    :cond_14
    const/16 v17, 0x1

    goto/16 :goto_4

    .line 482
    .restart local v17       #isEasyUxOn:Z
    :cond_15
    const/16 v17, 0x0

    goto/16 :goto_5

    .line 484
    :cond_16
    const/4 v3, 0x0

    goto/16 :goto_6

    .line 485
    :cond_17
    const/4 v3, 0x0

    goto/16 :goto_7

    .line 505
    :cond_18
    const/4 v3, 0x0

    goto/16 :goto_8

    .line 513
    :catch_0
    move-exception v12

    .line 514
    .local v12, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsMultipleWakeUpOn:Z

    .line 515
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v4, "package not found"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 527
    .end local v12           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "unlock_text"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1a

    const/4 v3, 0x1

    :goto_1b
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsHelpTextEnabled:Z

    goto/16 :goto_a

    :cond_1a
    const/4 v3, 0x0

    goto :goto_1b

    .line 532
    :cond_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_b

    .line 535
    :cond_1c
    const/4 v3, 0x0

    goto/16 :goto_c

    .line 537
    :cond_1d
    const/16 v18, 0x1

    goto/16 :goto_d

    .line 539
    .restart local v18       #isLiveWallpaper:Z
    .restart local v22       #isWaterRippleConfig:Z
    :cond_1e
    const/16 v20, 0x0

    goto/16 :goto_e

    .line 540
    .restart local v20       #isRippleEffect:Z
    :cond_1f
    const/4 v3, 0x0

    goto/16 :goto_f

    .line 634
    :cond_20
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/sec/UsimWidget;

    goto/16 :goto_10

    .line 642
    .restart local v19       #isNewMissedWidgetIsUsed:Z
    :cond_21
    if-eqz v19, :cond_22

    .line 643
    new-instance v3, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v5, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v6, p5

    move-object/from16 v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/res/Configuration;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    goto/16 :goto_11

    .line 645
    :cond_22
    new-instance v4, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v3, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;

    move-object/from16 v0, p5

    move-object/from16 v1, p2

    invoke-direct {v4, v5, v3, v0, v1}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Landroid/content/res/Configuration;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    goto/16 :goto_11

    .line 650
    :cond_23
    const/16 v21, 0x0

    goto/16 :goto_12

    .line 655
    .restart local v21       #isTickerOn:Z
    :cond_24
    new-instance v3, Lcom/android/internal/policy/impl/sec/TickerWidget;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p5

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/policy/impl/sec/TickerWidget;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/sec/TickerWidget;

    goto/16 :goto_13

    .line 659
    :cond_25
    const v3, 0x1020303

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_13

    .line 700
    :cond_26
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    goto/16 :goto_14

    .line 717
    :cond_27
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    if-eqz v3, :cond_b

    .line 718
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    check-cast v3, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->getMissedCallList()Lcom/android/internal/policy/impl/sec/CircleMissedCallList;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedCallList:Landroid/view/View;

    .line 719
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedCallList:Landroid/view/View;

    if-eqz v3, :cond_28

    .line 720
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedCallList:Landroid/view/View;

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 722
    :cond_28
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    check-cast v3, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->getMissedMsgList()Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedMsgList:Landroid/view/View;

    .line 723
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedMsgList:Landroid/view/View;

    if-eqz v3, :cond_b

    .line 724
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedMsgList:Landroid/view/View;

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    goto/16 :goto_15

    .line 730
    :cond_29
    const/4 v3, 0x0

    goto/16 :goto_16

    .line 742
    :cond_2a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "help_overlay_checked"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .restart local v8       #mChecked:I
    goto/16 :goto_17

    .line 745
    :cond_2b
    const/4 v14, 0x0

    goto/16 :goto_18

    :cond_2c
    const/16 v3, 0x6f

    if-ge v8, v3, :cond_2d

    const/4 v14, 0x1

    goto/16 :goto_18

    :cond_2d
    const/4 v14, 0x0

    goto/16 :goto_18

    .line 748
    .restart local v14       #flag:Z
    :cond_2e
    const/4 v14, 0x0

    goto/16 :goto_19

    .line 774
    .restart local v7       #helpCallback:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface$HelpOverlayCallback;
    :cond_2f
    new-instance v3, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mShortcutWidget:Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->getItemCount()I

    move-result v9

    move-object/from16 v5, p5

    move-object/from16 v6, p2

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface$HelpOverlayCallback;II)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;

    goto/16 :goto_1a
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Lcom/android/internal/policy/impl/sec/TickerWidget;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/sec/TickerWidget;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mDefaultHelpText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Landroid/view/animation/AlphaAnimation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsMotionLockscreen:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/sec/CircleLockScreen;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->bedimBackground(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsWaterRipple:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsHelpTextEnabled:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsMultipleWakeUpOn:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceHelpText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/sec/CircleLockScreen;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->refreshDefaultHelpText(Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->isSecure()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    return-object v0
.end method

.method private bedimBackground(Z)V
    .locals 2
    .parameter "on"

    .prologue
    .line 926
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsWaterRipple:Z

    if-eqz v0, :cond_0

    .line 933
    :goto_0
    return-void

    .line 928
    :cond_0
    if-eqz p1, :cond_1

    .line 929
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    const/high16 v1, 0x5500

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 931
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method private createUnlockWidget()Landroid/view/View;
    .locals 3

    .prologue
    .line 898
    const/4 v0, 0x0

    .line 899
    .local v0, unlockWidget:Landroid/view/View;
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsWaterRipple:Z

    if-eqz v1, :cond_0

    .line 900
    new-instance v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;

    .end local v0           #unlockWidget:Landroid/view/View;
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    .line 904
    .restart local v0       #unlockWidget:Landroid/view/View;
    :goto_0
    return-object v0

    .line 902
    :cond_0
    new-instance v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;

    .end local v0           #unlockWidget:Landroid/view/View;
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/sec/CircleUnlockView;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    .restart local v0       #unlockWidget:Landroid/view/View;
    goto :goto_0
.end method

.method private isActiveStreamExist()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 883
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isFMActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 884
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v2, "FM is active"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    :goto_0
    return v0

    .line 886
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 887
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v2, "Music is active"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 889
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isRecordActive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 890
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v2, "Recording is active"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 893
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v1, "No active stream"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isHelpHubInstalled()Z
    .locals 4

    .prologue
    .line 1267
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1268
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.samsung.helphub.HELP"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1269
    .local v0, intent:Landroid/content/Intent;
    const/high16 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 1271
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1272
    const/4 v3, 0x1

    .line 1273
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isKioskModeEnabled()Z
    .locals 1

    .prologue
    .line 1226
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    if-nez v0, :cond_0

    .line 1227
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    .line 1229
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    invoke-virtual {v0}, Landroid/app/enterprise/kioskmode/KioskMode;->isKioskModeEnabled()Z

    move-result v0

    return v0
.end method

.method private isSecure()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1277
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v1, :cond_1

    .line 1280
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->isSimPinSecure()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isSimPinSecure()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1284
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    if-nez v2, :cond_1

    .line 1287
    :cond_0
    :goto_0
    return v1

    .line 1286
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    .line 1287
    .local v0, simState:Lcom/android/internal/telephony/IccCard$State;
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v2, :cond_2

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v2, :cond_2

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v2, :cond_2

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private needToShowHelpPage()I
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1234
    const/4 v0, 0x3

    new-array v9, v0, [Landroid/net/Uri;

    .line 1235
    .local v9, uri:[Landroid/net/Uri;
    const-string v0, "content://com.samsung.helphub.provider/help_page_status/unlock_device"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    aput-object v0, v9, v1

    .line 1236
    const-string v0, "content://com.samsung.helphub.provider/help_page_status/unlock_shortcuts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    aput-object v0, v9, v2

    .line 1237
    const/4 v0, 0x2

    const-string v1, "content://com.samsung.helphub.provider/help_page_status/unlock_via_events"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v9, v0

    .line 1239
    const/4 v8, 0x0

    .line 1241
    .local v8, result:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    array-length v0, v9

    if-ge v7, v0, :cond_0

    .line 1242
    const/4 v6, 0x0

    .line 1245
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    aget-object v1, v9, v7

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "displayed"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1249
    if-nez v6, :cond_1

    if-nez v7, :cond_1

    .line 1250
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v1, "HelpHub is installed, but doesn\'t have uri."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "help_overlay_checked"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 1259
    .end local v8           #result:I
    if-eqz v6, :cond_0

    .line 1260
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1263
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_0
    return v8

    .line 1254
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v8       #result:I
    :cond_1
    if-eqz v6, :cond_2

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1255
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cursor.getInt(0) = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1

    const-wide/high16 v1, 0x4024

    int-to-double v3, v7

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v1

    double-to-int v1, v1

    mul-int/2addr v0, v1

    add-int/2addr v8, v0

    .line 1259
    :cond_2
    if-eqz v6, :cond_3

    .line 1260
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1241
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1259
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 1260
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private refreshDefaultHelpText(Z)V
    .locals 3
    .parameter "isVoiceUnlockFailed"

    .prologue
    const v2, 0x10406a5

    const v1, 0x10406a2

    .line 813
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsMotionLockscreen:Z

    if-eqz v0, :cond_4

    .line 814
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsMultipleWakeUpOn:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mTalkbackEnabled:Z

    if-nez v0, :cond_2

    .line 815
    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->isActiveStreamExist()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 816
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mDefaultHelpText:Ljava/lang/String;

    .line 842
    :goto_0
    return-void

    .line 818
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10406a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mDefaultHelpText:Ljava/lang/String;

    goto :goto_0

    .line 821
    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsTouchExplorationEnabled:Z

    if-nez v0, :cond_3

    .line 822
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mDefaultHelpText:Ljava/lang/String;

    goto :goto_0

    .line 824
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10406a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mDefaultHelpText:Ljava/lang/String;

    goto :goto_0

    .line 828
    :cond_4
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsMultipleWakeUpOn:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mTalkbackEnabled:Z

    if-nez v0, :cond_7

    .line 829
    if-nez p1, :cond_5

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->isActiveStreamExist()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 830
    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mDefaultHelpText:Ljava/lang/String;

    goto :goto_0

    .line 832
    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10406a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mDefaultHelpText:Ljava/lang/String;

    goto :goto_0

    .line 835
    :cond_7
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsTouchExplorationEnabled:Z

    if-nez v0, :cond_8

    .line 836
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mDefaultHelpText:Ljava/lang/String;

    goto :goto_0

    .line 838
    :cond_8
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10406a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mDefaultHelpText:Ljava/lang/String;

    goto :goto_0
.end method

.method private startVoiceEngineThread(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 2
    .parameter "context"
    .parameter "callback"

    .prologue
    .line 845
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsMultipleWakeUpOn:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mTalkbackEnabled:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->isActiveStreamExist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 847
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 849
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/sec/CircleLockScreen$4;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$4;-><init>(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mHandler:Landroid/os/Handler;

    .line 875
    new-instance v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;-><init>(Lcom/android/internal/policy/impl/sec/CircleLockScreen;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    .line 876
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->start()V

    .line 880
    :goto_0
    return-void

    .line 878
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1084
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->DBG:Z

    if-eqz v0, :cond_0

    .line 1085
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v1, "cleanUp()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsMotionLockscreen:Z

    if-nez v0, :cond_1

    .line 1087
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mDefaultHelpOverlay:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;

    if-eqz v0, :cond_1

    .line 1088
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;->cleanUp()V

    .line 1089
    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;

    .line 1093
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1094
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;->cleanUp()V

    .line 1095
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/sec/ClockWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/ClockWidget;->cleanUp()V

    .line 1097
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isUsimWidgetEnable()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/sec/UsimWidget;

    if-eqz v0, :cond_3

    .line 1098
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/sec/UsimWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/UsimWidget;->cleanUp()V

    .line 1100
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mShortcutWidget:Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;

    if-eqz v0, :cond_4

    .line 1101
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mShortcutWidget:Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->cleanUp()V

    .line 1103
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 1104
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetInterface;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetInterface;->cleanUp()V

    .line 1106
    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/sec/TickerWidget;

    if-eqz v0, :cond_6

    .line 1107
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/sec/TickerWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->cleanUp()V

    .line 1109
    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    if-eqz v0, :cond_7

    .line 1110
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->cleanUp()V

    .line 1112
    :cond_7
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->isSupportMultipleWakeUp()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1113
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->wakeUpDestroy()V

    .line 1114
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->quit()V

    .line 1118
    :cond_8
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportClockVisible(Z)V

    .line 1120
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 1121
    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 1122
    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mHandler:Landroid/os/Handler;

    .line 1123
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 980
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 981
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 982
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isAccessoryKeyboardState()I

    move-result v1

    if-eqz v1, :cond_0

    .line 983
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    if-eqz v1, :cond_0

    .line 984
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 988
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 909
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 910
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->isShown()Z

    move-result v1

    if-nez v1, :cond_0

    .line 911
    const/4 v1, 0x0

    .line 920
    :goto_0
    return v1

    .line 914
    :cond_0
    const-string v0, ""

    .line 915
    .local v0, text:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/sec/ClockWidget;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/sec/ClockWidget;->getTTSMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 916
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 917
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    check-cast v1, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetInterface;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetInterface;->getTTSMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 919
    :cond_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 920
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public goToUnlockScreen()V
    .locals 2

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 402
    :cond_0
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 1185
    const/4 v0, 0x0

    return v0
.end method

.method public onClockVisibilityChanged()V
    .locals 0

    .prologue
    .line 1203
    return-void
.end method

.method public onCsSimStateChanged(I)V
    .locals 3
    .parameter "simId"

    .prologue
    .line 1308
    invoke-static {}, Lcom/android/internal/policy/impl/sec/MultiSimUtils;->isMultiSIMDevice()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1314
    :cond_0
    :goto_0
    return-void

    .line 1310
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCsSimStateChanged simId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , mIsWatterRipple = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsWaterRipple:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mUnlockWidget = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsWaterRipple:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1312
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;->setRippleBackground()V

    goto :goto_0
.end method

.method public onDevicePolicyManagerStateChanged()V
    .locals 0

    .prologue
    .line 1297
    return-void
.end method

.method public onDeviceProvisioned()V
    .locals 0

    .prologue
    .line 1207
    return-void
.end method

.method public onMissedCallUpdate()V
    .locals 1

    .prologue
    .line 1319
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedCallList:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1320
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedCallList:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->updateMissedEvent()V

    .line 1322
    :cond_0
    return-void
.end method

.method public onMissedMsgUpdate()V
    .locals 1

    .prologue
    .line 1326
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedMsgList:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1327
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedMsgList:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->updateMissedEvent()V

    .line 1329
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1050
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->DBG:Z

    if-eqz v0, :cond_0

    .line 1051
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsMotionLockscreen:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mDefaultHelpOverlay:Z

    if-eqz v0, :cond_1

    .line 1053
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->helpOverlayTip:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;

    if-eqz v0, :cond_1

    .line 1054
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v1, "LockscreenHelpOverlay removeView"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;->onPause()V

    .line 1056
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1059
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1060
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;->onPause()V

    .line 1061
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/sec/ClockWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/ClockWidget;->onPause()V

    .line 1063
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mShortcutWidget:Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;

    if-eqz v0, :cond_3

    .line 1064
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mShortcutWidget:Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->onPause()V

    .line 1066
    :cond_3
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isUsimWidgetEnable()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/sec/UsimWidget;

    if-eqz v0, :cond_4

    .line 1067
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/sec/UsimWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/UsimWidget;->onPause()V

    .line 1069
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 1070
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetInterface;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetInterface;->onPause()V

    .line 1072
    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/sec/TickerWidget;

    if-eqz v0, :cond_6

    .line 1073
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/sec/TickerWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->onPause()V

    .line 1075
    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    if-eqz v0, :cond_7

    .line 1076
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->onPause()V

    .line 1078
    :cond_7
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->isSupportMultipleWakeUp()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1079
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->wakeUpTerminateVerify()V

    .line 1080
    :cond_8
    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 0
    .parameter "phoneState"

    .prologue
    .line 1199
    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .locals 3
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 1155
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRefreshBatteryInfo() showPatteryInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pluggedIn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " batteryLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/sec/ClockWidget;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/sec/ClockWidget;->refreshBatteryInfo(ZZI)V

    .line 1157
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 1161
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/sec/ClockWidget;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/sec/ClockWidget;->onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1163
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isUsimWidgetEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/sec/UsimWidget;

    if-eqz v0, :cond_0

    .line 1164
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/sec/UsimWidget;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/sec/UsimWidget;->onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1165
    :cond_0
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 0
    .parameter "plmn"
    .parameter "spn"
    .parameter "subscription"

    .prologue
    .line 1177
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .parameter "child"
    .parameter "event"

    .prologue
    .line 1211
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1215
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 1216
    .local v0, record:Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1217
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 1218
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->appendRecord(Landroid/view/accessibility/AccessibilityRecord;)V

    .line 1219
    const/4 v1, 0x1

    .line 1221
    .end local v0           #record:Landroid/view/accessibility/AccessibilityEvent;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 995
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->DBG:Z

    if-eqz v0, :cond_0

    .line 996
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 999
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;->onResume()V

    .line 1001
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/sec/ClockWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/ClockWidget;->onResume()V

    .line 1003
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isUsimWidgetEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/sec/UsimWidget;

    if-eqz v0, :cond_2

    .line 1004
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/sec/UsimWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/UsimWidget;->onResume()V

    .line 1006
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 1007
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetInterface;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetInterface;->onResume()V

    .line 1009
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isIccBlockedPermanently()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->freezeforPermBlockedSim()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1010
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->cleanTouchListener()V

    .line 1012
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/sec/TickerWidget;

    if-eqz v0, :cond_5

    .line 1013
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/sec/TickerWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->onResume()V

    .line 1015
    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mShortcutWidget:Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;

    if-eqz v0, :cond_6

    .line 1016
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mShortcutWidget:Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->onResume()V

    .line 1020
    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCallback.isShowingAndNotHidden()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->isShowingAndNotHidden()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->isSupportMultipleWakeUp()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->isShowingAndNotHidden()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1022
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->wakeUpStartVerify()V

    .line 1028
    :cond_7
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    if-nez v0, :cond_8

    .line 1029
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->startVoiceEngineThread(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    .line 1031
    :cond_8
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    if-eqz v0, :cond_9

    .line 1032
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->onResume()V

    .line 1034
    :cond_9
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsMotionLockscreen:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mDefaultHelpOverlay:Z

    if-eqz v0, :cond_a

    .line 1035
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;

    if-eqz v0, :cond_a

    .line 1036
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;->onResume()V

    .line 1037
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;->getWhichTip()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->helpOverlayTip:I

    .line 1038
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->helpOverlayTip:I

    if-lez v0, :cond_a

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    .line 1040
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v1, "LockscreenHelpOverlay addView"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1042
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1046
    :cond_a
    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 1191
    return-void
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V
    .locals 1
    .parameter "simState"

    .prologue
    .line 1169
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/sec/ClockWidget;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/sec/ClockWidget;->onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V

    .line 1171
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isUsimWidgetEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/sec/UsimWidget;

    if-eqz v0, :cond_0

    .line 1172
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/sec/UsimWidget;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/sec/UsimWidget;->onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V

    .line 1173
    :cond_0
    return-void
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;I)V
    .locals 0
    .parameter "simState"
    .parameter "subscription"

    .prologue
    .line 1181
    return-void
.end method

.method public onTimeChanged()V
    .locals 0

    .prologue
    .line 1195
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 940
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isIccBlockedPermanently()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->freezeforPermBlockedSim()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 974
    :goto_0
    return v0

    .line 943
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 970
    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsMotionLockscreen:Z

    if-nez v0, :cond_5

    .line 971
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCircleUnlockListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;->setOnCircleUnlockListener(Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;)V

    .line 972
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 945
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    if-eqz v0, :cond_2

    .line 946
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->registerListener()V

    .line 947
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->resetMotionEngine()V

    .line 948
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->setMotionReady(Z)V

    .line 950
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 951
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetInterface;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetInterface;->actionDown()V

    .line 954
    :cond_3
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsMotionLockscreen:Z

    if-eqz v0, :cond_1

    .line 955
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->handleMotionMarker(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 959
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    if-eqz v0, :cond_4

    .line 960
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->resetMotionEngine()V

    .line 961
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->setMotionReady(Z)V

    .line 962
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsMotionLockscreen:Z

    if-eqz v0, :cond_4

    .line 963
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->handleMotionMarker(Landroid/view/MotionEvent;)V

    .line 965
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 966
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetInterface;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetInterface;->actionUp()V

    goto :goto_1

    :cond_5
    move v0, v1

    .line 974
    goto :goto_0

    .line 943
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onUserChanged(I)V
    .locals 0
    .parameter "userId"

    .prologue
    .line 1303
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .parameter "hasWindowFocus"

    .prologue
    .line 1127
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    if-eqz p1, :cond_2

    const-string v0, "focused"

    :goto_0
    invoke-static {v1, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->isSupportMultipleWakeUp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1131
    if-eqz p1, :cond_3

    .line 1132
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->wakeUpStartVerify()V

    .line 1137
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 1138
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;->setWhichHelpInfo()V

    .line 1139
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;->getWhichTip()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->helpOverlayTip:I

    .line 1140
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->helpOverlayTip:I

    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1142
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v1, "LockscreenHelpOverlay addView"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1144
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1148
    :cond_1
    return-void

    .line 1127
    :cond_2
    const-string v0, "unfocused"

    goto :goto_0

    .line 1134
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->wakeUpTerminateVerify()V

    goto :goto_1
.end method

.method public setVoiceRecognitionFailed()V
    .locals 2

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 397
    :cond_0
    return-void
.end method

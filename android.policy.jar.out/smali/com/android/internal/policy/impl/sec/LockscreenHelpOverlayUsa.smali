.class public Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;
.super Landroid/widget/RelativeLayout;
.source "LockscreenHelpOverlayUsa.java"

# interfaces
.implements Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa$NotiMode;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final HELP_OVERLAY_CHECKED:Ljava/lang/String; = "help_overlay_checked"

.field private static final INTENT_ACTION_HELPHUB:Ljava/lang/String; = "com.samsung.helphub.HELP"

.field private static final MISSED_EVENT_ARRIVED:Ljava/lang/String; = "com.android.server.NotificationManagerService.NotificationArrived"

.field private static final MISSED_EVENT_REMOVED:Ljava/lang/String; = "com.android.server.NotificationManagerService.NotificationRemoved"

.field private static final TAG:Ljava/lang/String; = "LockscreenHelpOverlay"


# instance fields
.field private final CALL_PKG:Ljava/lang/String;

.field private final EMAIL_PKG:Ljava/lang/String;

.field private final MISSED_EVENT_UPDATE:I

.field private final MSG_PKG:Ljava/lang/String;

.field private final REQ_INDEX_CALL_EMAIL:I

.field private final REQ_INDEX_MSG:I

.field private final SCREEN_UPDATE:I

.field deviceDpi:I

.field private gestureImageArray:[I

.field mAudioManager:Landroid/media/AudioManager;

.field private mBottomPadding:I

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mChecked:I

.field private mContext:Landroid/content/Context;

.field private mCreationOrientation:I

.field private mGestureImage:Landroid/widget/ImageView;

.field private mGestureLayout:Landroid/widget/RelativeLayout;

.field private mGestureText:Landroid/widget/TextView;

.field private final mHandler:Landroid/os/Handler;

.field private mHelpButton:Landroid/widget/Button;

.field private mHelpCallback:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface$HelpOverlayCallback;

.field mHelpCheckBox:Landroid/widget/CheckBox;

.field private mIsHelpHubInstalled:Z

.field mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

.field private mLeftPadding:I

.field private mMissedCallCount:I

.field private mMissedCallNotiInfo:Landroid/app/NotificationInfo;

.field private mMissedMsgCount:I

.field private mShortcutItemNum:I

.field private mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

.field private mWhichTip:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface$HelpOverlayCallback;II)V
    .locals 8
    .parameter "context"
    .parameter "callback"
    .parameter "configuration"
    .parameter "helpCallback"
    .parameter "checked"
    .parameter "shortcutItemNum"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 128
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 75
    const/16 v4, 0x12c2

    iput v4, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->MISSED_EVENT_UPDATE:I

    .line 76
    const/16 v4, 0x12c3

    iput v4, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->SCREEN_UPDATE:I

    .line 77
    iput v6, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->REQ_INDEX_CALL_EMAIL:I

    .line 78
    const/16 v4, 0x7b

    iput v4, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->REQ_INDEX_MSG:I

    .line 80
    iput v7, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mMissedCallCount:I

    .line 81
    iput v7, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mMissedMsgCount:I

    .line 86
    const-string v4, "com.android.phone"

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->CALL_PKG:Ljava/lang/String;

    .line 87
    const-string v4, "com.android.mms"

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->MSG_PKG:Ljava/lang/String;

    .line 88
    const-string v4, "com.android.email"

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->EMAIL_PKG:Ljava/lang/String;

    .line 103
    iput v7, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mBottomPadding:I

    .line 104
    iput v7, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mLeftPadding:I

    .line 114
    new-instance v4, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa$1;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa$1;-><init>(Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mHandler:Landroid/os/Handler;

    .line 129
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mContext:Landroid/content/Context;

    .line 130
    iput-object p2, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 131
    iput-object p4, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mHelpCallback:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface$HelpOverlayCallback;

    .line 132
    iput p5, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mChecked:I

    .line 133
    iput p6, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mShortcutItemNum:I

    .line 134
    iget v4, p3, Landroid/content/res/Configuration;->orientation:I

    iput v4, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mCreationOrientation:I

    .line 136
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 137
    .local v2, inflater:Landroid/view/LayoutInflater;
    iget v4, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mCreationOrientation:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_4

    .line 139
    const v4, 0x1090072

    invoke-virtual {v2, v4, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 145
    :goto_0
    const-string v4, "ro.build.type"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "eng"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 146
    sput-boolean v6, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->DEBUG:Z

    .line 151
    :goto_1
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 152
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mContext:Landroid/content/Context;

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 153
    .local v3, mWindowManager:Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 154
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->getDpi(Landroid/content/Context;)I

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->deviceDpi:I

    .line 155
    sget-boolean v4, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "LockscreenHelpOverlay"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deviceDpi = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->deviceDpi:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_0
    sget-boolean v4, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "LockscreenHelpOverlay"

    const-string v5, "LockscreenHelpOverlay"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_1
    const v4, 0x102033d

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mGestureText:Landroid/widget/TextView;

    .line 159
    const v4, 0x102033e

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mGestureImage:Landroid/widget/ImageView;

    .line 160
    const v4, 0x1020019

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mHelpButton:Landroid/widget/Button;

    .line 161
    const v4, 0x1020341

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mHelpCheckBox:Landroid/widget/CheckBox;

    .line 163
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mHelpButton:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->setGestureImageArray()V

    .line 166
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->updateMissedEvent()V

    .line 168
    const-string v4, "audio"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mAudioManager:Landroid/media/AudioManager;

    .line 169
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mHelpCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4, v7}, Landroid/widget/CheckBox;->setSoundEffectsEnabled(Z)V

    .line 171
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mHelpCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 174
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v4, "com.android.server.NotificationManagerService.NotificationArrived"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 175
    const-string v4, "com.android.server.NotificationManagerService.NotificationRemoved"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 176
    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    new-instance v4, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa$2;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa$2;-><init>(Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 193
    sget-boolean v4, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->DEBUG:Z

    if-eqz v4, :cond_2

    const-string v4, "LockscreenHelpOverlay"

    const-string v5, "Broadcast register"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 195
    sget-boolean v4, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->DEBUG:Z

    if-eqz v4, :cond_3

    const-string v4, "LockscreenHelpOverlay"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checked : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->isHelpHubInstalled()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mIsHelpHubInstalled:Z

    .line 197
    invoke-virtual {p0, p5, p6}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->setWhichHelpInfo(II)V

    .line 198
    return-void

    .line 142
    .end local v0           #displayMetrics:Landroid/util/DisplayMetrics;
    .end local v1           #filter:Landroid/content/IntentFilter;
    .end local v3           #mWindowManager:Landroid/view/WindowManager;
    :cond_4
    const v4, 0x1090073

    invoke-virtual {v2, v4, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_0

    .line 148
    :cond_5
    sput-boolean v7, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->DEBUG:Z

    goto/16 :goto_1
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->handleMissedEventUpdate()V

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 56
    sget-boolean v0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->DEBUG:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getNumMissedEvent(Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa$NotiMode;)I
    .locals 5
    .parameter "mode"

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 356
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 358
    .local v0, mNM:Landroid/app/NotificationManager;
    if-nez v0, :cond_1

    .line 376
    :cond_0
    :goto_0
    return v1

    .line 361
    :cond_1
    sget-object v2, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa$NotiMode;

    if-ne p1, v2, :cond_4

    .line 362
    const-string v2, "com.android.phone"

    invoke-virtual {v0, v2, v4}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    .line 369
    :cond_2
    :goto_1
    sget-object v2, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa$NotiMode;

    if-ne p1, v2, :cond_6

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    if-eqz v2, :cond_6

    .line 370
    sget-boolean v1, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "LockscreenHelpOverlay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNumMissedEvent(missed Call Count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    iget v3, v3, Landroid/app/NotificationInfo;->missedCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    iget v1, v1, Landroid/app/NotificationInfo;->missedCount:I

    goto :goto_0

    .line 363
    :cond_4
    sget-object v2, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa$NotiMode;

    if-ne p1, v2, :cond_5

    .line 364
    const-string v2, "com.android.mms"

    const/16 v3, 0x7b

    invoke-virtual {v0, v2, v3}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    goto :goto_1

    .line 365
    :cond_5
    sget-object v2, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa$NotiMode;->MissedEMail:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa$NotiMode;

    if-ne p1, v2, :cond_2

    .line 366
    const-string v2, "com.android.email"

    invoke-virtual {v0, v2, v4}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    goto :goto_1

    .line 372
    :cond_6
    sget-object v2, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa$NotiMode;

    if-eq p1, v2, :cond_7

    sget-object v2, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa$NotiMode;->MissedEMail:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa$NotiMode;

    if-ne p1, v2, :cond_0

    :cond_7
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    if-eqz v2, :cond_0

    .line 373
    sget-boolean v1, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->DEBUG:Z

    if-eqz v1, :cond_8

    const-string v1, "LockscreenHelpOverlay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNumMissedEvent(Unread Msg Count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    iget v3, v3, Landroid/app/NotificationInfo;->missedCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :cond_8
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    iget v1, v1, Landroid/app/NotificationInfo;->missedCount:I

    goto/16 :goto_0
.end method

.method private handleMissedEventUpdate()V
    .locals 2

    .prologue
    .line 328
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->updateMissedEvent()V

    .line 330
    iget v0, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mWhichTip:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mMissedCallCount:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mMissedMsgCount:I

    if-gtz v0, :cond_0

    .line 331
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->setVisibility(I)V

    .line 332
    :cond_0
    return-void
.end method

.method private isHelpHubInstalled()Z
    .locals 4

    .prologue
    .line 419
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 420
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.samsung.helphub.HELP"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 421
    .local v0, intent:Landroid/content/Intent;
    const/high16 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 423
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 424
    const/4 v3, 0x1

    .line 425
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private setGestureImageArray()V
    .locals 7

    .prologue
    const v6, 0x1080667

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 201
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->gestureImageArray:[I

    .line 202
    iget v0, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mCreationOrientation:I

    if-eq v0, v2, :cond_1

    .line 203
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->gestureImageArray:[I

    const v1, 0x108065e

    aput v1, v0, v4

    .line 204
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->gestureImageArray:[I

    const v1, 0x1080660

    aput v1, v0, v5

    .line 205
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isDivideMissedEventEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->gestureImageArray:[I

    const v1, 0x1080663

    aput v1, v0, v2

    .line 207
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->gestureImageArray:[I

    const v1, 0x1080665

    aput v1, v0, v3

    .line 220
    :goto_0
    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->gestureImageArray:[I

    aput v6, v0, v2

    .line 210
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->gestureImageArray:[I

    aput v6, v0, v3

    goto :goto_0

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->gestureImageArray:[I

    const v1, 0x108065f

    aput v1, v0, v4

    .line 214
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->gestureImageArray:[I

    const v1, 0x1080661

    aput v1, v0, v5

    .line 215
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->gestureImageArray:[I

    const v1, 0x1080664

    aput v1, v0, v2

    .line 216
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->gestureImageArray:[I

    const v1, 0x1080666

    aput v1, v0, v3

    goto :goto_0
.end method

.method private updateMissedEvent()V
    .locals 5

    .prologue
    .line 335
    const/4 v0, 0x0

    .line 336
    .local v0, nCallCount:I
    const/4 v1, 0x0

    .line 338
    .local v1, nMsgCount:I
    sget-object v2, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa$NotiMode;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->getNumMissedEvent(Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa$NotiMode;)I

    move-result v0

    .line 339
    sget-object v2, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa$NotiMode;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->getNumMissedEvent(Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa$NotiMode;)I

    move-result v1

    .line 341
    iget v2, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mMissedCallCount:I

    if-eq v0, v2, :cond_0

    if-ltz v0, :cond_0

    .line 342
    iput v0, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mMissedCallCount:I

    .line 345
    :cond_0
    sget-boolean v2, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "LockscreenHelpOverlay"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateMissedEvent(missed Call Count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mMissedCallCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_1
    iget v2, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mMissedMsgCount:I

    if-eq v1, v2, :cond_2

    if-ltz v1, :cond_2

    .line 348
    iput v1, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mMissedMsgCount:I

    .line 351
    :cond_2
    sget-boolean v2, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "LockscreenHelpOverlay"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateMissedEvent(Unread Msg Count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mMissedMsgCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_3
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 390
    sget-boolean v0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LockscreenHelpOverlay"

    const-string v1, "onCleanUp() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 392
    sget-boolean v0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "LockscreenHelpOverlay"

    const-string v1, "onCleanUp() Broadcast unregister"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 395
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mHelpCallback:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface$HelpOverlayCallback;

    .line 396
    return-void
.end method

.method public getWhichTip()I
    .locals 1

    .prologue
    .line 399
    iget v0, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mWhichTip:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 404
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 417
    :goto_0
    return-void

    .line 406
    :sswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mHelpCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->setHelpLayoutFlag()V

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mHelpCallback:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface$HelpOverlayCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mHelpCallback:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface$HelpOverlayCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface$HelpOverlayCallback;->dismissed()V

    .line 410
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->setVisibility(I)V

    goto :goto_0

    .line 413
    :sswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mAudioManager:Landroid/media/AudioManager;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 414
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v1, 0x2710

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    goto :goto_0

    .line 404
    nop

    :sswitch_data_0
    .sparse-switch
        0x1020019 -> :sswitch_0
        0x1020341 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 385
    sget-boolean v0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LockscreenHelpOverlay"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mHelpCallback:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface$HelpOverlayCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mHelpCallback:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface$HelpOverlayCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface$HelpOverlayCallback;->dismissed()V

    .line 387
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 380
    sget-boolean v0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LockscreenHelpOverlay"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->setWhichHelpInfo()V

    .line 382
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v1, 0x2710

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 324
    const/4 v0, 0x1

    return v0
.end method

.method public setHelpLayoutFlag()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 297
    iget v3, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mChecked:I

    const-wide/high16 v4, 0x4024

    iget v6, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mWhichTip:I

    add-int/lit8 v6, v6, -0x1

    int-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int v4, v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mChecked:I

    .line 298
    sget-boolean v3, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "LockscreenHelpOverlay"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setChekced() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mChecked:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_0
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mIsHelpHubInstalled:Z

    if-eqz v3, :cond_1

    .line 301
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2, v9}, Landroid/content/ContentValues;-><init>(I)V

    .line 302
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "displayed"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 304
    const/4 v3, 0x3

    new-array v1, v3, [Landroid/net/Uri;

    .line 305
    .local v1, uri:[Landroid/net/Uri;
    const-string v3, "content://com.samsung.helphub.provider/help_page_status/unlock_device"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v1, v8

    .line 306
    const-string v3, "content://com.samsung.helphub.provider/help_page_status/unlock_shortcuts"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v1, v9

    .line 307
    const/4 v3, 0x2

    const-string v4, "content://com.samsung.helphub.provider/help_page_status/unlock_via_events"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v1, v3

    .line 310
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mWhichTip:I

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v1, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    .end local v1           #uri:[Landroid/net/Uri;
    .end local v2           #values:Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 311
    .restart local v1       #uri:[Landroid/net/Uri;
    .restart local v2       #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 312
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "LockscreenHelpOverlay"

    const-string v4, "HelpHub is installed, but doesn\'t have uri."

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "help_overlay_checked"

    iget v5, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mChecked:I

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 316
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #uri:[Landroid/net/Uri;
    .end local v2           #values:Landroid/content/ContentValues;
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "help_overlay_checked"

    iget v5, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mChecked:I

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public setPaddingForShorcutGesture()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 223
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "information_ticker"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v0, :cond_2

    .line 225
    .local v0, isTickerOn:Z
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x105006e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    .line 226
    .local v1, shortcutPadding:I
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x105006f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v2, v3

    .line 228
    .local v2, shortcutWidth:I
    iget v3, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mCreationOrientation:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 229
    if-eqz v0, :cond_0

    .line 230
    iget v3, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->deviceDpi:I

    mul-int/lit8 v3, v3, 0x40

    div-int/lit16 v3, v3, 0xa0

    iput v3, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mBottomPadding:I

    .line 232
    :cond_0
    iget v3, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mShortcutItemNum:I

    if-lez v3, :cond_1

    .line 233
    iget v3, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mShortcutItemNum:I

    rsub-int/lit8 v3, v3, 0x4

    div-int/lit8 v4, v2, 0x2

    add-int/2addr v4, v1

    mul-int/2addr v3, v4

    iput v3, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mLeftPadding:I

    .line 234
    :cond_1
    return-void

    .end local v0           #isTickerOn:Z
    .end local v1           #shortcutPadding:I
    .end local v2           #shortcutWidth:I
    :cond_2
    move v0, v3

    .line 223
    goto :goto_0
.end method

.method public setWhichHelpInfo()V
    .locals 2

    .prologue
    .line 238
    iget v0, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mChecked:I

    iget v1, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mShortcutItemNum:I

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->setWhichHelpInfo(II)V

    .line 239
    return-void
.end method

.method public setWhichHelpInfo(II)V
    .locals 8
    .parameter "checked"
    .parameter "shortcutItemNum"

    .prologue
    const v7, 0x10406ff

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 242
    const/4 v0, 0x1

    .line 244
    .local v0, mShowingNumber:I
    sget-boolean v1, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "LockscreenHelpOverlay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checked = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_0
    rem-int/lit8 v1, p1, 0xa

    if-ge v1, v0, :cond_2

    .line 247
    iput v5, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mWhichTip:I

    .line 248
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mGestureText:Landroid/widget/TextView;

    const v2, 0x10406fd

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 249
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mGestureImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->gestureImageArray:[I

    iget v3, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mWhichTip:I

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 250
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->setVisibility(I)V

    .line 251
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mHelpCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 294
    :cond_1
    :goto_0
    return-void

    .line 255
    :cond_2
    div-int/lit8 p1, p1, 0xa

    .line 258
    rem-int/lit8 v1, p1, 0xa

    if-ge v1, v0, :cond_3

    if-lez p2, :cond_3

    .line 259
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->setPaddingForShorcutGesture()V

    .line 260
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mWhichTip:I

    .line 261
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mGestureText:Landroid/widget/TextView;

    const v2, 0x10406fe

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 262
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mGestureImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->gestureImageArray:[I

    iget v3, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mWhichTip:I

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 263
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mGestureImage:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mLeftPadding:I

    iget v3, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mBottomPadding:I

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 264
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->setVisibility(I)V

    .line 265
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mHelpCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 269
    :cond_3
    div-int/lit8 p1, p1, 0xa

    .line 272
    iget v1, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mMissedCallCount:I

    if-lez v1, :cond_4

    rem-int/lit8 v1, p1, 0xa

    if-ge v1, v0, :cond_4

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isVZWDevice()Z

    move-result v1

    if-nez v1, :cond_4

    .line 273
    iput v6, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mWhichTip:I

    .line 274
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mGestureText:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(I)V

    .line 275
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mGestureImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->gestureImageArray:[I

    iget v3, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mWhichTip:I

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 276
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mGestureImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 277
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->setVisibility(I)V

    .line 278
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mHelpCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 282
    :cond_4
    iget v1, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mMissedMsgCount:I

    if-lez v1, :cond_5

    rem-int/lit8 v1, p1, 0xa

    if-ge v1, v0, :cond_5

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isVZWDevice()Z

    move-result v1

    if-nez v1, :cond_5

    .line 283
    iput v6, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mWhichTip:I

    .line 284
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mGestureText:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(I)V

    .line 285
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mGestureImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->gestureImageArray:[I

    iget v3, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mWhichTip:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 286
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mGestureImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 287
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->setVisibility(I)V

    .line 288
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mHelpCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_0

    .line 292
    :cond_5
    iput v4, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mWhichTip:I

    .line 293
    sget-boolean v1, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "LockscreenHelpOverlay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mWhichTip = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;->mWhichTip:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

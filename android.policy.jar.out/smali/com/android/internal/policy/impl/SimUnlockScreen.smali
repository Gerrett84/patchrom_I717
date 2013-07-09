.class public Lcom/android/internal/policy/impl/SimUnlockScreen;
.super Landroid/widget/LinearLayout;
.source "SimUnlockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$AirplaneModeChangeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;,
        Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final DIGITS:[C = null

.field private static final DIGIT_PRESS_WAKE_MILLIS:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "SimUnlockScreen"


# instance fields
.field private mBackSpaceButton:Landroid/view/View;

.field private final mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCreationOrientation:I

.field private mEmergencyCallButton:Landroid/widget/Button;

.field private mEnteredDigits:I

.field private final mEnteredPin:[I

.field private mHeaderText:Landroid/widget/TextView;

.field private mKeyboardHidden:I

.field private mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

.field private mLastNumber:Ljava/lang/String;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockinfoText:Landroid/widget/TextView;

.field private mOkButton:Landroid/widget/TextView;

.field private mPinText:Landroid/widget/TextView;

.field private mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private num_of_retry:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/policy/impl/SimUnlockScreen;->DIGITS:[C

    return-void

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 8
    .parameter "context"
    .parameter "configuration"
    .parameter "updateMonitor"
    .parameter "callback"
    .parameter "lockpatternutils"

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 101
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 77
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredPin:[I

    .line 78
    iput v5, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    .line 80
    iput-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 91
    iput v5, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->num_of_retry:I

    .line 102
    iput-object p3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 103
    iput-object p4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 105
    iget v0, p2, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCreationOrientation:I

    .line 106
    iget v0, p2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mKeyboardHidden:I

    .line 107
    iput-object p5, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 109
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 110
    .local v6, inflater:Landroid/view/LayoutInflater;
    iget v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mKeyboardHidden:I

    if-ne v0, v7, :cond_1

    .line 111
    const v0, 0x1090081

    invoke-virtual {v6, v0, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 121
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->getSimLockInfoResult()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->num_of_retry:I

    .line 122
    const-string v0, "SimUnlockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SimUnlockScreen: num_of_retry is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->num_of_retry:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const v0, 0x1020376

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    .line 125
    const v0, 0x1020377

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mLockinfoText:Landroid/widget/TextView;

    .line 126
    const v0, 0x1020379

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    .line 127
    const v0, 0x102037a

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mBackSpaceButton:Landroid/view/View;

    .line 128
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mBackSpaceButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mBackSpaceButton:Landroid/view/View;

    const v1, 0x10404c0

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 133
    const v0, 0x1020348

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mOkButton:Landroid/widget/TextView;

    .line 134
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerAirplaneCallbacks(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$AirplaneModeChangeCallback;)V

    .line 136
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x10403d0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 137
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 139
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    new-instance v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p5

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;-><init>(Landroid/view/View;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Z)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    .line 145
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isDirectCallToEcc()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    const v0, 0x1020342

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    .line 147
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;)V

    .line 148
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    const v1, 0x10403e5

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 152
    :cond_0
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/SimUnlockScreen;->setFocusableInTouchMode(Z)V

    .line 154
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->setLockInfoText()V

    .line 155
    return-void

    .line 113
    :cond_1
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isTabletDevice()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCreationOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 114
    const v0, 0x1090082

    invoke-virtual {v6, v0, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 118
    :goto_1
    new-instance v0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;

    invoke-direct {v0, p0, v2}, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;-><init>(Lcom/android/internal/policy/impl/SimUnlockScreen;Lcom/android/internal/policy/impl/SimUnlockScreen$1;)V

    goto/16 :goto_0

    .line 116
    :cond_2
    const v0, 0x1090083

    invoke-virtual {v6, v0, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_1

    .line 77
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/internal/policy/impl/SimUnlockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput p1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/SimUnlockScreen;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/SimUnlockScreen;->reportDigit(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/SimUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/SimUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/SimUnlockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->num_of_retry:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/internal/policy/impl/SimUnlockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput p1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->num_of_retry:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/SimUnlockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->getSimLockInfoResult()I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    return-object v0
.end method

.method private checkPin()V
    .locals 2

    .prologue
    .line 343
    iget v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 345
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x10400fd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 346
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 347
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->setLockInfoText()V

    .line 348
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    .line 350
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 398
    :goto_0
    return-void

    .line 353
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->getSimUnlockProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 355
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const v1, 0x927c0

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 357
    new-instance v0, Lcom/android/internal/policy/impl/SimUnlockScreen$1;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/SimUnlockScreen$1;-><init>(Lcom/android/internal/policy/impl/SimUnlockScreen;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->start()V

    goto :goto_0
.end method

.method private getSimLockInfoResult()I
    .locals 4

    .prologue
    .line 165
    const/4 v0, 0x0

    .line 167
    .local v0, result:I
    :try_start_0
    const-string v1, "phoneext"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyExt;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephonyExt;->getSimPinRetry()I

    move-result v0

    .line 171
    invoke-static {}, Lcom/android/internal/policy/impl/sec/MultiSimUtils;->isMultiSIMDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/internal/policy/impl/sec/MultiSimUtils;->getCurrentPinLockSlot()I

    move-result v1

    if-lez v1, :cond_0

    .line 173
    const-string v1, "phoneext2"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyExt;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephonyExt;->getSimPinRetry()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 180
    :cond_0
    :goto_0
    const-string v1, "SimUnlockScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSimLockInfoResult(): num_of_retry is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    return v0

    .line 178
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getSimUnlockProgressDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 329
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 330
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;

    const v2, 0x104040c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 332
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 333
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 334
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private reportDigit(I)V
    .locals 3
    .parameter "digit"

    .prologue
    .line 429
    iget v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    if-nez v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 432
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 437
    :goto_0
    return-void

    .line 435
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 436
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredPin:[I

    iget v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    aput p1, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 231
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 234
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x1

    return v0
.end method

.method public onAirplaneModeChanged(Z)V
    .locals 2
    .parameter "on"

    .prologue
    .line 561
    if-eqz p1, :cond_0

    .line 562
    const-string v0, "SimUnlockScreen"

    const-string v1, "onAirplaneModeChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportSimUnlocked(Lcom/android/internal/telephony/IccCard$State;)V

    .line 564
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 566
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 450
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 451
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->updateConfiguration()V

    .line 452
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x0

    .line 290
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mBackSpaceButton:Landroid/view/View;

    if-ne p1, v3, :cond_2

    .line 291
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 292
    .local v0, digits:Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    .line 293
    .local v2, len:I
    if-lez v2, :cond_0

    .line 294
    add-int/lit8 v3, v2, -0x1

    invoke-interface {v0, v3, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 295
    iget v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    .line 297
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 325
    .end local v0           #digits:Landroid/text/Editable;
    .end local v2           #len:I
    :cond_1
    :goto_0
    return-void

    .line 298
    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mOkButton:Landroid/widget/TextView;

    if-ne p1, v3, :cond_3

    .line 299
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->getSimLockInfoResult()I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->num_of_retry:I

    .line 300
    const-string v3, "SimUnlockScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onClick(): num_of_retry is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->num_of_retry:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->checkPin()V

    goto :goto_0

    .line 302
    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    if-ne p1, v3, :cond_1

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isDirectCallToEcc()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 303
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 305
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 306
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->resumeCall()Z

    .line 322
    :goto_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    iput v6, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    goto :goto_0

    .line 308
    :cond_4
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mLastNumber:Ljava/lang/String;

    .line 310
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mLastNumber:Ljava/lang/String;

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 311
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_EMERGENCY"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 312
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "tel"

    iget-object v4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mLastNumber:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 313
    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 314
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    iput v6, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    .line 316
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 318
    .end local v1           #intent:Landroid/content/Intent;
    :cond_5
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->takeEmergencyCallAction()V

    goto :goto_1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 457
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 458
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->updateConfiguration()V

    .line 459
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 402
    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    .line 403
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToLockScreen()V

    .line 425
    :cond_0
    :goto_0
    return v1

    .line 407
    :cond_1
    sget-object v2, Lcom/android/internal/policy/impl/SimUnlockScreen;->DIGITS:[C

    invoke-virtual {p2, v2}, Landroid/view/KeyEvent;->getMatch([C)C

    move-result v0

    .line 408
    .local v0, match:C
    if-eqz v0, :cond_2

    .line 409
    add-int/lit8 v2, v0, -0x30

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/SimUnlockScreen;->reportDigit(I)V

    goto :goto_0

    .line 412
    :cond_2
    const/16 v2, 0x43

    if-ne p1, v2, :cond_3

    .line 413
    iget v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    if-lez v2, :cond_0

    .line 414
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v2, p1, p2}, Landroid/widget/TextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 415
    iget v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    goto :goto_0

    .line 420
    :cond_3
    const/16 v2, 0x42

    if-ne p1, v2, :cond_4

    .line 421
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->checkPin()V

    goto :goto_0

    .line 425
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->onPause()V

    .line 192
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const v5, 0x10403d0

    .line 197
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 200
    invoke-static {}, Lcom/android/internal/policy/impl/sec/MultiSimUtils;->isMultiSIMDevice()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/internal/policy/impl/sec/MultiSimUtils;->getCurrentPinLockSlot()I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_0

    .line 202
    const-string v2, ""

    .line 203
    .local v2, title:Ljava/lang/String;
    const-string v1, ""

    .line 204
    .local v1, simId:Ljava/lang/String;
    const-string v3, "ril.MSIMM"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, mSimMode:Ljava/lang/String;
    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 206
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/internal/policy/impl/sec/MultiSimUtils;->getCurrentPinLockSlot()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 211
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "SIM"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 212
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 213
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    .end local v0           #mSimMode:Ljava/lang/String;
    .end local v1           #simId:Ljava/lang/String;
    .end local v2           #title:Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    .line 221
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->setLockInfoText()V

    .line 223
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->onResume()V

    .line 224
    return-void

    .line 209
    .restart local v0       #mSimMode:Ljava/lang/String;
    .restart local v1       #simId:Ljava/lang/String;
    .restart local v2       #title:Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/internal/policy/impl/sec/MultiSimUtils;->getCurrentPinLockSlot()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public setLockInfoText()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 158
    iget v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->num_of_retry:I

    if-ne v0, v3, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mLockinfoText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10406a8

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->num_of_retry:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    :goto_0
    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mLockinfoText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10406a9

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->num_of_retry:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method updateConfiguration()V
    .locals 3

    .prologue
    .line 440
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 441
    .local v0, newConfig:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    iget v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCreationOrientation:I

    if-eq v1, v2, :cond_1

    .line 442
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1, v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 446
    :cond_0
    :goto_0
    return-void

    .line 443
    :cond_1
    iget v1, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mKeyboardHidden:I

    if-eq v1, v2, :cond_0

    .line 444
    iget v1, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mKeyboardHidden:I

    goto :goto_0
.end method

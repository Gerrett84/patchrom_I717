.class public Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;
.super Landroid/widget/RelativeLayout;
.source "PcwUnlockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$PcwInfoChangeCallback;


# static fields
.field private static final DBG:Z = true

.field public static final PCW_UNLOCKED_ACTION:Ljava/lang/String; = "com.android.internal.policy.impl.Keyguard.PCW_UNLOCKED"

.field private static final TAG:Ljava/lang/String; = "PcwUnlockScreen"


# instance fields
.field ad:Landroid/app/AlertDialog;

.field errorDlg:Landroid/app/AlertDialog;

.field private mCall:Landroid/widget/Button;

.field private final mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCancel:Landroid/widget/Button;

.field private final mContext:Landroid/content/Context;

.field private mCreationOrientation:I

.field private mEmergencyCall:Landroid/widget/Button;

.field private mHandler:Landroid/os/Handler;

.field private mIsVoiceCapacity:Z

.field private mLockMessage:Landroid/widget/TextView;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockstr:Landroid/widget/TextView;

.field private mOk:Landroid/widget/Button;

.field private mPassword:Landroid/widget/EditText;

.field private mPhoneNumer:Landroid/widget/TextView;

.field private mPhoneowner:Landroid/widget/TextView;

.field private mUnlock:Landroid/widget/Button;

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private phoneNumber:Ljava/lang/String;

.field pwdDialog:Landroid/app/AlertDialog$Builder;

.field private r:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 8
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    const/16 v6, 0x8

    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 113
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 89
    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->ad:Landroid/app/AlertDialog;

    .line 91
    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->errorDlg:Landroid/app/AlertDialog;

    .line 93
    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->pwdDialog:Landroid/app/AlertDialog$Builder;

    .line 101
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mHandler:Landroid/os/Handler;

    .line 105
    new-instance v4, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen$1;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen$1;-><init>(Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->r:Ljava/lang/Runnable;

    .line 115
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mContext:Landroid/content/Context;

    .line 116
    iput-object p5, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 117
    iput-object p4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 118
    iput-object p3, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 119
    iget v4, p2, Landroid/content/res/Configuration;->orientation:I

    iput v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mCreationOrientation:I

    .line 121
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 122
    .local v2, inflater:Landroid/view/LayoutInflater;
    iget v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mCreationOrientation:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_4

    .line 123
    const v4, 0x109007e

    invoke-virtual {v2, v4, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 128
    :goto_0
    const v4, 0x102036d

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mLockstr:Landroid/widget/TextView;

    .line 129
    const v4, 0x102036e

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mLockMessage:Landroid/widget/TextView;

    .line 131
    const v4, 0x102036f

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mCall:Landroid/widget/Button;

    .line 133
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x111002a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mIsVoiceCapacity:Z

    .line 134
    const v4, 0x1020342

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mEmergencyCall:Landroid/widget/Button;

    .line 135
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mIsVoiceCapacity:Z

    if-nez v4, :cond_0

    .line 136
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mEmergencyCall:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 138
    :cond_0
    const v4, 0x1020370

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mUnlock:Landroid/widget/Button;

    .line 141
    const-string v4, "PcwUnlockScreen"

    const-string v5, "create PcwUnlockScreen"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const/4 v0, 0x0

    .line 145
    .local v0, LockMessage:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mContext:Landroid/content/Context;

    const v5, 0x1040499

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, btnText:Ljava/lang/String;
    const-string v3, "\n"

    .line 149
    .local v3, newLine:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lock_pcw_phone"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->phoneNumber:Ljava/lang/String;

    .line 151
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->phoneNumber:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 152
    :cond_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mCall:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 153
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mCall:Landroid/widget/Button;

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 160
    :goto_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lock_pcw_Message"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 163
    :cond_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mLockMessage:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    :goto_2
    const-string v4, "PcwUnlockScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "btnText="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mLockMessage="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mCall:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mIsVoiceCapacity:Z

    if-eqz v4, :cond_3

    .line 172
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mEmergencyCall:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    :cond_3
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mUnlock:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v4, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerPcwInfoCallbacks(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$PcwInfoChangeCallback;)V

    .line 177
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->setFocusable(Z)V

    .line 179
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->setFocusableInTouchMode(Z)V

    .line 181
    return-void

    .line 125
    .end local v0           #LockMessage:Ljava/lang/String;
    .end local v1           #btnText:Ljava/lang/String;
    .end local v3           #newLine:Ljava/lang/String;
    :cond_4
    const v4, 0x109007d

    invoke-virtual {v2, v4, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_0

    .line 155
    .restart local v0       #LockMessage:Ljava/lang/String;
    .restart local v1       #btnText:Ljava/lang/String;
    .restart local v3       #newLine:Ljava/lang/String;
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 156
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mCall:Landroid/widget/Button;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 157
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mCall:Landroid/widget/Button;

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 165
    :cond_6
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mLockMessage:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private VoIPIsInUse()Z
    .locals 5

    .prologue
    .line 382
    const/4 v0, 0x0

    .line 384
    .local v0, bVoIP_InUse:Z
    :try_start_0
    const-string v3, "voip"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IVoIPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPInterface;

    move-result-object v2

    .line 385
    .local v2, voipInterfaceService:Landroid/os/IVoIPInterface;
    if-eqz v2, :cond_0

    .line 386
    invoke-interface {v2}, Landroid/os/IVoIPInterface;->isVoIPActivated()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 391
    .end local v2           #voipInterfaceService:Landroid/os/IVoIPInterface;
    :cond_0
    :goto_0
    return v0

    .line 387
    :catch_0
    move-exception v1

    .line 388
    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "PcwUnlockScreen"

    const-string v4, "VoIPIsInUse() failed"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->r:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public cleanUp()V
    .locals 3

    .prologue
    .line 338
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->ad:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    .line 340
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 341
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mPassword:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 342
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 345
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->ad:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 348
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 349
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 315
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const/4 v8, 0x0

    const v7, 0x1030128

    .line 185
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v4}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 187
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mCall:Landroid/widget/Button;

    if-ne p1, v4, :cond_3

    .line 188
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 190
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->resumeCall()Z

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->VoIPIsInUse()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 192
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->resumeVoIPCall()V

    goto :goto_0

    .line 194
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.CALL"

    const-string v5, "tel"

    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->phoneNumber:Ljava/lang/String;

    invoke-static {v5, v6, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 195
    .local v1, intent:Landroid/content/Intent;
    const/high16 v4, 0x1000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 197
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 199
    .end local v1           #intent:Landroid/content/Intent;
    :cond_3
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mEmergencyCall:Landroid/widget/Button;

    if-ne p1, v4, :cond_4

    .line 200
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v4}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->takeEmergencyCallAction()V

    goto :goto_0

    .line 201
    :cond_4
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mUnlock:Landroid/widget/Button;

    if-ne p1, v4, :cond_0

    .line 202
    const/4 v3, 0x0

    .line 204
    .local v3, unlockView:Landroid/view/View;
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 205
    .local v0, inflater2:Landroid/view/LayoutInflater;
    new-instance v4, Landroid/view/ContextThemeWrapper;

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v7}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const v5, 0x109007c

    invoke-static {v4, v5, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 207
    .local v2, layout:Landroid/view/View;
    const v4, 0x102036c

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mPassword:Landroid/widget/EditText;

    .line 209
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mPassword:Landroid/widget/EditText;

    if-nez v4, :cond_5

    .line 210
    const-string v4, "PcwUnlockScreen"

    const-string v5, "findViewById: mPassword = null"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 214
    :cond_5
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mPassword:Landroid/widget/EditText;

    new-instance v5, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen$2;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen$2;-><init>(Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 231
    const-string v4, "PcwUnlockScreen"

    const-string v5, "Create PCWPassword Dialog"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    new-instance v4, Landroid/app/AlertDialog$Builder;

    new-instance v5, Landroid/view/ContextThemeWrapper;

    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, v7}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->pwdDialog:Landroid/app/AlertDialog$Builder;

    .line 234
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->pwdDialog:Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mContext:Landroid/content/Context;

    const v6, 0x104049c

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 235
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->pwdDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 236
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->pwdDialog:Landroid/app/AlertDialog$Builder;

    const v5, 0x104000a

    new-instance v6, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen$3;

    invoke-direct {v6, p0}, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen$3;-><init>(Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 277
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->pwdDialog:Landroid/app/AlertDialog$Builder;

    const/high16 v5, 0x104

    new-instance v6, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen$4;

    invoke-direct {v6, p0}, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen$4;-><init>(Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 291
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->pwdDialog:Landroid/app/AlertDialog$Builder;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 293
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->ad:Landroid/app/AlertDialog;

    if-eqz v4, :cond_6

    .line 294
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->ad:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 296
    :cond_6
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->pwdDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->ad:Landroid/app/AlertDialog;

    .line 297
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->ad:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d9

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 298
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->ad:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 301
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mPassword:Landroid/widget/EditText;

    new-instance v5, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen$5;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen$5;-><init>(Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 320
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->ad:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    .line 322
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 323
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mPassword:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 324
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 326
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->ad:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 328
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    return-void
.end method

.method public onPcwInfoChanged()V
    .locals 6

    .prologue
    .line 352
    const/4 v0, 0x0

    .line 354
    .local v0, LockMessage:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lock_pcw_phone"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->phoneNumber:Ljava/lang/String;

    .line 357
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mContext:Landroid/content/Context;

    const v4, 0x1040499

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 358
    .local v1, btnText:Ljava/lang/String;
    const-string v2, "\n"

    .line 359
    .local v2, newLine:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 361
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->phoneNumber:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 362
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mCall:Landroid/widget/Button;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 363
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mCall:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 370
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lock_pcw_Message"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 372
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 373
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mLockMessage:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    :goto_1
    const-string v3, "PcwUnlockScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "btnText="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mLockMessage="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    return-void

    .line 365
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 366
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mCall:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 367
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mCall:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 375
    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/PcwUnlockScreen;->mLockMessage:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 333
    return-void
.end method

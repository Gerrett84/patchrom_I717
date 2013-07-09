.class public Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;
.super Ljava/lang/Object;
.source "SamsungLockScreenProperties.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static mChecked:Z

.field private static mDivideMissedEventChecked:Z

.field private static mIsDirectCallToECC:Z

.field private static mIsDirectEmergencyCallScreenWithQwerty:Z

.field private static mIsDirectEmergencyCallScreenWithQwertyChecked:Z

.field private static mIsPLMNEnabledByCSC:Z

.field private static mIsSIMToastEnabled:Z

.field private static mIsSinaDaemonEnable:Z

.field private static mIsSinaDaemonEnableChecked:Z

.field private static mIsTablet:Z

.field private static mPINPUKRequest:Z

.field private static mSecureLockOnlyAfterTimerExpires:Z

.field private static mSecureLockOnlyAfterTimerExpiresChecked:Z

.field private static mShouldbeDisplaySalesCode:Z

.field private static mSwipeLockBeforeTimeout:Z

.field private static mSwipeLockBeforeTimeoutChecked:Z

.field private static mUseCtcPlmnConcept:Z

.field private static mUseCtcPlmnConceptChecked:Z

.field private static mUseIndependentLockTimeout:Z

.field private static mUseIndependentLockTimeoutChecked:Z

.field private static mWipeOutIntExtMemoryDueToUnlockFail:Z

.field private static mWipeOutIntExtMemoryDueToUnlockFailChecked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->mShouldbeDisplaySalesCode:Z

    .line 46
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->mChecked:Z

    .line 47
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->mIsPLMNEnabledByCSC:Z

    .line 48
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->mIsDirectCallToECC:Z

    .line 49
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->mSecureLockOnlyAfterTimerExpires:Z

    .line 50
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->mSecureLockOnlyAfterTimerExpiresChecked:Z

    .line 52
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->mWipeOutIntExtMemoryDueToUnlockFail:Z

    .line 53
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->mWipeOutIntExtMemoryDueToUnlockFailChecked:Z

    .line 55
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->mUseCtcPlmnConcept:Z

    .line 56
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->mUseCtcPlmnConceptChecked:Z

    .line 57
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->mIsSinaDaemonEnable:Z

    .line 58
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->mIsSinaDaemonEnableChecked:Z

    .line 59
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->mDivideMissedEventChecked:Z

    .line 60
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->mIsSIMToastEnabled:Z

    .line 62
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->mSwipeLockBeforeTimeout:Z

    .line 63
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->mSwipeLockBeforeTimeoutChecked:Z

    .line 65
    const-string v0, "SamsungLockScreenProperties"

    sput-object v0, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->TAG:Ljava/lang/String;

    .line 67
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->mPINPUKRequest:Z

    .line 68
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->mIsTablet:Z

    .line 70
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->mUseIndependentLockTimeout:Z

    .line 71
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->mUseIndependentLockTimeoutChecked:Z

    .line 74
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->mIsDirectEmergencyCallScreenWithQwerty:Z

    .line 75
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->mIsDirectEmergencyCallScreenWithQwertyChecked:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static SimRefreshCheck(Landroid/content/Context;)Z
    .locals 10
    .parameter "mContext"

    .prologue
    const/4 v9, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 256
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "SIM_MANAGE_DONE"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "SIM_REFRESH"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_3

    .line 258
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 259
    .local v0, i:Landroid/content/Intent;
    const-string v5, "Booting"

    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 260
    const-string v5, "settings.SIM_CARD_NETWORK"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    const/high16 v5, 0x1000

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 262
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 263
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "SIM_REFRESH"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 265
    const-string v5, "gsm.ruim.state"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 266
    .local v1, mCDMAstate:Ljava/lang/String;
    const-string v5, "gsm.sim.state"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 268
    .local v2, mGSMstate:Ljava/lang/String;
    sget-object v5, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Current network : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "CURRENT_NETWORK"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    sget-object v5, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SIM state mCDMAstate : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mGSMstate : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 275
    const-string v5, "READY"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 276
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "CURRENT_NETWORK"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 280
    :cond_0
    :goto_0
    sget-object v4, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current network : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "CURRENT_NETWORK"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    new-instance v0, Landroid/content/Intent;

    .end local v0           #i:Landroid/content/Intent;
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 286
    .restart local v0       #i:Landroid/content/Intent;
    const-string v4, "ACTION_CURRENT_NETWORK"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    const-string v4, "state"

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "CURRENT_NETWORK"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 289
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 290
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 296
    .end local v0           #i:Landroid/content/Intent;
    .end local v1           #mCDMAstate:Ljava/lang/String;
    .end local v2           #mGSMstate:Ljava/lang/String;
    :cond_1
    :goto_1
    return v3

    .line 277
    .restart local v0       #i:Landroid/content/Intent;
    .restart local v1       #mCDMAstate:Ljava/lang/String;
    .restart local v2       #mGSMstate:Ljava/lang/String;
    :cond_2
    const-string v4, "READY"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 278
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "CURRENT_NETWORK"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 295
    .end local v0           #i:Landroid/content/Intent;
    .end local v1           #mCDMAstate:Ljava/lang/String;
    .end local v2           #mGSMstate:Ljava/lang/String;
    :cond_3
    sget-object v3, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->TAG:Ljava/lang/String;

    const-string v5, "SimRefreshCheck() return false"

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 296
    goto :goto_1
.end method

.method public static enhancedLockScreen()Z
    .locals 1

    .prologue
    .line 490
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isKoreaFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->has2GbMemory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 491
    const/4 v0, 0x1

    .line 493
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static freezeforPermBlockedSim()Z
    .locals 2

    .prologue
    .line 141
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, SalesCode:Ljava/lang/String;
    const-string v1, "SKT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "KTT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "LGT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 143
    :cond_0
    const/4 v1, 0x1

    .line 145
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getDpi(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 472
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 473
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    const-string v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 475
    .local v1, mWindowManager:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 476
    iget v2, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    return v2
.end method

.method public static getalternatePackageForMessage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 79
    const-string v2, "ro.product.model"

    const-string v3, "Unknown"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, DEVICE_NAME:Ljava/lang/String;
    const-string v2, "SHW-M250S"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SHW-M250L"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 81
    :cond_0
    const-string v1, "com.sec.mms"

    .line 88
    .local v1, MSG_PKG:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 82
    .end local v1           #MSG_PKG:Ljava/lang/String;
    :cond_1
    const-string v2, "SHV-E160S"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "SHV-E160L"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "SHV-E120S"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "SHV-E120L"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "SHV-E110S"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 84
    :cond_2
    const-string v1, "com.sec.android.mms.kor"

    .restart local v1       #MSG_PKG:Ljava/lang/String;
    goto :goto_0

    .line 86
    .end local v1           #MSG_PKG:Ljava/lang/String;
    :cond_3
    const/4 v1, 0x0

    .restart local v1       #MSG_PKG:Ljava/lang/String;
    goto :goto_0
.end method

.method public static has2GbMemory()Z
    .locals 7

    .prologue
    .line 482
    new-instance v2, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v2}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 483
    .local v2, reader:Lcom/android/internal/util/MemInfoReader;
    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 484
    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v3

    const-wide/32 v5, 0x100000

    div-long v0, v3, v5

    .line 486
    .local v0, TOTAL_DEVICE_MEMORY:J
    const-wide/16 v3, 0x400

    cmp-long v3, v0, v3

    if-ltz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isAUSFeature()Z
    .locals 2

    .prologue
    .line 521
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 523
    .local v0, salesCode:Ljava/lang/String;
    const-string v1, "TEL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "VAU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "HUT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "BST"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "OPS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "OPP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TLP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "XSA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 531
    :cond_0
    const/4 v1, 0x1

    .line 533
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isCMCCFeature()Z
    .locals 3

    .prologue
    .line 604
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 605
    .local v0, SalesCode:Ljava/lang/String;
    const-string v1, "CHM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CMCC"

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 606
    :cond_0
    const/4 v1, 0x1

    .line 608
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isCTCFeature()Z
    .locals 2

    .prologue
    .line 463
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 464
    .local v0, SalesCode:Ljava/lang/String;
    const-string v1, "CTC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 465
    const/4 v1, 0x1

    .line 467
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isCUFeature()Z
    .locals 2

    .prologue
    .line 771
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 772
    .local v0, SalesCode:Ljava/lang/String;
    const-string v1, "CHU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 773
    const/4 v1, 0x1

    .line 775
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isCaMobile()Z
    .locals 2

    .prologue
    .line 149
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, SalesCode:Ljava/lang/String;
    const-string v1, "DCM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    const/4 v1, 0x1

    .line 154
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isCanadaFeature()Z
    .locals 2

    .prologue
    .line 340
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 341
    .local v0, SalesCode:Ljava/lang/String;
    const-string v1, "CHR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "FMC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "RWC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "RCS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CLN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "KDO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TLS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "BMC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "BWA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "PCM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SOL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "VMC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "YVL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "GLW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MCT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SPC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 348
    :cond_0
    const/4 v1, 0x1

    .line 350
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isCheckFactoryMode()Z
    .locals 3

    .prologue
    .line 648
    const-string v1, "ro.product.model"

    const-string v2, "Unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 649
    .local v0, DEVICE_NAME:Ljava/lang/String;
    const-string v1, "SHW-M250S"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SHW-M250K"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SHW-M250L"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 650
    :cond_0
    const/4 v1, 0x1

    .line 652
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isChinaFeature()Z
    .locals 2

    .prologue
    .line 322
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 323
    .local v0, SalesCode:Ljava/lang/String;
    const-string v1, "CHN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 324
    :cond_0
    const/4 v1, 0x1

    .line 326
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isDSDSDevice()Z
    .locals 1

    .prologue
    .line 459
    const/4 v0, 0x0

    return v0
.end method

.method public static isDataNetworkModeEnable()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 569
    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 570
    .local v0, SalesCode:Ljava/lang/String;
    const-string v3, "ro.product.model"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 572
    .local v1, product_model:Ljava/lang/String;
    const-string v3, "SKT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 573
    const-string v3, ""

    const-string v4, "SHV_E170S"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 579
    :cond_0
    :goto_0
    return v2

    .line 576
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isDemoVersionSW()Z
    .locals 2

    .prologue
    .line 560
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 562
    .local v0, salesCode:Ljava/lang/String;
    const-string v1, "PAP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 563
    const/4 v1, 0x1

    .line 565
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isDirectCallToEcc()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 367
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_LockScreen_DirectCallToEcc"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->mIsDirectCallToECC:Z

    .line 369
    sget-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->mIsDirectCallToECC:Z

    if-eqz v1, :cond_1

    .line 375
    :cond_0
    :goto_0
    return v0

    .line 372
    :cond_1
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isAUSFeature()Z

    move-result v1

    if-nez v1, :cond_0

    .line 375
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDirectEmergencyCallScreenWithQwerty()Z
    .locals 2

    .prologue
    .line 761
    sget-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->mIsDirectEmergencyCallScreenWithQwertyChecked:Z

    if-nez v0, :cond_0

    .line 762
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_LockScreen_EnableEccKeypadWhenHwKeyPress"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->mIsDirectEmergencyCallScreenWithQwerty:Z

    .line 764
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->mIsDirectEmergencyCallScreenWithQwertyChecked:Z

    .line 767
    :cond_0
    sget-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->mIsDirectEmergencyCallScreenWithQwerty:Z

    return v0
.end method

.method public static isDisabledStatusBarExpand()Z
    .locals 1

    .prologue
    .line 737
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isKoreaFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 738
    const/4 v0, 0x1

    .line 740
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDisplayDualImsi(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 616
    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 618
    .local v0, SalesCode:Ljava/lang/String;
    const-string v2, "LGT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 619
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 620
    .local v1, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 621
    const/4 v2, 0x1

    .line 624
    .end local v1           #telephonyManager:Landroid/telephony/TelephonyManager;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isDisplaySPNOnlyInCaseSamePLMN()Z
    .locals 2

    .prologue
    .line 597
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_DisplaySpnOnlyInCaseSamePlmn"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 598
    const/4 v0, 0x1

    .line 600
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDivideMissedEventEnable()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 238
    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 239
    .local v1, SalesCode:Ljava/lang/String;
    const-string v2, "ro.csc.country_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, CountryCode:Ljava/lang/String;
    const-string v2, "Germany"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "DBT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 242
    :cond_0
    sput-boolean v3, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->mDivideMissedEventChecked:Z

    .line 245
    :cond_1
    const-string v2, "SKT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "KTT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "LGT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 246
    :cond_2
    sput-boolean v3, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->mDivideMissedEventChecked:Z

    .line 249
    :cond_3
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isAUSFeature()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 250
    sput-boolean v3, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->mDivideMissedEventChecked:Z

    .line 252
    :cond_4
    sget-boolean v2, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->mDivideMissedEventChecked:Z

    return v2
.end method

.method public static isDualClockTablet()Z
    .locals 1

    .prologue
    .line 657
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isKoreaFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isTabletDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 658
    const/4 v0, 0x1

    .line 660
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDualDevice()Z
    .locals 1

    .prologue
    .line 415
    const/4 v0, 0x0

    return v0
.end method

.method public static isDualLCDDevice(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    .line 446
    const/4 v0, 0x0

    .line 447
    .local v0, mDualLcd:Z
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 449
    .local v1, packageManager:Landroid/content/pm/PackageManager;
    sget-object v2, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isDualLCDDevice mDualLcd : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    return v0
.end method

.method public static isDualModeDevice()I
    .locals 1

    .prologue
    .line 426
    const/4 v0, 0x0

    return v0
.end method

.method public static isDualSlotDevice()Z
    .locals 1

    .prologue
    .line 433
    const/4 v0, 0x0

    return v0
.end method

.method public static isEmergencyCircleEnable()Z
    .locals 1

    .prologue
    .line 632
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isKoreaFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isTabletDevice()Z

    move-result v0

    if-nez v0, :cond_0

    .line 633
    const/4 v0, 0x1

    .line 635
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFactoryMode(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Z
    .locals 8
    .parameter "mContext"
    .parameter "mTelephonyManager"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 668
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "SHOULD_SHUT_DOWN"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_0

    .line 669
    sget-object v4, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->TAG:Ljava/lang/String;

    const-string v5, "Factory mode is enabled by Case #1"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    :goto_0
    return v3

    .line 674
    :cond_0
    if-eqz p1, :cond_1

    const-string v5, "999999999999999"

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 675
    sget-object v4, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->TAG:Ljava/lang/String;

    const-string v5, "Factory mode is enabled by Case #2"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 680
    :cond_1
    const/4 v2, 0x0

    .line 682
    .local v2, imeiBlocked:Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/io/File;

    const-string v6, "/efs/FactoryApp/factorymode"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x20

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 688
    :goto_1
    if-eqz v2, :cond_4

    const-string v5, "ON"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 689
    sget-object v5, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->TAG:Ljava/lang/String;

    const-string v6, "Not factory mode"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    const-string v5, "ro.product.model"

    const-string v6, "Unknown"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 698
    .local v0, deviceName:Ljava/lang/String;
    if-eqz p1, :cond_5

    const-string v5, "SHW-M250S"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "SHW-M250K"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "SHW-M250L"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 699
    :cond_2
    const-string v5, "357858010034783"

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "004400152020002"

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 701
    :cond_3
    sget-object v4, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->TAG:Ljava/lang/String;

    const-string v5, "Factory mode is enabled by Case #4"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 683
    .end local v0           #deviceName:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 684
    .local v1, e:Ljava/io/IOException;
    const-string v2, "OFF"

    .line 685
    sget-object v5, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->TAG:Ljava/lang/String;

    const-string v6, "cannot open file : /efs/FactoryApp/factorymode"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 691
    .end local v1           #e:Ljava/io/IOException;
    :cond_4
    sget-object v4, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->TAG:Ljava/lang/String;

    const-string v5, "Factory mode is enabled by Case #3"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 707
    .restart local v0       #deviceName:Ljava/lang/String;
    :cond_5
    const-string v5, "SHV-E110S"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "SHV-E120S"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "SHV-E120K"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "SHV-E120L"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "SHV-E160S"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "SHV-E160K"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "SHV-E160L"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "GT-I9100"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "GT-N7000"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 709
    :cond_6
    :try_start_1
    new-instance v5, Ljava/io/File;

    const-string v6, "/efs/imei/keystr"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x20

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 714
    :goto_2
    if-eqz v2, :cond_7

    const-string v5, "OFF"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 715
    sget-object v4, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->TAG:Ljava/lang/String;

    const-string v5, "Factory mode is enabled by Case #5"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 710
    :catch_1
    move-exception v1

    .line 711
    .restart local v1       #e:Ljava/io/IOException;
    const-string v2, "OFF"

    .line 712
    sget-object v5, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->TAG:Ljava/lang/String;

    const-string v6, "cannot open file : /efs/imei/keystr"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 722
    .end local v1           #e:Ljava/io/IOException;
    :cond_7
    sget-object v3, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->TAG:Ljava/lang/String;

    const-string v5, "Not factory mode. isFactoryMode() returend false"

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 724
    goto/16 :goto_0
.end method

.method public static isIgnoreNationalRoaming()Z
    .locals 2

    .prologue
    .line 797
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 799
    .local v0, salesCode:Ljava/lang/String;
    const-string v1, "XEO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 800
    const/4 v1, 0x1

    .line 802
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isKoreaCameraModel()Z
    .locals 2

    .prologue
    .line 167
    const-string v1, "ro.product.model"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, modelName:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 169
    const-string v1, "EK-KC100S"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "EK-KC100K"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "EK-KC120S"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "EK-KC120K"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "EK-KC120L"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 171
    :cond_0
    const/4 v1, 0x1

    .line 174
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isKoreaFeature()Z
    .locals 2

    .prologue
    .line 158
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, SalesCode:Ljava/lang/String;
    const-string v1, "SKT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "KTT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "LGT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ANY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 161
    :cond_0
    const/4 v1, 0x1

    .line 163
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isKoreaMidFeature()Z
    .locals 2

    .prologue
    .line 178
    const-string v0, "KOR"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isKweatherEnable()Z
    .locals 4

    .prologue
    .line 584
    const-string v0, "kweather"

    .line 585
    .local v0, DAEMON_KWEATHER:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_LiveWallpaper_WeatherWallCPName"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 587
    .local v1, mCPName:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isKoreaFeature()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isKoreaMidFeature()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v2, "kweather"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 588
    const/4 v2, 0x1

    .line 591
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isLockScreenInvisibleByForce()Z
    .locals 1

    .prologue
    .line 553
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isDemoVersionSW()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 554
    const/4 v0, 0x1

    .line 556
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMTRDevice()Z
    .locals 2

    .prologue
    .line 314
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 315
    .local v0, SalesCode:Ljava/lang/String;
    const-string v1, "MTR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 316
    const/4 v1, 0x1

    .line 318
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isMidDevice()Z
    .locals 1

    .prologue
    .line 612
    const/4 v0, 0x0

    return v0
.end method

.method public static isMissedEventEnableOnTablet()Z
    .locals 3

    .prologue
    .line 728
    const-string v1, "ro.product.model"

    const-string v2, "Unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 729
    .local v0, DEVICE_NAME:Ljava/lang/String;
    const-string v1, "SHV-E230S"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SHV-E230K"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SHV-E230L"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 730
    :cond_0
    const/4 v1, 0x1

    .line 732
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isMissedPhoneLock(Landroid/content/Context;)Z
    .locals 4
    .parameter "mContext"

    .prologue
    .line 779
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 780
    .local v0, SalesCode:Ljava/lang/String;
    const-string v1, "LGT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "lock"

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "missing_phone_lock"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 782
    const/4 v1, 0x1

    .line 784
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isMultiSIMDevice()Z
    .locals 1

    .prologue
    .line 441
    const/4 v0, 0x0

    return v0
.end method

.method public static isNoServiceDisplayWhenNoSIM()Z
    .locals 1

    .prologue
    .line 498
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isAUSFeature()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isCanadaFeature()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 499
    :cond_0
    const/4 v0, 0x1

    .line 501
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPLMNEnable()Z
    .locals 1

    .prologue
    .line 99
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isShouldbeDisplayForSalesCode()Z

    move-result v0

    return v0
.end method

.method public static isSIMToastEnabled()Z
    .locals 2

    .prologue
    .line 379
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 381
    .local v0, SalesCode:Ljava/lang/String;
    const-string v1, "ATT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 382
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->mIsSIMToastEnabled:Z

    .line 384
    :cond_0
    sget-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->mIsSIMToastEnabled:Z

    return v1
.end method

.method public static isShortcutApplied()Z
    .locals 1

    .prologue
    .line 628
    const/4 v0, 0x1

    return v0
.end method

.method public static isShouldDisplayCarrierInfo()Z
    .locals 2

    .prologue
    .line 103
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_LockScreen_DisplayPlmn"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isShouldbeDisplayForSalesCode()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 108
    sget-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->mChecked:Z

    if-nez v1, :cond_2

    .line 109
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, SalesCode:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_LockScreen_DisplayPlmn"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->mIsPLMNEnabledByCSC:Z

    .line 112
    sget-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->mIsPLMNEnabledByCSC:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isAUSFeature()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TMH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "PAN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "HBM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "EPL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SKT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "KTT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "LGT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CTC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ATT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TMB"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "RCS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "RWC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "FMC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CLN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "KDO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "BMC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "BWA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "PCM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SOL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "VMC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "VTR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "GLW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MCT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TLS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "VZW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SPR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SPC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CMCC"

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CU"

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 132
    :cond_0
    sput-boolean v3, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->mShouldbeDisplaySalesCode:Z

    .line 134
    :cond_1
    sput-boolean v3, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->mChecked:Z

    .line 136
    :cond_2
    sget-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->mShouldbeDisplaySalesCode:Z

    return v1
.end method

.method public static isSinaEnable()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 223
    sget-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->mIsSinaDaemonEnableChecked:Z

    if-nez v1, :cond_2

    .line 224
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, SalesCode:Ljava/lang/String;
    const-string v1, "CHN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CTC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 229
    :cond_0
    sput-boolean v2, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->mIsSinaDaemonEnable:Z

    .line 231
    :cond_1
    sput-boolean v2, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->mIsSinaDaemonEnableChecked:Z

    .line 233
    :cond_2
    sget-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->mIsSinaDaemonEnable:Z

    return v1
.end method

.method public static isSktModel()Z
    .locals 2

    .prologue
    .line 788
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 789
    .local v0, SalesCode:Ljava/lang/String;
    const-string v1, "SKT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 790
    const/4 v1, 0x1

    .line 792
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSprintDevice()Z
    .locals 2

    .prologue
    .line 396
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 397
    .local v0, SalesCode:Ljava/lang/String;
    const-string v1, "SPR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 398
    const/4 v1, 0x1

    .line 400
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isTMODevice()Z
    .locals 2

    .prologue
    .line 306
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, SalesCode:Ljava/lang/String;
    const-string v1, "TMB"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 308
    const/4 v1, 0x1

    .line 310
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isTabletDevice()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 507
    :try_start_0
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 508
    .local v1, wm:Landroid/view/IWindowManager;
    invoke-interface {v1}, Landroid/view/IWindowManager;->hasSystemNavBar()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 509
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->mIsTablet:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 517
    :goto_0
    sget-boolean v2, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->mIsTablet:Z

    return v2

    .line 511
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    sput-boolean v2, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->mIsTablet:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 513
    :catch_0
    move-exception v0

    .line 514
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->TAG:Ljava/lang/String;

    const-string v3, "Failing check whether status bar can hide"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    sput-boolean v4, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->mIsTablet:Z

    goto :goto_0
.end method

.method public static isUSAFeature()Z
    .locals 2

    .prologue
    .line 330
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, SalesCode:Ljava/lang/String;
    const-string v1, "VZW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ATT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TMB"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SPR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "VMU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MTR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "USC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 334
    :cond_0
    const/4 v1, 0x1

    .line 336
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isUsimWidgetEnable()Z
    .locals 1

    .prologue
    .line 753
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isKoreaFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isWifiModel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 754
    const/4 v0, 0x1

    .line 756
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVZWDevice()Z
    .locals 2

    .prologue
    .line 388
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 389
    .local v0, SalesCode:Ljava/lang/String;
    const-string v1, "VZW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 390
    const/4 v1, 0x1

    .line 392
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isVirginMobileDevice()Z
    .locals 2

    .prologue
    .line 404
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 405
    .local v0, SalesCode:Ljava/lang/String;
    const-string v1, "VMU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 406
    const/4 v1, 0x1

    .line 408
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isWifiModel()Z
    .locals 2

    .prologue
    .line 745
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 746
    .local v0, SalesCode:Ljava/lang/String;
    const-string v1, "ANY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 747
    const/4 v1, 0x1

    .line 749
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isWindowOrientationPortrait()Z
    .locals 2

    .prologue
    .line 640
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isKoreaFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isTabletDevice()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_KTSpider_UseSpiderFeature"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isKoreaCameraModel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 641
    const/4 v0, 0x1

    .line 643
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static lockOnlyAfterTimerExpires()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 185
    sget-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->mSecureLockOnlyAfterTimerExpiresChecked:Z

    if-nez v1, :cond_1

    .line 186
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, SalesCode:Ljava/lang/String;
    const-string v1, "ATT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    sput-boolean v2, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->mSecureLockOnlyAfterTimerExpires:Z

    .line 192
    :cond_0
    sput-boolean v2, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->mSecureLockOnlyAfterTimerExpiresChecked:Z

    .line 194
    :cond_1
    sget-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->mSecureLockOnlyAfterTimerExpires:Z

    return v1
.end method

.method public static setPINPUKRequest(Z)V
    .locals 3
    .parameter "state"

    .prologue
    .line 301
    sput-boolean p0, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->mPINPUKRequest:Z

    .line 302
    sget-object v0, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPINPUKRequest : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->mPINPUKRequest:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    return-void
.end method

.method public static swipeLockBeforeTimeout()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 354
    sget-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->mSwipeLockBeforeTimeoutChecked:Z

    if-nez v1, :cond_1

    .line 355
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 357
    .local v0, SalesCode:Ljava/lang/String;
    const-string v1, "ATT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 358
    sput-boolean v2, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->mSwipeLockBeforeTimeout:Z

    .line 361
    :cond_0
    sput-boolean v2, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->mSwipeLockBeforeTimeoutChecked:Z

    .line 363
    :cond_1
    sget-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->mSwipeLockBeforeTimeout:Z

    return v1
.end method

.method public static useCtcPlmnConcept()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 211
    sget-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->mUseCtcPlmnConceptChecked:Z

    if-nez v0, :cond_1

    .line 212
    const-string v0, "CTC"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    sput-boolean v2, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->mUseCtcPlmnConcept:Z

    .line 215
    :cond_0
    sput-boolean v2, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->mUseCtcPlmnConceptChecked:Z

    .line 218
    :cond_1
    sget-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->mUseCtcPlmnConcept:Z

    return v0
.end method

.method public static useIndependentLockTimeout()Z
    .locals 1

    .prologue
    .line 549
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->swipeLockBeforeTimeout()Z

    move-result v0

    return v0
.end method

.method public static wipeInternalExternalSd()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 198
    sget-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->mWipeOutIntExtMemoryDueToUnlockFailChecked:Z

    if-nez v1, :cond_2

    .line 199
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, SalesCode:Ljava/lang/String;
    const-string v1, "ATT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "DCM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 202
    :cond_0
    sput-boolean v2, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->mWipeOutIntExtMemoryDueToUnlockFail:Z

    .line 205
    :cond_1
    sput-boolean v2, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->mWipeOutIntExtMemoryDueToUnlockFailChecked:Z

    .line 207
    :cond_2
    sget-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->mWipeOutIntExtMemoryDueToUnlockFail:Z

    return v1
.end method

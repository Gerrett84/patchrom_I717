.class public Lcom/android/server/DirEncryptServiceHelper;
.super Ljava/lang/Object;
.source "DirEncryptServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DirEncryptServiceHelper$AppliedPolicies;,
        Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;,
        Lcom/android/server/DirEncryptServiceHelper$Notify;,
        Lcom/android/server/DirEncryptServiceHelper$VoldResponse;,
        Lcom/android/server/DirEncryptServiceHelper$VoldCommand;,
        Lcom/android/server/DirEncryptServiceHelper$Command;,
        Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;,
        Lcom/android/server/DirEncryptServiceHelper$DirEncryptServiceBinderListener;
    }
.end annotation


# static fields
.field private static final APPLIED_POLICIES:Ljava/lang/String; = "applied_sdcard_policies"

.field private static final BATCH_INTENT:Ljava/lang/String; = "android.dirEncryption.DirEncryptionManager.BATCH_ENCRYPT"

.field private static final DELAY:I = 0x1f4

.field private static final FIPS_EDK_PATH_SD:Ljava/lang/String; = "edk_p_sd"

#the value of this static final field might be set in the static constructor
.field private static final LOCAL_LOGD:Z = false

#the value of this static final field might be set in the static constructor
.field private static final LOCAL_LOGE:Z = false

.field private static final SECURE_MOUNT_PATH:Ljava/lang/String; = "/mnt/secure/staging"

.field private static final TAG:Ljava/lang/String; = "DirEncryptService"

.field private static final UNMOUNT_POLICY_INTENT:Ljava/lang/String; = "android.dirEncryption.DirEncryptionManager.UNMOUNT_POLICY"

.field private static mSaveProgressNotification:Landroid/app/Notification;


# instance fields
.field private mAnimateSync:Ljava/lang/Object;

.field private mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

.field private mBatchDecrypting:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mConnector:Lcom/android/server/NativeDaemonConnector;

.field private mContext:Landroid/content/Context;

.field private mCryptPath:Ljava/lang/String;

.field private mDecryptDialog:Landroid/app/AlertDialog;

.field private mDep:Lcom/android/server/DirEncryptPrefs;

.field private mDew:Landroid/dirEncryption/DirEncryptionWrapper;

.field private mDialogBuilder:Landroid/app/AlertDialog$Builder;

.field private mErrAdditionalSpace:I

.field private mFirstUnlockLockscreen:Z

.field private mHandler:Landroid/os/Handler;

.field private mLabel:Ljava/lang/String;

.field private mLastError:I

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/DirEncryptServiceHelper$DirEncryptServiceBinderListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNormalPath:Ljava/lang/String;

.field public mPassword:Ljava/lang/String;

.field private mPendingDMCheck:Z

.field private mPendingMountPath:Ljava/lang/String;

.field private mProgressTime:J

.field private mRemoteProgressView:Landroid/widget/RemoteViews;

.field private mSelfSDMountRequested:Z

.field private mServiceStatus:I

.field private mStorageEventListener:Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;

.field private mSync:Ljava/lang/Object;

.field private mUnnmountRequested:Z

.field private mWasEncryptedCard:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 74
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/DirEncryptServiceHelper;->LOCAL_LOGE:Z

    .line 75
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/DirEncryptServiceHelper;->LOCAL_LOGD:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 346
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mSync:Ljava/lang/Object;

    .line 91
    new-instance v1, Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;

    invoke-direct {v1, p0, v3}, Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;-><init>(Lcom/android/server/DirEncryptServiceHelper;Lcom/android/server/DirEncryptServiceHelper$1;)V

    iput-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mStorageEventListener:Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;

    .line 92
    iput-object v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mHandler:Landroid/os/Handler;

    .line 93
    iput-object v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mRemoteProgressView:Landroid/widget/RemoteViews;

    .line 94
    iput-object v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    .line 95
    iput-object v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    .line 98
    iput-boolean v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 99
    iput-boolean v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mUnnmountRequested:Z

    .line 100
    iput-boolean v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mFirstUnlockLockscreen:Z

    .line 101
    iput-boolean v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mWasEncryptedCard:Z

    .line 102
    iput-boolean v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mBatchDecrypting:Z

    .line 103
    iput-boolean v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mPendingDMCheck:Z

    .line 106
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mPassword:Ljava/lang/String;

    .line 108
    iput-object v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mCryptPath:Ljava/lang/String;

    .line 109
    iput-object v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mNormalPath:Ljava/lang/String;

    .line 110
    iput-object v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mPendingMountPath:Ljava/lang/String;

    .line 111
    iput-object v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mLabel:Ljava/lang/String;

    .line 113
    iput v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mErrAdditionalSpace:I

    .line 114
    iput v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 115
    iput v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mServiceStatus:I

    .line 117
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Ljava/util/ArrayList;

    .line 121
    iput-object v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    .line 122
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mAnimateSync:Ljava/lang/Object;

    .line 128
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mProgressTime:J

    .line 147
    new-instance v1, Lcom/android/server/DirEncryptServiceHelper$1;

    invoke-direct {v1, p0}, Lcom/android/server/DirEncryptServiceHelper$1;-><init>(Lcom/android/server/DirEncryptServiceHelper;)V

    iput-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 347
    iput-object p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 348
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/DirEncryptPrefs;->getPreferences(Landroid/content/Context;)Lcom/android/server/DirEncryptPrefs;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    .line 349
    new-instance v1, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;-><init>(Lcom/android/server/DirEncryptServiceHelper;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    .line 350
    new-instance v1, Landroid/dirEncryption/DirEncryptionWrapper;

    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/dirEncryption/DirEncryptionWrapper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    .line 352
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 353
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.dirEncryption.DirEncryptionManager.BATCH_ENCRYPT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 354
    const-string v1, "android.dirEncryption.DirEncryptionManager.UNMOUNT_POLICY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 355
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 356
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/DirEncryptServiceHelper;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/DirEncryptServiceHelper;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/DirEncryptServiceHelper;ILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/DirEncryptServiceHelper;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mAnimateSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500()Landroid/app/Notification;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/android/server/DirEncryptServiceHelper;->mSaveProgressNotification:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/DirEncryptServiceHelper;)Landroid/dirEncryption/DirEncryptionWrapper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    return-object v0
.end method

.method private clearNotification()V
    .locals 3

    .prologue
    .line 1294
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1296
    .local v0, notificationManager:Landroid/app/NotificationManager;
    sget v1, Landroid/dirEncryption/DirEncryptionManager;->SECURITY_POLICY_NOTIFICATION_ID:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1297
    return-void
.end method

.method private doBatchDecrypt()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1256
    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mStorageEventListener:Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;

    invoke-virtual {v0, v1}, Landroid/dirEncryption/DirEncryptionWrapper;->registerStorageEventListener(Landroid/os/storage/StorageEventListener;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1257
    const-string v0, "RegisterStorageEventListner fail"

    invoke-static {v0}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 1259
    :cond_0
    const/16 v0, 0xc

    const-string v1, "batch_start"

    invoke-direct {p0, v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    .line 1261
    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mPassword:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mPassword:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_1

    .line 1262
    const-string v0, "dir_crypto"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "batchDecrypt"

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mNormalPath:Ljava/lang/String;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mCryptPath:Ljava/lang/String;

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mPassword:Ljava/lang/String;

    aput-object v2, v1, v6

    invoke-direct {p0, v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->sendCommand(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1266
    :goto_0
    return-void

    .line 1264
    :cond_1
    const-string v0, "dir_crypto"

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "batchDecrypt"

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mNormalPath:Ljava/lang/String;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mCryptPath:Ljava/lang/String;

    aput-object v2, v1, v5

    invoke-direct {p0, v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->sendCommand(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private doCheckEncMeta()V
    .locals 4

    .prologue
    .line 1251
    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionWrapper;->getVolumeState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "checking"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1252
    const-string v0, "dir_crypto"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "encMetaCheck"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "/mnt/secure/staging"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->sendCommand(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1253
    :cond_0
    return-void
.end method

.method private doEncryption()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1192
    iget-object v7, p0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v7}, Lcom/android/server/DirEncryptPrefs;->restorePrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v2

    .line 1194
    .local v2, reqPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;
    iget v7, v2, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    if-ne v7, v10, :cond_0

    move v3, v5

    .line 1195
    .local v3, requiredEnc:I
    :goto_0
    iget v7, v2, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    if-ne v7, v12, :cond_1

    move v4, v5

    .line 1196
    .local v4, requiredFullEnc:I
    :goto_1
    iget v7, v2, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    const/4 v8, 0x6

    if-ne v7, v8, :cond_2

    move v1, v5

    .line 1198
    .local v1, excludeMedia:I
    :goto_2
    iget-object v7, p0, Lcom/android/server/DirEncryptServiceHelper;->mPassword:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v7, v5, :cond_3

    .line 1201
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const-string v7, "Assert!!! SD card encryption doesn\'t work in factory mode"

    invoke-static {v6, v7, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 1248
    :goto_3
    return-void

    .end local v1           #excludeMedia:I
    .end local v3           #requiredEnc:I
    .end local v4           #requiredFullEnc:I
    :cond_0
    move v3, v6

    .line 1194
    goto :goto_0

    .restart local v3       #requiredEnc:I
    :cond_1
    move v4, v6

    .line 1195
    goto :goto_1

    .restart local v4       #requiredFullEnc:I
    :cond_2
    move v1, v6

    .line 1196
    goto :goto_2

    .line 1207
    .restart local v1       #excludeMedia:I
    :cond_3
    const-wide/16 v7, 0xbb8

    :try_start_0
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1213
    :goto_4
    const-string v7, ""

    invoke-direct {p0, v5, v3, v7}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    .line 1215
    if-ne v3, v5, :cond_4

    .line 1216
    invoke-direct {p0, v10}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 1247
    :goto_5
    const-string v7, "dir_crypto"

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    const-string v9, "encrypt"

    aput-object v9, v8, v6

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mPassword:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/android/server/DirEncryptServiceHelper;->addEscapeChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v5

    const-string v5, "/mnt/secure/staging"

    aput-object v5, v8, v10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v12

    const/4 v5, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v8, v5

    invoke-direct {p0, v7, v8}, Lcom/android/server/DirEncryptServiceHelper;->sendCommand(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 1208
    :catch_0
    move-exception v0

    .line 1210
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 1218
    .end local v0           #e:Ljava/lang/Exception;
    :cond_4
    invoke-direct {p0, v11}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    goto :goto_5
.end method

.method private doWorkForPassword(Ljava/lang/String;)V
    .locals 8
    .parameter "password"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 906
    if-nez p1, :cond_0

    .line 907
    const-string p1, ""

    .line 909
    :cond_0
    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 911
    const-string v2, ""

    iput-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mPassword:Ljava/lang/String;

    .line 912
    const-string v2, "dir_crypto"

    new-array v3, v5, [Ljava/lang/Object;

    const-string v4, "password"

    aput-object v4, v3, v6

    invoke-direct {p0, v2, v3}, Lcom/android/server/DirEncryptServiceHelper;->sendCommand(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 943
    :cond_1
    :goto_0
    return-void

    .line 913
    :cond_2
    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mPassword:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v5, :cond_5

    .line 914
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doWorkForPassword mPendingDMCheck="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mPendingDMCheck:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mNormalPath="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mPendingMountPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 917
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/system/"

    const-string v3, "edk_p_sd"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 919
    iput-object p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mPassword:Ljava/lang/String;

    .line 922
    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->handlePendingSDBatch()Z

    .line 924
    iget-boolean v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mBatchDecrypting:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v2}, Lcom/android/server/DirEncryptPrefs;->haveEncPrefs()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 925
    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v2}, Landroid/dirEncryption/DirEncryptionWrapper;->getVolumeState()Ljava/lang/String;

    move-result-object v1

    .line 926
    .local v1, state:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->isStorageCardEncryptionPoliciesApplied()I

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 927
    iput-boolean v5, p0, Lcom/android/server/DirEncryptServiceHelper;->mFirstUnlockLockscreen:Z

    .line 928
    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->unmountSDCard()V

    goto :goto_0

    .line 930
    :cond_3
    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 934
    .end local v1           #state:Ljava/lang/String;
    :cond_4
    const-string v2, "dir_crypto"

    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "password"

    aput-object v4, v3, v6

    invoke-virtual {p0, p1}, Lcom/android/server/DirEncryptServiceHelper;->addEscapeChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-direct {p0, v2, v3}, Lcom/android/server/DirEncryptServiceHelper;->sendCommand(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 937
    .end local v0           #f:Ljava/io/File;
    :cond_5
    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mPassword:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 939
    const-string v2, "dir_crypto"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "password"

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mPassword:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/server/DirEncryptServiceHelper;->addEscapeChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, p1}, Lcom/android/server/DirEncryptServiceHelper;->addEscapeChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-direct {p0, v2, v3}, Lcom/android/server/DirEncryptServiceHelper;->sendCommand(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 940
    iput-object p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mPassword:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private doWorkForUSBState(Ljava/lang/String;)V
    .locals 9
    .parameter "state"

    .prologue
    const/4 v6, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1047
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doWorkForUSBState:: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 1049
    const-string v4, "unmounted"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    if-eqz v4, :cond_2

    .line 1054
    iget-boolean v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mFirstUnlockLockscreen:Z

    if-ne v4, v2, :cond_0

    .line 1055
    iput-boolean v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mFirstUnlockLockscreen:Z

    .line 1056
    iput-boolean v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 1059
    :cond_0
    const-string v2, "clearNotification"

    invoke-static {v2}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 1060
    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->clearNotification()V

    .line 1063
    :try_start_0
    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v2}, Landroid/dirEncryption/DirEncryptionWrapper;->mountVolume()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1189
    :cond_1
    :goto_0
    return-void

    .line 1064
    :catch_0
    move-exception v0

    .line 1065
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1067
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    const-string v4, "checking"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1080
    const-string v2, "clearNotification"

    invoke-static {v2}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 1081
    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->clearNotification()V

    .line 1083
    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mPassword:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    iget-boolean v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    if-eqz v2, :cond_3

    .line 1084
    iput-boolean v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 1086
    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1088
    :cond_3
    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v2}, Lcom/android/server/DirEncryptPrefs;->haveEncPrefs()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1089
    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1091
    :cond_4
    const-string v2, "encPrefs Not found"

    invoke-static {v2}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    goto :goto_0

    .line 1094
    :cond_5
    const-string v4, "mounted"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1103
    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->getStorageCardEncryptionInternal()I

    move-result v4

    if-ne v4, v7, :cond_8

    .line 1105
    iget-boolean v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mWasEncryptedCard:Z

    if-eqz v4, :cond_6

    .line 1106
    const-string v2, "looks like encryption policies were received while SD card decryption was on going!!"

    invoke-static {v2}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 1107
    const-string v2, "success"

    invoke-direct {p0, v7, v3, v2}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    .line 1108
    iput-boolean v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mWasEncryptedCard:Z

    .line 1109
    invoke-direct {p0, v3}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 1110
    const-string v2, "free"

    invoke-direct {p0, v8, v2}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    .line 1116
    :goto_1
    const-string v2, "free"

    invoke-direct {p0, v3, v2}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    goto :goto_0

    .line 1112
    :cond_6
    const-string v4, "Since encrypt is ON: final mount command"

    invoke-static {v4}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 1113
    const-string v4, "dir_crypto"

    new-array v5, v6, [Ljava/lang/Object;

    const-string v6, "mount"

    aput-object v6, v5, v3

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v6}, Landroid/dirEncryption/DirEncryptionWrapper;->getExternalSdPath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mPassword:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/android/server/DirEncryptServiceHelper;->addEscapeChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->getStorageCardMediaExclusionInternal()I

    move-result v6

    const/4 v7, 0x6

    if-ne v6, v7, :cond_7

    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v8

    invoke-direct {p0, v4, v5}, Lcom/android/server/DirEncryptServiceHelper;->sendCommand(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_7
    move v2, v3

    goto :goto_2

    .line 1118
    :cond_8
    const-string v2, "Since encrypt is OFF: no final mount command"

    invoke-static {v2}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 1119
    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper$AppliedPolicies;->setPoliciesApplied()Z

    .line 1121
    invoke-direct {p0, v3}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 1122
    const-string v2, "free"

    invoke-direct {p0, v8, v2}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    .line 1124
    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v2}, Lcom/android/server/DirEncryptPrefs;->haveEncPrefs()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mWasEncryptedCard:Z

    if-eqz v2, :cond_1

    .line 1125
    const-string v2, "success"

    invoke-direct {p0, v7, v3, v2}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    .line 1126
    iput-boolean v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mWasEncryptedCard:Z

    goto/16 :goto_0

    .line 1129
    :cond_9
    const-string v4, "removed"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1133
    iput-boolean v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mUnnmountRequested:Z

    .line 1134
    iput-boolean v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 1135
    iput v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 1136
    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper$AppliedPolicies;->setPoliciesRemoved()Z

    .line 1138
    const-string v2, "SD card removed"

    invoke-static {v2}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 1139
    const-string v2, "clearNotification"

    invoke-static {v2}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 1140
    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->clearNotification()V

    .line 1142
    invoke-direct {p0, v3}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 1143
    const-string v2, "free"

    invoke-direct {p0, v3, v2}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    .line 1146
    :try_start_1
    const-string v2, "SD card removed, removing the hidden drive if any"

    invoke-static {v2}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 1147
    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v2}, Landroid/dirEncryption/DirEncryptionWrapper;->unmountHiddenVolume()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1152
    :goto_3
    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mLabel:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1153
    const/4 v1, 0x1

    .line 1154
    .local v1, ret:Z
    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    iget-object v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mLabel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/dirEncryption/DirEncryptionWrapper;->removeCryptMapper(Ljava/lang/String;)Z

    move-result v1

    .line 1155
    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->initializeBatchVariable()V

    .line 1156
    if-nez v1, :cond_1

    goto/16 :goto_0

    .line 1148
    .end local v1           #ret:Z
    :catch_1
    move-exception v0

    .line 1149
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 1159
    .end local v0           #e:Ljava/lang/Exception;
    :cond_a
    const-string v4, "unmounted"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1160
    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper$AppliedPolicies;->setPoliciesRemoved()Z

    .line 1161
    const-string v4, "SD card unmounted"

    invoke-static {v4}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 1162
    iget v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    if-nez v4, :cond_b

    .line 1163
    const-string v4, "clearNotification"

    invoke-static {v4}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 1164
    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->clearNotification()V

    .line 1167
    :cond_b
    iget-boolean v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mUnnmountRequested:Z

    if-ne v4, v2, :cond_1

    .line 1168
    iput-boolean v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mUnnmountRequested:Z

    .line 1170
    const/16 v2, 0x8

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 1172
    :cond_c
    const-string v2, "nofs"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1173
    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mLabel:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1174
    const/4 v1, 0x1

    .line 1175
    .restart local v1       #ret:Z
    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    iget-object v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mLabel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/dirEncryption/DirEncryptionWrapper;->removeCryptMapper(Ljava/lang/String;)Z

    move-result v1

    .line 1176
    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->initializeBatchVariable()V

    .line 1177
    if-nez v1, :cond_1

    goto/16 :goto_0

    .line 1180
    .end local v1           #ret:Z
    :cond_d
    const-string v2, "bad_removal"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1181
    iput-boolean v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mUnnmountRequested:Z

    .line 1182
    const-string v2, "SD card bad removed"

    invoke-static {v2}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 1183
    iget v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    if-nez v2, :cond_1

    .line 1184
    const-string v2, "clearNotification"

    invoke-static {v2}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 1185
    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->clearNotification()V

    .line 1186
    const-string v2, "free"

    invoke-direct {p0, v3, v2}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    goto/16 :goto_0
.end method

.method private getFullStorageCardEncryptionInternal()I
    .locals 2

    .prologue
    .line 777
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v1}, Lcom/android/server/DirEncryptPrefs;->restorePrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v0

    .line 778
    .local v0, policies:Landroid/dirEncryption/SDCardEncryptionPolicies;
    iget v1, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    return v1
.end method

.method private getRemoteProgressView(Ljava/lang/String;II)Landroid/widget/RemoteViews;
    .locals 5
    .parameter "text"
    .parameter "reqEnc"
    .parameter "progress"

    .prologue
    const v4, 0x1020400

    .line 1269
    const-string v0, ""

    .line 1270
    .local v0, progressText:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mRemoteProgressView:Landroid/widget/RemoteViews;

    if-nez v1, :cond_0

    .line 1271
    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x10900dc

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mRemoteProgressView:Landroid/widget/RemoteViews;

    .line 1274
    :cond_0
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 1275
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mRemoteProgressView:Landroid/widget/RemoteViews;

    const v2, 0x108028a

    invoke-virtual {v1, v4, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1276
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10406cb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1281
    :goto_0
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mRemoteProgressView:Landroid/widget/RemoteViews;

    const v2, 0x1020401

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1282
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mRemoteProgressView:Landroid/widget/RemoteViews;

    const v2, 0x1020402

    const/16 v3, 0x64

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, p3, v4}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 1284
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mRemoteProgressView:Landroid/widget/RemoteViews;

    return-object v1

    .line 1278
    :cond_1
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mRemoteProgressView:Landroid/widget/RemoteViews;

    const v2, 0x1080234

    invoke-virtual {v1, v4, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1279
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10406cf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;
    .locals 2

    .prologue
    .line 1009
    const/4 v0, 0x0

    .line 1011
    .local v0, result:Landroid/dirEncryption/SDCardEncryptionPolicies;
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v1}, Lcom/android/server/DirEncryptPrefs;->haveEncPrefs()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1012
    const-string v1, "EncPrefs found"

    invoke-static {v1}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 1013
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v1}, Lcom/android/server/DirEncryptPrefs;->restorePrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v0

    .line 1017
    :goto_0
    return-object v0

    .line 1015
    :cond_0
    const-string v1, "EncPrefs not found"

    invoke-static {v1}, Lcom/android/server/DirEncryptServiceHelper;->logE(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getSecurityIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 1288
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1289
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "adminStart"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1290
    return-object v0
.end method

.method private getStorageCardEncryptionInternal()I
    .locals 2

    .prologue
    .line 772
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v1}, Lcom/android/server/DirEncryptPrefs;->restorePrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v0

    .line 773
    .local v0, policies:Landroid/dirEncryption/SDCardEncryptionPolicies;
    iget v1, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    return v1
.end method

.method private getStorageCardMediaExclusionInternal()I
    .locals 2

    .prologue
    .line 782
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v1}, Lcom/android/server/DirEncryptPrefs;->restorePrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v0

    .line 783
    .local v0, policies:Landroid/dirEncryption/SDCardEncryptionPolicies;
    iget v1, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    return v1
.end method

.method private handlePendingSDBatch()Z
    .locals 5

    .prologue
    .line 880
    const/4 v1, 0x0

    .line 882
    .local v1, ret:Z
    iget-boolean v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mPendingDMCheck:Z

    if-eqz v3, :cond_1

    .line 883
    iget-object v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v3}, Landroid/dirEncryption/DirEncryptionWrapper;->getVolumeState()Ljava/lang/String;

    move-result-object v2

    .line 885
    .local v2, state:Ljava/lang/String;
    const-string v3, "unmounted"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "nofs"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "unmountable"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 889
    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mPendingDMCheck:Z

    .line 890
    iget-object v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mPendingMountPath:Ljava/lang/String;

    const-string v4, "mounting"

    invoke-virtual {p0, v3, v4}, Lcom/android/server/DirEncryptServiceHelper;->onStorageAskPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 892
    .local v0, nRet:I
    const/16 v3, -0x64

    if-ne v0, v3, :cond_2

    .line 893
    const/16 v3, 0xc

    const-string v4, "batch_no_fs"

    invoke-direct {p0, v3, v4}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    .line 901
    .end local v0           #nRet:I
    .end local v2           #state:Ljava/lang/String;
    :cond_1
    :goto_0
    return v1

    .line 896
    .restart local v0       #nRet:I
    .restart local v2       #state:Ljava/lang/String;
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private initializeBatchVariable()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1035
    iput-boolean v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mPendingDMCheck:Z

    .line 1036
    iput-boolean v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mBatchDecrypting:Z

    .line 1037
    iput-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mCryptPath:Ljava/lang/String;

    .line 1038
    iput-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mNormalPath:Ljava/lang/String;

    .line 1039
    iput-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mPendingMountPath:Ljava/lang/String;

    .line 1040
    iput-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mLabel:Ljava/lang/String;

    .line 1041
    return-void
.end method

.method private isAdminApplied()Z
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 983
    new-instance v0, Landroid/dirEncryption/SDCardEncryptionPolicies;

    invoke-direct {v0}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>()V

    .line 984
    .local v0, adminPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;
    iget-object v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const-string v4, "device_policy"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 985
    .local v1, dpm:Landroid/app/admin/DevicePolicyManager;
    const/4 v2, 0x0

    .line 987
    .local v2, isDisabledByAdmin:Z
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/admin/DevicePolicyManager;->getRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 988
    iput v5, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    .line 989
    const/4 v3, 0x4

    iput v3, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    .line 992
    :cond_0
    iget v3, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    if-ne v5, v3, :cond_1

    .line 993
    const/4 v2, 0x1

    .line 996
    :cond_1
    return v2
.end method

.method private isEncryptionApplied()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1000
    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v0

    .line 1001
    .local v0, pol:Landroid/dirEncryption/SDCardEncryptionPolicies;
    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->isStorageCardEncryptionPoliciesApplied()I

    move-result v2

    if-ne v2, v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/dirEncryption/SDCardEncryptionPolicies;->getDefaultEnc()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 1005
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static logD(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 763
    sget-boolean v0, Lcom/android/server/DirEncryptServiceHelper;->LOCAL_LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "DirEncryptService"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    :cond_0
    return-void
.end method

.method public static logE(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 766
    sget-boolean v0, Lcom/android/server/DirEncryptServiceHelper;->LOCAL_LOGE:Z

    if-eqz v0, :cond_0

    const-string v0, "DirEncryptService"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    :cond_0
    return-void
.end method

.method private notifyEncryptionStatusChanged(ILjava/lang/String;)V
    .locals 7
    .parameter "operation"
    .parameter "status"

    .prologue
    .line 800
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyEncryptionStatusChanged: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 801
    iget-object v5, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Ljava/util/ArrayList;

    monitor-enter v5

    .line 802
    :try_start_0
    iget-object v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_0

    .line 803
    iget-object v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DirEncryptServiceHelper$DirEncryptServiceBinderListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 805
    .local v0, bl:Lcom/android/server/DirEncryptServiceHelper$DirEncryptServiceBinderListener;
    :try_start_1
    iget-object v4, v0, Lcom/android/server/DirEncryptServiceHelper$DirEncryptServiceBinderListener;->mListener:Landroid/os/storage/IDirEncryptServiceListener;

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v6}, Landroid/dirEncryption/DirEncryptionWrapper;->getExternalSdPath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6, p1, p2}, Landroid/os/storage/IDirEncryptServiceListener;->onEncryptionStatusChanged(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 802
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 806
    :catch_0
    move-exception v3

    .line 807
    .local v3, rex:Landroid/os/RemoteException;
    :try_start_2
    const-string v4, "Listener dead"

    invoke-static {v4}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 808
    iget-object v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 813
    .end local v0           #bl:Lcom/android/server/DirEncryptServiceHelper$DirEncryptServiceBinderListener;
    .end local v2           #i:I
    .end local v3           #rex:Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 809
    .restart local v0       #bl:Lcom/android/server/DirEncryptServiceHelper$DirEncryptServiceBinderListener;
    .restart local v2       #i:I
    :catch_1
    move-exception v1

    .line 810
    .local v1, ex:Ljava/lang/Exception;
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Listener failed: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    goto :goto_1

    .line 813
    .end local v0           #bl:Lcom/android/server/DirEncryptServiceHelper$DirEncryptServiceBinderListener;
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_0
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 814
    return-void
.end method

.method private varargs sendCommand(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .parameter "command"
    .parameter "args"

    .prologue
    .line 788
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mConnector:Lcom/android/server/NativeDaemonConnector;

    if-eqz v1, :cond_0

    .line 789
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 791
    :try_start_0
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 796
    :cond_0
    :goto_0
    return-void

    .line 792
    :catch_0
    move-exception v0

    .line 793
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    const-string v1, "DirEncryptService"

    const-string v2, "Failed to send command"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private setStatus(I)V
    .locals 2
    .parameter "status"

    .prologue
    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 372
    iput p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mServiceStatus:I

    .line 373
    return-void
.end method

.method private showNotification(IILjava/lang/String;)V
    .locals 12
    .parameter "type"
    .parameter "encType"
    .parameter "status"

    .prologue
    .line 1301
    const/4 v1, 0x0

    .line 1302
    .local v1, notification:Landroid/app/Notification;
    const/4 v3, 0x0

    .line 1303
    .local v3, pending:Landroid/app/PendingIntent;
    const-string v5, ""

    .line 1304
    .local v5, tickerText:Ljava/lang/String;
    const-string v0, ""

    .line 1306
    .local v0, contentText:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 1473
    :goto_0
    const/4 v6, 0x4

    if-eq p1, v6, :cond_0

    .line 1475
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    invoke-virtual {v6}, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->isInProgress()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1476
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    invoke-virtual {v6}, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->stop()V

    .line 1477
    const/4 v6, 0x0

    sput-object v6, Lcom/android/server/DirEncryptServiceHelper;->mSaveProgressNotification:Landroid/app/Notification;

    .line 1481
    :cond_0
    if-eqz v1, :cond_1

    .line 1482
    iget v6, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x1

    iput v6, v1, Landroid/app/Notification;->flags:I

    .line 1483
    iget v6, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x20

    iput v6, v1, Landroid/app/Notification;->flags:I

    .line 1484
    iget v6, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x10

    iput v6, v1, Landroid/app/Notification;->flags:I

    .line 1485
    iget v6, v1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v6, v6, 0x4

    iput v6, v1, Landroid/app/Notification;->defaults:I

    .line 1486
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const-string v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 1488
    .local v2, notificationManager:Landroid/app/NotificationManager;
    sget v6, Landroid/dirEncryption/DirEncryptionManager;->SECURITY_POLICY_NOTIFICATION_ID:I

    invoke-virtual {v2, v6, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1490
    .end local v2           #notificationManager:Landroid/app/NotificationManager;
    :cond_1
    return-void

    .line 1309
    :pswitch_0
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10406c7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1310
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10406c8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1312
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->getSecurityIntent()Landroid/content/Intent;

    move-result-object v8

    const/high16 v9, 0x800

    invoke-static {v6, v7, v8, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1313
    new-instance v1, Landroid/app/Notification;

    .end local v1           #notification:Landroid/app/Notification;
    const v6, 0x108028a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct {v1, v6, v5, v7, v8}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1315
    .restart local v1       #notification:Landroid/app/Notification;
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6, v5, v0, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 1320
    :pswitch_1
    const/4 v6, 0x1

    if-ne p2, v6, :cond_3

    .line 1322
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10406cb

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1323
    const-string v6, "success"

    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1324
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10406cd

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1325
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    const/high16 v9, 0x800

    invoke-static {v6, v7, v8, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1326
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 1327
    new-instance v1, Landroid/app/Notification;

    .end local v1           #notification:Landroid/app/Notification;
    const v6, 0x108028a

    const-string v7, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v1, v6, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1352
    .restart local v1       #notification:Landroid/app/Notification;
    :goto_1
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6, v5, v0, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 1330
    :cond_2
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v9, 0x800

    invoke-static {v6, v7, v8, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1331
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10406ce

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1332
    const/4 v6, 0x5

    iput v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 1333
    new-instance v1, Landroid/app/Notification;

    .end local v1           #notification:Landroid/app/Notification;
    const v6, 0x1080289

    const-string v7, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v1, v6, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .restart local v1       #notification:Landroid/app/Notification;
    goto :goto_1

    .line 1337
    :cond_3
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10406cf

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1338
    const-string v6, "success"

    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1339
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10406d1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1340
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    const/high16 v9, 0x800

    invoke-static {v6, v7, v8, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1341
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 1342
    new-instance v1, Landroid/app/Notification;

    .end local v1           #notification:Landroid/app/Notification;
    const v6, 0x1080234

    const-string v7, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v1, v6, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .restart local v1       #notification:Landroid/app/Notification;
    goto :goto_1

    .line 1345
    :cond_4
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v9, 0x800

    invoke-static {v6, v7, v8, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1346
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10406d2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1347
    const/4 v6, 0x6

    iput v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 1348
    new-instance v1, Landroid/app/Notification;

    .end local v1           #notification:Landroid/app/Notification;
    const v6, 0x1080233

    const-string v7, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v1, v6, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .restart local v1       #notification:Landroid/app/Notification;
    goto/16 :goto_1

    .line 1356
    :pswitch_2
    const/4 v6, 0x1

    if-ne p2, v6, :cond_5

    .line 1357
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10406cb

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1358
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10406cc

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1359
    new-instance v1, Landroid/app/Notification;

    .end local v1           #notification:Landroid/app/Notification;
    const v6, 0x108028a

    const-string v7, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v1, v6, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1369
    .restart local v1       #notification:Landroid/app/Notification;
    :goto_2
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    const/high16 v9, 0x800

    invoke-static {v6, v7, v8, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1370
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6, v5, v0, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 1363
    :cond_5
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10406cf

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1364
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10406d0

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1365
    new-instance v1, Landroid/app/Notification;

    .end local v1           #notification:Landroid/app/Notification;
    const v6, 0x1080234

    const-string v7, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v1, v6, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .restart local v1       #notification:Landroid/app/Notification;
    goto :goto_2

    .line 1374
    :pswitch_3
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1375
    .local v4, progress:I
    iget-object v7, p0, Lcom/android/server/DirEncryptServiceHelper;->mAnimateSync:Ljava/lang/Object;

    monitor-enter v7

    .line 1377
    :try_start_0
    iget-wide v8, p0, Lcom/android/server/DirEncryptServiceHelper;->mProgressTime:J

    const-wide/16 v10, -0x1

    cmp-long v6, v8, v10

    if-nez v6, :cond_6

    .line 1378
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/DirEncryptServiceHelper;->mProgressTime:J

    .line 1380
    :cond_6
    sget-object v6, Lcom/android/server/DirEncryptServiceHelper;->mSaveProgressNotification:Landroid/app/Notification;

    if-nez v6, :cond_7

    .line 1381
    const/4 v6, 0x1

    if-ne p2, v6, :cond_9

    .line 1382
    new-instance v6, Landroid/app/Notification;

    const v8, 0x1080288

    const-string v9, ""

    iget-wide v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mProgressTime:J

    invoke-direct {v6, v8, v9, v10, v11}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    sput-object v6, Lcom/android/server/DirEncryptServiceHelper;->mSaveProgressNotification:Landroid/app/Notification;

    .line 1385
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x10406cc

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1393
    :cond_7
    :goto_3
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    const/high16 v10, 0x800

    invoke-static {v6, v8, v9, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1395
    sget-object v6, Lcom/android/server/DirEncryptServiceHelper;->mSaveProgressNotification:Landroid/app/Notification;

    iget-object v8, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v8, v0, v0, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1396
    sget-object v6, Lcom/android/server/DirEncryptServiceHelper;->mSaveProgressNotification:Landroid/app/Notification;

    invoke-direct {p0, v0, p2, v4}, Lcom/android/server/DirEncryptServiceHelper;->getRemoteProgressView(Ljava/lang/String;II)Landroid/widget/RemoteViews;

    move-result-object v8

    iput-object v8, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1397
    sget-object v6, Lcom/android/server/DirEncryptServiceHelper;->mSaveProgressNotification:Landroid/app/Notification;

    iget v8, v6, Landroid/app/Notification;->flags:I

    or-int/lit8 v8, v8, 0x2

    iput v8, v6, Landroid/app/Notification;->flags:I

    .line 1398
    if-nez v4, :cond_a

    .line 1401
    sget-object v6, Lcom/android/server/DirEncryptServiceHelper;->mSaveProgressNotification:Landroid/app/Notification;

    const/4 v8, 0x0

    iput v8, v6, Landroid/app/Notification;->iconLevel:I

    .line 1404
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    invoke-virtual {v6}, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->start()V

    .line 1405
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    invoke-virtual {v6, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1414
    :cond_8
    :goto_4
    monitor-exit v7

    goto/16 :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 1387
    :cond_9
    :try_start_1
    new-instance v6, Landroid/app/Notification;

    const v8, 0x1080232

    const-string v9, ""

    iget-wide v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mProgressTime:J

    invoke-direct {v6, v8, v9, v10, v11}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    sput-object v6, Lcom/android/server/DirEncryptServiceHelper;->mSaveProgressNotification:Landroid/app/Notification;

    .line 1390
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x10406d0

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 1408
    :cond_a
    const/16 v6, 0x64

    if-ne v6, v4, :cond_8

    .line 1411
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    invoke-virtual {v6}, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->stop()V

    .line 1412
    const/4 v6, 0x0

    sput-object v6, Lcom/android/server/DirEncryptServiceHelper;->mSaveProgressNotification:Landroid/app/Notification;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 1419
    .end local v4           #progress:I
    :pswitch_4
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mErrAdditionalSpace:I

    .line 1420
    const/4 v6, 0x1

    if-ne p2, v6, :cond_b

    .line 1421
    new-instance v1, Landroid/app/Notification;

    .end local v1           #notification:Landroid/app/Notification;
    const v6, 0x1080289

    const-string v7, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v1, v6, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1422
    .restart local v1       #notification:Landroid/app/Notification;
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10406cb

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1423
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v9, 0x800

    invoke-static {v6, v7, v8, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1424
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10406ce

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1431
    :goto_5
    const/4 v6, 0x4

    iput v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 1432
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6, v5, v0, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 1426
    :cond_b
    new-instance v1, Landroid/app/Notification;

    .end local v1           #notification:Landroid/app/Notification;
    const v6, 0x1080233

    const-string v7, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v1, v6, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1427
    .restart local v1       #notification:Landroid/app/Notification;
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10406cf

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1428
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v9, 0x800

    invoke-static {v6, v7, v8, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1429
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10406d2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 1436
    :pswitch_5
    const/4 v6, 0x1

    if-ne p2, v6, :cond_c

    .line 1437
    new-instance v1, Landroid/app/Notification;

    .end local v1           #notification:Landroid/app/Notification;
    const v6, 0x1080289

    const-string v7, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v1, v6, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1439
    .restart local v1       #notification:Landroid/app/Notification;
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10406cb

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1440
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v9, 0x800

    invoke-static {v6, v7, v8, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1441
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10406ce

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1448
    :goto_6
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6, v5, v0, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 1443
    :cond_c
    new-instance v1, Landroid/app/Notification;

    .end local v1           #notification:Landroid/app/Notification;
    const v6, 0x1080289

    const-string v7, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v1, v6, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1444
    .restart local v1       #notification:Landroid/app/Notification;
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10406cf

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1445
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v9, 0x800

    invoke-static {v6, v7, v8, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1446
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10406d2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 1452
    :pswitch_6
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10406d3

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1453
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10406d4

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1454
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.dirEncryption.DirEncryptionManager.BATCH_ENCRYPT"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v9, 0x800

    invoke-static {v6, v7, v8, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1455
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 1456
    new-instance v1, Landroid/app/Notification;

    .end local v1           #notification:Landroid/app/Notification;
    const v6, 0x1080234

    const-string v7, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v1, v6, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1459
    .restart local v1       #notification:Landroid/app/Notification;
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6, v5, v0, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 1463
    :pswitch_7
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10406c9

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1464
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10406ca

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1465
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.dirEncryption.DirEncryptionManager.UNMOUNT_POLICY"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v9, 0x800

    invoke-static {v6, v7, v8, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1466
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 1467
    new-instance v1, Landroid/app/Notification;

    .end local v1           #notification:Landroid/app/Notification;
    const v6, 0x108007b

    const-string v7, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v1, v6, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1468
    .restart local v1       #notification:Landroid/app/Notification;
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6, v5, v0, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 1306
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private unmountSDCard()V
    .locals 2

    .prologue
    .line 946
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 949
    :try_start_0
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v1}, Landroid/dirEncryption/DirEncryptionWrapper;->unmountVolume()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 953
    :goto_0
    return-void

    .line 950
    :catch_0
    move-exception v0

    .line 951
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public addEscapeChar(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "in"

    .prologue
    .line 1027
    if-nez p1, :cond_0

    .line 1028
    const-string v0, ""

    .line 1031
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "\\\\"

    const-string v1, "\\\\\\\\"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    const-string v2, "\\\\\""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public doHandleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 415
    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mSync:Ljava/lang/Object;

    monitor-enter v2

    .line 416
    const/4 v1, 0x0

    :try_start_0
    iput v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 418
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 456
    const-string v1, "Invalid command!!!"

    invoke-static {v1}, Lcom/android/server/DirEncryptServiceHelper;->logE(Ljava/lang/String;)V

    .line 458
    :goto_0
    monitor-exit v2

    .line 459
    return-void

    .line 420
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    iget-object v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mStorageEventListener:Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;

    invoke-virtual {v1, v3}, Landroid/dirEncryption/DirEncryptionWrapper;->registerStorageEventListener(Landroid/os/storage/StorageEventListener;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 421
    const-string v1, "RegisterStorageEventListner fail"

    invoke-static {v1}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 422
    :cond_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/DirEncryptServiceHelper;->doWorkForPassword(Ljava/lang/String;)V

    goto :goto_0

    .line 458
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 426
    :pswitch_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->unmountSDCard()V

    goto :goto_0

    .line 430
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 431
    .local v0, state:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Command.USB_STATE:: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 432
    invoke-direct {p0, v0}, Lcom/android/server/DirEncryptServiceHelper;->doWorkForUSBState(Ljava/lang/String;)V

    goto :goto_0

    .line 436
    .end local v0           #state:Ljava/lang/String;
    :pswitch_3
    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->doEncryption()V

    goto :goto_0

    .line 440
    :pswitch_4
    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->doCheckEncMeta()V

    goto :goto_0

    .line 444
    :pswitch_5
    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->doBatchDecrypt()V

    goto :goto_0

    .line 448
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->showPopup()V

    goto :goto_0

    .line 452
    :pswitch_7
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v1}, Landroid/dirEncryption/DirEncryptionWrapper;->mountVolume()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 418
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public getAdditionalSpaceRequired()I
    .locals 1

    .prologue
    .line 367
    iget v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mErrAdditionalSpace:I

    return v0
.end method

.method public getCurrentStatus()I
    .locals 1

    .prologue
    .line 359
    iget v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mServiceStatus:I

    return v0
.end method

.method public getLastError()I
    .locals 1

    .prologue
    .line 363
    iget v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    return v0
.end method

.method public isStorageCardEncryptionPoliciesApplied()I
    .locals 1

    .prologue
    .line 388
    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper$AppliedPolicies;->checkPoliciesApplied()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onEventInner(ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 26
    .parameter "code"
    .parameter "raw"
    .parameter "cooked"

    .prologue
    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mSync:Ljava/lang/Object;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 465
    :try_start_0
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "onEventInner:: "

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 467
    packed-switch p1, :pswitch_data_0

    .line 757
    :cond_0
    :goto_0
    :pswitch_0
    monitor-exit v22

    .line 758
    const/16 v21, 0x1

    :goto_1
    return v21

    .line 470
    :pswitch_1
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v21, v0

    const/16 v23, 0x3

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_4

    .line 471
    const/16 v21, 0x1

    aget-object v12, p3, v21

    .line 472
    .local v12, password:Ljava/lang/String;
    const/16 v21, 0x2

    aget-object v21, p3, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 474
    .local v19, status:I
    const/16 v21, 0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    .line 475
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 476
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/server/DirEncryptServiceHelper;->mPassword:Ljava/lang/String;

    .line 477
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DirEncryptServiceHelper;->handlePendingSDBatch()Z

    .line 498
    .end local v12           #password:Ljava/lang/String;
    .end local v19           #status:I
    :cond_1
    :goto_2
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    goto :goto_0

    .line 757
    :catchall_0
    move-exception v21

    monitor-exit v22
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v21

    .line 480
    .restart local v12       #password:Ljava/lang/String;
    .restart local v19       #status:I
    :cond_2
    :try_start_1
    const-string v21, "unable to save DEK"

    invoke-static/range {v21 .. v21}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 481
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 483
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mPendingDMCheck:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/dirEncryption/DirEncryptionWrapper;->getVolumeState()Ljava/lang/String;

    move-result-object v18

    .line 485
    .local v18, state:Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DirEncryptServiceHelper;->initializeBatchVariable()V

    .line 486
    const-string v21, "unmounted"

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_3

    const-string v21, "nofs"

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_3

    const-string v21, "unmountable"

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 490
    :cond_3
    const/16 v21, 0xc

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/dirEncryption/DirEncryptionWrapper;->getExternalSdPath()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    goto :goto_2

    .line 496
    .end local v12           #password:Ljava/lang/String;
    .end local v18           #state:Ljava/lang/String;
    .end local v19           #status:I
    :cond_4
    const-string v21, "RESP_PWD extra data recvd, please fix!!"

    invoke-static/range {v21 .. v21}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    goto :goto_2

    .line 503
    :pswitch_2
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v21, v0

    const/16 v23, 0x2

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_6

    .line 504
    const/16 v21, 0x1

    aget-object v21, p3, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 506
    .restart local v19       #status:I
    const/16 v21, 0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_5

    .line 508
    const-string v21, "Unable to update DEK"

    invoke-static/range {v21 .. v21}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 509
    const/16 v21, 0x2

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 518
    .end local v19           #status:I
    :goto_3
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    goto/16 :goto_0

    .line 511
    .restart local v19       #status:I
    :cond_5
    const-string v21, "DEK successfully updated"

    invoke-static/range {v21 .. v21}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 512
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    goto :goto_3

    .line 515
    .end local v19           #status:I
    :cond_6
    const-string v21, "RESP_PWD extra data recvd, please fix!!"

    invoke-static/range {v21 .. v21}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    goto :goto_3

    .line 522
    :pswitch_3
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v21, v0

    const/16 v23, 0x2

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_8

    .line 523
    const/16 v21, 0x1

    aget-object v21, p3, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 525
    .restart local v19       #status:I
    const/16 v21, 0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_7

    .line 527
    const-string v21, "Unable to delete DEK"

    invoke-static/range {v21 .. v21}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 528
    const/16 v21, 0x3

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 537
    .end local v19           #status:I
    :goto_4
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    goto/16 :goto_0

    .line 530
    .restart local v19       #status:I
    :cond_7
    const-string v21, "DEK successfully deleted"

    invoke-static/range {v21 .. v21}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/DirEncryptPrefs;->clearPrefs()V

    .line 532
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    goto :goto_4

    .line 535
    .end local v19           #status:I
    :cond_8
    const-string v21, "RESP_PWD extra data recvd, please fix!!"

    invoke-static/range {v21 .. v21}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    goto :goto_4

    .line 541
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v23, "notification"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationManager;

    .line 543
    .local v10, notificationManager:Landroid/app/NotificationManager;
    sget v21, Landroid/dirEncryption/DirEncryptionManager;->SECURITY_POLICY_NOTIFICATION_ID:I

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 544
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mWasEncryptedCard:Z

    goto/16 :goto_0

    .line 549
    .end local v10           #notificationManager:Landroid/app/NotificationManager;
    :pswitch_5
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v21, v0

    const/16 v23, 0x4

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_e

    .line 550
    const/16 v21, 0x1

    aget-object v13, p3, v21

    .line 551
    .local v13, path:Ljava/lang/String;
    const/16 v21, 0x2

    aget-object v21, p3, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 552
    .local v15, reqEnc:I
    const/16 v21, 0x3

    aget-object v19, p3, v21

    .line 554
    .local v19, status:Ljava/lang/String;
    const-string v21, "success"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_c

    .line 555
    const-string v21, "RESP_ENCRYPT success"

    invoke-static/range {v21 .. v21}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 556
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 559
    if-nez v15, :cond_9

    const/16 v21, 0x2ab

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    .line 560
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mWasEncryptedCard:Z

    .line 565
    :goto_5
    new-instance v7, Landroid/content/Intent;

    const-string v21, "android.intent.action.SDCARD_ENCRYPTION_COMPLETED"

    move-object/from16 v0, v21

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 566
    .local v7, intentEncCompleted:Landroid/content/Intent;
    const-string v23, "what"

    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v15, v0, :cond_a

    const-string v21, "encryption"

    :goto_6
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v23, "android.permission.RECEIVE_SDCARD_ENCRYPTION"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v7, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 571
    if-nez v15, :cond_b

    const/16 v21, 0x3

    :goto_7
    const-string v23, "done"

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    .line 586
    .end local v7           #intentEncCompleted:Landroid/content/Intent;
    :goto_8
    const-string v21, "dir_crypto"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "unmount"

    aput-object v25, v23, v24

    const/16 v24, 0x1

    const-string v25, "/mnt/secure/staging"

    aput-object v25, v23, v24

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/server/DirEncryptServiceHelper;->sendCommand(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 562
    :cond_9
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mWasEncryptedCard:Z

    goto :goto_5

    .line 566
    .restart local v7       #intentEncCompleted:Landroid/content/Intent;
    :cond_a
    const-string v21, "decryption"

    goto :goto_6

    .line 571
    :cond_b
    const/16 v21, 0x2

    goto :goto_7

    .line 573
    .end local v7           #intentEncCompleted:Landroid/content/Intent;
    :cond_c
    const-string v21, "RESP_ENCRYPT failed"

    invoke-static/range {v21 .. v21}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 574
    const/16 v21, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v15, v2}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    .line 575
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v15, v0, :cond_d

    .line 576
    const/16 v21, 0x5

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 581
    :goto_9
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    goto :goto_8

    .line 578
    :cond_d
    const/16 v21, 0x6

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    goto :goto_9

    .line 599
    .end local v13           #path:Ljava/lang/String;
    .end local v15           #reqEnc:I
    .end local v19           #status:Ljava/lang/String;
    :cond_e
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "RESP_ENCRYPT extra data recvd["

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v23, "], please fix!!"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 604
    :pswitch_6
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v21, v0

    const/16 v23, 0x3

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_f

    .line 605
    const/16 v21, 0x1

    aget-object v21, p3, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 606
    .restart local v15       #reqEnc:I
    const/16 v21, 0x2

    aget-object v21, p3, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 608
    .local v14, percentage:I
    const/16 v21, 0x4

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, ""

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v15, v2}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 611
    .end local v14           #percentage:I
    .end local v15           #reqEnc:I
    :cond_f
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "RESP_ENCRYPT extra data recvd["

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v23, "], please fix!!"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 617
    :pswitch_7
    const/4 v15, 0x0

    .line 618
    .restart local v15       #reqEnc:I
    const/16 v16, 0x0

    .line 619
    .local v16, reqFullEnc:I
    const/4 v5, 0x0

    .line 620
    .local v5, excludeMedia:I
    const/4 v4, 0x0

    .line 621
    .local v4, encType:I
    const/4 v9, 0x0

    .line 622
    .local v9, needed:I
    const/16 v20, 0x0

    .line 624
    .local v20, total:I
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v21, v0

    const/16 v23, 0x8

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_10

    .line 625
    const/16 v21, 0x1

    aget-object v13, p3, v21

    .line 626
    .restart local v13       #path:Ljava/lang/String;
    const/16 v21, 0x2

    aget-object v21, p3, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 627
    const/16 v21, 0x3

    aget-object v21, p3, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 628
    const/16 v21, 0x4

    aget-object v21, p3, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 629
    const/16 v21, 0x5

    aget-object v21, p3, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 630
    const/16 v21, 0x6

    aget-object v21, p3, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 631
    const/16 v21, 0x7

    aget-object v21, p3, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 633
    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/server/DirEncryptServiceHelper;->mErrAdditionalSpace:I

    .line 634
    const/16 v21, 0x4

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 635
    const/16 v21, 0x5

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, ""

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v4, v2}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    .line 650
    .end local v13           #path:Ljava/lang/String;
    :goto_a
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 651
    if-nez v15, :cond_11

    const/16 v21, 0x3

    :goto_b
    const-string v23, "free"

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 637
    :cond_10
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "RESP_PRESCAN_FULL_ERR extra data recvd["

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v23, "], please fix!!"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    goto :goto_a

    .line 651
    :cond_11
    const/16 v21, 0x2

    goto :goto_b

    .line 656
    .end local v4           #encType:I
    .end local v5           #excludeMedia:I
    .end local v9           #needed:I
    .end local v15           #reqEnc:I
    .end local v16           #reqFullEnc:I
    .end local v20           #total:I
    :pswitch_8
    const/4 v11, -0x1

    .line 657
    .local v11, operation:I
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v21, v0

    const/16 v23, 0x3

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_13

    .line 658
    const/16 v21, 0x1

    aget-object v13, p3, v21

    .line 659
    .restart local v13       #path:Ljava/lang/String;
    const/16 v21, 0x2

    aget-object v21, p3, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 661
    .restart local v15       #reqEnc:I
    const/16 v21, 0x7

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 662
    const/16 v21, 0x3

    const-string v23, ""

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v15, v2}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    .line 664
    if-nez v15, :cond_12

    const/4 v11, 0x3

    .line 682
    .end local v13           #path:Ljava/lang/String;
    .end local v15           #reqEnc:I
    :goto_c
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 683
    const-string v21, "free"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v11, v1}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 664
    .restart local v13       #path:Ljava/lang/String;
    .restart local v15       #reqEnc:I
    :cond_12
    const/4 v11, 0x2

    goto :goto_c

    .line 666
    .end local v13           #path:Ljava/lang/String;
    .end local v15           #reqEnc:I
    :cond_13
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v21, v0

    const/16 v23, 0x4

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_15

    .line 667
    const/16 v21, 0x1

    aget-object v13, p3, v21

    .line 668
    .restart local v13       #path:Ljava/lang/String;
    const/16 v21, 0x3

    aget-object v21, p3, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 670
    .local v19, status:I
    const/16 v21, 0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_14

    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper$AppliedPolicies;->setPoliciesApplied()Z

    move-result v21

    if-eqz v21, :cond_14

    .line 671
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 672
    const/16 v21, 0x2

    const/16 v23, 0x1

    const-string v24, "success"

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    .line 677
    :goto_d
    const/4 v11, 0x2

    .line 678
    goto :goto_c

    .line 674
    :cond_14
    const/16 v21, 0x7

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 675
    const/16 v21, 0x2

    const/16 v23, 0x1

    const-string v24, ""

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    goto :goto_d

    .line 679
    .end local v13           #path:Ljava/lang/String;
    .end local v19           #status:I
    :cond_15
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "RESP_MOUNT extra data recvd["

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v23, "], please fix!!"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 687
    .end local v11           #operation:I
    :pswitch_9
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v21, v0

    const/16 v23, 0x2

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_19

    .line 688
    const/16 v21, 0x1

    aget-object v21, p3, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 689
    .restart local v19       #status:I
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 691
    const/16 v21, 0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_17

    .line 692
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mWasEncryptedCard:Z

    .line 693
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DirEncryptServiceHelper;->getStorageCardEncryptionInternal()I

    move-result v21

    const/16 v23, 0x3

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_16

    .line 694
    new-instance v6, Landroid/content/Intent;

    const-string v21, "android.app.action.START_SDCARD_ENCRYPTION"

    move-object/from16 v0, v21

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 695
    .local v6, intent:Landroid/content/Intent;
    const/high16 v21, 0x1040

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 698
    new-instance v8, Landroid/content/Intent;

    const-string v21, "android.intent.action.SDCARD_ENCRYPTION_REQUIRED"

    move-object/from16 v0, v21

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 699
    .local v8, intentEncRequired:Landroid/content/Intent;
    const-string v21, "required"

    const-string v23, "decryption"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v23, "android.permission.RECEIVE_SDCARD_ENCRYPTION"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v8, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 703
    .end local v6           #intent:Landroid/content/Intent;
    .end local v8           #intentEncRequired:Landroid/content/Intent;
    :cond_16
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/dirEncryption/DirEncryptionWrapper;->getVolumeState()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->doWorkForUSBState(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 707
    :cond_17
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DirEncryptServiceHelper;->getStorageCardEncryptionInternal()I

    move-result v21

    const/16 v23, 0x2

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_18

    .line 708
    new-instance v6, Landroid/content/Intent;

    const-string v21, "android.app.action.START_SDCARD_ENCRYPTION"

    move-object/from16 v0, v21

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 709
    .restart local v6       #intent:Landroid/content/Intent;
    const/high16 v21, 0x1040

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 710
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 712
    new-instance v8, Landroid/content/Intent;

    const-string v21, "android.intent.action.SDCARD_ENCRYPTION_REQUIRED"

    move-object/from16 v0, v21

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 713
    .restart local v8       #intentEncRequired:Landroid/content/Intent;
    const-string v21, "required"

    const-string v23, "encryption"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 714
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v23, "android.permission.RECEIVE_SDCARD_ENCRYPTION"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v8, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 718
    .end local v6           #intent:Landroid/content/Intent;
    .end local v8           #intentEncRequired:Landroid/content/Intent;
    :cond_18
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 719
    const/16 v21, 0x3

    const-string v23, "done"

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    .line 720
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mWasEncryptedCard:Z

    goto/16 :goto_0

    .line 724
    .end local v19           #status:I
    :cond_19
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "RESP_ENC_META_CHECK extra data recvd["

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v23, "], please fix!!"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 725
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 726
    const/16 v21, 0x3

    const-string v23, "free"

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 732
    :pswitch_a
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v21, v0

    const/16 v23, 0x2

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    .line 733
    const/16 v21, 0x1

    aget-object v21, p3, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 734
    .restart local v19       #status:I
    const/16 v17, 0x1

    .line 735
    .local v17, ret:Z
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mLabel:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/dirEncryption/DirEncryptionWrapper;->removeCryptMapper(Ljava/lang/String;)Z

    move-result v17

    .line 738
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "removeCryptMapper "

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mLabel:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 739
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DirEncryptServiceHelper;->initializeBatchVariable()V

    .line 741
    if-nez v17, :cond_1a

    .line 742
    const/16 v21, 0x0

    monitor-exit v22

    goto/16 :goto_1

    .line 744
    :cond_1a
    if-nez v19, :cond_1b

    .line 745
    const/16 v21, 0x2

    const/16 v23, 0x0

    const-string v24, "success"

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    .line 746
    const/16 v21, 0xc

    const-string v23, "batch_done"

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 748
    :cond_1b
    const/16 v21, 0x2

    const/16 v23, 0x0

    const/16 v24, 0x1

    aget-object v24, p3, v24

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    .line 749
    const/16 v21, 0xc

    const-string v23, "batch_fail"

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 467
    nop

    :pswitch_data_0
    .packed-switch 0x2a8
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_4
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public onStorageAskPermission(Ljava/lang/String;Ljava/lang/String;)I
    .locals 9
    .parameter "path"
    .parameter "with"

    .prologue
    const/16 v2, -0x64

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 817
    const/4 v0, 0x0

    .line 819
    .local v0, encryptPath:[Ljava/lang/String;
    const/16 v1, -0x64

    .line 821
    .local v1, nRet:I
    const-string v3, "DirEncryptService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " onStorageAskPermission Begin! path="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_2

    .line 825
    :cond_0
    const-string v3, "DirEncryptService"

    const-string v4, " onStorageAskPermission End! (Path is null) OperationCommandOverPass!"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    :cond_1
    :goto_0
    return v2

    .line 828
    :cond_2
    const-string v3, "/mnt/sdcard"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 830
    iget-boolean v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mBatchDecrypting:Z

    if-ne v2, v6, :cond_3

    .line 831
    const-string v2, "DirEncryptService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " onStorageAskPermission End! mBatchDecrypting="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mBatchDecrypting:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    const/4 v2, -0x6

    goto :goto_0

    .line 835
    :cond_3
    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v2}, Landroid/dirEncryption/DirEncryptionWrapper;->isSecure()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v2}, Landroid/dirEncryption/DirEncryptionWrapper;->getKeyguardStoredPasswordQuality()I

    move-result v2

    const/high16 v3, 0x1

    if-le v2, v3, :cond_5

    .line 838
    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mPassword:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mPassword:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v6, :cond_4

    .line 839
    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    iget-object v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mPassword:Ljava/lang/String;

    invoke-virtual {v2, v3, p1}, Landroid/dirEncryption/DirEncryptionWrapper;->getDMPathIfEncryptedSD(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 848
    :goto_1
    if-eqz v0, :cond_6

    .line 850
    const/4 v1, -0x6

    .line 851
    iput-boolean v7, p0, Lcom/android/server/DirEncryptServiceHelper;->mPendingDMCheck:Z

    .line 852
    iput-boolean v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mBatchDecrypting:Z

    .line 853
    aget-object v2, v0, v7

    iput-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mNormalPath:Ljava/lang/String;

    .line 854
    aget-object v2, v0, v6

    iput-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mCryptPath:Ljava/lang/String;

    .line 855
    const/4 v2, 0x2

    aget-object v2, v0, v2

    iput-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mLabel:Ljava/lang/String;

    .line 858
    const/4 v2, 0x7

    invoke-direct {p0, v2, v7, v8}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    .line 872
    :goto_2
    const-string v2, "DirEncryptService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " onStorageAskPermission End!mPendingDMCheck="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mPendingDMCheck:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mNormalPath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mNormalPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mCryptPath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mCryptPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mLabel="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mLabel:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", nRet="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 875
    goto/16 :goto_0

    .line 842
    :cond_4
    iput-boolean v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mPendingDMCheck:Z

    goto :goto_1

    .line 845
    :cond_5
    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    const-string v3, ""

    invoke-virtual {v2, v3, p1}, Landroid/dirEncryption/DirEncryptionWrapper;->getDMPathIfEncryptedSD(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 860
    :cond_6
    iget-boolean v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mPendingDMCheck:Z

    if-ne v2, v6, :cond_7

    .line 861
    const/4 v1, -0x6

    .line 862
    iput-object p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mPendingMountPath:Ljava/lang/String;

    .line 863
    iput-boolean v7, p0, Lcom/android/server/DirEncryptServiceHelper;->mBatchDecrypting:Z

    .line 864
    iput-object v8, p0, Lcom/android/server/DirEncryptServiceHelper;->mNormalPath:Ljava/lang/String;

    .line 865
    iput-object v8, p0, Lcom/android/server/DirEncryptServiceHelper;->mCryptPath:Ljava/lang/String;

    .line 866
    iput-object v8, p0, Lcom/android/server/DirEncryptServiceHelper;->mLabel:Ljava/lang/String;

    goto :goto_2

    .line 868
    :cond_7
    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->initializeBatchVariable()V

    .line 869
    const/16 v1, -0x64

    goto :goto_2
.end method

.method ready()V
    .locals 1

    .prologue
    .line 376
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 377
    return-void
.end method

.method public registerListener(Landroid/os/storage/IDirEncryptServiceListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 392
    iget-object v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 393
    :try_start_0
    new-instance v0, Lcom/android/server/DirEncryptServiceHelper$DirEncryptServiceBinderListener;

    invoke-direct {v0, p0, p1}, Lcom/android/server/DirEncryptServiceHelper$DirEncryptServiceBinderListener;-><init>(Lcom/android/server/DirEncryptServiceHelper;Landroid/os/storage/IDirEncryptServiceListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    .local v0, bl:Lcom/android/server/DirEncryptServiceHelper$DirEncryptServiceBinderListener;
    :try_start_1
    invoke-interface {p1}, Landroid/os/storage/IDirEncryptServiceListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v0, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 396
    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 400
    :goto_0
    :try_start_2
    monitor-exit v3

    .line 401
    return-void

    .line 397
    :catch_0
    move-exception v1

    .line 398
    .local v1, rex:Landroid/os/RemoteException;
    const-string v2, "Failed to link to listener death"

    invoke-static {v2}, Lcom/android/server/DirEncryptServiceHelper;->logE(Ljava/lang/String;)V

    goto :goto_0

    .line 400
    .end local v0           #bl:Lcom/android/server/DirEncryptServiceHelper$DirEncryptServiceBinderListener;
    .end local v1           #rex:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public setExecParams(Lcom/android/server/NativeDaemonConnector;Landroid/os/Handler;)V
    .locals 0
    .parameter "connector"
    .parameter "handler"

    .prologue
    .line 380
    iput-object p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mConnector:Lcom/android/server/NativeDaemonConnector;

    .line 381
    iput-object p2, p0, Lcom/android/server/DirEncryptServiceHelper;->mHandler:Landroid/os/Handler;

    .line 384
    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper$AppliedPolicies;->setPoliciesRemoved()Z

    .line 385
    return-void
.end method

.method protected showPopup()V
    .locals 3

    .prologue
    .line 167
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const v2, 0x103031c

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 169
    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v1, 0x10406d5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x10406d3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/server/DirEncryptServiceHelper$3;

    invoke-direct {v2, p0}, Lcom/android/server/DirEncryptServiceHelper$3;-><init>(Lcom/android/server/DirEncryptServiceHelper;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    new-instance v2, Lcom/android/server/DirEncryptServiceHelper$2;

    invoke-direct {v2, p0}, Lcom/android/server/DirEncryptServiceHelper$2;-><init>(Lcom/android/server/DirEncryptServiceHelper;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 187
    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mDecryptDialog:Landroid/app/AlertDialog;

    .line 189
    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mDecryptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 190
    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mDecryptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 191
    return-void
.end method

.method public unmountSDCardByAdmin()V
    .locals 4

    .prologue
    .line 962
    const-string v2, "Unmount SD Card By Admin"

    invoke-static {v2}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 964
    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v2}, Landroid/dirEncryption/DirEncryptionWrapper;->getVolumeState()Ljava/lang/String;

    move-result-object v1

    .line 965
    .local v1, state:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 966
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SD card  : State = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / Admin policy : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->isAdminApplied()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / Encrypted : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->isEncryptionApplied()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 967
    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->isAdminApplied()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->isEncryptionApplied()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 972
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mUnnmountRequested:Z

    .line 974
    :try_start_0
    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v2}, Landroid/dirEncryption/DirEncryptionWrapper;->unmountVolume()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 980
    :cond_0
    :goto_0
    return-void

    .line 975
    :catch_0
    move-exception v0

    .line 976
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public unregisterListener(Landroid/os/storage/IDirEncryptServiceListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 404
    iget-object v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 405
    :try_start_0
    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DirEncryptServiceHelper$DirEncryptServiceBinderListener;

    .line 406
    .local v0, bl:Lcom/android/server/DirEncryptServiceHelper$DirEncryptServiceBinderListener;
    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper$DirEncryptServiceBinderListener;->mListener:Landroid/os/storage/IDirEncryptServiceListener;

    if-ne v2, p1, :cond_0

    .line 407
    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 408
    monitor-exit v3

    .line 412
    .end local v0           #bl:Lcom/android/server/DirEncryptServiceHelper$DirEncryptServiceBinderListener;
    :goto_0
    return-void

    .line 411
    :cond_1
    monitor-exit v3

    goto :goto_0

    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

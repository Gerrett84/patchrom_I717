.class public Lcom/sec/android/app/fm/NotificationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NotificationReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/fm/NotificationReceiver$MyHandler;
    }
.end annotation


# static fields
.field private static CODE_REMOVE_NOTIFICATION:I


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mBusy:Z

.field private mConfigurationChanged:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mCurrentChannel:J

.field private mHandler:Landroid/os/Handler;

.field mListener:Lcom/samsung/media/fmradio/FMEventListener;

.field private mMusicCommandRec:Landroid/content/BroadcastReceiver;

.field private mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

.field protected mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private toast:Landroid/widget/Toast;

.field private toastAirplane:Landroid/widget/Toast;

.field private toastBatteryLow:Landroid/widget/Toast;

.field private toastError:Landroid/widget/Toast;

.field private toastNotRunning:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x1

    sput v0, Lcom/sec/android/app/fm/NotificationReceiver;->CODE_REMOVE_NOTIFICATION:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 122
    new-instance v0, Lcom/sec/android/app/fm/NotificationReceiver$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/NotificationReceiver$1;-><init>(Lcom/sec/android/app/fm/NotificationReceiver;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mMusicCommandRec:Landroid/content/BroadcastReceiver;

    .line 159
    new-instance v0, Lcom/sec/android/app/fm/NotificationReceiver$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/NotificationReceiver$2;-><init>(Lcom/sec/android/app/fm/NotificationReceiver;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mConfigurationChanged:Landroid/content/BroadcastReceiver;

    .line 176
    new-instance v0, Lcom/sec/android/app/fm/NotificationReceiver$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/NotificationReceiver$3;-><init>(Lcom/sec/android/app/fm/NotificationReceiver;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mListener:Lcom/samsung/media/fmradio/FMEventListener;

    .line 819
    iput-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toast:Landroid/widget/Toast;

    .line 821
    iput-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toastError:Landroid/widget/Toast;

    .line 823
    iput-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toastAirplane:Landroid/widget/Toast;

    .line 825
    iput-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toastNotRunning:Landroid/widget/Toast;

    .line 827
    iput-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toastBatteryLow:Landroid/widget/Toast;

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/high16 v4, 0x447a

    const/4 v3, 0x0

    .line 92
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 122
    new-instance v2, Lcom/sec/android/app/fm/NotificationReceiver$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/fm/NotificationReceiver$1;-><init>(Lcom/sec/android/app/fm/NotificationReceiver;)V

    iput-object v2, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mMusicCommandRec:Landroid/content/BroadcastReceiver;

    .line 159
    new-instance v2, Lcom/sec/android/app/fm/NotificationReceiver$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/fm/NotificationReceiver$2;-><init>(Lcom/sec/android/app/fm/NotificationReceiver;)V

    iput-object v2, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mConfigurationChanged:Landroid/content/BroadcastReceiver;

    .line 176
    new-instance v2, Lcom/sec/android/app/fm/NotificationReceiver$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/fm/NotificationReceiver$3;-><init>(Lcom/sec/android/app/fm/NotificationReceiver;)V

    iput-object v2, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mListener:Lcom/samsung/media/fmradio/FMEventListener;

    .line 819
    iput-object v3, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toast:Landroid/widget/Toast;

    .line 821
    iput-object v3, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toastError:Landroid/widget/Toast;

    .line 823
    iput-object v3, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toastAirplane:Landroid/widget/Toast;

    .line 825
    iput-object v3, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toastNotRunning:Landroid/widget/Toast;

    .line 827
    iput-object v3, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toastBatteryLow:Landroid/widget/Toast;

    .line 94
    :try_start_0
    iput-object p1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;

    .line 95
    iget-object v2, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mHandler:Landroid/os/Handler;

    if-nez v2, :cond_0

    .line 96
    new-instance v2, Lcom/sec/android/app/fm/NotificationReceiver$MyHandler;

    invoke-direct {v2, p0}, Lcom/sec/android/app/fm/NotificationReceiver$MyHandler;-><init>(Lcom/sec/android/app/fm/NotificationReceiver;)V

    iput-object v2, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mHandler:Landroid/os/Handler;

    .line 97
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    if-nez v2, :cond_1

    .line 98
    const-string v2, "FMPlayer"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/media/fmradio/FMPlayer;

    iput-object v2, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    .line 99
    const-string v2, "audio"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mAudioManager:Landroid/media/AudioManager;

    .line 102
    invoke-virtual {p0}, Lcom/sec/android/app/fm/NotificationReceiver;->registerMusicCommandRec()V

    .line 103
    invoke-virtual {p0}, Lcom/sec/android/app/fm/NotificationReceiver;->registerConfigurationChanged()V

    .line 104
    iget-object v2, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    iget-object v3, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mListener:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v2, v3}, Lcom/samsung/media/fmradio/FMPlayer;->setListener(Lcom/samsung/media/fmradio/FMEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :cond_1
    invoke-static {p1}, Lcom/sec/android/app/fm/MainActivity;->getCurrentFreq(Landroid/content/Context;)F

    move-result v1

    .line 117
    .local v1, freq:F
    mul-float v2, v1, v4

    float-to-long v2, v2

    iput-wide v2, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mCurrentChannel:J

    .line 120
    :goto_0
    return-void

    .line 111
    .end local v1           #freq:F
    :catch_0
    move-exception v0

    .line 113
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v2, " NotificationReceiver "

    const-string v3, "NotificationReceiver init - exception"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    invoke-static {p1}, Lcom/sec/android/app/fm/MainActivity;->getCurrentFreq(Landroid/content/Context;)F

    move-result v1

    .line 117
    .restart local v1       #freq:F
    mul-float v2, v1, v4

    float-to-long v2, v2

    iput-wide v2, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mCurrentChannel:J

    goto :goto_0

    .line 116
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #freq:F
    :catchall_0
    move-exception v2

    invoke-static {p1}, Lcom/sec/android/app/fm/MainActivity;->getCurrentFreq(Landroid/content/Context;)F

    move-result v1

    .line 117
    .restart local v1       #freq:F
    mul-float v3, v1, v4

    float-to-long v3, v3

    iput-wide v3, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mCurrentChannel:J

    .line 119
    throw v2
.end method

.method private RefreshNotification()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 758
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "[NotificationReceiver] RefreshNotification"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 760
    iget-object v3, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mHandler:Landroid/os/Handler;

    if-eqz v3, :cond_0

    .line 761
    iget-object v3, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mHandler:Landroid/os/Handler;

    sget v4, Lcom/sec/android/app/fm/NotificationReceiver;->CODE_REMOVE_NOTIFICATION:I

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 763
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/fm/NotificationReceiver;->getCurrentChannel()F

    move-result v1

    .line 767
    .local v1, mFreq:F
    const/high16 v3, -0x4080

    cmpl-float v3, v1, v3

    if-eqz v3, :cond_6

    .line 768
    const-string v0, ""

    .line 769
    .local v0, curChName:Ljava/lang/String;
    sget-object v3, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v3, v1}, Lcom/sec/android/app/fm/MainActivity;->getChannel(F)Lcom/sec/android/app/fm/data/Channel;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 770
    sget-object v3, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v3, v1}, Lcom/sec/android/app/fm/MainActivity;->getChannel(F)Lcom/sec/android/app/fm/data/Channel;

    move-result-object v3

    iget-object v0, v3, Lcom/sec/android/app/fm/data/Channel;->mFreqName:Ljava/lang/String;

    .line 772
    :cond_1
    sget-object v3, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    if-eqz v3, :cond_2

    sget-object v3, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/fm/MainActivity;->isResumed()Z

    move-result v3

    if-nez v3, :cond_4

    .line 773
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 774
    .local v2, strBuilder:Ljava/lang/StringBuilder;
    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 775
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 776
    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 778
    :cond_3
    invoke-static {}, Lcom/sec/android/app/fm/FMRadioFeature;->GetFrequencySpace()I

    move-result v3

    const/16 v4, 0x32

    if-ne v3, v4, :cond_5

    .line 779
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%.2f"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 783
    :goto_0
    const-string v3, " MHz"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 784
    iget-object v3, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/app/fm/FMNotificationManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/fm/FMNotificationManager;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/sec/android/app/fm/FMNotificationManager;->updatePlayButtonState(Z)V

    .line 785
    iget-object v3, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/app/fm/FMNotificationManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/fm/FMNotificationManager;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/fm/FMNotificationManager;->showNotification(Ljava/lang/String;)V

    .line 791
    .end local v0           #curChName:Ljava/lang/String;
    .end local v2           #strBuilder:Ljava/lang/StringBuilder;
    :cond_4
    :goto_1
    return-void

    .line 781
    .restart local v0       #curChName:Ljava/lang/String;
    .restart local v2       #strBuilder:Ljava/lang/StringBuilder;
    :cond_5
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 788
    .end local v0           #curChName:Ljava/lang/String;
    .end local v2           #strBuilder:Ljava/lang/StringBuilder;
    :cond_6
    iget-object v3, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/app/fm/FMNotificationManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/fm/FMNotificationManager;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/sec/android/app/fm/FMNotificationManager;->updatePlayButtonState(Z)V

    .line 789
    iget-object v3, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/app/fm/FMNotificationManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/fm/FMNotificationManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/app/fm/FMNotificationManager;->showNotification(Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/sec/android/app/fm/NotificationReceiver;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 35
    sget v0, Lcom/sec/android/app/fm/NotificationReceiver;->CODE_REMOVE_NOTIFICATION:I

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/fm/NotificationReceiver;)Lcom/samsung/media/fmradio/FMPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/fm/NotificationReceiver;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/sec/android/app/fm/NotificationReceiver;->RefreshNotification()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/fm/NotificationReceiver;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/sec/android/app/fm/NotificationReceiver;->sendONBroadcast()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/fm/NotificationReceiver;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/sec/android/app/fm/NotificationReceiver;->getCurrentChannel()F

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/fm/NotificationReceiver;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/fm/NotificationReceiver;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/fm/NotificationReceiver;Landroid/media/AudioManager;)Landroid/media/AudioManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mAudioManager:Landroid/media/AudioManager;

    return-object p1
.end method

.method static synthetic access$700(Lcom/sec/android/app/fm/NotificationReceiver;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/sec/android/app/fm/NotificationReceiver;->sendOFFBroadcast()V

    return-void
.end method

.method static synthetic access$802(Lcom/sec/android/app/fm/NotificationReceiver;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-wide p1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mCurrentChannel:J

    return-wide p1
.end method

.method static synthetic access$900(Lcom/sec/android/app/fm/NotificationReceiver;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mBusy:Z

    return v0
.end method

.method static synthetic access$902(Lcom/sec/android/app/fm/NotificationReceiver;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mBusy:Z

    return p1
.end method

.method private error(Lcom/samsung/media/fmradio/FMPlayerException;)V
    .locals 5
    .parameter "e"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 832
    invoke-virtual {p1}, Lcom/samsung/media/fmradio/FMPlayerException;->getCode()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 833
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->toastTvout:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 834
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0018

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0062

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/fm/MainActivity;->toastTvout:Landroid/widget/Toast;

    .line 839
    :cond_0
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->toastTvout:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 861
    :goto_0
    return-void

    .line 840
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/media/fmradio/FMPlayerException;->getCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 841
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toast:Landroid/widget/Toast;

    if-nez v0, :cond_2

    .line 842
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toast:Landroid/widget/Toast;

    .line 843
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toast:Landroid/widget/Toast;

    const v1, 0x7f0a003e

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    .line 844
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 845
    :cond_3
    invoke-virtual {p1}, Lcom/samsung/media/fmradio/FMPlayerException;->getCode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    .line 846
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toastAirplane:Landroid/widget/Toast;

    if-nez v0, :cond_4

    .line 847
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toastAirplane:Landroid/widget/Toast;

    .line 848
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toastAirplane:Landroid/widget/Toast;

    const v1, 0x7f0a0052

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    .line 849
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toastAirplane:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 850
    :cond_5
    invoke-virtual {p1}, Lcom/samsung/media/fmradio/FMPlayerException;->getCode()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_7

    .line 851
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toastBatteryLow:Landroid/widget/Toast;

    if-nez v0, :cond_6

    .line 852
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toastBatteryLow:Landroid/widget/Toast;

    .line 853
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toastBatteryLow:Landroid/widget/Toast;

    const v1, 0x7f0a005d

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    .line 854
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toastBatteryLow:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 856
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toastError:Landroid/widget/Toast;

    if-nez v0, :cond_8

    .line 857
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;

    const/high16 v1, 0x7f0a

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toastError:Landroid/widget/Toast;

    .line 859
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toastError:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private fire(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 923
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 928
    :goto_0
    return-void

    .line 925
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 927
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[NotificationReceiver] broadcast sent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getCurrentChannel()F
    .locals 6

    .prologue
    .line 433
    const/high16 v1, -0x4080

    .line 435
    .local v1, freq:F
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v4}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 436
    iget-object v4, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v4}, Lcom/samsung/media/fmradio/FMPlayer;->getCurrentChannel()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 437
    .local v2, freqLong:J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 438
    long-to-float v4, v2

    const/high16 v5, 0x447a

    div-float v1, v4, v5

    .line 448
    .end local v2           #freqLong:J
    :cond_0
    :goto_0
    return v1

    .line 441
    :catch_0
    move-exception v0

    .line 443
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 444
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method private sendOFFBroadcast()V
    .locals 3

    .prologue
    .line 910
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Sending off broadcast"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 911
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.fm.player.status.off"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 912
    .local v0, intent:Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/sec/android/app/fm/NotificationReceiver;->fire(Landroid/content/Intent;)V

    .line 913
    return-void
.end method

.method private sendONBroadcast()V
    .locals 3

    .prologue
    .line 917
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Sending on broadcast"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 918
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.fm.player.status.on"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 919
    .local v0, intent:Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/sec/android/app/fm/NotificationReceiver;->fire(Landroid/content/Intent;)V

    .line 920
    return-void
.end method

.method private unRegisterMusicCommandRec()V
    .locals 2

    .prologue
    .line 801
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mMusicCommandRec:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 803
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Notification Rec - music command reciever un-registered"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 804
    return-void
.end method

.method private unregisterConfigurationChanged()V
    .locals 2

    .prologue
    .line 814
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mConfigurationChanged:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 816
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Notification Rec - music command reciever un-registered"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 817
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/high16 v4, 0x447a

    .line 457
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 458
    iput-object p1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 460
    new-instance v0, Lcom/sec/android/app/fm/NotificationReceiver$MyHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/NotificationReceiver$MyHandler;-><init>(Lcom/sec/android/app/fm/NotificationReceiver;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mHandler:Landroid/os/Handler;

    .line 462
    :cond_1
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 466
    const-string v2, "com.android.fm.player"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 470
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/fm/MainActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 471
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 472
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 473
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 475
    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 476
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 755
    :cond_2
    :goto_0
    return-void

    .line 484
    :cond_3
    const-string v2, "com.android.fm.player.on"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 486
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    if-nez v0, :cond_4

    .line 487
    const-string v0, "FMPlayer"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/media/fmradio/FMPlayer;

    iput-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    .line 488
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    iget-object v2, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mListener:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v0, v2}, Lcom/samsung/media/fmradio/FMPlayer;->setListener(Lcom/samsung/media/fmradio/FMEventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 494
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z
    :try_end_1
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 498
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v1}, Lcom/samsung/media/fmradio/FMPlayer;->isScanning()Z

    move-result v1

    if-nez v1, :cond_2

    .line 501
    if-nez v0, :cond_2

    .line 502
    invoke-static {p1}, Lcom/sec/android/app/fm/MainActivity;->isUsedVoice(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 505
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->on()Z

    .line 506
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/fm/FMNotificationManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/fm/FMNotificationManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/FMNotificationManager;->updatePlayButtonState(Z)V

    .line 508
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->setRDS(Lcom/samsung/media/fmradio/FMPlayer;Landroid/content/Context;)V

    .line 509
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->setAF(Lcom/samsung/media/fmradio/FMPlayer;Landroid/content/Context;)V

    .line 511
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/fm/MainActivity;->setSoundSettings(Lcom/samsung/media/fmradio/FMPlayer;Landroid/media/AudioManager;Landroid/content/Context;)V

    .line 516
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mAudioManager:Landroid/media/AudioManager;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 518
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notification Rec - Got the volume from audiomanager:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 521
    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mAudioManager:Landroid/media/AudioManager;

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 526
    iget-wide v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mCurrentChannel:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    .line 527
    sget v0, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ:F

    mul-float/2addr v0, v4

    float-to-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mCurrentChannel:J

    .line 532
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    iget-wide v1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mCurrentChannel:J

    invoke-virtual {v0, v1, v2}, Lcom/samsung/media/fmradio/FMPlayer;->tune(J)Z

    .line 534
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mHandler:Landroid/os/Handler;

    sget v1, Lcom/sec/android/app/fm/NotificationReceiver;->CODE_REMOVE_NOTIFICATION:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 535
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-static {v0, p1}, Lcom/sec/android/app/fm/MainActivity;->checkSettingAlarm(Lcom/samsung/media/fmradio/FMPlayer;Landroid/content/Context;)V
    :try_end_2
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 537
    :catch_0
    move-exception v0

    .line 538
    :try_start_3
    invoke-direct {p0, v0}, Lcom/sec/android/app/fm/NotificationReceiver;->error(Lcom/samsung/media/fmradio/FMPlayerException;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 748
    :catch_1
    move-exception v0

    .line 750
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 751
    :catch_2
    move-exception v0

    goto/16 :goto_0

    .line 495
    :catch_3
    move-exception v0

    .line 496
    :try_start_5
    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayerException;->printStackTrace()V

    move v0, v1

    goto/16 :goto_1

    .line 528
    :cond_6
    iget-wide v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mCurrentChannel:J

    sget v2, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_7

    iget-wide v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mCurrentChannel:J

    sget v2, Lcom/sec/android/app/fm/MainActivity;->MAX_FREQ:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    .line 530
    :cond_7
    sget v0, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ:F

    mul-float/2addr v0, v4

    float-to-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mCurrentChannel:J
    :try_end_5
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 542
    :cond_8
    :try_start_6
    const-string v1, "com.android.fm.player.off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 543
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    if-nez v0, :cond_9

    .line 544
    const-string v0, "FMPlayer"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/media/fmradio/FMPlayer;

    iput-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    .line 545
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mListener:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v0, v1}, Lcom/samsung/media/fmradio/FMPlayer;->setListener(Lcom/samsung/media/fmradio/FMEventListener;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 549
    :cond_9
    :try_start_7
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 550
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->cancelSeek()V

    .line 551
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->isScanning()Z

    move-result v0

    if-nez v0, :cond_a

    .line 552
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->getCurrentChannel()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mCurrentChannel:J

    .line 555
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/fm/FMNotificationManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/fm/FMNotificationManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/FMNotificationManager;->updatePlayButtonState(Z)V

    .line 556
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->off()Z

    .line 557
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "power off done"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_7
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    .line 559
    :catch_4
    move-exception v0

    .line 561
    :try_start_8
    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayerException;->printStackTrace()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_0

    .line 562
    :catch_5
    move-exception v0

    goto/16 :goto_0

    .line 568
    :cond_b
    :try_start_9
    const-string v1, "com.android.fm.player.tune.next"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 569
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    if-nez v0, :cond_c

    .line 570
    const-string v0, "FMPlayer"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/media/fmradio/FMPlayer;

    iput-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    .line 571
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mListener:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v0, v1}, Lcom/samsung/media/fmradio/FMPlayer;->setListener(Lcom/samsung/media/fmradio/FMEventListener;)V

    .line 574
    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v0

    if-nez v0, :cond_e

    .line 575
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toastNotRunning:Landroid/widget/Toast;

    if-nez v0, :cond_d

    .line 576
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toastNotRunning:Landroid/widget/Toast;

    .line 577
    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toastNotRunning:Landroid/widget/Toast;

    const v1, 0x7f0a0017

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    .line 578
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toastNotRunning:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 582
    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->isScanning()Z

    move-result v0

    if-nez v0, :cond_2

    .line 585
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    if-eqz v0, :cond_f

    .line 586
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/MainActivity;->showSeekingText()V

    .line 588
    :cond_f
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/fm/NotificationReceiver$4;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/fm/NotificationReceiver$4;-><init>(Lcom/sec/android/app/fm/NotificationReceiver;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 622
    :cond_10
    const-string v1, "com.android.fm.player.tune.prev"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 623
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    if-nez v0, :cond_11

    .line 624
    const-string v0, "FMPlayer"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/media/fmradio/FMPlayer;

    iput-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    .line 625
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mListener:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v0, v1}, Lcom/samsung/media/fmradio/FMPlayer;->setListener(Lcom/samsung/media/fmradio/FMEventListener;)V

    .line 628
    :cond_11
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v0

    if-nez v0, :cond_13

    .line 629
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toastNotRunning:Landroid/widget/Toast;

    if-nez v0, :cond_12

    .line 630
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0017

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toastNotRunning:Landroid/widget/Toast;

    .line 632
    :cond_12
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toastNotRunning:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 636
    :cond_13
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->isScanning()Z

    move-result v0

    if-nez v0, :cond_2

    .line 640
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    if-eqz v0, :cond_14

    .line 641
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/MainActivity;->showSeekingText()V

    .line 643
    :cond_14
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/fm/NotificationReceiver$5;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/fm/NotificationReceiver$5;-><init>(Lcom/sec/android/app/fm/NotificationReceiver;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 692
    :cond_15
    const-string v1, "com.android.fm.player.tune"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 693
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    if-nez v0, :cond_16

    .line 694
    const-string v0, "FMPlayer"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/media/fmradio/FMPlayer;

    iput-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    .line 695
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mListener:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v0, v1}, Lcom/samsung/media/fmradio/FMPlayer;->setListener(Lcom/samsung/media/fmradio/FMEventListener;)V

    .line 698
    :cond_16
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->isScanning()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    move-result v0

    if-nez v0, :cond_2

    .line 703
    :try_start_a
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v0

    if-nez v0, :cond_17

    .line 704
    invoke-static {p1}, Lcom/sec/android/app/fm/MainActivity;->isUsedVoice(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 707
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->on()Z

    .line 708
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/fm/FMNotificationManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/fm/FMNotificationManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/FMNotificationManager;->updatePlayButtonState(Z)V

    .line 710
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->setRDS(Lcom/samsung/media/fmradio/FMPlayer;Landroid/content/Context;)V

    .line 711
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->setAF(Lcom/samsung/media/fmradio/FMPlayer;Landroid/content/Context;)V

    .line 713
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/fm/MainActivity;->setSoundSettings(Lcom/samsung/media/fmradio/FMPlayer;Landroid/media/AudioManager;Landroid/content/Context;)V

    .line 718
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mAudioManager:Landroid/media/AudioManager;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 720
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notification Rec - Got the volume from audiomanager:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 723
    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mAudioManager:Landroid/media/AudioManager;

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 726
    :cond_17
    const-string v0, "freq"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr v0, v4

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mCurrentChannel:J

    .line 727
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tunning to current freq:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mCurrentChannel:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 729
    iget-wide v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mCurrentChannel:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_19

    .line 730
    sget v0, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ:F

    mul-float/2addr v0, v4

    float-to-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mCurrentChannel:J

    .line 738
    :cond_18
    :goto_3
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    iget-wide v1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mCurrentChannel:J

    invoke-virtual {v0, v1, v2}, Lcom/samsung/media/fmradio/FMPlayer;->tune(J)Z

    .line 742
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mHandler:Landroid/os/Handler;

    sget v1, Lcom/sec/android/app/fm/NotificationReceiver;->CODE_REMOVE_NOTIFICATION:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_a
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_0

    .line 743
    :catch_6
    move-exception v0

    .line 744
    :try_start_b
    invoke-direct {p0, v0}, Lcom/sec/android/app/fm/NotificationReceiver;->error(Lcom/samsung/media/fmradio/FMPlayerException;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    goto/16 :goto_0

    .line 731
    :cond_19
    :try_start_c
    iget-wide v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mCurrentChannel:J

    sget v2, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1a

    iget-wide v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mCurrentChannel:J

    sget v2, Lcom/sec/android/app/fm/MainActivity;->MAX_FREQ:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_18

    .line 733
    :cond_1a
    sget v0, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ:F

    mul-float/2addr v0, v4

    float-to-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mCurrentChannel:J
    :try_end_c
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    goto :goto_3
.end method

.method protected registerConfigurationChanged()V
    .locals 3

    .prologue
    .line 807
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 808
    .local v0, intentFilter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mConfigurationChanged:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 810
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Notification Rec - music command reciever registered"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 811
    return-void
.end method

.method protected registerMusicCommandRec()V
    .locals 3

    .prologue
    .line 794
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 795
    .local v0, intentFilter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mMusicCommandRec:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 797
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Notification Rec - music command reciever registered"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 798
    return-void
.end method

.method public terminate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 934
    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    if-eqz v1, :cond_1

    .line 936
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    iget-object v2, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mListener:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v1, v2}, Lcom/samsung/media/fmradio/FMPlayer;->removeListener(Lcom/samsung/media/fmradio/FMEventListener;)V

    .line 937
    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 938
    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mHandler:Landroid/os/Handler;

    sget v2, Lcom/sec/android/app/fm/NotificationReceiver;->CODE_REMOVE_NOTIFICATION:I

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 939
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mHandler:Landroid/os/Handler;

    .line 941
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/fm/NotificationReceiver;->unRegisterMusicCommandRec()V

    .line 942
    invoke-direct {p0}, Lcom/sec/android/app/fm/NotificationReceiver;->unregisterConfigurationChanged()V

    .line 944
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "[NotificationReceiver] removing listener"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 945
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mBusy:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 954
    :cond_1
    :goto_0
    iput-object v3, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    .line 955
    return-void

    .line 946
    :catch_0
    move-exception v0

    .line 948
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 949
    :catch_1
    move-exception v1

    goto :goto_0
.end method

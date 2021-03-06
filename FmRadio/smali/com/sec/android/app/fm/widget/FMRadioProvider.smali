.class public Lcom/sec/android/app/fm/widget/FMRadioProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "FMRadioProvider.java"


# static fields
.field private static mContext:Landroid/content/Context;

.field private static mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

.field private static mToast:Landroid/widget/Toast;

.field private static offFreq:J


# instance fields
.field private final mAddImgs:[I

.field private mChannelList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/fm/data/Channel;",
            ">;"
        }
    .end annotation
.end field

.field private mFMListener:Lcom/samsung/media/fmradio/FMEventListener;

.field private final mFavClick:[I

.field private final mFreqMHzs:[I

.field private final mFreqNames:[I

.field private mInputStream:Ljava/io/ObjectInputStream;

.field private mOutputStream:Ljava/io/ObjectOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 70
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mToast:Landroid/widget/Toast;

    .line 72
    sget v0, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ:F

    const/high16 v1, 0x447a

    mul-float/2addr v0, v1

    float-to-long v0, v0

    sput-wide v0, Lcom/sec/android/app/fm/widget/FMRadioProvider;->offFreq:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0xc

    .line 37
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 74
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mFreqMHzs:[I

    .line 81
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mFreqNames:[I

    .line 88
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mAddImgs:[I

    .line 95
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mFavClick:[I

    .line 481
    new-instance v0, Lcom/sec/android/app/fm/widget/FMRadioProvider$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/widget/FMRadioProvider$1;-><init>(Lcom/sec/android/app/fm/widget/FMRadioProvider;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mFMListener:Lcom/samsung/media/fmradio/FMEventListener;

    return-void

    .line 74
    nop

    :array_0
    .array-data 0x4
        0x14t 0x1t 0x7t 0x7ft
        0x19t 0x1t 0x7t 0x7ft
        0x1et 0x1t 0x7t 0x7ft
        0x22t 0x1t 0x7t 0x7ft
        0x27t 0x1t 0x7t 0x7ft
        0x2ct 0x1t 0x7t 0x7ft
        0x31t 0x1t 0x7t 0x7ft
        0x36t 0x1t 0x7t 0x7ft
        0x3bt 0x1t 0x7t 0x7ft
        0x40t 0x1t 0x7t 0x7ft
        0x45t 0x1t 0x7t 0x7ft
        0x4at 0x1t 0x7t 0x7ft
    .end array-data

    .line 81
    :array_1
    .array-data 0x4
        0x15t 0x1t 0x7t 0x7ft
        0x1at 0x1t 0x7t 0x7ft
        0x1ft 0x1t 0x7t 0x7ft
        0x23t 0x1t 0x7t 0x7ft
        0x28t 0x1t 0x7t 0x7ft
        0x2dt 0x1t 0x7t 0x7ft
        0x32t 0x1t 0x7t 0x7ft
        0x37t 0x1t 0x7t 0x7ft
        0x3ct 0x1t 0x7t 0x7ft
        0x41t 0x1t 0x7t 0x7ft
        0x46t 0x1t 0x7t 0x7ft
        0x4bt 0x1t 0x7t 0x7ft
    .end array-data

    .line 88
    :array_2
    .array-data 0x4
        0x12t 0x1t 0x7t 0x7ft
        0x17t 0x1t 0x7t 0x7ft
        0x1ct 0x1t 0x7t 0x7ft
        0x21t 0x1t 0x7t 0x7ft
        0x25t 0x1t 0x7t 0x7ft
        0x2at 0x1t 0x7t 0x7ft
        0x2ft 0x1t 0x7t 0x7ft
        0x34t 0x1t 0x7t 0x7ft
        0x39t 0x1t 0x7t 0x7ft
        0x3et 0x1t 0x7t 0x7ft
        0x43t 0x1t 0x7t 0x7ft
        0x48t 0x1t 0x7t 0x7ft
    .end array-data

    .line 95
    :array_3
    .array-data 0x4
        0x11t 0x1t 0x7t 0x7ft
        0x16t 0x1t 0x7t 0x7ft
        0x1bt 0x1t 0x7t 0x7ft
        0x20t 0x1t 0x7t 0x7ft
        0x24t 0x1t 0x7t 0x7ft
        0x29t 0x1t 0x7t 0x7ft
        0x2et 0x1t 0x7t 0x7ft
        0x33t 0x1t 0x7t 0x7ft
        0x38t 0x1t 0x7t 0x7ft
        0x3dt 0x1t 0x7t 0x7ft
        0x42t 0x1t 0x7t 0x7ft
        0x47t 0x1t 0x7t 0x7ft
    .end array-data
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(J)J
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    sput-wide p0, Lcom/sec/android/app/fm/widget/FMRadioProvider;->offFreq:J

    return-wide p0
.end method

.method private addChannel(Lcom/sec/android/app/fm/data/Channel;)V
    .locals 2
    .parameter "channel"

    .prologue
    .line 753
    iget-object v1, p0, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mChannelList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 754
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 755
    iget-object v0, p0, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mChannelList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 756
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 757
    invoke-virtual {p0}, Lcom/sec/android/app/fm/widget/FMRadioProvider;->store()V

    .line 758
    return-void

    .line 756
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private addFavChannel(FLjava/lang/String;I)Lcom/sec/android/app/fm/data/Channel;
    .locals 10
    .parameter "freq"
    .parameter "chanName"
    .parameter "position"

    .prologue
    const/4 v2, 0x0

    const v9, 0x7f0a0010

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 764
    :try_start_0
    sget-object v3, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v3}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v3

    if-nez v3, :cond_1

    .line 765
    sget-object v3, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mToast:Landroid/widget/Toast;

    if-nez v3, :cond_0

    .line 766
    sget-object v3, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mContext:Landroid/content/Context;

    const v4, 0x7f0a0017

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    sput-object v3, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mToast:Landroid/widget/Toast;

    .line 769
    :goto_0
    sget-object v3, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    move-object v0, v2

    .line 806
    :goto_1
    return-object v0

    .line 768
    :cond_0
    sget-object v3, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mToast:Landroid/widget/Toast;

    sget-object v4, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0017

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 772
    :catch_0
    move-exception v1

    .line 773
    .local v1, e:Lcom/samsung/media/fmradio/FMPlayerException;
    invoke-virtual {v1}, Lcom/samsung/media/fmradio/FMPlayerException;->printStackTrace()V

    .line 777
    .end local v1           #e:Lcom/samsung/media/fmradio/FMPlayerException;
    :cond_1
    float-to-double v3, p1

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-nez v3, :cond_2

    .line 778
    sget p1, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ:F

    .line 780
    :cond_2
    invoke-virtual {p0, p1}, Lcom/sec/android/app/fm/widget/FMRadioProvider;->getChannel(F)Lcom/sec/android/app/fm/data/Channel;

    move-result-object v0

    .line 782
    .local v0, channel:Lcom/sec/android/app/fm/data/Channel;
    if-nez v0, :cond_3

    .line 783
    new-instance v0, Lcom/sec/android/app/fm/data/Channel;

    .end local v0           #channel:Lcom/sec/android/app/fm/data/Channel;
    invoke-direct {v0, p1, p2}, Lcom/sec/android/app/fm/data/Channel;-><init>(FLjava/lang/String;)V

    .line 784
    .restart local v0       #channel:Lcom/sec/android/app/fm/data/Channel;
    iput-boolean v8, v0, Lcom/sec/android/app/fm/data/Channel;->mIsFavourite:Z

    .line 785
    iput p3, v0, Lcom/sec/android/app/fm/data/Channel;->mPosition:I

    .line 786
    invoke-direct {p0, v0}, Lcom/sec/android/app/fm/widget/FMRadioProvider;->addChannel(Lcom/sec/android/app/fm/data/Channel;)V

    goto :goto_1

    .line 789
    :cond_3
    iget-boolean v3, v0, Lcom/sec/android/app/fm/data/Channel;->mIsFavourite:Z

    if-nez v3, :cond_6

    .line 790
    iput-boolean v8, v0, Lcom/sec/android/app/fm/data/Channel;->mIsFavourite:Z

    .line 792
    iget-object v2, v0, Lcom/sec/android/app/fm/data/Channel;->mFreqName:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/sec/android/app/fm/data/Channel;->mFreqName:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 793
    :cond_4
    iput-object p2, v0, Lcom/sec/android/app/fm/data/Channel;->mFreqName:Ljava/lang/String;

    .line 794
    :cond_5
    iput p3, v0, Lcom/sec/android/app/fm/data/Channel;->mPosition:I

    .line 795
    invoke-virtual {p0}, Lcom/sec/android/app/fm/widget/FMRadioProvider;->store()V

    goto :goto_1

    .line 800
    :cond_6
    sget-object v3, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mToast:Landroid/widget/Toast;

    if-nez v3, :cond_7

    .line 801
    sget-object v3, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mContext:Landroid/content/Context;

    invoke-static {v3, v9, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    sput-object v3, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mToast:Landroid/widget/Toast;

    .line 805
    :goto_2
    sget-object v3, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    move-object v0, v2

    .line 806
    goto :goto_1

    .line 803
    :cond_7
    sget-object v3, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mToast:Landroid/widget/Toast;

    sget-object v4, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private clickFavorite(I)V
    .locals 4
    .parameter

    .prologue
    .line 715
    sget-object v0, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    if-nez v0, :cond_1

    .line 716
    const-string v0, "FMRadioProvider"

    const-string v1, "mPlayer is null."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    :cond_0
    :goto_0
    return-void

    .line 720
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/fm/widget/FMRadioProvider;->load()V

    .line 722
    iget-object v0, p0, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mChannelList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 723
    iget-object v0, p0, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/fm/data/Channel;

    .line 724
    iget v2, v0, Lcom/sec/android/app/fm/data/Channel;->mPosition:I

    if-ne v2, p1, :cond_2

    .line 725
    sget-object v1, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/widget/FMRadioProvider;->isStartedService(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 726
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mContext:Landroid/content/Context;

    const-class v3, Lcom/sec/android/app/fm/NotificationService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 727
    const-string v2, "com.android.fm.player.tune"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 728
    const-string v2, "freq"

    iget v0, v0, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 729
    sget-object v0, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 730
    const-string v0, "FMRadioProvider"

    const-string v1, "NotificationService start"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 732
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.fm.player.tune"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 733
    const-string v2, "freq"

    iget v0, v0, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 734
    sget-object v0, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 740
    :cond_4
    const/4 v0, 0x0

    .line 742
    :try_start_0
    sget-object v1, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v1}, Lcom/samsung/media/fmradio/FMPlayer;->getCurrentChannel()J
    :try_end_0
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    long-to-float v0, v0

    const/high16 v1, 0x447a

    div-float/2addr v0, v1

    .line 747
    :goto_1
    const-string v1, ""

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/android/app/fm/widget/FMRadioProvider;->addFavChannel(FLjava/lang/String;I)Lcom/sec/android/app/fm/data/Channel;

    .line 748
    invoke-virtual {p0}, Lcom/sec/android/app/fm/widget/FMRadioProvider;->refreshWidget()V

    goto :goto_0

    .line 743
    :catch_0
    move-exception v1

    .line 745
    invoke-virtual {v1}, Lcom/samsung/media/fmradio/FMPlayerException;->printStackTrace()V

    goto :goto_1
.end method

.method private getOffFreq()J
    .locals 6

    .prologue
    const/high16 v5, 0x447a

    .line 824
    sget-object v1, Lcom/sec/android/app/fm/FMRadioFeature;->FEATURE_DEFAULTCHANNEL:Ljava/lang/String;

    const-string v2, "88.3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 825
    sget v1, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ_PHILIPHINES:F

    sput v1, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ:F

    .line 827
    :cond_0
    sget-object v1, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/fm/MainActivity;->getCurrentFreq(Landroid/content/Context;)F

    move-result v0

    .line 828
    .local v0, freq:F
    mul-float v1, v0, v5

    float-to-long v1, v1

    sput-wide v1, Lcom/sec/android/app/fm/widget/FMRadioProvider;->offFreq:J

    .line 831
    sget-wide v1, Lcom/sec/android/app/fm/widget/FMRadioProvider;->offFreq:J

    sget v3, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ:F

    mul-float/2addr v3, v5

    float-to-long v3, v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1

    sget-wide v1, Lcom/sec/android/app/fm/widget/FMRadioProvider;->offFreq:J

    sget v3, Lcom/sec/android/app/fm/MainActivity;->MAX_FREQ:F

    mul-float/2addr v3, v5

    float-to-long v3, v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    .line 833
    :cond_1
    sget v1, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ:F

    mul-float/2addr v1, v5

    float-to-long v1, v1

    sput-wide v1, Lcom/sec/android/app/fm/widget/FMRadioProvider;->offFreq:J

    .line 835
    :cond_2
    sget-wide v1, Lcom/sec/android/app/fm/widget/FMRadioProvider;->offFreq:J

    return-wide v1
.end method

.method private initFavButtons(Landroid/widget/RemoteViews;)V
    .locals 8
    .parameter "rv"

    .prologue
    const/4 v7, 0x0

    .line 309
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mFreqMHzs:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 310
    iget-object v1, p0, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mFreqMHzs:[I

    aget v1, v1, v0

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 311
    iget-object v1, p0, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mFreqNames:[I

    aget v1, v1, v0

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 312
    iget-object v1, p0, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mAddImgs:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 314
    iget-object v1, p0, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mFreqMHzs:[I

    aget v1, v1, v0

    sget-object v2, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0086

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v5, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mContext:Landroid/content/Context;

    const v6, 0x7f0a0087

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 309
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 319
    :cond_0
    return-void
.end method

.method private setFreqText(Landroid/widget/RemoteViews;Lcom/sec/android/app/fm/data/Channel;F)Z
    .locals 16
    .parameter "rv"
    .parameter "c"
    .parameter "channel"

    .prologue
    .line 649
    move-object/from16 v0, p2

    iget v5, v0, Lcom/sec/android/app/fm/data/Channel;->mPosition:I

    .line 650
    .local v5, position:I
    const/4 v4, 0x0

    .line 652
    .local v4, isValidFreqName:Z
    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 654
    :try_start_0
    sget-object v6, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v6}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v6

    if-eqz v6, :cond_2

    move-object/from16 v0, p2

    iget v6, v0, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    cmpl-float v6, v6, p3

    if-nez v6, :cond_2

    .line 655
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mFreqMHzs:[I

    aget v6, v6, v5

    sget-object v7, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080027

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 657
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mFreqNames:[I

    aget v6, v6, v5

    sget-object v7, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080027

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Landroid/widget/RemoteViews;->setTextColor(II)V
    :try_end_0
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 679
    :goto_0
    invoke-static {}, Lcom/sec/android/app/fm/FMRadioFeature;->GetFrequencySpace()I

    move-result v6

    const/16 v7, 0x32

    if-ne v6, v7, :cond_3

    .line 680
    const-string v6, "%.2f"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p2

    iget v9, v0, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 683
    .local v3, freq:Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mFreqMHzs:[I

    aget v6, v6, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 686
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mFreqNames:[I

    aget v6, v6, v5

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/sec/android/app/fm/data/Channel;->mFreqName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 697
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mAddImgs:[I

    aget v6, v6, v5

    const/4 v7, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 699
    sget-object v6, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0086

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    sget-object v10, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mContext:Landroid/content/Context;

    const v11, 0x7f0a0088

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/sec/android/app/fm/data/Channel;->mFreqName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 701
    .local v1, desc:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mFreqMHzs:[I

    aget v6, v6, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v1}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 702
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mFreqNames:[I

    aget v6, v6, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v1}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 706
    .end local v1           #desc:Ljava/lang/String;
    .end local v3           #freq:Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p2

    iget v6, v0, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    cmpl-float v6, v6, p3

    if-nez v6, :cond_1

    .line 707
    const/4 v4, 0x1

    .line 711
    :cond_1
    return v4

    .line 663
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mFreqMHzs:[I

    aget v6, v6, v5

    sget-object v7, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080028

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 665
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mFreqNames:[I

    aget v6, v6, v5

    sget-object v7, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080028

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Landroid/widget/RemoteViews;->setTextColor(II)V
    :try_end_1
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 668
    :catch_0
    move-exception v2

    .line 671
    .local v2, e:Lcom/samsung/media/fmradio/FMPlayerException;
    :try_start_2
    invoke-virtual {v2}, Lcom/samsung/media/fmradio/FMPlayerException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 672
    :catch_1
    move-exception v6

    goto/16 :goto_0

    .line 682
    .end local v2           #e:Lcom/samsung/media/fmradio/FMPlayerException;
    :cond_3
    move-object/from16 v0, p2

    iget v6, v0, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #freq:Ljava/lang/String;
    goto/16 :goto_1
.end method

.method private setOffFreq(J)V
    .locals 0
    .parameter "freq"

    .prologue
    .line 839
    sput-wide p1, Lcom/sec/android/app/fm/widget/FMRadioProvider;->offFreq:J

    .line 840
    return-void
.end method


# virtual methods
.method public getChannel(F)Lcom/sec/android/app/fm/data/Channel;
    .locals 3
    .parameter "freqMHz"

    .prologue
    .line 812
    iget-object v2, p0, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mChannelList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 813
    iget-object v2, p0, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 814
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 815
    iget-object v2, p0, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/fm/data/Channel;

    iget v2, v2, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    cmpl-float v2, v2, p1

    if-nez v2, :cond_0

    .line 816
    iget-object v2, p0, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/fm/data/Channel;

    .line 820
    .end local v0           #i:I
    .end local v1           #size:I
    :goto_1
    return-object v2

    .line 814
    .restart local v0       #i:I
    .restart local v1       #size:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 820
    .end local v0           #i:I
    .end local v1           #size:I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public declared-synchronized initPlayer(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 324
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    if-nez v1, :cond_0

    .line 325
    const-string v1, "FMPlayer"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/media/fmradio/FMPlayer;

    sput-object v1, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    :try_start_1
    sget-object v1, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    iget-object v2, p0, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mFMListener:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v1, v2}, Lcom/samsung/media/fmradio/FMPlayer;->setListener(Lcom/samsung/media/fmradio/FMEventListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 336
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 328
    :catch_0
    move-exception v0

    .line 330
    .local v0, e:Lcom/samsung/media/fmradio/FMPlayerException;
    :try_start_2
    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayerException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 331
    :catch_1
    move-exception v1

    goto :goto_0

    .line 324
    .end local v0           #e:Lcom/samsung/media/fmradio/FMPlayerException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public isStartedService(Landroid/content/Context;)Z
    .locals 9
    .parameter "context"

    .prologue
    .line 457
    const-string v6, "activity"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 459
    .local v3, mActivityManager:Landroid/app/ActivityManager;
    const/16 v6, 0x64

    invoke-virtual {v3, v6}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v5

    .line 461
    .local v5, rsiList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    const/4 v2, 0x0

    .line 464
    .local v2, isExist:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 465
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 466
    .local v4, rsi:Landroid/app/ActivityManager$RunningServiceInfo;
    const-string v6, "com.sec.android.app.fm"

    iget-object v7, v4, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 467
    const-string v6, "run service"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Package Name : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 468
    const/4 v2, 0x1

    .line 464
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 471
    .end local v4           #rsi:Landroid/app/ActivityManager$RunningServiceInfo;
    :catch_0
    move-exception v0

    .line 473
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 478
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    :goto_1
    return v2

    .line 474
    .restart local v0       #e:Ljava/lang/Exception;
    :catch_1
    move-exception v6

    goto :goto_1
.end method

.method public load()V
    .locals 5

    .prologue
    .line 590
    const/4 v1, 0x0

    .line 592
    .local v1, fileInputStream:Ljava/io/FileInputStream;
    :try_start_0
    sget-object v2, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mContext:Landroid/content/Context;

    const-string v3, "ChannelStorage"

    invoke-virtual {v2, v3}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 593
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mInputStream:Ljava/io/ObjectInputStream;

    .line 594
    iget-object v2, p0, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mInputStream:Ljava/io/ObjectInputStream;

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mChannelList:Ljava/util/ArrayList;

    .line 597
    iget-object v2, p0, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mChannelList:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 598
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mChannelList:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 604
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mInputStream:Ljava/io/ObjectInputStream;

    if-eqz v2, :cond_1

    .line 605
    iget-object v2, p0, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mInputStream:Ljava/io/ObjectInputStream;

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 610
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 611
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 616
    :cond_2
    :goto_1
    return-void

    .line 606
    :catch_0
    move-exception v0

    .line 607
    .local v0, e:Ljava/io/IOException;
    const-string v2, "FMRadioProvider"

    const-string v3, "IOException"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 612
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 613
    .restart local v0       #e:Ljava/io/IOException;
    const-string v2, "FMRadioProvider"

    const-string v3, "IOException"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 599
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 600
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    const-string v2, "FMRadioProvider"

    const-string v3, "Exception - Creating new list"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mChannelList:Ljava/util/ArrayList;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 604
    :try_start_4
    iget-object v2, p0, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mInputStream:Ljava/io/ObjectInputStream;

    if-eqz v2, :cond_3

    .line 605
    iget-object v2, p0, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mInputStream:Ljava/io/ObjectInputStream;

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 610
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    :goto_2
    if-eqz v1, :cond_2

    .line 611
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 612
    :catch_3
    move-exception v0

    .line 613
    .local v0, e:Ljava/io/IOException;
    const-string v2, "FMRadioProvider"

    const-string v3, "IOException"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 606
    .local v0, e:Ljava/lang/Exception;
    :catch_4
    move-exception v0

    .line 607
    .local v0, e:Ljava/io/IOException;
    const-string v2, "FMRadioProvider"

    const-string v3, "IOException"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 603
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 604
    :try_start_6
    iget-object v3, p0, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mInputStream:Ljava/io/ObjectInputStream;

    if-eqz v3, :cond_4

    .line 605
    iget-object v3, p0, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mInputStream:Ljava/io/ObjectInputStream;

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 610
    :cond_4
    :goto_3
    if-eqz v1, :cond_5

    .line 611
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 614
    :cond_5
    :goto_4
    throw v2

    .line 606
    :catch_5
    move-exception v0

    .line 607
    .restart local v0       #e:Ljava/io/IOException;
    const-string v3, "FMRadioProvider"

    const-string v4, "IOException"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 612
    .end local v0           #e:Ljava/io/IOException;
    :catch_6
    move-exception v0

    .line 613
    .restart local v0       #e:Ljava/io/IOException;
    const-string v3, "FMRadioProvider"

    const-string v4, "IOException"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 109
    sput-object p1, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mContext:Landroid/content/Context;

    .line 110
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 111
    invoke-virtual {p0, p1}, Lcom/sec/android/app/fm/widget/FMRadioProvider;->initPlayer(Landroid/content/Context;)V

    .line 113
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-virtual {p0, p1}, Lcom/sec/android/app/fm/widget/FMRadioProvider;->isStartedService(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 117
    const-string v1, "FMRadioProvider"

    const-string v2, "Service is not started"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const-string v1, "com.sec.android.app.fm.widget.on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 119
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/fm/NotificationService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 120
    const-string v2, "com.android.fm.player.on"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 147
    :cond_0
    :goto_0
    if-eqz v0, :cond_9

    const-string v1, "com.sec.android.app.fm.widget.fav"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 148
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.android.app.fm.widget.fav"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 149
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/fm/widget/FMRadioProvider;->clickFavorite(I)V

    .line 163
    :cond_1
    :goto_1
    return-void

    .line 122
    :cond_2
    const-string v1, "com.sec.android.app.fm.widget.off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 123
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/fm/NotificationService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 124
    const-string v2, "com.android.fm.player.off"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 126
    :cond_3
    const-string v1, "com.sec.android.app.fm.widget.prev"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 127
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/fm/NotificationService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 128
    const-string v2, "com.android.fm.player.tune.prev"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 130
    :cond_4
    const-string v1, "com.sec.android.app.fm.widget.next"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/fm/NotificationService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 132
    const-string v2, "com.android.fm.player.tune.next"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 136
    :cond_5
    const-string v1, "com.sec.android.app.fm.widget.on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 137
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.fm.player.on"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 138
    :cond_6
    const-string v1, "com.sec.android.app.fm.widget.off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 139
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.fm.player.off"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 140
    :cond_7
    const-string v1, "com.sec.android.app.fm.widget.prev"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 141
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.fm.player.tune.prev"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 142
    :cond_8
    const-string v1, "com.sec.android.app.fm.widget.next"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.fm.player.tune.next"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 150
    :cond_9
    const-string v1, "com.sec.android.app.fm.widget.frequency"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 151
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 153
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 156
    const/high16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 157
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 159
    sget-object v1, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 160
    :cond_a
    const-string v1, "com.sec.android.app.fm.widget.refresh"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "com.android.fm.player_lock.status.off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    :cond_b
    invoke-virtual {p0}, Lcom/sec/android/app/fm/widget/FMRadioProvider;->refreshWidget()V

    goto/16 :goto_1
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 0
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Lcom/sec/android/app/fm/widget/FMRadioProvider;->initPlayer(Landroid/content/Context;)V

    .line 104
    invoke-virtual {p0}, Lcom/sec/android/app/fm/widget/FMRadioProvider;->refreshWidget()V

    .line 105
    return-void
.end method

.method public refreshWidget()V
    .locals 6

    .prologue
    .line 433
    const-string v3, "FMRadioProvider"

    const-string v4, "refreshWidget() is called"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    const/4 v0, 0x0

    .line 436
    .local v0, mAppWidgetIds:[I
    sget-object v3, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 437
    .local v1, mAppWidgetManager:Landroid/appwidget/AppWidgetManager;
    if-eqz v1, :cond_2

    .line 438
    new-instance v3, Landroid/content/ComponentName;

    sget-object v4, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    .line 440
    if-nez v0, :cond_0

    .line 441
    const-string v3, "FMRadioProvider"

    const-string v4, "mAppWidgetIds is null"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    array-length v3, v0

    if-lez v3, :cond_1

    .line 447
    new-instance v2, Landroid/widget/RemoteViews;

    sget-object v3, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f030026

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 448
    .local v2, rv:Landroid/widget/RemoteViews;
    if-eqz v2, :cond_1

    .line 449
    sget-object v3, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3, v2}, Lcom/sec/android/app/fm/widget/FMRadioProvider;->updateWidget(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 450
    invoke-virtual {v1, v0, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    .line 454
    .end local v2           #rv:Landroid/widget/RemoteViews;
    :cond_1
    return-void

    .line 444
    :cond_2
    const-string v3, "FMRadioProvider"

    const-string v4, "mAppWidgetManager is null"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setFrequency(Landroid/widget/RemoteViews;J)V
    .locals 6
    .parameter "rv"
    .parameter "frequency"

    .prologue
    const/high16 v5, 0x447a

    .line 370
    sget-object v1, Lcom/sec/android/app/fm/FMRadioFeature;->FEATURE_DEFAULTCHANNEL:Ljava/lang/String;

    const-string v2, "88.3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 371
    sget v1, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ_PHILIPHINES:F

    sput v1, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ:F

    .line 372
    :cond_0
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-nez v1, :cond_1

    .line 373
    sget-object v1, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/fm/MainActivity;->getCurrentFreq(Landroid/content/Context;)F

    move-result v1

    mul-float/2addr v1, v5

    float-to-long p2, v1

    .line 375
    :cond_1
    sget v1, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ:F

    mul-float/2addr v1, v5

    float-to-long v1, v1

    cmp-long v1, p2, v1

    if-ltz v1, :cond_2

    sget v1, Lcom/sec/android/app/fm/MainActivity;->MAX_FREQ:F

    mul-float/2addr v1, v5

    float-to-long v1, v1

    cmp-long v1, p2, v1

    if-lez v1, :cond_3

    .line 377
    :cond_2
    sget v1, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ:F

    mul-float/2addr v1, v5

    float-to-long p2, v1

    .line 380
    :cond_3
    invoke-direct {p0, p2, p3}, Lcom/sec/android/app/fm/widget/FMRadioProvider;->setOffFreq(J)V

    .line 384
    invoke-static {}, Lcom/sec/android/app/fm/FMRadioFeature;->GetFrequencySpace()I

    move-result v1

    const/16 v2, 0x32

    if-ne v1, v2, :cond_4

    .line 385
    const-string v1, "%.2f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    long-to-float v4, p2

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 390
    .local v0, freq:Ljava/lang/String;
    :goto_0
    const v1, 0x7f07010b

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 391
    const v1, 0x7f07010c

    const-string v2, " MHz"

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 392
    return-void

    .line 387
    .end local v0           #freq:Ljava/lang/String;
    :cond_4
    long-to-float v1, p2

    div-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #freq:Ljava/lang/String;
    goto :goto_0
.end method

.method public store()V
    .locals 5

    .prologue
    .line 619
    iget-object v1, p0, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mChannelList:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 646
    :cond_0
    :goto_0
    return-void

    .line 624
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/ObjectOutputStream;

    sget-object v2, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mContext:Landroid/content/Context;

    const-string v3, "ChannelStorage"

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mOutputStream:Ljava/io/ObjectOutputStream;

    .line 626
    iget-object v1, p0, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mOutputStream:Ljava/io/ObjectOutputStream;

    iget-object v2, p0, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 627
    iget-object v1, p0, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mOutputStream:Ljava/io/ObjectOutputStream;

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 636
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mOutputStream:Ljava/io/ObjectOutputStream;

    if-eqz v1, :cond_0

    .line 637
    iget-object v1, p0, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mOutputStream:Ljava/io/ObjectOutputStream;

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 638
    :catch_0
    move-exception v0

    .line 640
    .local v0, e:Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 641
    :catch_1
    move-exception v1

    goto :goto_0

    .line 628
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 630
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    .line 636
    :goto_1
    :try_start_4
    iget-object v1, p0, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mOutputStream:Ljava/io/ObjectOutputStream;

    if-eqz v1, :cond_0

    .line 637
    iget-object v1, p0, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mOutputStream:Ljava/io/ObjectOutputStream;

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    .line 638
    :catch_3
    move-exception v0

    .line 640
    .local v0, e:Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 641
    :catch_4
    move-exception v1

    goto :goto_0

    .line 635
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    .line 636
    :try_start_6
    iget-object v2, p0, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mOutputStream:Ljava/io/ObjectOutputStream;

    if-eqz v2, :cond_2

    .line 637
    iget-object v2, p0, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mOutputStream:Ljava/io/ObjectOutputStream;

    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 644
    :cond_2
    :goto_2
    throw v1

    .line 638
    :catch_5
    move-exception v0

    .line 640
    .restart local v0       #e:Ljava/io/IOException;
    :try_start_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_2

    .line 641
    :catch_6
    move-exception v2

    goto :goto_2

    .line 631
    .local v0, e:Ljava/lang/Exception;
    :catch_7
    move-exception v1

    goto :goto_1
.end method

.method public updateWidget(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 25
    .parameter "context"
    .parameter "rv"

    .prologue
    .line 166
    const-string v20, "FMRadioProvider"

    const-string v21, "updateWidget() is called"

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    sget-wide v20, Lcom/sec/android/app/fm/widget/FMRadioProvider;->offFreq:J

    move-wide/from16 v0, v20

    long-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x447a

    div-float v5, v20, v21

    .line 182
    .local v5, channel:F
    :try_start_0
    sget-object v20, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v20

    if-eqz v20, :cond_6

    .line 183
    const v20, 0x7f070110

    const/16 v21, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 184
    const v20, 0x7f07010f

    const/16 v21, 0x8

    move-object/from16 v0, p2

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 185
    const/high16 v20, 0x447a

    mul-float v20, v20, v5

    move/from16 v0, v20

    float-to-long v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/fm/widget/FMRadioProvider;->setFrequency(Landroid/widget/RemoteViews;J)V
    :try_end_0
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :goto_0
    new-instance v14, Landroid/content/Intent;

    const-string v20, "com.sec.android.app.fm.widget.off"

    move-object/from16 v0, v20

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 199
    .local v14, intentOff:Landroid/content/Intent;
    if-eqz v14, :cond_0

    .line 200
    const/16 v20, 0x0

    const/high16 v21, 0x800

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v14, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v19

    .line 202
    .local v19, pi:Landroid/app/PendingIntent;
    const v20, 0x7f070110

    move-object/from16 v0, p2

    move/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 204
    .end local v19           #pi:Landroid/app/PendingIntent;
    :cond_0
    new-instance v15, Landroid/content/Intent;

    const-string v20, "com.sec.android.app.fm.widget.on"

    move-object/from16 v0, v20

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 205
    .local v15, intentOn:Landroid/content/Intent;
    if-eqz v15, :cond_1

    .line 206
    const/16 v20, 0x0

    const/high16 v21, 0x800

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v15, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v19

    .line 208
    .restart local v19       #pi:Landroid/app/PendingIntent;
    const v20, 0x7f07010f

    move-object/from16 v0, p2

    move/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 211
    .end local v19           #pi:Landroid/app/PendingIntent;
    :cond_1
    new-instance v16, Landroid/content/Intent;

    const-string v20, "com.sec.android.app.fm.widget.prev"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 212
    .local v16, intentPrev:Landroid/content/Intent;
    if-eqz v16, :cond_2

    .line 213
    const/16 v20, 0x0

    const/high16 v21, 0x800

    move-object/from16 v0, p1

    move/from16 v1, v20

    move-object/from16 v2, v16

    move/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v19

    .line 215
    .restart local v19       #pi:Landroid/app/PendingIntent;
    const v20, 0x7f070109

    move-object/from16 v0, p2

    move/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 218
    .end local v19           #pi:Landroid/app/PendingIntent;
    :cond_2
    new-instance v13, Landroid/content/Intent;

    const-string v20, "com.sec.android.app.fm.widget.next"

    move-object/from16 v0, v20

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 219
    .local v13, intentNext:Landroid/content/Intent;
    if-eqz v13, :cond_3

    .line 220
    const/16 v20, 0x0

    const/high16 v21, 0x800

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v13, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v19

    .line 222
    .restart local v19       #pi:Landroid/app/PendingIntent;
    const v20, 0x7f07010e

    move-object/from16 v0, p2

    move/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 225
    .end local v19           #pi:Landroid/app/PendingIntent;
    :cond_3
    new-instance v12, Landroid/content/Intent;

    const-string v20, "com.sec.android.app.fm.widget.frequency"

    move-object/from16 v0, v20

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 226
    .local v12, intentFrequency:Landroid/content/Intent;
    if-eqz v12, :cond_4

    .line 227
    const/16 v20, 0x0

    const/high16 v21, 0x800

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v12, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v19

    .line 229
    .restart local v19       #pi:Landroid/app/PendingIntent;
    const v20, 0x7f07010b

    move-object/from16 v0, p2

    move/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 232
    .end local v19           #pi:Landroid/app/PendingIntent;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/fm/widget/FMRadioProvider;->load()V

    .line 233
    const/4 v9, 0x0

    .local v9, favNum:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mFavClick:[I

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v9, v0, :cond_7

    .line 234
    const/4 v11, 0x0

    .line 235
    .local v11, intentFav:Landroid/content/Intent;
    new-instance v11, Landroid/content/Intent;

    .end local v11           #intentFav:Landroid/content/Intent;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "com.sec.android.app.fm.widget.fav"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 236
    .restart local v11       #intentFav:Landroid/content/Intent;
    if-eqz v11, :cond_5

    .line 237
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v11, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v19

    .line 238
    .restart local v19       #pi:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mFavClick:[I

    move-object/from16 v20, v0

    aget v20, v20, v9

    move-object/from16 v0, p2

    move/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 233
    .end local v19           #pi:Landroid/app/PendingIntent;
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 187
    .end local v9           #favNum:I
    .end local v11           #intentFav:Landroid/content/Intent;
    .end local v12           #intentFrequency:Landroid/content/Intent;
    .end local v13           #intentNext:Landroid/content/Intent;
    .end local v14           #intentOff:Landroid/content/Intent;
    .end local v15           #intentOn:Landroid/content/Intent;
    .end local v16           #intentPrev:Landroid/content/Intent;
    :cond_6
    const v20, 0x7f070110

    const/16 v21, 0x8

    :try_start_1
    move-object/from16 v0, p2

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 188
    const v20, 0x7f07010f

    const/16 v21, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 189
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/fm/widget/FMRadioProvider;->getOffFreq()J

    move-result-wide v20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/fm/widget/FMRadioProvider;->setFrequency(Landroid/widget/RemoteViews;J)V
    :try_end_1
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 191
    :catch_0
    move-exception v8

    .line 193
    .local v8, e1:Lcom/samsung/media/fmradio/FMPlayerException;
    invoke-virtual {v8}, Lcom/samsung/media/fmradio/FMPlayerException;->printStackTrace()V

    .line 194
    const v20, 0x7f070110

    const/16 v21, 0x8

    move-object/from16 v0, p2

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 195
    const v20, 0x7f07010f

    const/16 v21, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 196
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/fm/widget/FMRadioProvider;->getOffFreq()J

    move-result-wide v20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/fm/widget/FMRadioProvider;->setFrequency(Landroid/widget/RemoteViews;J)V

    goto/16 :goto_0

    .line 243
    .end local v8           #e1:Lcom/samsung/media/fmradio/FMPlayerException;
    .restart local v9       #favNum:I
    .restart local v12       #intentFrequency:Landroid/content/Intent;
    .restart local v13       #intentNext:Landroid/content/Intent;
    .restart local v14       #intentOff:Landroid/content/Intent;
    .restart local v15       #intentOn:Landroid/content/Intent;
    .restart local v16       #intentPrev:Landroid/content/Intent;
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/sec/android/app/fm/widget/FMRadioProvider;->initFavButtons(Landroid/widget/RemoteViews;)V

    .line 245
    const v20, 0x7f07010d

    const-string v21, ""

    move-object/from16 v0, p2

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 247
    const/16 v18, 0x0

    .line 248
    .local v18, mainFreqName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mChannelList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_8
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/fm/data/Channel;

    .line 249
    .local v4, c:Lcom/sec/android/app/fm/data/Channel;
    const/16 v17, 0x0

    .line 250
    .local v17, isValidFreqName:Z
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v4, v5}, Lcom/sec/android/app/fm/widget/FMRadioProvider;->setFreqText(Landroid/widget/RemoteViews;Lcom/sec/android/app/fm/data/Channel;F)Z

    move-result v17

    .line 251
    if-eqz v17, :cond_8

    .line 252
    const v20, 0x7f07010d

    iget-object v0, v4, Lcom/sec/android/app/fm/data/Channel;->mFreqName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p2

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 253
    iget-object v0, v4, Lcom/sec/android/app/fm/data/Channel;->mFreqName:Ljava/lang/String;

    move-object/from16 v18, v0

    goto :goto_2

    .line 257
    .end local v4           #c:Lcom/sec/android/app/fm/data/Channel;
    .end local v17           #isValidFreqName:Z
    :cond_9
    const/4 v6, 0x0

    .line 259
    .local v6, desc:Ljava/lang/String;
    :try_start_2
    sget-object v20, Lcom/sec/android/app/fm/widget/FMRadioProvider;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v20

    if-eqz v20, :cond_b

    .line 260
    if-eqz v18, :cond_a

    .line 262
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const v21, 0x7f0a0029

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v6

    .line 288
    :goto_3
    const v20, 0x7f07010c

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1, v6}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 289
    const v20, 0x7f07010b

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1, v6}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 290
    const v20, 0x7f07010d

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1, v6}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 292
    const v20, 0x7f070110

    const v21, 0x7f0a0086

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const v24, 0x7f0a0077

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    move-object/from16 v0, p1

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p2

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 296
    const v20, 0x7f07010f

    const v21, 0x7f0a0086

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const v24, 0x7f0a0077

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    move-object/from16 v0, p1

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p2

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 300
    const v20, 0x7f070109

    const v21, 0x7f0a0086

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const v24, 0x7f0a0078

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    move-object/from16 v0, p1

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p2

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 302
    const v20, 0x7f07010e

    const v21, 0x7f0a0086

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const v24, 0x7f0a0079

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    move-object/from16 v0, p1

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p2

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 305
    return-void

    .line 266
    :cond_a
    :try_start_3
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const v21, 0x7f0a0029

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3

    .line 270
    :cond_b
    if-eqz v18, :cond_c

    .line 271
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/fm/widget/FMRadioProvider;->getOffFreq()J

    move-result-wide v21

    const-wide/16 v23, 0x3e8

    div-long v21, v21, v23

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const v21, 0x7f0a0029

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3

    .line 275
    :cond_c
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/fm/widget/FMRadioProvider;->getOffFreq()J

    move-result-wide v21

    const-wide/16 v23, 0x3e8

    div-long v21, v21, v23

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const v21, 0x7f0a0029

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v6

    goto/16 :goto_3

    .line 277
    :catch_1
    move-exception v7

    .line 279
    .local v7, e:Lcom/samsung/media/fmradio/FMPlayerException;
    if-eqz v18, :cond_d

    .line 280
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/fm/widget/FMRadioProvider;->getOffFreq()J

    move-result-wide v21

    const-wide/16 v23, 0x3e8

    div-long v21, v21, v23

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const v21, 0x7f0a0029

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 285
    :goto_4
    invoke-virtual {v7}, Lcom/samsung/media/fmradio/FMPlayerException;->printStackTrace()V

    goto/16 :goto_3

    .line 284
    :cond_d
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/fm/widget/FMRadioProvider;->getOffFreq()J

    move-result-wide v21

    const-wide/16 v23, 0x3e8

    div-long v21, v21, v23

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const v21, 0x7f0a0029

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_4
.end method

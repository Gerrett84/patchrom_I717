.class public Lcom/sec/android/app/fm/MediaButtonReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MediaButtonReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static double_click:I

.field private static mContext:Landroid/content/Context;

.field private static mHandler:Landroid/os/Handler;

.field private static mPressed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18
    const-class v0, Lcom/sec/android/app/fm/MediaButtonReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/fm/MediaButtonReceiver;->TAG:Ljava/lang/String;

    .line 24
    sput v1, Lcom/sec/android/app/fm/MediaButtonReceiver;->double_click:I

    .line 29
    sput-boolean v1, Lcom/sec/android/app/fm/MediaButtonReceiver;->mPressed:Z

    .line 36
    new-instance v0, Lcom/sec/android/app/fm/MediaButtonReceiver$1;

    invoke-direct {v0}, Lcom/sec/android/app/fm/MediaButtonReceiver$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/fm/MediaButtonReceiver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/sec/android/app/fm/MediaButtonReceiver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Landroid/content/Context;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/sec/android/app/fm/MediaButtonReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$202(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 16
    sput p0, Lcom/sec/android/app/fm/MediaButtonReceiver;->double_click:I

    return p0
.end method

.method static synthetic access$300()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/sec/android/app/fm/MediaButtonReceiver;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 75
    sput-object p1, Lcom/sec/android/app/fm/MediaButtonReceiver;->mContext:Landroid/content/Context;

    .line 76
    const-string v0, "FMPlayer"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/media/fmradio/FMPlayer;

    .line 78
    const-string v0, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    .line 79
    if-nez v0, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 83
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    .line 85
    invoke-virtual {v0}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    .line 87
    if-eqz v0, :cond_2

    .line 88
    sput-boolean v5, Lcom/sec/android/app/fm/MediaButtonReceiver;->mPressed:Z

    .line 90
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/sec/android/app/fm/NotificationService;

    invoke-direct {v0, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 91
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 93
    sparse-switch v1, :sswitch_data_0

    .line 133
    :cond_3
    :goto_1
    if-ne v2, v5, :cond_0

    .line 134
    sput-boolean v6, Lcom/sec/android/app/fm/MediaButtonReceiver;->mPressed:Z

    goto :goto_0

    .line 97
    :sswitch_0
    if-nez v2, :cond_5

    .line 98
    sget v0, Lcom/sec/android/app/fm/MediaButtonReceiver;->double_click:I

    if-ne v0, v4, :cond_4

    .line 99
    sget-object v0, Lcom/sec/android/app/fm/MediaButtonReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 103
    :goto_2
    sget-object v0, Lcom/sec/android/app/fm/MediaButtonReceiver;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x12c

    invoke-virtual {v0, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 101
    :cond_4
    sget v0, Lcom/sec/android/app/fm/MediaButtonReceiver;->double_click:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/sec/android/app/fm/MediaButtonReceiver;->double_click:I

    goto :goto_2

    .line 104
    :cond_5
    if-ne v2, v5, :cond_6

    sget-boolean v0, Lcom/sec/android/app/fm/MediaButtonReceiver;->mPressed:Z

    if-nez v0, :cond_6

    .line 105
    sget v0, Lcom/sec/android/app/fm/MediaButtonReceiver;->double_click:I

    if-ne v0, v5, :cond_3

    .line 106
    sget v0, Lcom/sec/android/app/fm/MediaButtonReceiver;->double_click:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/sec/android/app/fm/MediaButtonReceiver;->double_click:I

    goto :goto_1

    .line 109
    :cond_6
    sget-object v0, Lcom/sec/android/app/fm/MediaButtonReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 110
    sget-object v0, Lcom/sec/android/app/fm/MediaButtonReceiver;->TAG:Ljava/lang/String;

    const-string v1, "Short -> Message removed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    sget-object v0, Lcom/sec/android/app/fm/MediaButtonReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_1

    .line 113
    :cond_7
    sget-object v0, Lcom/sec/android/app/fm/MediaButtonReceiver;->TAG:Ljava/lang/String;

    const-string v1, "Long -> Do nothing"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 120
    :sswitch_1
    if-ne v2, v5, :cond_3

    .line 121
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.fm.player.tune.next"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 125
    :sswitch_2
    if-ne v2, v5, :cond_3

    .line 126
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.fm.player.tune.prev"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 93
    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_0
        0x55 -> :sswitch_0
        0x57 -> :sswitch_1
        0x58 -> :sswitch_2
    .end sparse-switch
.end method

.class public Lcom/sec/android/app/fm/FMNotificationManager;
.super Ljava/lang/Object;
.source "FMNotificationManager.java"


# static fields
.field private static _instance:Lcom/sec/android/app/fm/FMNotificationManager;

.field private static mNotifiedTime:J


# instance fields
.field public isNotified:Z

.field private mContext:Landroid/content/Context;

.field private mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

.field private mUpdatePlayState:Z

.field private status:Landroid/app/Notification;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/fm/FMNotificationManager;->_instance:Lcom/sec/android/app/fm/FMNotificationManager;

    .line 129
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/sec/android/app/fm/FMNotificationManager;->mNotifiedTime:J

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mUpdatePlayState:Z

    .line 44
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mUpdatePlayState:Z

    .line 47
    iput-object p1, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    .line 50
    iget-object v0, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    const-string v1, "FMPlayer"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/media/fmradio/FMPlayer;

    iput-object v0, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    .line 53
    new-instance v0, Landroid/app/Notification;

    const v1, 0x7f020097

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput-object v0, p0, Lcom/sec/android/app/fm/FMNotificationManager;->status:Landroid/app/Notification;

    .line 54
    iget-object v0, p0, Lcom/sec/android/app/fm/FMNotificationManager;->status:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 55
    iget-object v0, p0, Lcom/sec/android/app/fm/FMNotificationManager;->status:Landroid/app/Notification;

    const/16 v1, 0x8

    iput v1, v0, Landroid/app/Notification;->twQuickPanelEvent:I

    .line 56
    iget-object v0, p0, Lcom/sec/android/app/fm/FMNotificationManager;->status:Landroid/app/Notification;

    iget-object v1, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {v1, v5, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 98
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sec/android/app/fm/FMNotificationManager;
    .locals 2
    .parameter "context"

    .prologue
    .line 111
    const-class v1, Lcom/sec/android/app/fm/FMNotificationManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/app/fm/FMNotificationManager;->_instance:Lcom/sec/android/app/fm/FMNotificationManager;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Lcom/sec/android/app/fm/FMNotificationManager;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/FMNotificationManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/app/fm/FMNotificationManager;->_instance:Lcom/sec/android/app/fm/FMNotificationManager;

    .line 114
    :cond_0
    sget-object v0, Lcom/sec/android/app/fm/FMNotificationManager;->_instance:Lcom/sec/android/app/fm/FMNotificationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getNotification()Landroid/app/Notification;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/sec/android/app/fm/FMNotificationManager;->status:Landroid/app/Notification;

    return-object v0
.end method

.method public removeNotification()V
    .locals 7

    .prologue
    .line 379
    :try_start_0
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 380
    .local v2, status:Landroid/app/Notification;
    iget v3, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/app/Notification;->flags:I

    .line 381
    const/4 v3, 0x0

    iput v3, v2, Landroid/app/Notification;->icon:I

    .line 384
    sget-wide v3, Lcom/sec/android/app/fm/FMNotificationManager;->mNotifiedTime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 385
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sput-wide v3, Lcom/sec/android/app/fm/FMNotificationManager;->mNotifiedTime:J

    .line 386
    :cond_0
    sget-wide v3, Lcom/sec/android/app/fm/FMNotificationManager;->mNotifiedTime:J

    iput-wide v3, v2, Landroid/app/Notification;->when:J

    .line 388
    iget-object v3, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    const-string v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 390
    const-wide/16 v3, -0x1

    sput-wide v3, Lcom/sec/android/app/fm/FMNotificationManager;->mNotifiedTime:J

    .line 398
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.fm.notification.service.stop"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 399
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 402
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/app/fm/FMNotificationManager;->isNotified:Z

    .line 403
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "notification removed.."

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #status:Landroid/app/Notification;
    :goto_0
    return-void

    .line 404
    :catch_0
    move-exception v0

    .line 406
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 407
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public showNotification()V
    .locals 2

    .prologue
    .line 121
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/fm/FMNotificationManager;->showNotification(Ljava/lang/String;Z)V

    .line 122
    return-void
.end method

.method public showNotification(Ljava/lang/String;)V
    .locals 16
    .parameter "textToShow"

    .prologue
    .line 256
    :try_start_0
    sget-wide v9, Lcom/sec/android/app/fm/FMNotificationManager;->mNotifiedTime:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-gez v9, :cond_0

    .line 257
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sput-wide v9, Lcom/sec/android/app/fm/FMNotificationManager;->mNotifiedTime:J

    .line 258
    :cond_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/fm/FMNotificationManager;->status:Landroid/app/Notification;

    sget-wide v10, Lcom/sec/android/app/fm/FMNotificationManager;->mNotifiedTime:J

    iput-wide v10, v9, Landroid/app/Notification;->when:J

    .line 259
    const-string v9, " FMNotificationManager "

    const-string v10, " showNotification After RemoteViews when change View Mode"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    const-string v10, "FMPlayer"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/media/fmradio/FMPlayer;

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    .line 264
    new-instance v9, Landroid/app/Notification;

    const v10, 0x7f020097

    const/4 v11, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/sec/android/app/fm/FMNotificationManager;->status:Landroid/app/Notification;

    .line 265
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/fm/FMNotificationManager;->status:Landroid/app/Notification;

    iget v10, v9, Landroid/app/Notification;->flags:I

    or-int/lit8 v10, v10, 0x2

    iput v10, v9, Landroid/app/Notification;->flags:I

    .line 266
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/fm/FMNotificationManager;->status:Landroid/app/Notification;

    const/16 v10, 0x8

    iput v10, v9, Landroid/app/Notification;->twQuickPanelEvent:I

    .line 267
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/fm/FMNotificationManager;->status:Landroid/app/Notification;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    const/4 v11, 0x0

    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    const/4 v13, 0x0

    invoke-static {v10, v11, v12, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    iput-object v10, v9, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 269
    new-instance v8, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f030014

    invoke-direct {v8, v9, v10}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 272
    .local v8, remoteViews:Landroid/widget/RemoteViews;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    const/4 v10, 0x1

    new-instance v11, Landroid/content/Intent;

    const-string v12, "com.android.fm.player"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x0

    invoke-static {v9, v10, v11, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 275
    .local v3, pintent_launch:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    const/4 v10, 0x1

    new-instance v11, Landroid/content/Intent;

    const-string v12, "com.android.fm.player.tune.prev"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x0

    invoke-static {v9, v10, v11, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 277
    .local v7, pintent_prev:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    const/4 v10, 0x1

    new-instance v11, Landroid/content/Intent;

    const-string v12, "com.android.fm.player.on"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x0

    invoke-static {v9, v10, v11, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 279
    .local v6, pintent_play:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    const/4 v10, 0x1

    new-instance v11, Landroid/content/Intent;

    const-string v12, "com.android.fm.player.off"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x0

    invoke-static {v9, v10, v11, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 281
    .local v5, pintent_pause:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    const/4 v10, 0x1

    new-instance v11, Landroid/content/Intent;

    const-string v12, "com.android.fm.player.tune.next"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x0

    invoke-static {v9, v10, v11, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 284
    .local v4, pintent_next:Landroid/app/PendingIntent;
    const v9, 0x7f070086

    invoke-virtual {v8, v9, v3}, Landroid/widget/RemoteViews;->setLaunchPendingIntent(ILandroid/app/PendingIntent;)V

    .line 286
    const v9, 0x7f070087

    invoke-virtual {v8, v9, v7}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 287
    const v9, 0x7f070087

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    const v11, 0x7f0a0086

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    const v15, 0x7f0a0078

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 290
    const v9, 0x7f070088

    invoke-virtual {v8, v9, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 291
    const v9, 0x7f070088

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    const v11, 0x7f0a0086

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    const v15, 0x7f0a0077

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 296
    const v9, 0x7f070089

    invoke-virtual {v8, v9, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 297
    const v9, 0x7f070089

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    const v11, 0x7f0a0086

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    const v15, 0x7f0a0077

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 302
    const v9, 0x7f07008a

    invoke-virtual {v8, v9, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 303
    const v9, 0x7f07008a

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    const v11, 0x7f0a0086

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    const v15, 0x7f0a0079

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 306
    const v9, 0x7f07008b

    const/4 v10, -0x1

    invoke-virtual {v8, v9, v10}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 308
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/fm/FMNotificationManager;->status:Landroid/app/Notification;

    iput-object v8, v9, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 310
    const v9, 0x7f07008b

    move-object/from16 v0, p1

    invoke-virtual {v8, v9, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 312
    const-string v9, " FMNotificationManager "

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " showNotification After setOnClickPendingIntent mUpdatePlayState = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mUpdatePlayState:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    if-nez v9, :cond_1

    .line 316
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    const-string v10, "FMPlayer"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/media/fmradio/FMPlayer;

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 319
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v9}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 320
    const v9, 0x7f070088

    const/16 v10, 0x8

    invoke-virtual {v8, v9, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 321
    const v9, 0x7f070089

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V
    :try_end_1
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 336
    :goto_0
    :try_start_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    const-string v10, "notification"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationManager;

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/fm/FMNotificationManager;->status:Landroid/app/Notification;

    invoke-virtual {v9, v10, v11}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 338
    new-instance v2, Landroid/content/Intent;

    const-string v9, "com.android.fm.notification.service"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 339
    .local v2, intent:Landroid/content/Intent;
    const-string v9, "com.android.fm.notification.service.notification"

    const-string v10, "show.notification"

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 341
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 342
    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/sec/android/app/fm/FMNotificationManager;->isNotified:Z

    .line 343
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v10, "notification done.."

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 351
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #pintent_launch:Landroid/app/PendingIntent;
    .end local v4           #pintent_next:Landroid/app/PendingIntent;
    .end local v5           #pintent_pause:Landroid/app/PendingIntent;
    .end local v6           #pintent_play:Landroid/app/PendingIntent;
    .end local v7           #pintent_prev:Landroid/app/PendingIntent;
    .end local v8           #remoteViews:Landroid/widget/RemoteViews;
    :goto_1
    return-void

    .line 323
    .restart local v3       #pintent_launch:Landroid/app/PendingIntent;
    .restart local v4       #pintent_next:Landroid/app/PendingIntent;
    .restart local v5       #pintent_pause:Landroid/app/PendingIntent;
    .restart local v6       #pintent_play:Landroid/app/PendingIntent;
    .restart local v7       #pintent_prev:Landroid/app/PendingIntent;
    .restart local v8       #remoteViews:Landroid/widget/RemoteViews;
    :cond_2
    const v9, 0x7f070089

    const/16 v10, 0x8

    :try_start_3
    invoke-virtual {v8, v9, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 324
    const v9, 0x7f070088

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V
    :try_end_3
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 326
    :catch_0
    move-exception v1

    .line 327
    .local v1, e:Lcom/samsung/media/fmradio/FMPlayerException;
    :try_start_4
    const-string v9, " FMNotificationManager "

    const-string v10, " FMPlayerException : mPlayer.isOn() "

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mUpdatePlayState:Z

    if-eqz v9, :cond_3

    .line 329
    const v9, 0x7f070088

    const/16 v10, 0x8

    invoke-virtual {v8, v9, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 330
    const v9, 0x7f070089

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 344
    .end local v1           #e:Lcom/samsung/media/fmradio/FMPlayerException;
    .end local v3           #pintent_launch:Landroid/app/PendingIntent;
    .end local v4           #pintent_next:Landroid/app/PendingIntent;
    .end local v5           #pintent_pause:Landroid/app/PendingIntent;
    .end local v6           #pintent_play:Landroid/app/PendingIntent;
    .end local v7           #pintent_prev:Landroid/app/PendingIntent;
    .end local v8           #remoteViews:Landroid/widget/RemoteViews;
    :catch_1
    move-exception v1

    .line 346
    .local v1, e:Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 347
    :catch_2
    move-exception v9

    goto :goto_1

    .line 332
    .local v1, e:Lcom/samsung/media/fmradio/FMPlayerException;
    .restart local v3       #pintent_launch:Landroid/app/PendingIntent;
    .restart local v4       #pintent_next:Landroid/app/PendingIntent;
    .restart local v5       #pintent_pause:Landroid/app/PendingIntent;
    .restart local v6       #pintent_play:Landroid/app/PendingIntent;
    .restart local v7       #pintent_prev:Landroid/app/PendingIntent;
    .restart local v8       #remoteViews:Landroid/widget/RemoteViews;
    :cond_3
    const v9, 0x7f070089

    const/16 v10, 0x8

    :try_start_6
    invoke-virtual {v8, v9, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 333
    const v9, 0x7f070088

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0
.end method

.method public showNotification(Ljava/lang/String;Z)V
    .locals 16
    .parameter "textToShow"
    .parameter "isTickerRequired"

    .prologue
    .line 143
    :try_start_0
    sget-wide v9, Lcom/sec/android/app/fm/FMNotificationManager;->mNotifiedTime:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-gez v9, :cond_0

    .line 144
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sput-wide v9, Lcom/sec/android/app/fm/FMNotificationManager;->mNotifiedTime:J

    .line 145
    :cond_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/fm/FMNotificationManager;->status:Landroid/app/Notification;

    sget-wide v10, Lcom/sec/android/app/fm/FMNotificationManager;->mNotifiedTime:J

    iput-wide v10, v9, Landroid/app/Notification;->when:J

    .line 150
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    const/4 v10, 0x1

    new-instance v11, Landroid/content/Intent;

    const-string v12, "com.android.fm.player"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x0

    invoke-static {v9, v10, v11, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 153
    .local v3, pintent_launch:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    const/4 v10, 0x1

    new-instance v11, Landroid/content/Intent;

    const-string v12, "com.android.fm.player.tune.prev"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x0

    invoke-static {v9, v10, v11, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 155
    .local v7, pintent_prev:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    const/4 v10, 0x1

    new-instance v11, Landroid/content/Intent;

    const-string v12, "com.android.fm.player.on"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x0

    invoke-static {v9, v10, v11, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 157
    .local v6, pintent_play:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    const/4 v10, 0x1

    new-instance v11, Landroid/content/Intent;

    const-string v12, "com.android.fm.player.off"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x0

    invoke-static {v9, v10, v11, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 159
    .local v5, pintent_pause:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    const/4 v10, 0x1

    new-instance v11, Landroid/content/Intent;

    const-string v12, "com.android.fm.player.tune.next"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x0

    invoke-static {v9, v10, v11, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 162
    .local v4, pintent_next:Landroid/app/PendingIntent;
    new-instance v8, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f030014

    invoke-direct {v8, v9, v10}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 165
    .local v8, remoteViews:Landroid/widget/RemoteViews;
    const v9, 0x7f070086

    invoke-virtual {v8, v9, v3}, Landroid/widget/RemoteViews;->setLaunchPendingIntent(ILandroid/app/PendingIntent;)V

    .line 167
    const v9, 0x7f070087

    invoke-virtual {v8, v9, v7}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 168
    const v9, 0x7f070087

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    const v11, 0x7f0a0086

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    const v15, 0x7f0a0078

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 171
    const v9, 0x7f070088

    invoke-virtual {v8, v9, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 172
    const v9, 0x7f070088

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    const v11, 0x7f0a0086

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    const v15, 0x7f0a0077

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 177
    const v9, 0x7f070089

    invoke-virtual {v8, v9, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 178
    const v9, 0x7f070089

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    const v11, 0x7f0a0086

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    const v15, 0x7f0a0077

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 183
    const v9, 0x7f07008a

    invoke-virtual {v8, v9, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 184
    const v9, 0x7f07008a

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    const v11, 0x7f0a0086

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    const v15, 0x7f0a0079

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 187
    const v9, 0x7f07008b

    const/4 v10, -0x1

    invoke-virtual {v8, v9, v10}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 189
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/fm/FMNotificationManager;->status:Landroid/app/Notification;

    iput-object v8, v9, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 191
    const-string v9, " FMNotificationManager "

    const-string v10, " showNotification After RemoteViews "

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const v9, 0x7f07008b

    move-object/from16 v0, p1

    invoke-virtual {v8, v9, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 197
    const-string v9, " FMNotificationManager "

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " showNotification After setOnClickPendingIntent mUpdatePlayState = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mUpdatePlayState:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    if-nez v9, :cond_1

    .line 202
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    const-string v10, "FMPlayer"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/media/fmradio/FMPlayer;

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 205
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v9}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 206
    const v9, 0x7f070088

    const/16 v10, 0x8

    invoke-virtual {v8, v9, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 207
    const v9, 0x7f070089

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V
    :try_end_1
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 228
    :goto_0
    if-eqz p2, :cond_2

    .line 229
    :try_start_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/fm/FMNotificationManager;->status:Landroid/app/Notification;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    const v11, 0x7f0a0018

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 230
    :cond_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    const-string v10, "notification"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationManager;

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/fm/FMNotificationManager;->status:Landroid/app/Notification;

    invoke-virtual {v9, v10, v11}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 234
    new-instance v2, Landroid/content/Intent;

    const-string v9, "com.android.fm.notification.service"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 235
    .local v2, intent:Landroid/content/Intent;
    const-string v9, "com.android.fm.notification.service.notification"

    const-string v10, "show.notification"

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 243
    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/sec/android/app/fm/FMNotificationManager;->isNotified:Z

    .line 244
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v10, "notification done.."

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 252
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #pintent_launch:Landroid/app/PendingIntent;
    .end local v4           #pintent_next:Landroid/app/PendingIntent;
    .end local v5           #pintent_pause:Landroid/app/PendingIntent;
    .end local v6           #pintent_play:Landroid/app/PendingIntent;
    .end local v7           #pintent_prev:Landroid/app/PendingIntent;
    .end local v8           #remoteViews:Landroid/widget/RemoteViews;
    :goto_1
    return-void

    .line 209
    .restart local v3       #pintent_launch:Landroid/app/PendingIntent;
    .restart local v4       #pintent_next:Landroid/app/PendingIntent;
    .restart local v5       #pintent_pause:Landroid/app/PendingIntent;
    .restart local v6       #pintent_play:Landroid/app/PendingIntent;
    .restart local v7       #pintent_prev:Landroid/app/PendingIntent;
    .restart local v8       #remoteViews:Landroid/widget/RemoteViews;
    :cond_3
    const v9, 0x7f070089

    const/16 v10, 0x8

    :try_start_3
    invoke-virtual {v8, v9, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 210
    const v9, 0x7f070088

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V
    :try_end_3
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 212
    :catch_0
    move-exception v1

    .line 213
    .local v1, e:Lcom/samsung/media/fmradio/FMPlayerException;
    :try_start_4
    const-string v9, " FMNotificationManager "

    const-string v10, " FMPlayerException : mPlayer.isOn() "

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/sec/android/app/fm/FMNotificationManager;->mUpdatePlayState:Z

    if-eqz v9, :cond_4

    .line 215
    const v9, 0x7f070088

    const/16 v10, 0x8

    invoke-virtual {v8, v9, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 216
    const v9, 0x7f070089

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 245
    .end local v1           #e:Lcom/samsung/media/fmradio/FMPlayerException;
    .end local v3           #pintent_launch:Landroid/app/PendingIntent;
    .end local v4           #pintent_next:Landroid/app/PendingIntent;
    .end local v5           #pintent_pause:Landroid/app/PendingIntent;
    .end local v6           #pintent_play:Landroid/app/PendingIntent;
    .end local v7           #pintent_prev:Landroid/app/PendingIntent;
    .end local v8           #remoteViews:Landroid/widget/RemoteViews;
    :catch_1
    move-exception v1

    .line 247
    .local v1, e:Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 248
    :catch_2
    move-exception v9

    goto :goto_1

    .line 218
    .local v1, e:Lcom/samsung/media/fmradio/FMPlayerException;
    .restart local v3       #pintent_launch:Landroid/app/PendingIntent;
    .restart local v4       #pintent_next:Landroid/app/PendingIntent;
    .restart local v5       #pintent_pause:Landroid/app/PendingIntent;
    .restart local v6       #pintent_play:Landroid/app/PendingIntent;
    .restart local v7       #pintent_prev:Landroid/app/PendingIntent;
    .restart local v8       #remoteViews:Landroid/widget/RemoteViews;
    :cond_4
    const v9, 0x7f070089

    const/16 v10, 0x8

    :try_start_6
    invoke-virtual {v8, v9, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 219
    const v9, 0x7f070088

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0
.end method

.method public updatePlayButtonState(Z)V
    .locals 0
    .parameter "playState"

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/sec/android/app/fm/FMNotificationManager;->mUpdatePlayState:Z

    .line 126
    return-void
.end method

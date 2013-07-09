.class public Lcom/sec/android/app/fm/listplayer/FMListPlayer;
.super Ljava/lang/Object;
.source "FMListPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/fm/listplayer/FMListPlayer$NotificationHandler;,
        Lcom/sec/android/app/fm/listplayer/FMListPlayer$OnPlayerStateChangedObserver;
    }
.end annotation


# instance fields
.field public FilePath4GATE:Ljava/lang/String;

.field private mContentUri:Landroid/net/Uri;

.field private mContext:Landroid/content/Context;

.field private mFadeInHandler:Landroid/os/Handler;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mMediaPlayerState:I

.field private mNotificationHandler:Lcom/sec/android/app/fm/listplayer/FMListPlayer$NotificationHandler;

.field private mObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/fm/listplayer/FMListPlayer$OnPlayerStateChangedObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 150
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v1, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mContentUri:Landroid/net/Uri;

    .line 45
    iput-object v1, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mContext:Landroid/content/Context;

    .line 50
    iput-object v1, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->FilePath4GATE:Ljava/lang/String;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mObservers:Ljava/util/List;

    .line 148
    new-instance v0, Lcom/sec/android/app/fm/listplayer/FMListPlayer$NotificationHandler;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/fm/listplayer/FMListPlayer$NotificationHandler;-><init>(Lcom/sec/android/app/fm/listplayer/FMListPlayer;Lcom/sec/android/app/fm/listplayer/FMListPlayer$1;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mNotificationHandler:Lcom/sec/android/app/fm/listplayer/FMListPlayer$NotificationHandler;

    .line 449
    new-instance v0, Lcom/sec/android/app/fm/listplayer/FMListPlayer$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/listplayer/FMListPlayer$1;-><init>(Lcom/sec/android/app/fm/listplayer/FMListPlayer;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mFadeInHandler:Landroid/os/Handler;

    .line 151
    const/16 v0, 0x15

    iput v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mMediaPlayerState:I

    .line 152
    iput-object p1, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mContext:Landroid/content/Context;

    .line 153
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/fm/listplayer/FMListPlayer;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->handleNotification(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/fm/listplayer/FMListPlayer;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mFadeInHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private handleNotification(I)V
    .locals 5
    .parameter "state"

    .prologue
    const/4 v3, 0x0

    .line 123
    iget-object v2, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 125
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/fm/listplayer/FMListPlayer$OnPlayerStateChangedObserver;>;"
    iget-object v2, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mNotificationHandler:Lcom/sec/android/app/fm/listplayer/FMListPlayer$NotificationHandler;

    invoke-static {v2, v3, p1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    .line 127
    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 128
    iget v2, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mMediaPlayerState:I

    const/16 v3, 0x16

    if-ne v2, v3, :cond_0

    .line 129
    iget-object v2, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mNotificationHandler:Lcom/sec/android/app/fm/listplayer/FMListPlayer$NotificationHandler;

    const-wide/16 v3, 0x32

    invoke-virtual {v2, v1, v3, v4}, Lcom/sec/android/app/fm/listplayer/FMListPlayer$NotificationHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 133
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 134
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/fm/listplayer/FMListPlayer$OnPlayerStateChangedObserver;

    invoke-interface {v2, p1}, Lcom/sec/android/app/fm/listplayer/FMListPlayer$OnPlayerStateChangedObserver;->OnPlayerStateChanged(I)V

    goto :goto_0

    .line 135
    :cond_1
    return-void
.end method

.method private notifyPlayerState(I)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v2, 0x0

    .line 117
    iget-object v1, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mNotificationHandler:Lcom/sec/android/app/fm/listplayer/FMListPlayer$NotificationHandler;

    invoke-static {v1, v2, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 118
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mNotificationHandler:Lcom/sec/android/app/fm/listplayer/FMListPlayer$NotificationHandler;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayer$NotificationHandler;->sendMessage(Landroid/os/Message;)Z

    .line 119
    return-void
.end method


# virtual methods
.method public getContentURI()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getCurrentPosition()I
    .locals 4

    .prologue
    .line 411
    const/4 v1, -0x1

    .line 412
    .local v1, pos:I
    iget-object v2, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_0

    .line 414
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 421
    :cond_0
    :goto_0
    return v1

    .line 415
    :catch_0
    move-exception v0

    .line 416
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v2, "FMListPlayer"

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getDuration()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 397
    iget-object v2, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_0

    .line 400
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 406
    :cond_0
    :goto_0
    return v1

    .line 401
    :catch_0
    move-exception v0

    .line 402
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method public isPaused()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 390
    iget-object v1, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_1

    .line 393
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mMediaPlayerState:I

    const/16 v2, 0x17

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 376
    iget-object v2, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v2, :cond_0

    .line 385
    :goto_0
    return v1

    .line 382
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 383
    :catch_0
    move-exception v0

    .line 384
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    .line 426
    const-string v0, "FMListPlayer"

    const-string v1, "onCompletion E"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 428
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 429
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 431
    const/16 v0, 0x15

    iput v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mMediaPlayerState:I

    .line 432
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->notifyPlayerState(I)V

    .line 433
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->notifyPlayerState(I)V

    .line 435
    return-void
.end method

.method public pausePlay()V
    .locals 3

    .prologue
    const/16 v2, 0x17

    .line 259
    const-string v0, "FMListPlayer"

    const-string v1, "pausePlay"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mMediaPlayerState:I

    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mMediaPlayerState:I

    if-ne v0, v2, :cond_1

    .line 263
    :cond_0
    const-string v0, "FMListPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal player state("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mMediaPlayerState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :goto_0
    return-void

    .line 268
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 269
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 272
    :cond_2
    iput v2, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mMediaPlayerState:I

    .line 276
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->notifyPlayerState(I)V

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 158
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 161
    :cond_0
    return-void
.end method

.method public removeAllOnPlayerStateChangedObserver()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 112
    return-void
.end method

.method public removeOnPlayerStateChangedObserver(Lcom/sec/android/app/fm/listplayer/FMListPlayer$OnPlayerStateChangedObserver;)V
    .locals 1
    .parameter "o"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 108
    return-void
.end method

.method public resetPath()V
    .locals 1

    .prologue
    .line 327
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mContentUri:Landroid/net/Uri;

    .line 328
    return-void
.end method

.method public resumePlay()V
    .locals 4

    .prologue
    const/16 v3, 0x16

    const/16 v2, 0x15

    .line 280
    const-string v0, "FMListPlayer"

    const-string v1, "resumePlay"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mMediaPlayerState:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mMediaPlayerState:I

    if-ne v0, v3, :cond_1

    .line 284
    :cond_0
    const-string v0, "FMListPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal player state("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mMediaPlayerState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :goto_0
    return-void

    .line 288
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 289
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 295
    :goto_1
    iput v3, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mMediaPlayerState:I

    .line 296
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->notifyPlayerState(I)V

    .line 297
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->notifyPlayerState(I)V

    goto :goto_0

    .line 291
    :cond_2
    iput v2, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mMediaPlayerState:I

    .line 292
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mContentUri:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->startPlay(Landroid/net/Uri;)Z

    goto :goto_1
.end method

.method public seek(IZ)V
    .locals 3
    .parameter "msec"
    .parameter "restart"

    .prologue
    .line 331
    const-string v0, "FMListPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seek msec="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mContentUri:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->startPlay(Landroid/net/Uri;)Z

    .line 339
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->pausePlay()V

    .line 341
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 342
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 344
    :cond_1
    if-eqz p2, :cond_2

    .line 345
    invoke-virtual {p0}, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->resumePlay()V

    .line 347
    :cond_2
    return-void
.end method

.method public setOnPlayerStateChangedObserver(Lcom/sec/android/app/fm/listplayer/FMListPlayer$OnPlayerStateChangedObserver;)V
    .locals 1
    .parameter "o"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    return-void
.end method

.method public startFadeIn()V
    .locals 4

    .prologue
    const/16 v1, 0x1f

    const/16 v3, 0x20

    .line 438
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->volumeCtrl(F)V

    .line 439
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mFadeInHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mFadeInHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mFadeInHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 443
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mFadeInHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 445
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->volumeCtrl(F)V

    .line 446
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mFadeInHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 447
    return-void
.end method

.method public startPlay(Landroid/net/Uri;)Z
    .locals 7
    .parameter "contentUri"

    .prologue
    const/4 v4, 0x0

    .line 172
    const-string v5, "FMListPlayer"

    const-string v6, "startPlay() - Uri"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    if-nez p1, :cond_0

    move v0, v4

    .line 195
    :goto_0
    return v0

    .line 177
    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mContentUri:Landroid/net/Uri;

    .line 180
    :try_start_0
    iget-object v5, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "r"

    invoke-virtual {v5, p1, v6}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 182
    .local v3, mpfd:Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 184
    .local v2, fd:Ljava/io/FileDescriptor;
    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->startPlay(Ljava/io/FileDescriptor;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 187
    .local v0, bResult:Z
    :try_start_1
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 188
    :catch_0
    move-exception v1

    .line 189
    .local v1, e:Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 190
    const-string v5, "FMListPlayer"

    const-string v6, "mpfd.close()"

    invoke-static {v5, v6, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 193
    .end local v0           #bResult:Z
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #fd:Ljava/io/FileDescriptor;
    .end local v3           #mpfd:Landroid/os/ParcelFileDescriptor;
    :catch_1
    move-exception v1

    .line 194
    .local v1, e:Ljava/io/FileNotFoundException;
    const-string v5, "FMListPlayer"

    const-string v6, "error in startPlay(fd)"

    invoke-static {v5, v6, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v4

    .line 195
    goto :goto_0
.end method

.method public startPlay(Ljava/io/FileDescriptor;)Z
    .locals 5
    .parameter "descriptor"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 211
    const-string v3, "FMListPlayer"

    const-string v4, "startPlay - FileDescriptor"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget v3, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mMediaPlayerState:I

    const/16 v4, 0x15

    if-eq v3, v4, :cond_0

    .line 214
    const-string v2, "FMListPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal player state("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mMediaPlayerState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :goto_0
    return v1

    .line 218
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->release()V

    .line 220
    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 224
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 227
    iget-object v3, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 228
    iget-object v3, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 229
    iget-object v3, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepare()V

    .line 230
    iget-object v3, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    const/16 v3, 0x16

    iput v3, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mMediaPlayerState:I

    .line 237
    invoke-direct {p0, v1}, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->notifyPlayerState(I)V

    .line 238
    invoke-direct {p0, v2}, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->notifyPlayerState(I)V

    move v1, v2

    .line 239
    goto :goto_0

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "FMListPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public stopPlay()V
    .locals 5

    .prologue
    const/16 v4, 0x20

    const/16 v3, 0x1f

    const/16 v2, 0x15

    .line 301
    const-string v0, "FMListPlayer"

    const-string v1, "stopPlay"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mMediaPlayerState:I

    if-ne v0, v2, :cond_0

    .line 304
    const-string v0, "FMListPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal player state("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mMediaPlayerState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :goto_0
    return-void

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mFadeInHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 309
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mFadeInHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 311
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mFadeInHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 312
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mFadeInHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 315
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->release()V

    .line 317
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->notifyPlayerState(I)V

    .line 318
    iput v2, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mMediaPlayerState:I

    goto :goto_0
.end method

.method public volumeCtrl(F)V
    .locals 1
    .parameter "volume"

    .prologue
    .line 357
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 359
    :cond_0
    return-void
.end method

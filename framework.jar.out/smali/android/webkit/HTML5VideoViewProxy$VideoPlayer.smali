.class final Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;
.super Ljava/lang/Object;
.source "HTML5VideoViewProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/HTML5VideoViewProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "VideoPlayer"
.end annotation


# static fields
.field private static isVideoSelfEnded:Z

.field private static mBaseLayer:I

.field private static mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

.field private static mHTML5VideoView:Landroid/webkit/HTML5VideoView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 107
    sput-boolean v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->isVideoSelfEnded:Z

    .line 110
    sput v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mBaseLayer:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    sput-boolean p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->isVideoSelfEnded:Z

    return p0
.end method

.method static synthetic access$200(Z)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-static {p0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->setPlayerBuffering(Z)V

    return-void
.end method

.method static synthetic access$300()Landroid/webkit/HTML5VideoView;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    return-object v0
.end method

.method public static end()V
    .locals 1

    .prologue
    .line 309
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView;->showControllerInFullScreen()V

    .line 310
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    if-eqz v0, :cond_0

    .line 311
    sget-boolean v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->isVideoSelfEnded:Z

    if-eqz v0, :cond_1

    .line 312
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy;->dispatchOnEnded()V

    .line 316
    :cond_0
    :goto_0
    const/4 v0, 0x0

    sput-boolean v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->isVideoSelfEnded:Z

    .line 317
    return-void

    .line 314
    :cond_1
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy;->dispatchOnPaused()V

    goto :goto_0
.end method

.method public static enterFullScreenVideo(ILjava/lang/String;Landroid/webkit/HTML5VideoViewProxy;Landroid/webkit/WebViewClassic;)V
    .locals 9
    .parameter "layerId"
    .parameter "url"
    .parameter "proxy"
    .parameter "webView"

    .prologue
    const/4 v8, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 164
    const-string v6, "HTML5VideoViewProxy"

    const-string v7, "enterFullScreenVideo"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const/4 v3, 0x0

    .line 167
    .local v3, savePosition:I
    const/4 v0, 0x0

    .line 168
    .local v0, canSkipPrepare:Z
    const/4 v1, 0x0

    .line 169
    .local v1, forceStart:Z
    sget-object v6, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    if-eqz v6, :cond_3

    .line 172
    sget-object v6, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v6}, Landroid/webkit/HTML5VideoView;->fullScreenExited()Z

    move-result v6

    if-nez v6, :cond_0

    sget-object v6, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v6}, Landroid/webkit/HTML5VideoView;->isFullScreenMode()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 173
    const-string v4, "HTML5VideoViewProxy"

    const-string v5, "Try to reenter the full screen mode"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :goto_0
    return-void

    .line 177
    :cond_0
    sget-object v6, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v6}, Landroid/webkit/HTML5VideoView;->getCurrentState()I

    move-result v2

    .line 180
    .local v2, playerState:I
    sget-object v6, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v6}, Landroid/webkit/HTML5VideoView;->getVideoLayerId()I

    move-result v6

    if-ne p0, v6, :cond_2

    .line 181
    sget-object v6, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v6}, Landroid/webkit/HTML5VideoView;->getCurrentPosition()I

    move-result v3

    .line 182
    if-eq v2, v4, :cond_1

    const/4 v6, 0x2

    if-eq v2, v6, :cond_1

    if-ne v2, v8, :cond_4

    :cond_1
    sget-object v6, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v6}, Landroid/webkit/HTML5VideoView;->isFullScreenMode()Z

    move-result v6

    if-nez v6, :cond_4

    move v0, v4

    .line 187
    :cond_2
    :goto_1
    if-nez v0, :cond_5

    .line 188
    sget-object v4, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v4}, Landroid/webkit/HTML5VideoView;->reset()V

    .line 193
    :goto_2
    sget-object v4, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v4}, Landroid/webkit/HTML5VideoView;->abandonAudioFocus()V

    .line 196
    .end local v2           #playerState:I
    :cond_3
    new-instance v4, Landroid/webkit/HTML5VideoFullScreen;

    invoke-virtual {p2}, Landroid/webkit/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, p0, v3, v0}, Landroid/webkit/HTML5VideoFullScreen;-><init>(Landroid/content/Context;IIZ)V

    sput-object v4, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    .line 198
    sget-object v4, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v4, v1}, Landroid/webkit/HTML5VideoView;->setStartWhenPrepared(Z)V

    .line 199
    sput-object p2, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    .line 200
    sget-object v4, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    sget-object v5, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v4, p1, v5}, Landroid/webkit/HTML5VideoView;->setVideoURI(Ljava/lang/String;Landroid/webkit/HTML5VideoViewProxy;)V

    .line 201
    sget-object v4, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v4, p0, p2, p3}, Landroid/webkit/HTML5VideoView;->enterFullScreenVideoState(ILandroid/webkit/HTML5VideoViewProxy;Landroid/webkit/WebViewClassic;)V

    goto :goto_0

    .restart local v2       #playerState:I
    :cond_4
    move v0, v5

    .line 182
    goto :goto_1

    .line 190
    :cond_5
    if-eq v2, v4, :cond_6

    if-ne v2, v8, :cond_7

    :cond_6
    move v1, v4

    :goto_3
    goto :goto_2

    :cond_7
    move v1, v5

    goto :goto_3
.end method

.method public static exitFullScreenVideo(Landroid/webkit/HTML5VideoViewProxy;Landroid/webkit/WebViewClassic;)V
    .locals 2
    .parameter "proxy"
    .parameter "webView"

    .prologue
    .line 206
    sget-object v1, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    if-eqz v1, :cond_0

    .line 207
    sget-object v1, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v1}, Landroid/webkit/HTML5VideoView;->fullScreenExited()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v1}, Landroid/webkit/HTML5VideoView;->isFullScreenMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    invoke-virtual {p1}, Landroid/webkit/WebViewClassic;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v0

    .line 209
    .local v0, client:Landroid/webkit/WebChromeClient;
    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    .line 214
    .end local v0           #client:Landroid/webkit/WebChromeClient;
    :cond_0
    return-void
.end method

.method public static getCurrentPosition()I
    .locals 2

    .prologue
    .line 280
    const/4 v0, 0x0

    .line 281
    .local v0, currentPosMs:I
    sget-object v1, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    if-eqz v1, :cond_0

    .line 282
    sget-object v1, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v1}, Landroid/webkit/HTML5VideoView;->getCurrentPosition()I

    move-result v0

    .line 284
    :cond_0
    return v0
.end method

.method public static getVideoView()Landroid/webkit/HTML5VideoView;
    .locals 1

    .prologue
    .line 321
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    return-object v0
.end method

.method public static isPlaying(Landroid/webkit/HTML5VideoViewProxy;)Z
    .locals 1
    .parameter "proxy"

    .prologue
    .line 275
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    if-ne v0, p0, :cond_0

    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static onPrepared()V
    .locals 1

    .prologue
    .line 300
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView;->isFullScreenMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 301
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView;->start()V

    .line 303
    :cond_0
    sget v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mBaseLayer:I

    if-eqz v0, :cond_1

    .line 304
    sget v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mBaseLayer:I

    invoke-static {v0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->setBaseLayer(I)V

    .line 306
    :cond_1
    return-void
.end method

.method public static onStopFullScreen()V
    .locals 1

    .prologue
    .line 331
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy;->dispatchOnStopFullScreen()V

    .line 332
    return-void
.end method

.method public static pause(Landroid/webkit/HTML5VideoViewProxy;)V
    .locals 1
    .parameter "proxy"

    .prologue
    .line 294
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    if-ne v0, p0, :cond_0

    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    if-eqz v0, :cond_0

    .line 295
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView;->pause()V

    .line 297
    :cond_0
    return-void
.end method

.method public static pauseAndDispatch()V
    .locals 2

    .prologue
    .line 153
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    if-eqz v0, :cond_0

    .line 154
    const-string v0, "HTML5VideoViewProxy"

    const-string/jumbo v1, "pauseAndDispatch() called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    sget-object v1, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0, v1}, Landroid/webkit/HTML5VideoView;->pauseAndDispatch(Landroid/webkit/HTML5VideoViewProxy;)V

    .line 158
    sget v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mBaseLayer:I

    invoke-static {v0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->setBaseLayer(I)V

    .line 160
    :cond_0
    return-void
.end method

.method public static play(Ljava/lang/String;ILandroid/webkit/HTML5VideoViewProxy;Landroid/webkit/WebChromeClient;I)V
    .locals 4
    .parameter "url"
    .parameter "time"
    .parameter "proxy"
    .parameter "client"
    .parameter "videoLayerId"

    .prologue
    .line 221
    const/4 v1, -0x1

    .line 222
    .local v1, currentVideoLayerId:I
    const/4 v0, 0x0

    .line 223
    .local v0, backFromFullScreenMode:Z
    sget-object v2, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    if-eqz v2, :cond_1

    .line 224
    sget-object v2, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v2}, Landroid/webkit/HTML5VideoView;->getVideoLayerId()I

    move-result v1

    .line 225
    sget-object v2, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v2}, Landroid/webkit/HTML5VideoView;->fullScreenExited()Z

    move-result v0

    .line 230
    sget-object v2, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v2}, Landroid/webkit/HTML5VideoView;->isFullScreenMode()Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v0, :cond_1

    if-eq v1, p4, :cond_1

    sget-object v2, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    if-eq v2, p2, :cond_1

    .line 234
    sput-object p2, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    .line 235
    sget-object v2, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/HTML5VideoView;->setStartWhenPrepared(Z)V

    .line 236
    sget-object v2, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v2, p0, p2}, Landroid/webkit/HTML5VideoView;->setVideoURI(Ljava/lang/String;Landroid/webkit/HTML5VideoViewProxy;)V

    .line 237
    sget-object v2, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v2, p2}, Landroid/webkit/HTML5VideoView;->reprepareData(Landroid/webkit/HTML5VideoViewProxy;)V

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    if-nez v0, :cond_2

    if-ne v1, p4, :cond_2

    sget-object v2, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v2}, Landroid/webkit/HTML5VideoView;->surfaceTextureDeleted()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 250
    :cond_2
    sget-object v2, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    if-eqz v2, :cond_4

    .line 251
    if-nez v0, :cond_3

    sget-object v2, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v2}, Landroid/webkit/HTML5VideoView;->surfaceTextureDeleted()Z

    move-result v2

    if-nez v2, :cond_3

    .line 252
    sget-object v2, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    sget-object v3, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v2, v3}, Landroid/webkit/HTML5VideoView;->pauseAndDispatch(Landroid/webkit/HTML5VideoViewProxy;)V

    .line 254
    :cond_3
    sget-object v2, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v2}, Landroid/webkit/HTML5VideoView;->reset()V

    .line 256
    :cond_4
    sput-object p2, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    .line 257
    new-instance v2, Landroid/webkit/HTML5VideoInline;

    invoke-direct {v2, p4, p1}, Landroid/webkit/HTML5VideoInline;-><init>(II)V

    sput-object v2, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    .line 259
    sget-object v2, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    sget-object v3, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v2, p0, v3}, Landroid/webkit/HTML5VideoView;->setVideoURI(Ljava/lang/String;Landroid/webkit/HTML5VideoViewProxy;)V

    .line 260
    sget-object v2, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v2, p2}, Landroid/webkit/HTML5VideoView;->prepareDataAndDisplayMode(Landroid/webkit/HTML5VideoViewProxy;)V

    goto :goto_0

    .line 261
    :cond_5
    sget-object v2, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    if-ne v2, p2, :cond_6

    .line 263
    sget-object v2, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v2}, Landroid/webkit/HTML5VideoView;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_0

    .line 264
    sget-object v2, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v2, p1}, Landroid/webkit/HTML5VideoView;->seekTo(I)V

    .line 265
    sget-object v2, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v2}, Landroid/webkit/HTML5VideoView;->start()V

    goto :goto_0

    .line 267
    :cond_6
    sget-object v2, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    if-eqz v2, :cond_0

    .line 270
    invoke-virtual {p2}, Landroid/webkit/HTML5VideoViewProxy;->dispatchOnEnded()V

    goto :goto_0
.end method

.method public static seek(ILandroid/webkit/HTML5VideoViewProxy;)V
    .locals 1
    .parameter "time"
    .parameter "proxy"

    .prologue
    .line 288
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    if-ne v0, p1, :cond_0

    if-ltz p0, :cond_0

    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    if-eqz v0, :cond_0

    .line 289
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0, p0}, Landroid/webkit/HTML5VideoView;->seekTo(I)V

    .line 291
    :cond_0
    return-void
.end method

.method public static setBaseLayer(I)V
    .locals 7
    .parameter "layer"

    .prologue
    .line 123
    sput p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mBaseLayer:I

    .line 126
    sget-object v5, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    if-eqz v5, :cond_1

    sget-object v5, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v5}, Landroid/webkit/HTML5VideoView;->isFullScreenMode()Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v5}, Landroid/webkit/HTML5VideoView;->surfaceTextureDeleted()Z

    move-result v5

    if-nez v5, :cond_1

    .line 130
    sget-object v5, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v5}, Landroid/webkit/HTML5VideoView;->getVideoLayerId()I

    move-result v0

    .line 131
    .local v0, currentVideoLayerId:I
    invoke-static {v0}, Landroid/webkit/HTML5VideoInline;->getSurfaceTexture(I)Landroid/graphics/SurfaceTexture;

    move-result-object v3

    .line 133
    .local v3, surfTexture:Landroid/graphics/SurfaceTexture;
    sget-object v5, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v5}, Landroid/webkit/HTML5VideoView;->getTextureName()I

    move-result v4

    .line 135
    .local v4, textureName:I
    if-eqz p0, :cond_1

    if-eqz v3, :cond_1

    const/4 v5, -0x1

    if-eq v0, v5, :cond_1

    .line 136
    sget-object v5, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v5}, Landroid/webkit/HTML5VideoView;->getCurrentState()I

    move-result v2

    .line 137
    .local v2, playerState:I
    sget-object v5, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v5}, Landroid/webkit/HTML5VideoView;->getPlayerBuffering()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 138
    const/4 v2, 0x1

    .line 139
    :cond_0
    #calls: Landroid/webkit/HTML5VideoViewProxy;->nativeSendSurfaceTexture(Landroid/graphics/SurfaceTexture;IIII)Z
    invoke-static {v3, p0, v0, v4, v2}, Landroid/webkit/HTML5VideoViewProxy;->access$000(Landroid/graphics/SurfaceTexture;IIII)Z

    move-result v1

    .line 142
    .local v1, foundInTree:Z
    const/4 v5, 0x2

    if-lt v2, v5, :cond_1

    if-nez v1, :cond_1

    .line 144
    sget-object v5, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    sget-object v6, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v5, v6}, Landroid/webkit/HTML5VideoView;->pauseAndDispatch(Landroid/webkit/HTML5VideoViewProxy;)V

    .line 145
    sget-object v5, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v5}, Landroid/webkit/HTML5VideoView;->deleteSurfaceTexture()V

    .line 149
    .end local v0           #currentVideoLayerId:I
    .end local v1           #foundInTree:Z
    .end local v2           #playerState:I
    .end local v3           #surfTexture:Landroid/graphics/SurfaceTexture;
    .end local v4           #textureName:I
    :cond_1
    return-void
.end method

.method private static setPlayerBuffering(Z)V
    .locals 1
    .parameter "playerBuffering"

    .prologue
    .line 113
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0, p0}, Landroid/webkit/HTML5VideoView;->setPlayerBuffering(Z)V

    .line 114
    return-void
.end method

.method public static setVolume(F)V
    .locals 1
    .parameter "volume"

    .prologue
    .line 325
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    if-eqz v0, :cond_0

    .line 326
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0, p0}, Landroid/webkit/HTML5VideoView;->setVolume(F)V

    .line 328
    :cond_0
    return-void
.end method

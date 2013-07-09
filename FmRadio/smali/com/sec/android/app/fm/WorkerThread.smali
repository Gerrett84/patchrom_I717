.class public Lcom/sec/android/app/fm/WorkerThread;
.super Ljava/lang/Thread;
.source "WorkerThread.java"


# static fields
.field private static _instance:Lcom/sec/android/app/fm/WorkerThread;

.field private static mType:I


# instance fields
.field public mBusy:Z

.field public mFreq:J

.field public mIsTune:Z

.field private mResId:I

.field private mView:Landroid/view/View;

.field private stop:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/fm/WorkerThread;->_instance:Lcom/sec/android/app/fm/WorkerThread;

    .line 30
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/fm/WorkerThread;->mType:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/fm/WorkerThread;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/sec/android/app/fm/WorkerThread;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/fm/WorkerThread;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget v0, p0, Lcom/sec/android/app/fm/WorkerThread;->mResId:I

    return v0
.end method

.method public static declared-synchronized getInstance()Lcom/sec/android/app/fm/WorkerThread;
    .locals 2

    .prologue
    .line 52
    const-class v1, Lcom/sec/android/app/fm/WorkerThread;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/app/fm/WorkerThread;->_instance:Lcom/sec/android/app/fm/WorkerThread;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/sec/android/app/fm/WorkerThread;

    invoke-direct {v0}, Lcom/sec/android/app/fm/WorkerThread;-><init>()V

    sput-object v0, Lcom/sec/android/app/fm/WorkerThread;->_instance:Lcom/sec/android/app/fm/WorkerThread;

    .line 54
    sget-object v0, Lcom/sec/android/app/fm/WorkerThread;->_instance:Lcom/sec/android/app/fm/WorkerThread;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/WorkerThread;->start()V

    .line 56
    :cond_0
    sget-object v0, Lcom/sec/android/app/fm/WorkerThread;->_instance:Lcom/sec/android/app/fm/WorkerThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized doOperation(IJLandroid/view/View;I)V
    .locals 3
    .parameter "type"
    .parameter "freq"
    .parameter "imgView"
    .parameter "resId"

    .prologue
    .line 194
    monitor-enter p0

    :try_start_0
    const-string v0, "WORKTHREAD"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "######### doOperation #### type :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    sput p1, Lcom/sec/android/app/fm/WorkerThread;->mType:I

    .line 196
    iput-wide p2, p0, Lcom/sec/android/app/fm/WorkerThread;->mFreq:J

    .line 197
    iput-object p4, p0, Lcom/sec/android/app/fm/WorkerThread;->mView:Landroid/view/View;

    .line 198
    iput p5, p0, Lcom/sec/android/app/fm/WorkerThread;->mResId:I

    .line 200
    sget-object v0, Lcom/sec/android/app/fm/WorkerThread;->_instance:Lcom/sec/android/app/fm/WorkerThread;

    if-eqz v0, :cond_0

    .line 202
    sget-object v0, Lcom/sec/android/app/fm/WorkerThread;->_instance:Lcom/sec/android/app/fm/WorkerThread;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    :cond_0
    monitor-exit p0

    return-void

    .line 194
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isTerminated()Z
    .locals 1

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/sec/android/app/fm/WorkerThread;->stop:Z

    return v0
.end method

.method public run()V
    .locals 8

    .prologue
    const/high16 v7, 0x447a

    .line 64
    :goto_0
    iget-boolean v1, p0, Lcom/sec/android/app/fm/WorkerThread;->stop:Z

    if-nez v1, :cond_1

    .line 66
    sget-object v2, Lcom/sec/android/app/fm/WorkerThread;->_instance:Lcom/sec/android/app/fm/WorkerThread;

    monitor-enter v2

    .line 69
    :try_start_0
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    if-eqz v1, :cond_0

    .line 70
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    const-string v3, "[WorkerThread] waiting for Job.."

    invoke-virtual {v1, v3}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 72
    :cond_0
    sget-object v1, Lcom/sec/android/app/fm/WorkerThread;->_instance:Lcom/sec/android/app/fm/WorkerThread;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    iget-boolean v1, p0, Lcom/sec/android/app/fm/WorkerThread;->stop:Z

    if-eqz v1, :cond_3

    .line 179
    :cond_1
    :goto_2
    const/4 v1, 0x0

    sput-object v1, Lcom/sec/android/app/fm/WorkerThread;->_instance:Lcom/sec/android/app/fm/WorkerThread;

    .line 180
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    if-eqz v1, :cond_2

    .line 181
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    const-string v2, "[WorkerThread] terminated.."

    invoke-virtual {v1, v2}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 182
    :cond_2
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 75
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 76
    :catch_1
    move-exception v1

    goto :goto_1

    .line 80
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 83
    :cond_3
    sget-object v2, Lcom/sec/android/app/fm/WorkerThread;->_instance:Lcom/sec/android/app/fm/WorkerThread;

    monitor-enter v2

    .line 84
    :try_start_4
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    if-eqz v1, :cond_5

    .line 85
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[WorkerThread] got job "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/sec/android/app/fm/WorkerThread;->mType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/sec/android/app/fm/WorkerThread;->mFreq:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 91
    :try_start_5
    sget v1, Lcom/sec/android/app/fm/WorkerThread;->mType:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    packed-switch v1, :pswitch_data_0

    .line 160
    :goto_3
    :try_start_6
    iget-object v1, p0, Lcom/sec/android/app/fm/WorkerThread;->mView:Landroid/view/View;

    if-eqz v1, :cond_4

    .line 161
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v1, v1, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    new-instance v3, Lcom/sec/android/app/fm/WorkerThread$2;

    invoke-direct {v3, p0}, Lcom/sec/android/app/fm/WorkerThread$2;-><init>(Lcom/sec/android/app/fm/WorkerThread;)V

    invoke-virtual {v1, v3}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->post(Ljava/lang/Runnable;)Z

    .line 174
    :cond_4
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/fm/WorkerThread;->mBusy:Z

    .line 176
    :goto_4
    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1

    .line 88
    :cond_5
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    .line 97
    :pswitch_0
    :try_start_8
    const-string v1, "WORKTHREAD"

    const-string v3, "######### OPERATION_TUNE####"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/fm/WorkerThread;->mBusy:Z

    .line 101
    iget-wide v3, p0, Lcom/sec/android/app/fm/WorkerThread;->mFreq:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_8

    .line 102
    sget v1, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ:F

    mul-float/2addr v1, v7

    float-to-int v1, v1

    int-to-long v3, v1

    iput-wide v3, p0, Lcom/sec/android/app/fm/WorkerThread;->mFreq:J

    .line 117
    :cond_6
    :goto_5
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v1, v1, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    iget-wide v3, p0, Lcom/sec/android/app/fm/WorkerThread;->mFreq:J

    invoke-virtual {v1, v3, v4}, Lcom/samsung/media/fmradio/FMPlayer;->tune(J)Z

    .line 118
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/fm/WorkerThread;->mIsTune:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_3

    .line 151
    :catch_2
    move-exception v0

    .line 152
    .local v0, e:Ljava/lang/Exception;
    :try_start_9
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v1, v1, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    new-instance v3, Lcom/sec/android/app/fm/WorkerThread$1;

    invoke-direct {v3, p0, v0}, Lcom/sec/android/app/fm/WorkerThread$1;-><init>(Lcom/sec/android/app/fm/WorkerThread;Ljava/lang/Exception;)V

    invoke-virtual {v1, v3}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 160
    :try_start_a
    iget-object v1, p0, Lcom/sec/android/app/fm/WorkerThread;->mView:Landroid/view/View;

    if-eqz v1, :cond_7

    .line 161
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v1, v1, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    new-instance v3, Lcom/sec/android/app/fm/WorkerThread$2;

    invoke-direct {v3, p0}, Lcom/sec/android/app/fm/WorkerThread$2;-><init>(Lcom/sec/android/app/fm/WorkerThread;)V

    invoke-virtual {v1, v3}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->post(Ljava/lang/Runnable;)Z

    .line 174
    :cond_7
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/fm/WorkerThread;->mBusy:Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_4

    .line 104
    .end local v0           #e:Ljava/lang/Exception;
    :cond_8
    :try_start_b
    sget-boolean v1, Lcom/sec/android/app/fm/MainActivity;->AUTO_SCAN:Z

    if-eqz v1, :cond_b

    .line 105
    iget-wide v3, p0, Lcom/sec/android/app/fm/WorkerThread;->mFreq:J

    sget v1, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ:F

    mul-float/2addr v1, v7

    float-to-int v1, v1

    int-to-long v5, v1

    cmp-long v1, v3, v5

    if-ltz v1, :cond_9

    iget-wide v3, p0, Lcom/sec/android/app/fm/WorkerThread;->mFreq:J

    sget v1, Lcom/sec/android/app/fm/MainActivity;->MAX_FREQ:F

    mul-float/2addr v1, v7

    float-to-int v1, v1

    int-to-long v5, v1

    cmp-long v1, v3, v5

    if-lez v1, :cond_6

    .line 107
    :cond_9
    sget v1, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ:F

    mul-float/2addr v1, v7

    float-to-int v1, v1

    int-to-long v3, v1

    iput-wide v3, p0, Lcom/sec/android/app/fm/WorkerThread;->mFreq:J

    .line 108
    const/4 v1, 0x0

    sput-boolean v1, Lcom/sec/android/app/fm/MainActivity;->AUTO_SCAN:Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_5

    .line 160
    :catchall_2
    move-exception v1

    :try_start_c
    iget-object v3, p0, Lcom/sec/android/app/fm/WorkerThread;->mView:Landroid/view/View;

    if-eqz v3, :cond_a

    .line 161
    sget-object v3, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v3, v3, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    new-instance v4, Lcom/sec/android/app/fm/WorkerThread$2;

    invoke-direct {v4, p0}, Lcom/sec/android/app/fm/WorkerThread$2;-><init>(Lcom/sec/android/app/fm/WorkerThread;)V

    invoke-virtual {v3, v4}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->post(Ljava/lang/Runnable;)Z

    .line 174
    :cond_a
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/app/fm/WorkerThread;->mBusy:Z

    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 111
    :cond_b
    :try_start_d
    iget-wide v3, p0, Lcom/sec/android/app/fm/WorkerThread;->mFreq:J

    const-wide/16 v5, 0x222e

    cmp-long v1, v3, v5

    if-ltz v1, :cond_c

    iget-wide v3, p0, Lcom/sec/android/app/fm/WorkerThread;->mFreq:J

    sget v1, Lcom/sec/android/app/fm/MainActivity;->MAX_FREQ:F

    mul-float/2addr v1, v7

    float-to-int v1, v1

    int-to-long v5, v1

    cmp-long v1, v3, v5

    if-lez v1, :cond_6

    .line 113
    :cond_c
    sget v1, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ:F

    mul-float/2addr v1, v7

    float-to-int v1, v1

    int-to-long v3, v1

    iput-wide v3, p0, Lcom/sec/android/app/fm/WorkerThread;->mFreq:J

    goto/16 :goto_5

    .line 123
    :pswitch_1
    const-string v1, "WORKTHREAD"

    const-string v3, "####### NEXT BUTTON SELECTED ####"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/fm/WorkerThread;->mBusy:Z

    .line 129
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v1, v1, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v1}, Lcom/samsung/media/fmradio/FMPlayer;->seekUp()J

    .line 132
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/fm/WorkerThread;->mIsTune:Z

    goto/16 :goto_3

    .line 136
    :pswitch_2
    const-string v1, "WORKTHREAD"

    const-string v3, "####### PREVIOUS BUTTON SELECTED ####"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/fm/WorkerThread;->mBusy:Z

    .line 141
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v1, v1, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v1}, Lcom/samsung/media/fmradio/FMPlayer;->seekDown()J

    .line 144
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/fm/WorkerThread;->mIsTune:Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    goto/16 :goto_3

    .line 91
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public terminate()V
    .locals 2

    .prologue
    .line 211
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/fm/WorkerThread;->stop:Z

    .line 212
    sget-object v0, Lcom/sec/android/app/fm/WorkerThread;->_instance:Lcom/sec/android/app/fm/WorkerThread;

    if-eqz v0, :cond_0

    .line 213
    sget-object v1, Lcom/sec/android/app/fm/WorkerThread;->_instance:Lcom/sec/android/app/fm/WorkerThread;

    monitor-enter v1

    .line 214
    :try_start_0
    sget-object v0, Lcom/sec/android/app/fm/WorkerThread;->_instance:Lcom/sec/android/app/fm/WorkerThread;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 215
    monitor-exit v1

    .line 217
    :cond_0
    return-void

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

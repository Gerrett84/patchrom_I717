.class public Landroid/hardware/gesturedev/GestureDevice;
.super Ljava/lang/Object;
.source "GestureDevice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/gesturedev/GestureDevice$ErrorCallback;,
        Landroid/hardware/gesturedev/GestureDevice$GestureListener;,
        Landroid/hardware/gesturedev/GestureDevice$EventHandler;
    }
.end annotation


# static fields
.field public static final GESTURE_ERROR_SERVER_DIED:I = 0x64

.field public static final GESTURE_ERROR_UNKNOWN:I = 0x1

.field private static final GESTURE_MSG_ALL_MSGS:I = 0xfff

.field private static final GESTURE_MSG_ERROR:I = 0x1

.field private static final GESTURE_MSG_GESTURE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "GestureDevice"

.field private static mDeviceList:[Landroid/hardware/gesturedev/GestureDevice;

.field private static mNumOfDevice:I

.field private static mRefCountList:[I


# instance fields
.field private mDeviceId:I

.field private mErrorCBList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/gesturedev/GestureDevice$ErrorCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mEventHandler:Landroid/hardware/gesturedev/GestureDevice$EventHandler;

.field private mGestureRunning:Z

.field private mListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/gesturedev/GestureDevice$GestureListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNativeContext:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    sput-object v0, Landroid/hardware/gesturedev/GestureDevice;->mDeviceList:[Landroid/hardware/gesturedev/GestureDevice;

    .line 41
    sput-object v0, Landroid/hardware/gesturedev/GestureDevice;->mRefCountList:[I

    .line 42
    const/4 v0, 0x0

    sput v0, Landroid/hardware/gesturedev/GestureDevice;->mNumOfDevice:I

    return-void
.end method

.method private constructor <init>(I)V
    .locals 3
    .parameter "deviceId"

    .prologue
    const/4 v2, 0x0

    .line 60
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object v2, p0, Landroid/hardware/gesturedev/GestureDevice;->mEventHandler:Landroid/hardware/gesturedev/GestureDevice$EventHandler;

    .line 36
    iput-object v2, p0, Landroid/hardware/gesturedev/GestureDevice;->mErrorCBList:Ljava/util/ArrayList;

    .line 37
    iput-object v2, p0, Landroid/hardware/gesturedev/GestureDevice;->mListenerList:Ljava/util/ArrayList;

    .line 38
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/hardware/gesturedev/GestureDevice;->mGestureRunning:Z

    .line 61
    iput p1, p0, Landroid/hardware/gesturedev/GestureDevice;->mDeviceId:I

    .line 63
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 64
    new-instance v1, Landroid/hardware/gesturedev/GestureDevice$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Landroid/hardware/gesturedev/GestureDevice$EventHandler;-><init>(Landroid/hardware/gesturedev/GestureDevice;Landroid/hardware/gesturedev/GestureDevice;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/hardware/gesturedev/GestureDevice;->mEventHandler:Landroid/hardware/gesturedev/GestureDevice$EventHandler;

    .line 71
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/gesturedev/GestureDevice;->mErrorCBList:Ljava/util/ArrayList;

    .line 72
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/gesturedev/GestureDevice;->mListenerList:Ljava/util/ArrayList;

    .line 74
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v1, p1}, Landroid/hardware/gesturedev/GestureDevice;->native_setup(Ljava/lang/Object;I)V

    .line 75
    return-void

    .line 65
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 66
    new-instance v1, Landroid/hardware/gesturedev/GestureDevice$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Landroid/hardware/gesturedev/GestureDevice$EventHandler;-><init>(Landroid/hardware/gesturedev/GestureDevice;Landroid/hardware/gesturedev/GestureDevice;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/hardware/gesturedev/GestureDevice;->mEventHandler:Landroid/hardware/gesturedev/GestureDevice$EventHandler;

    goto :goto_0

    .line 68
    :cond_1
    iput-object v2, p0, Landroid/hardware/gesturedev/GestureDevice;->mEventHandler:Landroid/hardware/gesturedev/GestureDevice$EventHandler;

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/hardware/gesturedev/GestureDevice;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Landroid/hardware/gesturedev/GestureDevice;->mListenerList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Landroid/hardware/gesturedev/GestureDevice;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Landroid/hardware/gesturedev/GestureDevice;->mErrorCBList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static declared-synchronized close(Landroid/hardware/gesturedev/GestureDevice;)V
    .locals 4
    .parameter "device"

    .prologue
    .line 304
    const-class v2, Landroid/hardware/gesturedev/GestureDevice;

    monitor-enter v2

    :try_start_0
    iget v0, p0, Landroid/hardware/gesturedev/GestureDevice;->mDeviceId:I

    .line 305
    .local v0, deviceId:I
    sget-object v1, Landroid/hardware/gesturedev/GestureDevice;->mRefCountList:[I

    if-eqz v1, :cond_0

    sget-object v1, Landroid/hardware/gesturedev/GestureDevice;->mDeviceList:[Landroid/hardware/gesturedev/GestureDevice;

    if-eqz v1, :cond_0

    .line 306
    sget-object v1, Landroid/hardware/gesturedev/GestureDevice;->mRefCountList:[I

    aget v3, v1, v0

    add-int/lit8 v3, v3, -0x1

    aput v3, v1, v0

    .line 307
    sget-object v1, Landroid/hardware/gesturedev/GestureDevice;->mRefCountList:[I

    aget v1, v1, v0

    if-nez v1, :cond_1

    .line 308
    invoke-direct {p0}, Landroid/hardware/gesturedev/GestureDevice;->release()V

    .line 309
    sget-object v1, Landroid/hardware/gesturedev/GestureDevice;->mDeviceList:[Landroid/hardware/gesturedev/GestureDevice;

    const/4 v3, 0x0

    aput-object v3, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    .line 310
    :cond_1
    :try_start_1
    sget-object v1, Landroid/hardware/gesturedev/GestureDevice;->mRefCountList:[I

    aget v1, v1, v0

    if-gez v1, :cond_0

    .line 311
    sget-object v1, Landroid/hardware/gesturedev/GestureDevice;->mRefCountList:[I

    const/4 v3, 0x0

    aput v3, v1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 304
    .end local v0           #deviceId:I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static native getNumberOfGestureDevices()I
.end method

.method private final native native_getParameters()Ljava/lang/String;
.end method

.method private final native native_release()V
.end method

.method private final native native_setParameters(Ljava/lang/String;)V
.end method

.method private final native native_setup(Ljava/lang/Object;I)V
.end method

.method private final native native_startGesture()V
.end method

.method private final native native_stopGesture()V
.end method

.method public static declared-synchronized open(I)Landroid/hardware/gesturedev/GestureDevice;
    .locals 3
    .parameter "deviceId"

    .prologue
    .line 275
    const-class v1, Landroid/hardware/gesturedev/GestureDevice;

    monitor-enter v1

    :try_start_0
    sget v0, Landroid/hardware/gesturedev/GestureDevice;->mNumOfDevice:I

    if-nez v0, :cond_0

    .line 276
    invoke-static {}, Landroid/hardware/gesturedev/GestureDevice;->getNumberOfGestureDevices()I

    move-result v0

    sput v0, Landroid/hardware/gesturedev/GestureDevice;->mNumOfDevice:I

    .line 278
    :cond_0
    sget-object v0, Landroid/hardware/gesturedev/GestureDevice;->mDeviceList:[Landroid/hardware/gesturedev/GestureDevice;

    if-nez v0, :cond_1

    sget v0, Landroid/hardware/gesturedev/GestureDevice;->mNumOfDevice:I

    if-lez v0, :cond_1

    .line 279
    sget v0, Landroid/hardware/gesturedev/GestureDevice;->mNumOfDevice:I

    new-array v0, v0, [Landroid/hardware/gesturedev/GestureDevice;

    sput-object v0, Landroid/hardware/gesturedev/GestureDevice;->mDeviceList:[Landroid/hardware/gesturedev/GestureDevice;

    .line 280
    sget v0, Landroid/hardware/gesturedev/GestureDevice;->mNumOfDevice:I

    new-array v0, v0, [I

    sput-object v0, Landroid/hardware/gesturedev/GestureDevice;->mRefCountList:[I

    .line 283
    :cond_1
    if-ltz p0, :cond_2

    sget v0, Landroid/hardware/gesturedev/GestureDevice;->mNumOfDevice:I

    if-lt p0, v0, :cond_3

    .line 284
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Invalid device ID"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 287
    :cond_3
    :try_start_1
    sget-object v0, Landroid/hardware/gesturedev/GestureDevice;->mDeviceList:[Landroid/hardware/gesturedev/GestureDevice;

    aget-object v0, v0, p0

    if-nez v0, :cond_4

    .line 288
    sget-object v0, Landroid/hardware/gesturedev/GestureDevice;->mDeviceList:[Landroid/hardware/gesturedev/GestureDevice;

    new-instance v2, Landroid/hardware/gesturedev/GestureDevice;

    invoke-direct {v2, p0}, Landroid/hardware/gesturedev/GestureDevice;-><init>(I)V

    aput-object v2, v0, p0

    .line 289
    sget-object v0, Landroid/hardware/gesturedev/GestureDevice;->mRefCountList:[I

    const/4 v2, 0x0

    aput v2, v0, p0

    .line 292
    :cond_4
    sget-object v0, Landroid/hardware/gesturedev/GestureDevice;->mRefCountList:[I

    aget v2, v0, p0

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, p0

    .line 293
    sget-object v0, Landroid/hardware/gesturedev/GestureDevice;->mDeviceList:[Landroid/hardware/gesturedev/GestureDevice;

    aget-object v0, v0, p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 3
    .parameter "gesture_ref"
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 97
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/gesturedev/GestureDevice;

    .line 98
    .local v0, c:Landroid/hardware/gesturedev/GestureDevice;
    if-nez v0, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    iget-object v2, v0, Landroid/hardware/gesturedev/GestureDevice;->mEventHandler:Landroid/hardware/gesturedev/GestureDevice$EventHandler;

    if-eqz v2, :cond_0

    .line 102
    iget-object v2, v0, Landroid/hardware/gesturedev/GestureDevice;->mEventHandler:Landroid/hardware/gesturedev/GestureDevice$EventHandler;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/hardware/gesturedev/GestureDevice$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 103
    .local v1, m:Landroid/os/Message;
    iget-object v2, v0, Landroid/hardware/gesturedev/GestureDevice;->mEventHandler:Landroid/hardware/gesturedev/GestureDevice$EventHandler;

    invoke-virtual {v2, v1}, Landroid/hardware/gesturedev/GestureDevice$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 82
    iget-object v0, p0, Landroid/hardware/gesturedev/GestureDevice;->mErrorCBList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Landroid/hardware/gesturedev/GestureDevice;->mErrorCBList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 84
    iput-object v1, p0, Landroid/hardware/gesturedev/GestureDevice;->mErrorCBList:Ljava/util/ArrayList;

    .line 86
    :cond_0
    iget-object v0, p0, Landroid/hardware/gesturedev/GestureDevice;->mListenerList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Landroid/hardware/gesturedev/GestureDevice;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 88
    iput-object v1, p0, Landroid/hardware/gesturedev/GestureDevice;->mListenerList:Ljava/util/ArrayList;

    .line 91
    :cond_1
    invoke-direct {p0}, Landroid/hardware/gesturedev/GestureDevice;->native_release()V

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/gesturedev/GestureDevice;->mGestureRunning:Z

    .line 93
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/hardware/gesturedev/GestureDevice;->release()V

    .line 79
    return-void
.end method

.method public declared-synchronized getParameters()Landroid/hardware/gesturedev/GestureParameters;
    .locals 5

    .prologue
    .line 242
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/hardware/gesturedev/GestureParameters;

    invoke-direct {v0}, Landroid/hardware/gesturedev/GestureParameters;-><init>()V

    .line 243
    .local v0, p:Landroid/hardware/gesturedev/GestureParameters;
    invoke-direct {p0}, Landroid/hardware/gesturedev/GestureDevice;->native_getParameters()Ljava/lang/String;

    move-result-object v1

    .line 244
    .local v1, s:Ljava/lang/String;
    const-string v2, "GestureDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getParameter: ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-virtual {v0, v1}, Landroid/hardware/gesturedev/GestureParameters;->unflatten(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    monitor-exit p0

    return-object v0

    .line 242
    .end local v0           #p:Landroid/hardware/gesturedev/GestureParameters;
    .end local v1           #s:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized registerErrorCallback(Landroid/hardware/gesturedev/GestureDevice$ErrorCallback;Z)V
    .locals 1
    .parameter "cb"
    .parameter "reg"

    .prologue
    .line 165
    monitor-enter p0

    if-eqz p2, :cond_0

    .line 166
    :try_start_0
    iget-object v0, p0, Landroid/hardware/gesturedev/GestureDevice;->mErrorCBList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    :goto_0
    monitor-exit p0

    return-void

    .line 168
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/hardware/gesturedev/GestureDevice;->mErrorCBList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerGestureListener(Landroid/hardware/gesturedev/GestureDevice$GestureListener;Z)V
    .locals 1
    .parameter "listener"
    .parameter "reg"

    .prologue
    .line 182
    monitor-enter p0

    if-eqz p2, :cond_0

    .line 183
    :try_start_0
    iget-object v0, p0, Landroid/hardware/gesturedev/GestureDevice;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    :goto_0
    monitor-exit p0

    return-void

    .line 185
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/hardware/gesturedev/GestureDevice;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setParameters(Landroid/hardware/gesturedev/GestureParameters;)V
    .locals 1
    .parameter "params"

    .prologue
    .line 231
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/gesturedev/GestureParameters;->flatten()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/gesturedev/GestureDevice;->native_setParameters(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    monitor-exit p0

    return-void

    .line 231
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startGesture()V
    .locals 2

    .prologue
    .line 203
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/hardware/gesturedev/GestureDevice;->mGestureRunning:Z

    if-eqz v0, :cond_0

    .line 204
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Gesture is already running"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 206
    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroid/hardware/gesturedev/GestureDevice;->native_startGesture()V

    .line 207
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/gesturedev/GestureDevice;->mGestureRunning:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 208
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized stopGesture()V
    .locals 1

    .prologue
    .line 216
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Landroid/hardware/gesturedev/GestureDevice;->native_stopGesture()V

    .line 217
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/gesturedev/GestureDevice;->mGestureRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    monitor-exit p0

    return-void

    .line 216
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

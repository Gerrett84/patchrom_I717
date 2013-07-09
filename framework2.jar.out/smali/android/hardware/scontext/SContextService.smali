.class public Landroid/hardware/scontext/SContextService;
.super Landroid/hardware/scontext/ISContextService$Stub;
.source "SContextService.java"

# interfaces
.implements Landroid/hardware/scontext/ISContextListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/scontext/SContextService$EventPool;,
        Landroid/hardware/scontext/SContextService$ServiceHandler;,
        Landroid/hardware/scontext/SContextService$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SContextService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDeviceType:I

.field private mEventPool:Landroid/hardware/scontext/SContextService$EventPool;

.field private mHandler:Landroid/hardware/scontext/SContextService$ServiceHandler;

.field private mHeight:F

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/scontext/SContextService$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mSContextApproachContext:Landroid/hardware/scontext/SContextContexts$SContextApproachContext;

.field private mSContextAutoRotationContext:Landroid/hardware/scontext/SContextContexts$SContextAutoRotationContext;

.field private mSContextMotionContext:Landroid/hardware/scontext/SContextContexts$SContextMotionContext;

.field private mSContextMovementContext:Landroid/hardware/scontext/SContextContexts$SContextMovementContext;

.field private mSContextPedometerContext:Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;

.field private mSContextStepCountAlertContext:Landroid/hardware/scontext/SContextContexts$SContextStepCountAlertContext;

.field private mStepCount:I

.field private mThread:Landroid/os/HandlerThread;

.field private mWeight:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Landroid/hardware/scontext/ISContextService$Stub;-><init>()V

    .line 53
    iput-object v1, p0, Landroid/hardware/scontext/SContextService;->mThread:Landroid/os/HandlerThread;

    .line 55
    iput-object v1, p0, Landroid/hardware/scontext/SContextService;->mHandler:Landroid/hardware/scontext/SContextService$ServiceHandler;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/ArrayList;

    .line 59
    iput-object v1, p0, Landroid/hardware/scontext/SContextService;->mEventPool:Landroid/hardware/scontext/SContextService$EventPool;

    .line 76
    iput-object p1, p0, Landroid/hardware/scontext/SContextService;->mContext:Landroid/content/Context;

    .line 77
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.sensor.hub"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "scontext"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/hardware/scontext/SContextService;->mThread:Landroid/os/HandlerThread;

    .line 80
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 82
    new-instance v0, Landroid/hardware/scontext/SContextService$ServiceHandler;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/hardware/scontext/SContextService$ServiceHandler;-><init>(Landroid/hardware/scontext/SContextService;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/hardware/scontext/SContextService;->mHandler:Landroid/hardware/scontext/SContextService$ServiceHandler;

    .line 84
    new-instance v0, Landroid/hardware/scontext/SContextService$EventPool;

    invoke-direct {v0, p0}, Landroid/hardware/scontext/SContextService$EventPool;-><init>(Landroid/hardware/scontext/SContextService;)V

    iput-object v0, p0, Landroid/hardware/scontext/SContextService;->mEventPool:Landroid/hardware/scontext/SContextService$EventPool;

    .line 86
    invoke-virtual {p0}, Landroid/hardware/scontext/SContextService;->createSContextService()V

    .line 87
    invoke-direct {p0, p0}, Landroid/hardware/scontext/SContextService;->addSContextListener(Landroid/hardware/scontext/ISContextListener;)V

    .line 89
    :cond_0
    const-string v0, "SContextService"

    const-string v1, "SContextService()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return-void
.end method

.method static synthetic access$200(Landroid/hardware/scontext/SContextService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextService$EventPool;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mEventPool:Landroid/hardware/scontext/SContextService$EventPool;

    return-object v0
.end method

.method private addSContextListener(Landroid/hardware/scontext/ISContextListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/scontext/SContextUpdateContext;->getInstance()Landroid/hardware/scontext/SContextUpdateContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/scontext/SContextUpdateContext;->addListener(Landroid/hardware/scontext/ISContextListener;)V

    .line 94
    const-string v0, "SContextService"

    const-string v1, "addSContextListener()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return-void
.end method

.method private notifyListeners(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 6
    .parameter "binder"
    .parameter "str"

    .prologue
    .line 237
    const-string v1, ""

    .line 239
    .local v1, client:Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Landroid/hardware/scontext/ISContextCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/scontext/ISContextCallback;

    move-result-object v0

    .line 240
    .local v0, cb:Landroid/hardware/scontext/ISContextCallback;
    invoke-interface {v0}, Landroid/hardware/scontext/ISContextCallback;->getListenerInfo()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 244
    .end local v0           #cb:Landroid/hardware/scontext/ISContextCallback;
    :goto_0
    const-string v3, "SContextService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  ."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", client="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v3, p0, Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 248
    return-void

    .line 241
    :catch_0
    move-exception v2

    .line 242
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public addSContextService(I)V
    .locals 3
    .parameter "service"

    .prologue
    .line 309
    invoke-virtual {p0, p1}, Landroid/hardware/scontext/SContextService;->resetSContextService(I)V

    .line 310
    packed-switch p1, :pswitch_data_0

    .line 338
    :goto_0
    return-void

    .line 337
    :pswitch_0
    const-string v0, "SContextService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addSContextService() : service = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 310
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public createSContextService()V
    .locals 2

    .prologue
    .line 253
    new-instance v0, Landroid/hardware/scontext/SContextContexts$SContextApproachContext;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextContexts$SContextApproachContext;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextService;->mSContextApproachContext:Landroid/hardware/scontext/SContextContexts$SContextApproachContext;

    .line 254
    new-instance v0, Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextService;->mSContextPedometerContext:Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;

    .line 255
    new-instance v0, Landroid/hardware/scontext/SContextContexts$SContextStepCountAlertContext;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextContexts$SContextStepCountAlertContext;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextService;->mSContextStepCountAlertContext:Landroid/hardware/scontext/SContextContexts$SContextStepCountAlertContext;

    .line 256
    new-instance v0, Landroid/hardware/scontext/SContextContexts$SContextMotionContext;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextContexts$SContextMotionContext;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextService;->mSContextMotionContext:Landroid/hardware/scontext/SContextContexts$SContextMotionContext;

    .line 257
    new-instance v0, Landroid/hardware/scontext/SContextContexts$SContextMovementContext;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextContexts$SContextMovementContext;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextService;->mSContextMovementContext:Landroid/hardware/scontext/SContextContexts$SContextMovementContext;

    .line 258
    new-instance v0, Landroid/hardware/scontext/SContextContexts$SContextAutoRotationContext;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextContexts$SContextAutoRotationContext;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextService;->mSContextAutoRotationContext:Landroid/hardware/scontext/SContextContexts$SContextAutoRotationContext;

    .line 259
    const-string v0, "SContextService"

    const-string v1, "createSContextService()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    return-void
.end method

.method public initializeSContextService(I)V
    .locals 3
    .parameter "service"

    .prologue
    .line 295
    packed-switch p1, :pswitch_data_0

    .line 306
    :goto_0
    return-void

    .line 297
    :pswitch_0
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mSContextStepCountAlertContext:Landroid/hardware/scontext/SContextContexts$SContextStepCountAlertContext;

    invoke-virtual {v0}, Landroid/hardware/scontext/SContextContexts$SContextStepCountAlertContext;->clear()V

    .line 305
    const-string v0, "SContextService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initializeSContextService() : service = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 295
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public registerCallback(Landroid/os/IBinder;Landroid/hardware/scontext/SContext;)V
    .locals 9
    .parameter "binder"
    .parameter "scontext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 164
    const/4 v2, 0x0

    .line 165
    .local v2, listener:Landroid/hardware/scontext/SContextService$Listener;
    const/4 v5, 0x0

    .line 166
    .local v5, used:I
    invoke-virtual {p2}, Landroid/hardware/scontext/SContext;->getType()I

    move-result v4

    .line 167
    .local v4, service:I
    invoke-virtual {p2}, Landroid/hardware/scontext/SContext;->getStepCount()I

    move-result v6

    iput v6, p0, Landroid/hardware/scontext/SContextService;->mStepCount:I

    .line 168
    invoke-virtual {p2}, Landroid/hardware/scontext/SContext;->getHeight()F

    move-result v6

    iput v6, p0, Landroid/hardware/scontext/SContextService;->mHeight:F

    .line 169
    invoke-virtual {p2}, Landroid/hardware/scontext/SContext;->getWeight()F

    move-result v6

    iput v6, p0, Landroid/hardware/scontext/SContextService;->mWeight:F

    .line 170
    invoke-virtual {p2}, Landroid/hardware/scontext/SContext;->getDeviceType()I

    move-result v6

    iput v6, p0, Landroid/hardware/scontext/SContextService;->mDeviceType:I

    .line 172
    iget-object v7, p0, Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v7

    .line 173
    :try_start_0
    iget-object v6, p0, Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    move-object v3, v2

    .end local v2           #listener:Landroid/hardware/scontext/SContextService$Listener;
    .local v3, listener:Landroid/hardware/scontext/SContextService$Listener;
    :goto_0
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextService$Listener;

    .line 174
    .local v0, i:Landroid/hardware/scontext/SContextService$Listener;
    #getter for: Landroid/hardware/scontext/SContextService$Listener;->services:Ljava/util/HashSet;
    invoke-static {v0}, Landroid/hardware/scontext/SContextService$Listener;->access$000(Landroid/hardware/scontext/SContextService$Listener;)Ljava/util/HashSet;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 175
    add-int/lit8 v5, v5, 0x1

    .line 177
    :cond_0
    #getter for: Landroid/hardware/scontext/SContextService$Listener;->mToken:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/hardware/scontext/SContextService$Listener;->access$100(Landroid/hardware/scontext/SContextService$Listener;)Landroid/os/IBinder;

    move-result-object v6

    if-ne p1, v6, :cond_4

    .line 178
    move-object v2, v0

    .end local v3           #listener:Landroid/hardware/scontext/SContextService$Listener;
    .restart local v2       #listener:Landroid/hardware/scontext/SContextService$Listener;
    :goto_1
    move-object v3, v2

    .end local v2           #listener:Landroid/hardware/scontext/SContextService$Listener;
    .restart local v3       #listener:Landroid/hardware/scontext/SContextService$Listener;
    goto :goto_0

    .line 182
    .end local v0           #i:Landroid/hardware/scontext/SContextService$Listener;
    :cond_1
    if-nez v3, :cond_3

    .line 183
    new-instance v2, Landroid/hardware/scontext/SContextService$Listener;

    invoke-direct {v2, p0, p1}, Landroid/hardware/scontext/SContextService$Listener;-><init>(Landroid/hardware/scontext/SContextService;Landroid/os/IBinder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 184
    .end local v3           #listener:Landroid/hardware/scontext/SContextService$Listener;
    .restart local v2       #listener:Landroid/hardware/scontext/SContextService$Listener;
    const/4 v6, 0x0

    :try_start_2
    invoke-interface {p1, v2, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 185
    iget-object v6, p0, Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    :goto_2
    #getter for: Landroid/hardware/scontext/SContextService$Listener;->services:Ljava/util/HashSet;
    invoke-static {v2}, Landroid/hardware/scontext/SContextService$Listener;->access$000(Landroid/hardware/scontext/SContextService$Listener;)Ljava/util/HashSet;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 189
    #getter for: Landroid/hardware/scontext/SContextService$Listener;->services:Ljava/util/HashSet;
    invoke-static {v2}, Landroid/hardware/scontext/SContextService$Listener;->access$000(Landroid/hardware/scontext/SContextService$Listener;)Ljava/util/HashSet;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 190
    if-nez v5, :cond_2

    .line 191
    invoke-virtual {p0, v4}, Landroid/hardware/scontext/SContextService;->addSContextService(I)V

    .line 195
    :cond_2
    #getter for: Landroid/hardware/scontext/SContextService$Listener;->services:Ljava/util/HashSet;
    invoke-static {v2}, Landroid/hardware/scontext/SContextService$Listener;->access$000(Landroid/hardware/scontext/SContextService$Listener;)Ljava/util/HashSet;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 196
    const-string v6, "registerCallback"

    invoke-direct {p0, p1, v6}, Landroid/hardware/scontext/SContextService;->notifyListeners(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 197
    monitor-exit v7

    .line 198
    return-void

    .line 197
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    :goto_3
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .end local v2           #listener:Landroid/hardware/scontext/SContextService$Listener;
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #listener:Landroid/hardware/scontext/SContextService$Listener;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3           #listener:Landroid/hardware/scontext/SContextService$Listener;
    .restart local v2       #listener:Landroid/hardware/scontext/SContextService$Listener;
    goto :goto_3

    .end local v2           #listener:Landroid/hardware/scontext/SContextService$Listener;
    .restart local v3       #listener:Landroid/hardware/scontext/SContextService$Listener;
    :cond_3
    move-object v2, v3

    .end local v3           #listener:Landroid/hardware/scontext/SContextService$Listener;
    .restart local v2       #listener:Landroid/hardware/scontext/SContextService$Listener;
    goto :goto_2

    .end local v2           #listener:Landroid/hardware/scontext/SContextService$Listener;
    .restart local v0       #i:Landroid/hardware/scontext/SContextService$Listener;
    .restart local v3       #listener:Landroid/hardware/scontext/SContextService$Listener;
    :cond_4
    move-object v2, v3

    .end local v3           #listener:Landroid/hardware/scontext/SContextService$Listener;
    .restart local v2       #listener:Landroid/hardware/scontext/SContextService$Listener;
    goto :goto_1
.end method

.method public removeSContextService(I)V
    .locals 3
    .parameter "service"

    .prologue
    .line 341
    packed-switch p1, :pswitch_data_0

    .line 364
    :goto_0
    return-void

    .line 363
    :pswitch_0
    const-string v0, "SContextService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeSContextService() : service = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 341
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public resetSContextService(I)V
    .locals 3
    .parameter "service"

    .prologue
    .line 263
    packed-switch p1, :pswitch_data_0

    .line 292
    :goto_0
    return-void

    .line 265
    :pswitch_0
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mSContextApproachContext:Landroid/hardware/scontext/SContextContexts$SContextApproachContext;

    invoke-virtual {v0}, Landroid/hardware/scontext/SContextContexts$SContextApproachContext;->clear()V

    .line 291
    :goto_1
    const-string v0, "SContextService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initializeSContextService() : service = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 269
    :pswitch_1
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mSContextPedometerContext:Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;

    invoke-virtual {v0}, Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;->clear()V

    goto :goto_1

    .line 273
    :pswitch_2
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mSContextStepCountAlertContext:Landroid/hardware/scontext/SContextContexts$SContextStepCountAlertContext;

    invoke-virtual {v0}, Landroid/hardware/scontext/SContextContexts$SContextStepCountAlertContext;->clear()V

    goto :goto_1

    .line 277
    :pswitch_3
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mSContextMotionContext:Landroid/hardware/scontext/SContextContexts$SContextMotionContext;

    invoke-virtual {v0}, Landroid/hardware/scontext/SContextContexts$SContextMotionContext;->clear()V

    goto :goto_1

    .line 281
    :pswitch_4
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mSContextMovementContext:Landroid/hardware/scontext/SContextContexts$SContextMovementContext;

    invoke-virtual {v0}, Landroid/hardware/scontext/SContextContexts$SContextMovementContext;->clear()V

    goto :goto_1

    .line 285
    :pswitch_5
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mSContextAutoRotationContext:Landroid/hardware/scontext/SContextContexts$SContextAutoRotationContext;

    invoke-virtual {v0}, Landroid/hardware/scontext/SContextContexts$SContextAutoRotationContext;->clear()V

    goto :goto_1

    .line 263
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public declared-synchronized sendEvent(ILandroid/hardware/scontext/ISContextContexts;)V
    .locals 12
    .parameter "event"
    .parameter "scontext"

    .prologue
    .line 99
    monitor-enter p0

    :try_start_0
    iget-object v9, p0, Landroid/hardware/scontext/SContextService;->mEventPool:Landroid/hardware/scontext/SContextService$EventPool;

    invoke-virtual {v9}, Landroid/hardware/scontext/SContextService$EventPool;->obtain()Landroid/hardware/scontext/SContextEvent;

    move-result-object v7

    .line 100
    .local v7, scontextEvent:Landroid/hardware/scontext/SContextEvent;
    iget-object v9, v7, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    invoke-virtual {v9, p1}, Landroid/hardware/scontext/SContext;->setType(I)V

    .line 101
    const-string v9, "SContextService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sendEvent() : event = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    packed-switch p1, :pswitch_data_0

    .line 160
    .end local p2
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 105
    .restart local p2
    :pswitch_0
    :try_start_1
    new-instance v1, Landroid/hardware/scontext/SContextApproach;

    invoke-direct {v1}, Landroid/hardware/scontext/SContextApproach;-><init>()V

    .line 106
    .local v1, approachContext:Landroid/hardware/scontext/SContextApproach;
    move-object v0, p2

    check-cast v0, Landroid/hardware/scontext/SContextContexts$SContextApproachContext;

    move-object v9, v0

    iget v9, v9, Landroid/hardware/scontext/SContextContexts$SContextApproachContext;->approach:I

    invoke-virtual {v1, v9}, Landroid/hardware/scontext/SContextApproach;->setApproach(I)V

    .line 107
    invoke-virtual {v7, v1}, Landroid/hardware/scontext/SContextEvent;->setApproachContext(Landroid/hardware/scontext/SContextApproach;)V

    .line 108
    check-cast p2, Landroid/hardware/scontext/SContextContexts$SContextApproachContext;

    .end local p2
    iget-wide v9, p2, Landroid/hardware/scontext/SContextContexts$SContextApproachContext;->timestamp:J

    iput-wide v9, v7, Landroid/hardware/scontext/SContextEvent;->timestamp:J

    .line 153
    .end local v1           #approachContext:Landroid/hardware/scontext/SContextApproach;
    :goto_1
    iget-object v9, p0, Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_0

    .line 154
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .line 155
    .local v5, msg:Landroid/os/Message;
    const/4 v9, 0x0

    iput v9, v5, Landroid/os/Message;->what:I

    .line 156
    iput-object v7, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 157
    iget-object v9, p0, Landroid/hardware/scontext/SContextService;->mHandler:Landroid/hardware/scontext/SContextService$ServiceHandler;

    invoke-virtual {v9, v5}, Landroid/hardware/scontext/SContextService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 99
    .end local v5           #msg:Landroid/os/Message;
    .end local v7           #scontextEvent:Landroid/hardware/scontext/SContextEvent;
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 111
    .restart local v7       #scontextEvent:Landroid/hardware/scontext/SContextEvent;
    .restart local p2
    :pswitch_1
    :try_start_2
    new-instance v6, Landroid/hardware/scontext/SContextPedometer;

    invoke-direct {v6}, Landroid/hardware/scontext/SContextPedometer;-><init>()V

    .line 112
    .local v6, pedometerContext:Landroid/hardware/scontext/SContextPedometer;
    move-object v0, p2

    check-cast v0, Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;

    move-object v9, v0

    iget-wide v9, v9, Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;->stepCount:J

    invoke-virtual {v6, v9, v10}, Landroid/hardware/scontext/SContextPedometer;->setStepCount(J)V

    .line 113
    move-object v0, p2

    check-cast v0, Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;

    move-object v9, v0

    iget-wide v9, v9, Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;->calorie:D

    invoke-virtual {v6, v9, v10}, Landroid/hardware/scontext/SContextPedometer;->setCalorie(D)V

    .line 114
    move-object v0, p2

    check-cast v0, Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;

    move-object v9, v0

    iget-wide v9, v9, Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;->distance:D

    invoke-virtual {v6, v9, v10}, Landroid/hardware/scontext/SContextPedometer;->setDistance(D)V

    .line 115
    move-object v0, p2

    check-cast v0, Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;

    move-object v9, v0

    iget-wide v9, v9, Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;->speed:D

    invoke-virtual {v6, v9, v10}, Landroid/hardware/scontext/SContextPedometer;->setSpeed(D)V

    .line 116
    check-cast p2, Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;

    .end local p2
    iget v9, p2, Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;->stepStatus:I

    invoke-virtual {v6, v9}, Landroid/hardware/scontext/SContextPedometer;->setStepStatus(I)V

    .line 117
    invoke-virtual {v7, v6}, Landroid/hardware/scontext/SContextEvent;->setPedometerContext(Landroid/hardware/scontext/SContextPedometer;)V

    .line 118
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    iput-wide v9, v7, Landroid/hardware/scontext/SContextEvent;->timestamp:J

    goto :goto_1

    .line 121
    .end local v6           #pedometerContext:Landroid/hardware/scontext/SContextPedometer;
    .restart local p2
    :pswitch_2
    new-instance v8, Landroid/hardware/scontext/SContextStepCountAlert;

    invoke-direct {v8}, Landroid/hardware/scontext/SContextStepCountAlert;-><init>()V

    .line 122
    .local v8, stepCountAlertContext:Landroid/hardware/scontext/SContextStepCountAlert;
    move-object v0, p2

    check-cast v0, Landroid/hardware/scontext/SContextContexts$SContextStepCountAlertContext;

    move-object v9, v0

    iget v9, v9, Landroid/hardware/scontext/SContextContexts$SContextStepCountAlertContext;->alert:I

    invoke-virtual {v8, v9}, Landroid/hardware/scontext/SContextStepCountAlert;->setAlert(I)V

    .line 123
    invoke-virtual {v7, v8}, Landroid/hardware/scontext/SContextEvent;->setStepCountAlertContext(Landroid/hardware/scontext/SContextStepCountAlert;)V

    .line 124
    check-cast p2, Landroid/hardware/scontext/SContextContexts$SContextStepCountAlertContext;

    .end local p2
    iget-wide v9, p2, Landroid/hardware/scontext/SContextContexts$SContextStepCountAlertContext;->timestamp:J

    iput-wide v9, v7, Landroid/hardware/scontext/SContextEvent;->timestamp:J

    goto :goto_1

    .line 127
    .end local v8           #stepCountAlertContext:Landroid/hardware/scontext/SContextStepCountAlert;
    .restart local p2
    :pswitch_3
    new-instance v3, Landroid/hardware/scontext/SContextMotion;

    invoke-direct {v3}, Landroid/hardware/scontext/SContextMotion;-><init>()V

    .line 128
    .local v3, motionContext:Landroid/hardware/scontext/SContextMotion;
    const-string v10, "SContextService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "scontext motion type ="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v0, p2

    check-cast v0, Landroid/hardware/scontext/SContextContexts$SContextMotionContext;

    move-object v9, v0

    iget v9, v9, Landroid/hardware/scontext/SContextContexts$SContextMotionContext;->type:I

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    check-cast p2, Landroid/hardware/scontext/SContextContexts$SContextMotionContext;

    .end local p2
    iget v9, p2, Landroid/hardware/scontext/SContextContexts$SContextMotionContext;->type:I

    invoke-virtual {v3, v9}, Landroid/hardware/scontext/SContextMotion;->setType(I)V

    .line 130
    invoke-virtual {v7, v3}, Landroid/hardware/scontext/SContextEvent;->setMotionContext(Landroid/hardware/scontext/SContextMotion;)V

    .line 131
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    iput-wide v9, v7, Landroid/hardware/scontext/SContextEvent;->timestamp:J

    .line 132
    const-string v9, "SContextService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TYPE_MOTION : type = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Landroid/hardware/scontext/SContextMotion;->getType()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 135
    .end local v3           #motionContext:Landroid/hardware/scontext/SContextMotion;
    .restart local p2
    :pswitch_4
    new-instance v4, Landroid/hardware/scontext/SContextMovement;

    invoke-direct {v4}, Landroid/hardware/scontext/SContextMovement;-><init>()V

    .line 136
    .local v4, movementContext:Landroid/hardware/scontext/SContextMovement;
    const-string v10, "SContextService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "scontext movement action ="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v0, p2

    check-cast v0, Landroid/hardware/scontext/SContextContexts$SContextMovementContext;

    move-object v9, v0

    iget v9, v9, Landroid/hardware/scontext/SContextContexts$SContextMovementContext;->action:I

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    check-cast p2, Landroid/hardware/scontext/SContextContexts$SContextMovementContext;

    .end local p2
    iget v9, p2, Landroid/hardware/scontext/SContextContexts$SContextMovementContext;->action:I

    invoke-virtual {v4, v9}, Landroid/hardware/scontext/SContextMovement;->setAction(I)V

    .line 138
    invoke-virtual {v7, v4}, Landroid/hardware/scontext/SContextEvent;->setMovementContext(Landroid/hardware/scontext/SContextMovement;)V

    .line 139
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    iput-wide v9, v7, Landroid/hardware/scontext/SContextEvent;->timestamp:J

    .line 140
    const-string v9, "SContextService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TYPE_MOVEMENT : action = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Landroid/hardware/scontext/SContextMovement;->getAction()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 143
    .end local v4           #movementContext:Landroid/hardware/scontext/SContextMovement;
    .restart local p2
    :pswitch_5
    new-instance v2, Landroid/hardware/scontext/SContextAutoRotation;

    invoke-direct {v2}, Landroid/hardware/scontext/SContextAutoRotation;-><init>()V

    .line 144
    .local v2, autoRotationContext:Landroid/hardware/scontext/SContextAutoRotation;
    check-cast p2, Landroid/hardware/scontext/SContextContexts$SContextAutoRotationContext;

    .end local p2
    iget v9, p2, Landroid/hardware/scontext/SContextContexts$SContextAutoRotationContext;->angle:I

    invoke-virtual {v2, v9}, Landroid/hardware/scontext/SContextAutoRotation;->setAngle(I)V

    .line 145
    invoke-virtual {v7, v2}, Landroid/hardware/scontext/SContextEvent;->setAutoRotationContext(Landroid/hardware/scontext/SContextAutoRotation;)V

    .line 146
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    iput-wide v9, v7, Landroid/hardware/scontext/SContextEvent;->timestamp:J

    .line 147
    const-string v9, "SContextService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TYPE_AUTO_ROTATION : angle = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Landroid/hardware/scontext/SContextAutoRotation;->getAngle()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 103
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public unregisterCallback(Landroid/os/IBinder;I)Z
    .locals 9
    .parameter "binder"
    .parameter "service"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 202
    const/4 v2, 0x0

    .line 203
    .local v2, listener:Landroid/hardware/scontext/SContextService$Listener;
    const/4 v3, 0x0

    .line 204
    .local v3, used:I
    iget-object v6, p0, Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v6

    .line 205
    :try_start_0
    iget-object v7, p0, Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextService$Listener;

    .line 206
    .local v0, i:Landroid/hardware/scontext/SContextService$Listener;
    #getter for: Landroid/hardware/scontext/SContextService$Listener;->services:Ljava/util/HashSet;
    invoke-static {v0}, Landroid/hardware/scontext/SContextService$Listener;->access$000(Landroid/hardware/scontext/SContextService$Listener;)Ljava/util/HashSet;

    move-result-object v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 207
    add-int/lit8 v3, v3, 0x1

    .line 209
    :cond_1
    #getter for: Landroid/hardware/scontext/SContextService$Listener;->mToken:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/hardware/scontext/SContextService$Listener;->access$100(Landroid/hardware/scontext/SContextService$Listener;)Landroid/os/IBinder;

    move-result-object v7

    if-ne p1, v7, :cond_0

    .line 210
    move-object v2, v0

    goto :goto_0

    .line 214
    .end local v0           #i:Landroid/hardware/scontext/SContextService$Listener;
    :cond_2
    if-eqz v2, :cond_3

    .line 215
    #getter for: Landroid/hardware/scontext/SContextService$Listener;->services:Ljava/util/HashSet;
    invoke-static {v2}, Landroid/hardware/scontext/SContextService$Listener;->access$000(Landroid/hardware/scontext/SContextService$Listener;)Ljava/util/HashSet;

    move-result-object v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 216
    #getter for: Landroid/hardware/scontext/SContextService$Listener;->services:Ljava/util/HashSet;
    invoke-static {v2}, Landroid/hardware/scontext/SContextService$Listener;->access$000(Landroid/hardware/scontext/SContextService$Listener;)Ljava/util/HashSet;

    move-result-object v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 217
    if-ne v3, v4, :cond_3

    .line 218
    invoke-virtual {p0, p2}, Landroid/hardware/scontext/SContextService;->removeSContextService(I)V

    .line 224
    :cond_3
    if-eqz v2, :cond_4

    #getter for: Landroid/hardware/scontext/SContextService$Listener;->services:Ljava/util/HashSet;
    invoke-static {v2}, Landroid/hardware/scontext/SContextService$Listener;->access$000(Landroid/hardware/scontext/SContextService$Listener;)Ljava/util/HashSet;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashSet;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    .line 225
    :cond_4
    monitor-exit v6

    move v4, v5

    .line 233
    :goto_1
    return v4

    .line 228
    :cond_5
    const/4 v5, 0x0

    invoke-interface {p1, v2, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 229
    iget-object v5, p0, Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 231
    const-string v5, "unregisterCallback"

    invoke-direct {p0, p1, v5}, Landroid/hardware/scontext/SContextService;->notifyListeners(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 232
    monitor-exit v6

    goto :goto_1

    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public updateSContext(ILandroid/hardware/scontext/ISContextContexts;)V
    .locals 3
    .parameter "event"
    .parameter "scontext"

    .prologue
    .line 367
    invoke-static {}, Landroid/hardware/scontext/SContextUpdateContext;->getInstance()Landroid/hardware/scontext/SContextUpdateContext;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/hardware/scontext/SContextUpdateContext;->reportMessage(ILandroid/hardware/scontext/ISContextContexts;)V

    .line 368
    const-string v0, "SContextService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSContext() : event = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    return-void
.end method

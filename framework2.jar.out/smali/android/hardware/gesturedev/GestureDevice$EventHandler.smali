.class Landroid/hardware/gesturedev/GestureDevice$EventHandler;
.super Landroid/os/Handler;
.source "GestureDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gesturedev/GestureDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private mGesture:Landroid/hardware/gesturedev/GestureDevice;

.field final synthetic this$0:Landroid/hardware/gesturedev/GestureDevice;


# direct methods
.method public constructor <init>(Landroid/hardware/gesturedev/GestureDevice;Landroid/hardware/gesturedev/GestureDevice;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "c"
    .parameter "looper"

    .prologue
    .line 110
    iput-object p1, p0, Landroid/hardware/gesturedev/GestureDevice$EventHandler;->this$0:Landroid/hardware/gesturedev/GestureDevice;

    .line 111
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 112
    iput-object p2, p0, Landroid/hardware/gesturedev/GestureDevice$EventHandler;->mGesture:Landroid/hardware/gesturedev/GestureDevice;

    .line 113
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 117
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 147
    const-string v3, "GestureDevice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown message type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 119
    :pswitch_0
    iget-object v3, p0, Landroid/hardware/gesturedev/GestureDevice$EventHandler;->this$0:Landroid/hardware/gesturedev/GestureDevice;

    #getter for: Landroid/hardware/gesturedev/GestureDevice;->mListenerList:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/hardware/gesturedev/GestureDevice;->access$000(Landroid/hardware/gesturedev/GestureDevice;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 120
    iget-object v4, p0, Landroid/hardware/gesturedev/GestureDevice$EventHandler;->mGesture:Landroid/hardware/gesturedev/GestureDevice;

    monitor-enter v4

    .line 121
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    :try_start_0
    iget-object v3, p0, Landroid/hardware/gesturedev/GestureDevice$EventHandler;->this$0:Landroid/hardware/gesturedev/GestureDevice;

    #getter for: Landroid/hardware/gesturedev/GestureDevice;->mListenerList:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/hardware/gesturedev/GestureDevice;->access$000(Landroid/hardware/gesturedev/GestureDevice;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 122
    iget-object v3, p0, Landroid/hardware/gesturedev/GestureDevice$EventHandler;->this$0:Landroid/hardware/gesturedev/GestureDevice;

    #getter for: Landroid/hardware/gesturedev/GestureDevice;->mListenerList:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/hardware/gesturedev/GestureDevice;->access$000(Landroid/hardware/gesturedev/GestureDevice;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/gesturedev/GestureDevice$GestureListener;

    .line 123
    .local v2, listener:Landroid/hardware/gesturedev/GestureDevice$GestureListener;
    if-eqz v2, :cond_1

    .line 124
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [Landroid/hardware/gesturedev/GestureResult;

    check-cast v3, [Landroid/hardware/gesturedev/GestureResult;

    iget-object v5, p0, Landroid/hardware/gesturedev/GestureDevice$EventHandler;->mGesture:Landroid/hardware/gesturedev/GestureDevice;

    invoke-interface {v2, v3, v5}, Landroid/hardware/gesturedev/GestureDevice$GestureListener;->onGestureResult([Landroid/hardware/gesturedev/GestureResult;Landroid/hardware/gesturedev/GestureDevice;)V

    .line 121
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 128
    .end local v2           #listener:Landroid/hardware/gesturedev/GestureDevice$GestureListener;
    :cond_2
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 133
    .end local v1           #i:I
    :pswitch_1
    const-string v3, "GestureDevice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v3, p0, Landroid/hardware/gesturedev/GestureDevice$EventHandler;->this$0:Landroid/hardware/gesturedev/GestureDevice;

    #getter for: Landroid/hardware/gesturedev/GestureDevice;->mErrorCBList:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/hardware/gesturedev/GestureDevice;->access$100(Landroid/hardware/gesturedev/GestureDevice;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 135
    iget-object v4, p0, Landroid/hardware/gesturedev/GestureDevice$EventHandler;->mGesture:Landroid/hardware/gesturedev/GestureDevice;

    monitor-enter v4

    .line 136
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    :try_start_1
    iget-object v3, p0, Landroid/hardware/gesturedev/GestureDevice$EventHandler;->this$0:Landroid/hardware/gesturedev/GestureDevice;

    #getter for: Landroid/hardware/gesturedev/GestureDevice;->mErrorCBList:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/hardware/gesturedev/GestureDevice;->access$100(Landroid/hardware/gesturedev/GestureDevice;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 137
    iget-object v3, p0, Landroid/hardware/gesturedev/GestureDevice$EventHandler;->this$0:Landroid/hardware/gesturedev/GestureDevice;

    #getter for: Landroid/hardware/gesturedev/GestureDevice;->mErrorCBList:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/hardware/gesturedev/GestureDevice;->access$100(Landroid/hardware/gesturedev/GestureDevice;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/gesturedev/GestureDevice$ErrorCallback;

    .line 138
    .local v0, cb:Landroid/hardware/gesturedev/GestureDevice$ErrorCallback;
    if-eqz v0, :cond_3

    .line 139
    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v5, p0, Landroid/hardware/gesturedev/GestureDevice$EventHandler;->mGesture:Landroid/hardware/gesturedev/GestureDevice;

    invoke-interface {v0, v3, v5}, Landroid/hardware/gesturedev/GestureDevice$ErrorCallback;->onError(ILandroid/hardware/gesturedev/GestureDevice;)V

    .line 136
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 142
    .end local v0           #cb:Landroid/hardware/gesturedev/GestureDevice$ErrorCallback;
    :cond_4
    monitor-exit v4

    goto/16 :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v3

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

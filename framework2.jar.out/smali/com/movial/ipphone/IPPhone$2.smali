.class Lcom/movial/ipphone/IPPhone$2;
.super Ljava/lang/Object;
.source "IPPhone.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/movial/ipphone/IPPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/movial/ipphone/IPPhone;


# direct methods
.method constructor <init>(Lcom/movial/ipphone/IPPhone;)V
    .locals 0
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/movial/ipphone/IPPhone$2;->this$0:Lcom/movial/ipphone/IPPhone;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .parameter "name"
    .parameter "service"

    .prologue
    .line 214
    iget-object v1, p0, Lcom/movial/ipphone/IPPhone$2;->this$0:Lcom/movial/ipphone/IPPhone;

    invoke-static {p2}, Lcom/movial/ipphone/IIPService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/movial/ipphone/IIPService;

    move-result-object v2

    #setter for: Lcom/movial/ipphone/IPPhone;->mIPService:Lcom/movial/ipphone/IIPService;
    invoke-static {v1, v2}, Lcom/movial/ipphone/IPPhone;->access$502(Lcom/movial/ipphone/IPPhone;Lcom/movial/ipphone/IIPService;)Lcom/movial/ipphone/IIPService;

    .line 215
    iget-object v1, p0, Lcom/movial/ipphone/IPPhone$2;->this$0:Lcom/movial/ipphone/IPPhone;

    #getter for: Lcom/movial/ipphone/IPPhone;->binded:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v1}, Lcom/movial/ipphone/IPPhone;->access$600(Lcom/movial/ipphone/IPPhone;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 216
    iget-object v1, p0, Lcom/movial/ipphone/IPPhone$2;->this$0:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v1}, Lcom/movial/ipphone/IPPhone;->registerHandler()V

    .line 218
    :try_start_0
    iget-object v1, p0, Lcom/movial/ipphone/IPPhone$2;->this$0:Lcom/movial/ipphone/IPPhone;

    #getter for: Lcom/movial/ipphone/IPPhone;->cyclicBarrier:Ljava/util/concurrent/CyclicBarrier;
    invoke-static {v1}, Lcom/movial/ipphone/IPPhone;->access$700(Lcom/movial/ipphone/IPPhone;)Ljava/util/concurrent/CyclicBarrier;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CyclicBarrier;->await(JLjava/util/concurrent/TimeUnit;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :goto_0
    return-void

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "IPPhone"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone$2;->this$0:Lcom/movial/ipphone/IPPhone;

    const/4 v1, 0x0

    #setter for: Lcom/movial/ipphone/IPPhone;->mIPService:Lcom/movial/ipphone/IIPService;
    invoke-static {v0, v1}, Lcom/movial/ipphone/IPPhone;->access$502(Lcom/movial/ipphone/IPPhone;Lcom/movial/ipphone/IIPService;)Lcom/movial/ipphone/IIPService;

    .line 225
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone$2;->this$0:Lcom/movial/ipphone/IPPhone;

    #getter for: Lcom/movial/ipphone/IPPhone;->binded:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/movial/ipphone/IPPhone;->access$600(Lcom/movial/ipphone/IPPhone;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 226
    return-void
.end method

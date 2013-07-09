.class Lcom/movial/ipphone/IPSMSDispatcher$1;
.super Landroid/content/BroadcastReceiver;
.source "IPSMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/movial/ipphone/IPSMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/movial/ipphone/IPSMSDispatcher;


# direct methods
.method constructor <init>(Lcom/movial/ipphone/IPSMSDispatcher;)V
    .locals 0
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/movial/ipphone/IPSMSDispatcher$1;->this$0:Lcom/movial/ipphone/IPSMSDispatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 167
    iget-object v1, p0, Lcom/movial/ipphone/IPSMSDispatcher$1;->this$0:Lcom/movial/ipphone/IPSMSDispatcher;

    const-string v2, "IMS_REG_STATUS"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    #setter for: Lcom/movial/ipphone/IPSMSDispatcher;->useIPPhone:Z
    invoke-static {v1, v2}, Lcom/movial/ipphone/IPSMSDispatcher;->access$002(Lcom/movial/ipphone/IPSMSDispatcher;Z)Z

    .line 168
    const-string v1, "IPSMSDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/movial/ipphone/IPSMSDispatcher$1;->this$0:Lcom/movial/ipphone/IPSMSDispatcher;

    #getter for: Lcom/movial/ipphone/IPSMSDispatcher;->useIPPhone:Z
    invoke-static {v3}, Lcom/movial/ipphone/IPSMSDispatcher;->access$000(Lcom/movial/ipphone/IPSMSDispatcher;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v1, p0, Lcom/movial/ipphone/IPSMSDispatcher$1;->this$0:Lcom/movial/ipphone/IPSMSDispatcher;

    #getter for: Lcom/movial/ipphone/IPSMSDispatcher;->useIPPhone:Z
    invoke-static {v1}, Lcom/movial/ipphone/IPSMSDispatcher;->access$000(Lcom/movial/ipphone/IPSMSDispatcher;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    iget-object v1, p0, Lcom/movial/ipphone/IPSMSDispatcher$1;->this$0:Lcom/movial/ipphone/IPSMSDispatcher;

    iget-object v2, p0, Lcom/movial/ipphone/IPSMSDispatcher$1;->this$0:Lcom/movial/ipphone/IPSMSDispatcher;

    #getter for: Lcom/movial/ipphone/IPSMSDispatcher;->mIPPhone:Lcom/movial/ipphone/IPPhone;
    invoke-static {v2}, Lcom/movial/ipphone/IPSMSDispatcher;->access$200(Lcom/movial/ipphone/IPSMSDispatcher;)Lcom/movial/ipphone/IPPhone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/movial/ipphone/IPPhone;->getService()Lcom/movial/ipphone/IIPService;

    move-result-object v2

    #setter for: Lcom/movial/ipphone/IPSMSDispatcher;->mIPService:Lcom/movial/ipphone/IIPService;
    invoke-static {v1, v2}, Lcom/movial/ipphone/IPSMSDispatcher;->access$102(Lcom/movial/ipphone/IPSMSDispatcher;Lcom/movial/ipphone/IIPService;)Lcom/movial/ipphone/IIPService;

    .line 172
    :try_start_0
    iget-object v1, p0, Lcom/movial/ipphone/IPSMSDispatcher$1;->this$0:Lcom/movial/ipphone/IPSMSDispatcher;

    #getter for: Lcom/movial/ipphone/IPSMSDispatcher;->mIPService:Lcom/movial/ipphone/IIPService;
    invoke-static {v1}, Lcom/movial/ipphone/IPSMSDispatcher;->access$100(Lcom/movial/ipphone/IPSMSDispatcher;)Lcom/movial/ipphone/IIPService;

    move-result-object v1

    new-instance v2, Landroid/os/Messenger;

    iget-object v3, p0, Lcom/movial/ipphone/IPSMSDispatcher$1;->this$0:Lcom/movial/ipphone/IPSMSDispatcher;

    #getter for: Lcom/movial/ipphone/IPSMSDispatcher;->mIPSmsTrackerHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/movial/ipphone/IPSMSDispatcher;->access$300(Lcom/movial/ipphone/IPSMSDispatcher;)Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-interface {v1, v2}, Lcom/movial/ipphone/IIPService;->registerForIncomingSMS(Landroid/os/Messenger;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "IPSMSDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Register for incoming SMS failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

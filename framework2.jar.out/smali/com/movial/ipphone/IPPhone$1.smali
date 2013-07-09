.class Lcom/movial/ipphone/IPPhone$1;
.super Landroid/os/Handler;
.source "IPPhone.java"


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
    .line 151
    iput-object p1, p0, Lcom/movial/ipphone/IPPhone$1;->this$0:Lcom/movial/ipphone/IPPhone;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 154
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 206
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 156
    :pswitch_1
    iget-object v6, p0, Lcom/movial/ipphone/IPPhone$1;->this$0:Lcom/movial/ipphone/IPPhone;

    #getter for: Lcom/movial/ipphone/IPPhone;->mMmiMessages:[Landroid/os/Message;
    invoke-static {v6}, Lcom/movial/ipphone/IPPhone;->access$000(Lcom/movial/ipphone/IPPhone;)[Landroid/os/Message;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg2:I

    aget-object v3, v6, v7

    .line 157
    .local v3, m:Landroid/os/Message;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v6

    if-nez v6, :cond_2

    .line 158
    :cond_1
    const-string v5, "IPPhone"

    const-string v6, "No pending CF request"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 161
    :cond_2
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-eqz v6, :cond_3

    new-instance v2, Ljava/lang/Exception;

    const-string v6, "setCallForward Failed"

    invoke-direct {v2, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 162
    .local v2, e:Ljava/lang/Exception;
    :goto_1
    invoke-static {v3, v5, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    move-result-object v0

    .line 163
    .local v0, ar:Landroid/os/AsyncResult;
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v2           #e:Ljava/lang/Exception;
    :cond_3
    move-object v2, v5

    .line 161
    goto :goto_1

    .line 167
    .end local v3           #m:Landroid/os/Message;
    :pswitch_2
    iget-object v6, p0, Lcom/movial/ipphone/IPPhone$1;->this$0:Lcom/movial/ipphone/IPPhone;

    #getter for: Lcom/movial/ipphone/IPPhone;->mMmiMessages:[Landroid/os/Message;
    invoke-static {v6}, Lcom/movial/ipphone/IPPhone;->access$000(Lcom/movial/ipphone/IPPhone;)[Landroid/os/Message;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg2:I

    aget-object v3, v6, v7

    .line 168
    .restart local v3       #m:Landroid/os/Message;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v6

    if-nez v6, :cond_5

    .line 169
    :cond_4
    const-string v5, "IPPhone"

    const-string v6, "No pending Call Waiting request"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 172
    :cond_5
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-eqz v6, :cond_6

    new-instance v2, Ljava/lang/Exception;

    const-string v6, "setCallWaiting Failed"

    invoke-direct {v2, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 173
    .restart local v2       #e:Ljava/lang/Exception;
    :goto_2
    invoke-static {v3, v5, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    move-result-object v0

    .line 174
    .restart local v0       #ar:Landroid/os/AsyncResult;
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 175
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-nez v5, :cond_0

    .line 176
    iget-object v5, p0, Lcom/movial/ipphone/IPPhone$1;->this$0:Lcom/movial/ipphone/IPPhone;

    iget-object v6, p0, Lcom/movial/ipphone/IPPhone$1;->this$0:Lcom/movial/ipphone/IPPhone;

    #getter for: Lcom/movial/ipphone/IPPhone;->mCallWaitingOnPregress:Z
    invoke-static {v6}, Lcom/movial/ipphone/IPPhone;->access$200(Lcom/movial/ipphone/IPPhone;)Z

    move-result v6

    #setter for: Lcom/movial/ipphone/IPPhone;->mCallWaitingDone:Z
    invoke-static {v5, v6}, Lcom/movial/ipphone/IPPhone;->access$102(Lcom/movial/ipphone/IPPhone;Z)Z

    goto :goto_0

    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v2           #e:Ljava/lang/Exception;
    :cond_6
    move-object v2, v5

    .line 172
    goto :goto_2

    .line 181
    .end local v3           #m:Landroid/os/Message;
    :pswitch_3
    iget-object v6, p0, Lcom/movial/ipphone/IPPhone$1;->this$0:Lcom/movial/ipphone/IPPhone;

    #getter for: Lcom/movial/ipphone/IPPhone;->mMmiMessages:[Landroid/os/Message;
    invoke-static {v6}, Lcom/movial/ipphone/IPPhone;->access$000(Lcom/movial/ipphone/IPPhone;)[Landroid/os/Message;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg2:I

    aget-object v3, v6, v7

    .line 182
    .restart local v3       #m:Landroid/os/Message;
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v6

    if-nez v6, :cond_8

    .line 183
    :cond_7
    const-string v5, "IPPhone"

    const-string v6, "No pending USSD request"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 186
    :cond_8
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-eqz v6, :cond_9

    new-instance v2, Ljava/lang/Exception;

    const-string v6, "send USSD Failed"

    invoke-direct {v2, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 187
    .restart local v2       #e:Ljava/lang/Exception;
    :goto_3
    invoke-static {v3, v5, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    move-result-object v0

    .line 188
    .restart local v0       #ar:Landroid/os/AsyncResult;
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v2           #e:Ljava/lang/Exception;
    :cond_9
    move-object v2, v5

    .line 186
    goto :goto_3

    .line 193
    .end local v3           #m:Landroid/os/Message;
    :pswitch_4
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 194
    .local v1, bundle:Landroid/os/Bundle;
    const-class v5, Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 195
    const-string v5, "ussd"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 196
    .local v4, ussdString:Ljava/lang/String;
    iget-object v5, p0, Lcom/movial/ipphone/IPPhone$1;->this$0:Lcom/movial/ipphone/IPPhone;

    const/4 v6, 0x0

    #calls: Lcom/movial/ipphone/IPPhone;->onIncomingUSSD(ILjava/lang/String;)V
    invoke-static {v5, v6, v4}, Lcom/movial/ipphone/IPPhone;->access$300(Lcom/movial/ipphone/IPPhone;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 197
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v4           #ussdString:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 198
    .local v2, e:Ljava/lang/NumberFormatException;
    const-string v5, "IPPhone"

    const-string v6, "error parsing USSD"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 203
    .end local v2           #e:Ljava/lang/NumberFormatException;
    :pswitch_5
    iget-object v5, p0, Lcom/movial/ipphone/IPPhone$1;->this$0:Lcom/movial/ipphone/IPPhone;

    const/4 v6, 0x5

    #calls: Lcom/movial/ipphone/IPPhone;->showDialog(II)V
    invoke-static {v5, v6, v7}, Lcom/movial/ipphone/IPPhone;->access$400(Lcom/movial/ipphone/IPPhone;II)V

    goto/16 :goto_0

    .line 154
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.class Lcom/movial/ipphone/IPPhoneProxy$1;
.super Landroid/content/BroadcastReceiver;
.source "IPPhoneProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/movial/ipphone/IPPhoneProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/movial/ipphone/IPPhoneProxy;


# direct methods
.method constructor <init>(Lcom/movial/ipphone/IPPhoneProxy;)V
    .locals 0
    .parameter

    .prologue
    .line 466
    iput-object p1, p0, Lcom/movial/ipphone/IPPhoneProxy$1;->this$0:Lcom/movial/ipphone/IPPhoneProxy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 468
    const-string v2, "IPPhoneProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "receive intent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 471
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.movial.terminate_stack"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 472
    iget-object v2, p0, Lcom/movial/ipphone/IPPhoneProxy$1;->this$0:Lcom/movial/ipphone/IPPhoneProxy;

    const-string v3, "restart_service"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    #calls: Lcom/movial/ipphone/IPPhoneProxy;->unbindService(Z)V
    invoke-static {v2, v3}, Lcom/movial/ipphone/IPPhoneProxy;->access$000(Lcom/movial/ipphone/IPPhoneProxy;Z)V

    .line 493
    :cond_0
    :goto_0
    return-void

    .line 473
    :cond_1
    const-string v2, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 474
    iget-object v2, p0, Lcom/movial/ipphone/IPPhoneProxy$1;->this$0:Lcom/movial/ipphone/IPPhoneProxy;

    #calls: Lcom/movial/ipphone/IPPhoneProxy;->updateNetworkName(Landroid/content/Intent;)V
    invoke-static {v2, p2}, Lcom/movial/ipphone/IPPhoneProxy;->access$100(Lcom/movial/ipphone/IPPhoneProxy;Landroid/content/Intent;)V

    goto :goto_0

    .line 475
    :cond_2
    const-string v2, "com.movial.gba_initialized"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 476
    const-string v2, "IPPhoneProxy"

    const-string v3, "GBA init intent received"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object v2, p0, Lcom/movial/ipphone/IPPhoneProxy$1;->this$0:Lcom/movial/ipphone/IPPhoneProxy;

    invoke-virtual {v2}, Lcom/movial/ipphone/IPPhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "GBA_INIT"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/movial/ipphone/IPPhoneSettings;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 478
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.movial.reg_check"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 479
    .local v1, regIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/movial/ipphone/IPPhoneProxy$1;->this$0:Lcom/movial/ipphone/IPPhoneProxy;

    invoke-virtual {v2}, Lcom/movial/ipphone/IPPhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 480
    .end local v1           #regIntent:Landroid/content/Intent;
    :cond_3
    const-string v2, "com.movial.reread_isim_records"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 482
    iget-object v2, p0, Lcom/movial/ipphone/IPPhoneProxy$1;->this$0:Lcom/movial/ipphone/IPPhoneProxy;

    invoke-virtual {v2}, Lcom/movial/ipphone/IPPhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "GBA_INIT"

    invoke-static {v2, v3, v5}, Lcom/movial/ipphone/IPPhoneSettings;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 484
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.movial.ACTION_SHUTDDOWN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 485
    .restart local v1       #regIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/movial/ipphone/IPPhoneProxy$1;->this$0:Lcom/movial/ipphone/IPPhoneProxy;

    invoke-virtual {v2}, Lcom/movial/ipphone/IPPhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 486
    iget-object v2, p0, Lcom/movial/ipphone/IPPhoneProxy$1;->this$0:Lcom/movial/ipphone/IPPhoneProxy;

    invoke-virtual {v2}, Lcom/movial/ipphone/IPPhoneProxy;->getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 487
    const-string v2, "IPPhoneProxy"

    const-string v3, "IPUtils.ACTION_REREAD_ISIM : reReadISimRecords: "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    iget-object v2, p0, Lcom/movial/ipphone/IPPhoneProxy$1;->this$0:Lcom/movial/ipphone/IPPhoneProxy;

    invoke-virtual {v2}, Lcom/movial/ipphone/IPPhoneProxy;->getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->reReadIsimRecords()V

    goto :goto_0

    .line 490
    :cond_4
    const-string v2, "IPPhoneProxy"

    const-string v3, "IPUtils.ACTION_REREAD_ISIM : ISIM not found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

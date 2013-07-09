.class Lcom/movial/ipphone/IPPhone$3;
.super Landroid/content/BroadcastReceiver;
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
    .line 247
    iput-object p1, p0, Lcom/movial/ipphone/IPPhone$3;->this$0:Lcom/movial/ipphone/IPPhone;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    .line 249
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 251
    iget-object v1, p0, Lcom/movial/ipphone/IPPhone$3;->this$0:Lcom/movial/ipphone/IPPhone;

    const-string v2, "wifi_state"

    const/4 v3, 0x4

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    #calls: Lcom/movial/ipphone/IPPhone;->showDialog(II)V
    invoke-static {v1, v4, v2}, Lcom/movial/ipphone/IPPhone;->access$400(Lcom/movial/ipphone/IPPhone;II)V

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    const-string v1, "ACTION_RADIO_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    iget-object v1, p0, Lcom/movial/ipphone/IPPhone$3;->this$0:Lcom/movial/ipphone/IPPhone;

    const-string v2, "ACTION_RADIO_ON"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/movial/ipphone/IPPhone;->setRadioPower(Z)V

    goto :goto_0
.end method

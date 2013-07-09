.class Lcom/movial/ipphone/IPPhoneProxy$2;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/movial/ipphone/IPPhoneProxy;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 496
    iput-object p1, p0, Lcom/movial/ipphone/IPPhoneProxy$2;->this$0:Lcom/movial/ipphone/IPPhoneProxy;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 499
    const-string v0, "IPPhoneProxy"

    const-string v1, "ContentObserver onChange"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy$2;->this$0:Lcom/movial/ipphone/IPPhoneProxy;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "CELL_ONLY"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/movial/ipphone/IPPhoneSettings;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy$2;->this$0:Lcom/movial/ipphone/IPPhoneProxy;

    #calls: Lcom/movial/ipphone/IPPhoneProxy;->bindService()V
    invoke-static {v0}, Lcom/movial/ipphone/IPPhoneProxy;->access$200(Lcom/movial/ipphone/IPPhoneProxy;)V

    .line 504
    :cond_0
    return-void
.end method

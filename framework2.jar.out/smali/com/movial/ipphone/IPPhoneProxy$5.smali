.class Lcom/movial/ipphone/IPPhoneProxy$5;
.super Ljava/lang/Thread;
.source "IPPhoneProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/movial/ipphone/IPPhoneProxy;->bindService()V
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
    .line 607
    iput-object p1, p0, Lcom/movial/ipphone/IPPhoneProxy$5;->this$0:Lcom/movial/ipphone/IPPhoneProxy;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy$5;->this$0:Lcom/movial/ipphone/IPPhoneProxy;

    #calls: Lcom/movial/ipphone/IPPhoneProxy;->bindToIPRegistry()V
    invoke-static {v0}, Lcom/movial/ipphone/IPPhoneProxy;->access$1400(Lcom/movial/ipphone/IPPhoneProxy;)V

    .line 610
    return-void
.end method

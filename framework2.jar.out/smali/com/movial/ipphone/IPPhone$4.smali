.class Lcom/movial/ipphone/IPPhone$4;
.super Ljava/lang/Thread;
.source "IPPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/movial/ipphone/IPPhone;->bindService()V
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
    .line 310
    iput-object p1, p0, Lcom/movial/ipphone/IPPhone$4;->this$0:Lcom/movial/ipphone/IPPhone;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone$4;->this$0:Lcom/movial/ipphone/IPPhone;

    #calls: Lcom/movial/ipphone/IPPhone;->bindToIPService()V
    invoke-static {v0}, Lcom/movial/ipphone/IPPhone;->access$800(Lcom/movial/ipphone/IPPhone;)V

    .line 313
    return-void
.end method

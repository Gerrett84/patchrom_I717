.class Lcom/movial/ipphone/IPCallTracker$pendingConnection;
.super Ljava/lang/Object;
.source "IPCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/movial/ipphone/IPCallTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "pendingConnection"
.end annotation


# instance fields
.field public clirMode:I

.field public connIndex:I

.field final synthetic this$0:Lcom/movial/ipphone/IPCallTracker;


# direct methods
.method public constructor <init>(Lcom/movial/ipphone/IPCallTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 845
    iput-object p1, p0, Lcom/movial/ipphone/IPCallTracker$pendingConnection;->this$0:Lcom/movial/ipphone/IPCallTracker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 846
    invoke-virtual {p0}, Lcom/movial/ipphone/IPCallTracker$pendingConnection;->clear()V

    .line 847
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 859
    iput v0, p0, Lcom/movial/ipphone/IPCallTracker$pendingConnection;->connIndex:I

    .line 860
    iput v0, p0, Lcom/movial/ipphone/IPCallTracker$pendingConnection;->clirMode:I

    .line 861
    return-void
.end method

.method public isNull()Z
    .locals 2

    .prologue
    .line 855
    iget v0, p0, Lcom/movial/ipphone/IPCallTracker$pendingConnection;->connIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public set(II)V
    .locals 0
    .parameter "index"
    .parameter "mode"

    .prologue
    .line 850
    iput p1, p0, Lcom/movial/ipphone/IPCallTracker$pendingConnection;->connIndex:I

    .line 851
    iput p2, p0, Lcom/movial/ipphone/IPCallTracker$pendingConnection;->clirMode:I

    .line 852
    return-void
.end method

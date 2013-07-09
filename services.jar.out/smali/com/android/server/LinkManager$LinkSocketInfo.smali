.class Lcom/android/server/LinkManager$LinkSocketInfo;
.super Ljava/lang/Object;
.source "LinkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LinkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LinkSocketInfo"
.end annotation


# instance fields
.field public capabilities:Landroid/net/LinkCapabilities;

.field public id:I

.field public isQosRole:Z

.field final synthetic this$0:Lcom/android/server/LinkManager;


# direct methods
.method public constructor <init>(Lcom/android/server/LinkManager;ILandroid/net/LinkCapabilities;)V
    .locals 0
    .parameter
    .parameter "id"
    .parameter "capabilities"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/server/LinkManager$LinkSocketInfo;->this$0:Lcom/android/server/LinkManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput p2, p0, Lcom/android/server/LinkManager$LinkSocketInfo;->id:I

    .line 76
    iput-object p3, p0, Lcom/android/server/LinkManager$LinkSocketInfo;->capabilities:Landroid/net/LinkCapabilities;

    .line 77
    invoke-direct {p0}, Lcom/android/server/LinkManager$LinkSocketInfo;->parseRole()V

    .line 78
    return-void
.end method

.method private parseRole()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 81
    iget-object v1, p0, Lcom/android/server/LinkManager$LinkSocketInfo;->capabilities:Landroid/net/LinkCapabilities;

    if-nez v1, :cond_1

    const-string v0, "invalidString"

    .line 83
    .local v0, roleString:Ljava/lang/String;
    :goto_0
    const-string v1, "qos"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "QOS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 84
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/LinkManager$LinkSocketInfo;->isQosRole:Z

    .line 87
    :goto_1
    return-void

    .line 81
    .end local v0           #roleString:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/server/LinkManager$LinkSocketInfo;->capabilities:Landroid/net/LinkCapabilities;

    invoke-virtual {v1, v2}, Landroid/net/LinkCapabilities;->get(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 86
    .restart local v0       #roleString:Ljava/lang/String;
    :cond_2
    iput-boolean v2, p0, Lcom/android/server/LinkManager$LinkSocketInfo;->isQosRole:Z

    goto :goto_1
.end method

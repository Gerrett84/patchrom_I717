.class Lcom/android/server/LinkManager;
.super Ljava/lang/Object;
.source "LinkManager.java"

# interfaces
.implements Lcom/android/server/ILinkManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LinkManager$LinkSocketInfo;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "LinkManager"

.field private static mSocketId:I


# instance fields
.field private mActiveLinks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/LinkManager$LinkSocketInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectivityService:Lcom/android/server/ConnectivityService;

.field private mContext:Landroid/content/Context;

.field private qosManager:Lcom/android/server/QosManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    sput v0, Lcom/android/server/LinkManager;->mSocketId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/ConnectivityService;Lcom/android/server/QosManager;)V
    .locals 2
    .parameter "context"
    .parameter "cs"
    .parameter "qosManager"

    .prologue
    .line 94
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const-string v0, "LinkManager"

    const-string v1, "LinkManager constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iput-object p1, p0, Lcom/android/server/LinkManager;->mContext:Landroid/content/Context;

    .line 97
    iput-object p2, p0, Lcom/android/server/LinkManager;->mConnectivityService:Lcom/android/server/ConnectivityService;

    .line 98
    iput-object p3, p0, Lcom/android/server/LinkManager;->qosManager:Lcom/android/server/QosManager;

    .line 99
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/LinkManager;->mActiveLinks:Ljava/util/Map;

    .line 100
    return-void
.end method

.method private static declared-synchronized getNextSocketId()I
    .locals 3

    .prologue
    .line 62
    const-class v1, Lcom/android/server/LinkManager;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/android/server/LinkManager;->mSocketId:I

    const v2, 0x7fffffff

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    sput v0, Lcom/android/server/LinkManager;->mSocketId:I

    .line 63
    :cond_0
    sget v0, Lcom/android/server/LinkManager;->mSocketId:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Lcom/android/server/LinkManager;->mSocketId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getCurrentFwdLatency(I)Ljava/lang/String;
    .locals 4
    .parameter "id"

    .prologue
    .line 275
    const-string v1, "LinkManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentForwardLatency id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LinkManager;->mActiveLinks:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/LinkManager;->mActiveLinks:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/LinkManager$LinkSocketInfo;

    iget-boolean v1, v1, Lcom/android/server/LinkManager$LinkSocketInfo;->isQosRole:Z

    if-eqz v1, :cond_0

    .line 279
    iget-object v1, p0, Lcom/android/server/LinkManager;->qosManager:Lcom/android/server/QosManager;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/QosManager;->getCurrentFwdLatency(I)Ljava/lang/String;

    move-result-object v1

    .line 287
    :goto_0
    return-object v1

    .line 281
    :cond_0
    const-string v1, "LinkManager"

    const-string v2, "Trying to getCurrentFwdLatency with invalid registration id"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 283
    :catch_0
    move-exception v0

    .line 284
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "LinkManager"

    const-string v2, "Got exception while requesting latency"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public getCurrentRevLatency(I)Ljava/lang/String;
    .locals 4
    .parameter "id"

    .prologue
    .line 294
    const-string v1, "LinkManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentReverseLatency id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LinkManager;->mActiveLinks:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/LinkManager;->mActiveLinks:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/LinkManager$LinkSocketInfo;

    iget-boolean v1, v1, Lcom/android/server/LinkManager$LinkSocketInfo;->isQosRole:Z

    if-eqz v1, :cond_0

    .line 298
    iget-object v1, p0, Lcom/android/server/LinkManager;->qosManager:Lcom/android/server/QosManager;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/QosManager;->getCurrentRevLatency(I)Ljava/lang/String;

    move-result-object v1

    .line 306
    :goto_0
    return-object v1

    .line 300
    :cond_0
    const-string v1, "LinkManager"

    const-string v2, "Trying to getCurrentReverseLatency with invalid registration id"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 302
    :catch_0
    move-exception v0

    .line 303
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "LinkManager"

    const-string v2, "Got exception while requesting latency"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public getMaxAvailableForwardBandwidth(I)Ljava/lang/String;
    .locals 4
    .parameter "id"

    .prologue
    .line 216
    const-string v1, "LinkManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMaxAvailableForwardBandwidth id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LinkManager;->mActiveLinks:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/LinkManager;->mActiveLinks:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/LinkManager$LinkSocketInfo;

    iget-boolean v1, v1, Lcom/android/server/LinkManager$LinkSocketInfo;->isQosRole:Z

    if-eqz v1, :cond_0

    .line 220
    iget-object v1, p0, Lcom/android/server/LinkManager;->qosManager:Lcom/android/server/QosManager;

    invoke-virtual {v1, p1}, Lcom/android/server/QosManager;->getMaxAvailableForwardBandwidth(I)Ljava/lang/String;

    move-result-object v1

    .line 228
    :goto_0
    return-object v1

    .line 222
    :cond_0
    const-string v1, "LinkManager"

    const-string v2, "Trying to getMaxAvailableForwardBandwidth with invalid registration id"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "LinkManager"

    const-string v2, "Got exception while requesting bandwidth"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public getMaxAvailableReverseBandwidth(I)Ljava/lang/String;
    .locals 4
    .parameter "id"

    .prologue
    .line 256
    const-string v1, "LinkManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMaxAvailableReverseBandwidth id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LinkManager;->mActiveLinks:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/LinkManager;->mActiveLinks:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/LinkManager$LinkSocketInfo;

    iget-boolean v1, v1, Lcom/android/server/LinkManager$LinkSocketInfo;->isQosRole:Z

    if-eqz v1, :cond_0

    .line 260
    iget-object v1, p0, Lcom/android/server/LinkManager;->qosManager:Lcom/android/server/QosManager;

    invoke-virtual {v1, p1}, Lcom/android/server/QosManager;->getMaxAvailableReverseBandwidth(I)Ljava/lang/String;

    move-result-object v1

    .line 268
    :goto_0
    return-object v1

    .line 262
    :cond_0
    const-string v1, "LinkManager"

    const-string v2, "Trying to getMaxAvailableReverseBandwidth with invalid registration id"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 264
    :catch_0
    move-exception v0

    .line 265
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "LinkManager"

    const-string v2, "Got exception while requesting bandwidth"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public getMinAvailableForwardBandwidth(I)Ljava/lang/String;
    .locals 4
    .parameter "id"

    .prologue
    .line 196
    const-string v1, "LinkManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMinAvailableForwardBandwidth id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LinkManager;->mActiveLinks:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/LinkManager;->mActiveLinks:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/LinkManager$LinkSocketInfo;

    iget-boolean v1, v1, Lcom/android/server/LinkManager$LinkSocketInfo;->isQosRole:Z

    if-eqz v1, :cond_0

    .line 200
    iget-object v1, p0, Lcom/android/server/LinkManager;->qosManager:Lcom/android/server/QosManager;

    invoke-virtual {v1, p1}, Lcom/android/server/QosManager;->getMinAvailableForwardBandwidth(I)Ljava/lang/String;

    move-result-object v1

    .line 208
    :goto_0
    return-object v1

    .line 202
    :cond_0
    const-string v1, "LinkManager"

    const-string v2, "Trying to getMinAvailableForwardBandwidth with invalid registration id"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "LinkManager"

    const-string v2, "Got exception while requesting bandwidth"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public getMinAvailableReverseBandwidth(I)Ljava/lang/String;
    .locals 4
    .parameter "id"

    .prologue
    .line 236
    const-string v1, "LinkManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMinAvailableReverseBandwidth id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LinkManager;->mActiveLinks:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/LinkManager;->mActiveLinks:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/LinkManager$LinkSocketInfo;

    iget-boolean v1, v1, Lcom/android/server/LinkManager$LinkSocketInfo;->isQosRole:Z

    if-eqz v1, :cond_0

    .line 240
    iget-object v1, p0, Lcom/android/server/LinkManager;->qosManager:Lcom/android/server/QosManager;

    invoke-virtual {v1, p1}, Lcom/android/server/QosManager;->getMinAvailableReverseBandwidth(I)Ljava/lang/String;

    move-result-object v1

    .line 248
    :goto_0
    return-object v1

    .line 242
    :cond_0
    const-string v1, "LinkManager"

    const-string v2, "Trying to getMinAvailableReverseBandwidth with invalid registration id"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "LinkManager"

    const-string v2, "Got exception while requesting bandwidth"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public getNetworkType(I)I
    .locals 5
    .parameter "id"

    .prologue
    .line 315
    const/4 v1, -0x1

    .line 316
    .local v1, netType:I
    iget-object v2, p0, Lcom/android/server/LinkManager;->mActiveLinks:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/LinkManager$LinkSocketInfo;

    .line 317
    .local v0, info:Lcom/android/server/LinkManager$LinkSocketInfo;
    if-eqz v0, :cond_0

    .line 318
    const-string v2, "LinkManager"

    const-string v3, "Not supported method"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :goto_0
    return v1

    .line 320
    :cond_0
    const-string v2, "LinkManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to getNetworkType with invalid registration id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getQosState(I)Ljava/lang/String;
    .locals 4
    .parameter "id"

    .prologue
    .line 329
    const-string v1, "LinkManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getQosState id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LinkManager;->mActiveLinks:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/LinkManager;->mActiveLinks:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/LinkManager$LinkSocketInfo;

    iget-boolean v1, v1, Lcom/android/server/LinkManager$LinkSocketInfo;->isQosRole:Z

    if-eqz v1, :cond_0

    .line 333
    iget-object v1, p0, Lcom/android/server/LinkManager;->qosManager:Lcom/android/server/QosManager;

    invoke-virtual {v1, p1}, Lcom/android/server/QosManager;->getQosState(I)Ljava/lang/String;

    move-result-object v1

    .line 341
    :goto_0
    return-object v1

    .line 335
    :cond_0
    const-string v1, "LinkManager"

    const-string v2, "Trying to getQosState with invalid registration id"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    :goto_1
    const-string v1, "inactive"

    goto :goto_0

    .line 337
    :catch_0
    move-exception v0

    .line 338
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "LinkManager"

    const-string v2, "Got exception while requesting latency"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public releaseLink(I)V
    .locals 6
    .parameter "id"

    .prologue
    .line 126
    const-string v3, "LinkManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "releaseLink id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const/4 v2, 0x0

    .line 129
    .local v2, removed:Lcom/android/server/LinkManager$LinkSocketInfo;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/LinkManager;->mActiveLinks:Ljava/util/Map;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/LinkManager$LinkSocketInfo;

    move-object v2, v0

    .line 130
    if-nez v2, :cond_0

    .line 131
    const-string v3, "LinkManager"

    const-string v4, "Trying to release link on unregistered releaseLink id"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v3, p0, Lcom/android/server/LinkManager;->qosManager:Lcom/android/server/QosManager;

    invoke-virtual {v3, p1}, Lcom/android/server/QosManager;->releaseQos(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 135
    :catch_0
    move-exception v1

    .line 136
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "LinkManager"

    const-string v4, "Got exception while releasing link"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public removeQosRegistration(I)Z
    .locals 4
    .parameter "id"

    .prologue
    .line 348
    const-string v1, "LinkManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeQosRegistration id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-object v1, p0, Lcom/android/server/LinkManager;->mActiveLinks:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/LinkManager;->mActiveLinks:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/LinkManager$LinkSocketInfo;

    iget-boolean v1, v1, Lcom/android/server/LinkManager$LinkSocketInfo;->isQosRole:Z

    if-eqz v1, :cond_0

    .line 352
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LinkManager;->mActiveLinks:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    const/4 v1, 0x1

    .line 361
    :goto_0
    return v1

    .line 354
    :catch_0
    move-exception v0

    .line 355
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "LinkManager"

    const-string v2, "Got exception while removing registration"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 361
    .end local v0           #e:Ljava/lang/Exception;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 359
    :cond_0
    const-string v1, "LinkManager"

    const-string v2, "Trying to removeQosRegistration with invalid registration id"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public requestLink(Landroid/net/LinkCapabilities;Ljava/lang/String;Landroid/os/IBinder;)I
    .locals 6
    .parameter "capabilities"
    .parameter "remoteIPAddress"
    .parameter "binder"

    .prologue
    .line 107
    invoke-static {}, Lcom/android/server/LinkManager;->getNextSocketId()I

    move-result v1

    .line 108
    .local v1, id:I
    const-string v3, "LinkManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestLink capabilities: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    new-instance v2, Lcom/android/server/LinkManager$LinkSocketInfo;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/server/LinkManager$LinkSocketInfo;-><init>(Lcom/android/server/LinkManager;ILandroid/net/LinkCapabilities;)V

    .line 110
    .local v2, info:Lcom/android/server/LinkManager$LinkSocketInfo;
    iget-boolean v3, v2, Lcom/android/server/LinkManager$LinkSocketInfo;->isQosRole:Z

    if-eqz v3, :cond_0

    .line 111
    iget-object v3, p0, Lcom/android/server/LinkManager;->mActiveLinks:Ljava/util/Map;

    new-instance v4, Ljava/lang/Integer;

    iget v5, v2, Lcom/android/server/LinkManager$LinkSocketInfo;->id:I

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :try_start_0
    iget-object v3, p0, Lcom/android/server/LinkManager;->qosManager:Lcom/android/server/QosManager;

    invoke-virtual {v3, v1, p1, p2, p3}, Lcom/android/server/QosManager;->requestLink(ILandroid/net/LinkCapabilities;Ljava/lang/String;Landroid/os/IBinder;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 122
    :goto_0
    return v3

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, e:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/server/LinkManager;->mActiveLinks:Ljava/util/Map;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string v3, "LinkManager"

    const-string v4, "Qos request link failed due to exception"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 122
    .end local v0           #e:Ljava/lang/Exception;
    :goto_1
    const/4 v3, -0x1

    goto :goto_0

    .line 120
    :cond_0
    const-string v3, "LinkManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Landroid/net/LinkCapabilities;->get(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "is unknown Qos Role"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public requestQoS(IILjava/lang/String;)Z
    .locals 4
    .parameter "id"
    .parameter "localPort"
    .parameter "localAddress"

    .prologue
    .line 144
    const-string v1, "LinkManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestQoS id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LinkManager;->mActiveLinks:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/LinkManager;->mActiveLinks:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/LinkManager$LinkSocketInfo;

    iget-boolean v1, v1, Lcom/android/server/LinkManager$LinkSocketInfo;->isQosRole:Z

    if-eqz v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/android/server/LinkManager;->qosManager:Lcom/android/server/QosManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/QosManager;->requestQoS(IILjava/lang/String;)Z

    move-result v1

    .line 156
    :goto_0
    return v1

    .line 150
    :cond_0
    const-string v1, "LinkManager"

    const-string v2, "Trying to requestQos with invalid registration id"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "LinkManager"

    const-string v2, "Got exception while requesting qos registration"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public resumeQoS(I)Z
    .locals 4
    .parameter "id"

    .prologue
    .line 160
    const-string v1, "LinkManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resumeQoS id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LinkManager;->mActiveLinks:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/LinkManager;->mActiveLinks:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/LinkManager$LinkSocketInfo;

    iget-boolean v1, v1, Lcom/android/server/LinkManager$LinkSocketInfo;->isQosRole:Z

    if-eqz v1, :cond_0

    .line 164
    iget-object v1, p0, Lcom/android/server/LinkManager;->qosManager:Lcom/android/server/QosManager;

    invoke-virtual {v1, p1}, Lcom/android/server/QosManager;->resumeQoS(I)Z

    move-result v1

    .line 172
    :goto_0
    return v1

    .line 166
    :cond_0
    const-string v1, "LinkManager"

    const-string v2, "Trying to resumeQos with invalid registration id"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "LinkManager"

    const-string v2, "Got exception while resuming qos registration"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public suspendQoS(I)Z
    .locals 4
    .parameter "id"

    .prologue
    .line 176
    const-string v1, "LinkManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "suspendQoS id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LinkManager;->mActiveLinks:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/LinkManager;->mActiveLinks:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/LinkManager$LinkSocketInfo;

    iget-boolean v1, v1, Lcom/android/server/LinkManager$LinkSocketInfo;->isQosRole:Z

    if-eqz v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/android/server/LinkManager;->qosManager:Lcom/android/server/QosManager;

    invoke-virtual {v1, p1}, Lcom/android/server/QosManager;->suspendQoS(I)Z

    move-result v1

    .line 188
    :goto_0
    return v1

    .line 182
    :cond_0
    const-string v1, "LinkManager"

    const-string v2, "Trying to suspendQos with invalid registration id"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "LinkManager"

    const-string v2, "Got exception while suspending qos registration"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public updateOperatorPolicy(Ljava/lang/String;)Z
    .locals 2
    .parameter "filepath"

    .prologue
    .line 368
    const-string v0, "LinkManager"

    const-string v1, "updateOperatorPolicy(String filepath) not supported in LinkManager"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    const/4 v0, 0x0

    return v0
.end method

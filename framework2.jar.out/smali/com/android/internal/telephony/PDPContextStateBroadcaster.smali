.class public Lcom/android/internal/telephony/PDPContextStateBroadcaster;
.super Ljava/lang/Object;
.source "PDPContextStateBroadcaster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/PDPContextStateBroadcaster$InstanceLock;
    }
.end annotation


# static fields
.field private static final ACTION_PDP_CONTEXT_STATE:Ljava/lang/String; = "android.data.PDPContextState"

.field private static final CONTEXT_STATE_CONNECTED:Ljava/lang/String; = "CONNECTED"

.field private static final CONTEXT_STATE_DISCONNECTED:Ljava/lang/String; = "DISCONNECTED"

.field private static final CONTEXT_STATE_REQUESTED:Ljava/lang/String; = "REQUEST"

.field private static final CONTEXT_TYPE_PRIMARY:Ljava/lang/String; = "PRIMARY"

.field private static final CONTEXT_TYPE_SECONDARY:Ljava/lang/String; = "SECONDARY"

.field private static final DNS_EXTRA_COUNT:I = 0x2

.field private static final EXTRA_CONTEXT_APN:Ljava/lang/String; = "ContextAPN"

.field private static final EXTRA_CONTEXT_DNS:[Ljava/lang/String; = null

.field private static final EXTRA_CONTEXT_ERROR_CODE:Ljava/lang/String; = "ContextErrorCode"

.field private static final EXTRA_CONTEXT_ID:Ljava/lang/String; = "ContextID"

.field private static final EXTRA_CONTEXT_INITIATOR:Ljava/lang/String; = "ContextInitiator"

.field private static final EXTRA_CONTEXT_IPV4_ADDR:Ljava/lang/String; = "ContextIPV4Addr"

.field private static final EXTRA_CONTEXT_IPV6_ADDR:Ljava/lang/String; = "ContextIPV6Addr"

.field private static final EXTRA_CONTEXT_NSAPI:Ljava/lang/String; = "ContextNSAPI"

.field private static final EXTRA_CONTEXT_SAPI:Ljava/lang/String; = "ContextSAPI"

.field private static final EXTRA_CONTEXT_STATE:Ljava/lang/String; = "ContextState"

.field private static final EXTRA_CONTEXT_TERM_CODE:Ljava/lang/String; = "ContextTermCode"

.field private static final EXTRA_CONTEXT_TYPE:Ljava/lang/String; = "ContextType"

.field private static final EXTRA_CONTEXT_V6DNS:[Ljava/lang/String; = null

.field private static final INITIATOR_NETWORK:Ljava/lang/String; = "NETWORK"

.field private static final INITIATOR_UE:Ljava/lang/String; = "USER"

.field private static final IP_ADDRESS_TYPE_COUNT:I = 0x2

.field private static final IP_ADDRESS_V4_INDEX:I = 0x0

.field private static final IP_ADDRESS_V6_INDEX:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "PDPContextStateBroadcaster"

.field private static final PERMISSION_RECEIVE_PDP_CONTEXT_STATE:Ljava/lang/String; = "android.data.receivePDPContextState"

.field private static sInstance:Lcom/android/internal/telephony/PDPContextStateBroadcaster;

.field private static final sTermCodeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mContextIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNextContextId:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 135
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "ContextDNS1"

    aput-object v1, v0, v2

    const-string v1, "ContextDNS2"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->EXTRA_CONTEXT_DNS:[Ljava/lang/String;

    .line 136
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "ContextV6DNS1"

    aput-object v1, v0, v2

    const-string v1, "ContextV6DNS2"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->EXTRA_CONTEXT_V6DNS:[Ljava/lang/String;

    .line 153
    new-instance v0, Lcom/android/internal/telephony/PDPContextStateBroadcaster$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->sTermCodeMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 206
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 203
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->mContextIdMap:Ljava/util/HashMap;

    .line 204
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->mNextContextId:I

    .line 207
    iput-object p1, p0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->mContext:Landroid/content/Context;

    .line 208
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/PDPContextStateBroadcaster$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/telephony/PDPContextStateBroadcaster;)Lcom/android/internal/telephony/PDPContextStateBroadcaster;
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    sput-object p0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->sInstance:Lcom/android/internal/telephony/PDPContextStateBroadcaster;

    return-object p0
.end method

.method private static assignToArrayElementIfEmpty(Ljava/lang/String;[Ljava/lang/String;I)Z
    .locals 2
    .parameter "value"
    .parameter "targetArray"
    .parameter "targetIndex"

    .prologue
    .line 333
    aget-object v1, p1, p2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    .line 334
    .local v0, empty:Z
    if-eqz v0, :cond_0

    .line 335
    aput-object p0, p1, p2

    .line 337
    :cond_0
    return v0
.end method

.method private static assignToEmptyElement(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .parameter "value"
    .parameter "targetArray"

    .prologue
    .line 322
    const/4 v0, 0x0

    .line 323
    .local v0, index:I
    :goto_0
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .local v1, index:I
    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->assignToArrayElementIfEmpty(Ljava/lang/String;[Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 324
    array-length v2, p1

    if-ne v1, v2, :cond_1

    .line 328
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .end local v1           #index:I
    .restart local v0       #index:I
    goto :goto_0
.end method

.method private broadcast(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 278
    const-string v0, "com.carrieriq.tmobile"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    iget-object v0, p0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->mContext:Landroid/content/Context;

    const-string v1, "android.data.receivePDPContextState"

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 280
    return-void
.end method

.method private static createIntent(Ljava/lang/String;Ljava/lang/Integer;)Landroid/content/Intent;
    .locals 3
    .parameter "contextState"
    .parameter "contextId"

    .prologue
    .line 271
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.data.PDPContextState"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 272
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "ContextState"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    const-string v1, "ContextID"

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    return-object v0
.end method

.method private getNextContextId()I
    .locals 3

    .prologue
    .line 215
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->mNextContextId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->mNextContextId:I

    .line 217
    .local v0, nextId:I
    iget v1, p0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->mNextContextId:I

    const v2, 0xffff

    if-le v1, v2, :cond_1

    .line 218
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->mNextContextId:I

    .line 220
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->mContextIdMap:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 221
    return v0
.end method

.method private static processDNSAddresses(Ljava/util/Collection;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter "ipv4DNSes"
    .parameter "ipv6DNSes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetAddress;",
            ">;[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 306
    .local p0, addresses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 307
    .local v0, address:Ljava/net/InetAddress;
    const/4 v2, 0x0

    .line 308
    .local v2, targetArray:[Ljava/lang/String;
    instance-of v3, v0, Ljava/net/Inet4Address;

    if-eqz v3, :cond_2

    .line 309
    move-object v2, p1

    .line 314
    :cond_1
    :goto_1
    if-eqz v2, :cond_0

    .line 315
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->assignToEmptyElement(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 310
    :cond_2
    instance-of v3, v0, Ljava/net/Inet6Address;

    if-eqz v3, :cond_1

    .line 311
    move-object v2, p2

    goto :goto_1

    .line 318
    .end local v0           #address:Ljava/net/InetAddress;
    .end local v2           #targetArray:[Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private static processIPAddresses(Ljava/util/Collection;[Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter "sortedAddresses"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetAddress;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 291
    .local p0, addresses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 292
    .local v0, address:Ljava/net/InetAddress;
    instance-of v2, v0, Ljava/net/Inet4Address;

    if-eqz v2, :cond_1

    .line 293
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->assignToArrayElementIfEmpty(Ljava/lang/String;[Ljava/lang/String;I)Z

    goto :goto_0

    .line 294
    :cond_1
    instance-of v2, v0, Ljava/net/Inet6Address;

    if-eqz v2, :cond_0

    .line 295
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, p1, v3}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->assignToArrayElementIfEmpty(Ljava/lang/String;[Ljava/lang/String;I)Z

    goto :goto_0

    .line 298
    .end local v0           #address:Ljava/net/InetAddress;
    :cond_2
    return-void
.end method

.method public static sendConnected(ILandroid/net/LinkProperties;)V
    .locals 7
    .parameter "contextId"
    .parameter "linkProperties"

    .prologue
    .line 46
    sget-object v0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->sInstance:Lcom/android/internal/telephony/PDPContextStateBroadcaster;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 48
    const/4 v0, 0x2

    :try_start_0
    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, ""

    aput-object v1, v6, v0

    const/4 v0, 0x1

    const-string v1, ""

    aput-object v1, v6, v0

    .line 49
    .local v6, ipAddresses:[Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, ""

    aput-object v1, v4, v0

    const/4 v0, 0x1

    const-string v1, ""

    aput-object v1, v4, v0

    .line 50
    .local v4, ipv4DNS:[Ljava/lang/String;
    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, ""

    aput-object v1, v5, v0

    const/4 v0, 0x1

    const-string v1, ""

    aput-object v1, v5, v0

    .line 53
    .local v5, ipv6DNS:[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->processIPAddresses(Ljava/util/Collection;[Ljava/lang/String;)V

    .line 56
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0, v4, v5}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->processDNSAddresses(Ljava/util/Collection;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 58
    sget-object v0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->sInstance:Lcom/android/internal/telephony/PDPContextStateBroadcaster;

    const/4 v1, 0x0

    aget-object v2, v6, v1

    const/4 v1, 0x1

    aget-object v3, v6, v1

    move v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->sendPDPContextConnected(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .end local v4           #ipv4DNS:[Ljava/lang/String;
    .end local v5           #ipv6DNS:[Ljava/lang/String;
    .end local v6           #ipAddresses:[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static sendDisconnected(ILjava/lang/String;)V
    .locals 3
    .parameter "contextId"
    .parameter "reason"

    .prologue
    .line 65
    sget-object v1, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->sInstance:Lcom/android/internal/telephony/PDPContextStateBroadcaster;

    if-eqz v1, :cond_1

    .line 67
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->sTermCodeMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 69
    .local v0, termCode:Ljava/lang/Integer;
    if-nez v0, :cond_0

    sget-object v1, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->sTermCodeMap:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #termCode:Ljava/lang/Integer;
    check-cast v0, Ljava/lang/Integer;

    .line 70
    .restart local v0       #termCode:Ljava/lang/Integer;
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->sInstance:Lcom/android/internal/telephony/PDPContextStateBroadcaster;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->sendPDPContextDisconnected(ILjava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .end local v0           #termCode:Ljava/lang/Integer;
    :cond_1
    :goto_0
    return-void

    .line 71
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private sendPDPContextConnected(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5
    .parameter "apnId"
    .parameter "ipv4Address"
    .parameter "ipv6Address"
    .parameter "ipv4DNS"
    .parameter "ipv6DNS"

    .prologue
    .line 242
    iget-object v3, p0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->mContextIdMap:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 243
    .local v0, contextId:Ljava/lang/Integer;
    if-eqz v0, :cond_1

    .line 244
    const-string v3, "CONNECTED"

    invoke-static {v3, v0}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->createIntent(Ljava/lang/String;Ljava/lang/Integer;)Landroid/content/Intent;

    move-result-object v2

    .line 245
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "ContextIPV4Addr"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    const-string v3, "ContextIPV6Addr"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    const/4 v1, 0x0

    .local v1, dnsExtraIndex:I
    :goto_0
    const/4 v3, 0x2

    if-ge v1, v3, :cond_0

    .line 248
    sget-object v3, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->EXTRA_CONTEXT_DNS:[Ljava/lang/String;

    aget-object v3, v3, v1

    aget-object v4, p4, v1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    sget-object v3, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->EXTRA_CONTEXT_V6DNS:[Ljava/lang/String;

    aget-object v3, v3, v1

    aget-object v4, p5, v1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 251
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->broadcast(Landroid/content/Intent;)V

    .line 253
    .end local v1           #dnsExtraIndex:I
    .end local v2           #intent:Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method private sendPDPContextDisconnected(ILjava/lang/Integer;)V
    .locals 5
    .parameter "apnId"
    .parameter "termCode"

    .prologue
    .line 257
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 258
    .local v0, apnIdObject:Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->mContextIdMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 259
    .local v1, contextId:Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 261
    iget-object v3, p0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->mContextIdMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    const-string v3, "DISCONNECTED"

    invoke-static {v3, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->createIntent(Ljava/lang/String;Ljava/lang/Integer;)Landroid/content/Intent;

    move-result-object v2

    .line 263
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "ContextInitiator"

    const-string v4, "USER"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 264
    const-string v3, "ContextTermCode"

    invoke-virtual {p2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    const-string v3, "ContextErrorCode"

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 266
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->broadcast(Landroid/content/Intent;)V

    .line 268
    .end local v2           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private sendPDPContextRequested(ILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "apnId"
    .parameter "contextType"
    .parameter "contextAPN"

    .prologue
    const/4 v6, 0x0

    .line 226
    invoke-direct {p0}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->getNextContextId()I

    move-result v1

    .line 227
    .local v1, contextId:I
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 228
    .local v0, apnIdObject:Ljava/lang/Integer;
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 229
    .local v2, contextIdObject:Ljava/lang/Integer;
    iget-object v4, p0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->mContextIdMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    const-string v4, "REQUEST"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->createIntent(Ljava/lang/String;Ljava/lang/Integer;)Landroid/content/Intent;

    move-result-object v3

    .line 232
    .local v3, intent:Landroid/content/Intent;
    const-string v4, "ContextInitiator"

    const-string v5, "USER"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    const-string v4, "ContextType"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    const-string v4, "ContextNSAPI"

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    const-string v4, "ContextSAPI"

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    const-string v4, "ContextAPN"

    invoke-virtual {v3, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->broadcast(Landroid/content/Intent;)V

    .line 238
    return-void
.end method

.method public static sendRequested(ILjava/lang/String;)V
    .locals 2
    .parameter "contextId"
    .parameter "apnName"

    .prologue
    .line 37
    sget-object v0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->sInstance:Lcom/android/internal/telephony/PDPContextStateBroadcaster;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 39
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->sInstance:Lcom/android/internal/telephony/PDPContextStateBroadcaster;

    const-string v1, "PRIMARY"

    invoke-direct {v0, p0, v1, p1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->sendPDPContextRequested(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :cond_0
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v0

    goto :goto_0
.end method
